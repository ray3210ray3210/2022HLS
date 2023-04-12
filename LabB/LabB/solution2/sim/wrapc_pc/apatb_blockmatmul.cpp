#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_Arows "../tv/cdatafile/c.blockmatmul.autotvin_Arows.dat"
#define AUTOTB_TVOUT_Arows "../tv/cdatafile/c.blockmatmul.autotvout_Arows.dat"
#define WRAPC_STREAM_SIZE_IN_Arows "../tv/stream_size/stream_size_in_Arows.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Arows "../tv/stream_size/stream_ingress_status_Arows.dat"
#define AUTOTB_TVIN_Bcols "../tv/cdatafile/c.blockmatmul.autotvin_Bcols.dat"
#define AUTOTB_TVOUT_Bcols "../tv/cdatafile/c.blockmatmul.autotvout_Bcols.dat"
#define WRAPC_STREAM_SIZE_IN_Bcols "../tv/stream_size/stream_size_in_Bcols.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Bcols "../tv/stream_size/stream_ingress_status_Bcols.dat"
#define AUTOTB_TVIN_ABpartial "../tv/cdatafile/c.blockmatmul.autotvin_ABpartial.dat"
#define AUTOTB_TVOUT_ABpartial "../tv/cdatafile/c.blockmatmul.autotvout_ABpartial.dat"
#define AUTOTB_TVIN_it "../tv/cdatafile/c.blockmatmul.autotvin_it.dat"
#define AUTOTB_TVOUT_it "../tv/cdatafile/c.blockmatmul.autotvout_it.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_Arows "../tv/rtldatafile/rtl.blockmatmul.autotvout_Arows.dat"
#define AUTOTB_TVOUT_PC_Bcols "../tv/rtldatafile/rtl.blockmatmul.autotvout_Bcols.dat"
#define AUTOTB_TVOUT_PC_ABpartial "../tv/rtldatafile/rtl.blockmatmul.autotvout_ABpartial.dat"
#define AUTOTB_TVOUT_PC_it "../tv/rtldatafile/rtl.blockmatmul.autotvout_it.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  Arows_depth = 0;
  Bcols_depth = 0;
  ABpartial_depth = 0;
  it_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{Arows " << Arows_depth << "}\n";
  total_list << "{Bcols " << Bcols_depth << "}\n";
  total_list << "{ABpartial " << ABpartial_depth << "}\n";
  total_list << "{it " << it_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int Arows_depth;
    int Bcols_depth;
    int ABpartial_depth;
    int it_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


struct __cosim_s16__ { char data[16]; };
struct __cosim_s64__ { char data[64]; };
extern "C" void blockmatmul_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, int);

extern "C" void apatb_blockmatmul_hw(volatile void * __xlx_apatb_param_Arows, volatile void * __xlx_apatb_param_Bcols, volatile void * __xlx_apatb_param_ABpartial, int __xlx_apatb_param_it) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_Arows_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_Arows);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_Arows_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_Arows_stream_buf_final_size; ++i)((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Arows)->read();
long __xlx_apatb_param_Bcols_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_Bcols);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_Bcols_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_Bcols_stream_buf_final_size; ++i)((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Bcols)->read();
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ABpartial);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > ABpartial_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              ABpartial_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ABpartial" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((long long*)__xlx_apatb_param_ABpartial)[0*8+0] = ABpartial_pc_buffer[0].range(63,0).to_int64();
((long long*)__xlx_apatb_param_ABpartial)[0*8+1] = ABpartial_pc_buffer[0].range(127,64).to_int64();
((long long*)__xlx_apatb_param_ABpartial)[0*8+2] = ABpartial_pc_buffer[0].range(191,128).to_int64();
((long long*)__xlx_apatb_param_ABpartial)[0*8+3] = ABpartial_pc_buffer[0].range(255,192).to_int64();
((long long*)__xlx_apatb_param_ABpartial)[0*8+4] = ABpartial_pc_buffer[0].range(319,256).to_int64();
((long long*)__xlx_apatb_param_ABpartial)[0*8+5] = ABpartial_pc_buffer[0].range(383,320).to_int64();
((long long*)__xlx_apatb_param_ABpartial)[0*8+6] = ABpartial_pc_buffer[0].range(447,384).to_int64();
((long long*)__xlx_apatb_param_ABpartial)[0*8+7] = ABpartial_pc_buffer[0].range(511,448).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Arows);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Arows);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Bcols);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Bcols);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s16__> __xlx_apatb_param_Arows_stream_buf;
{
  while (!((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Arows)->empty())
    __xlx_apatb_param_Arows_stream_buf.push_back(((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Arows)->read());
  for (int i = 0; i < __xlx_apatb_param_Arows_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Arows)->write(__xlx_apatb_param_Arows_stream_buf[i]);
  }
long __xlx_apatb_param_Arows_stream_buf_size = ((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Arows)->size();
std::vector<__cosim_s16__> __xlx_apatb_param_Bcols_stream_buf;
{
  while (!((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Bcols)->empty())
    __xlx_apatb_param_Bcols_stream_buf.push_back(((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Bcols)->read());
  for (int i = 0; i < __xlx_apatb_param_Bcols_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Bcols)->write(__xlx_apatb_param_Bcols_stream_buf[i]);
  }
long __xlx_apatb_param_Bcols_stream_buf_size = ((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Bcols)->size();
// print ABpartial Transactions
{
aesl_fh.write(AUTOTB_TVIN_ABpartial, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_ABpartial;
aesl_fh.write(AUTOTB_TVIN_ABpartial, formatData(pos, 512));
}
  tcl_file.set_num(1, &tcl_file.ABpartial_depth);
aesl_fh.write(AUTOTB_TVIN_ABpartial, end_str());
}

// print it Transactions
{
aesl_fh.write(AUTOTB_TVIN_it, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_it;
aesl_fh.write(AUTOTB_TVIN_it, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.it_depth);
aesl_fh.write(AUTOTB_TVIN_it, end_str());
}

CodeState = CALL_C_DUT;
blockmatmul_hw_stub_wrapper(__xlx_apatb_param_Arows, __xlx_apatb_param_Bcols, __xlx_apatb_param_ABpartial, __xlx_apatb_param_it);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_Arows_stream_buf_final_size = __xlx_apatb_param_Arows_stream_buf_size - ((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Arows)->size();
// print Arows Transactions
{
aesl_fh.write(AUTOTB_TVIN_Arows, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_Arows_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_Arows_stream_buf.data()+i);
std::string s(formatData(pos, 128));
aesl_fh.write(AUTOTB_TVIN_Arows, s);
}

  tcl_file.set_num(__xlx_apatb_param_Arows_stream_buf_final_size, &tcl_file.Arows_depth);
aesl_fh.write(AUTOTB_TVIN_Arows, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows, begin_str(AESL_transaction));
if (__xlx_apatb_param_Arows_stream_buf_final_size > 0) {
  long Arows_stream_ingress_size = __xlx_apatb_param_Arows_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Arows_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_Arows_stream_buf_final_size; j != e; j++) {
    Arows_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Arows_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows, __xlx_sprintf_buffer.data());
  }
} else {
  long Arows_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Arows_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_Arows_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows, end_str());
}
long __xlx_apatb_param_Bcols_stream_buf_final_size = __xlx_apatb_param_Bcols_stream_buf_size - ((hls::stream<__cosim_s16__>*)__xlx_apatb_param_Bcols)->size();
// print Bcols Transactions
{
aesl_fh.write(AUTOTB_TVIN_Bcols, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_Bcols_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_Bcols_stream_buf.data()+i);
std::string s(formatData(pos, 128));
aesl_fh.write(AUTOTB_TVIN_Bcols, s);
}

  tcl_file.set_num(__xlx_apatb_param_Bcols_stream_buf_final_size, &tcl_file.Bcols_depth);
aesl_fh.write(AUTOTB_TVIN_Bcols, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols, begin_str(AESL_transaction));
if (__xlx_apatb_param_Bcols_stream_buf_final_size > 0) {
  long Bcols_stream_ingress_size = __xlx_apatb_param_Bcols_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Bcols_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_Bcols_stream_buf_final_size; j != e; j++) {
    Bcols_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Bcols_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols, __xlx_sprintf_buffer.data());
  }
} else {
  long Bcols_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Bcols_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_Bcols_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols, end_str());
}
// print ABpartial Transactions
{
aesl_fh.write(AUTOTB_TVOUT_ABpartial, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_ABpartial;
aesl_fh.write(AUTOTB_TVOUT_ABpartial, formatData(pos, 512));
}
  tcl_file.set_num(1, &tcl_file.ABpartial_depth);
aesl_fh.write(AUTOTB_TVOUT_ABpartial, end_str());
}

CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
