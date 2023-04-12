// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      blockmatmul
`define AUTOTB_DUT_INST AESL_inst_blockmatmul
`define AUTOTB_TOP      apatb_blockmatmul_top
`define AUTOTB_LAT_RESULT_FILE "blockmatmul.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "blockmatmul.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_blockmatmul_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_FIFO_Arows AESL_autofifo_Arows
`define AESL_FIFO_INST_Arows AESL_autofifo_inst_Arows
`define AESL_FIFO_Bcols AESL_autofifo_Bcols
`define AESL_FIFO_INST_Bcols AESL_autofifo_inst_Bcols
`define AESL_MEM_ABpartial AESL_automem_ABpartial
`define AESL_MEM_INST_ABpartial mem_inst_ABpartial
`define AESL_DEPTH_it 1
`define AUTOTB_TVIN_Arows  "../tv/cdatafile/c.blockmatmul.autotvin_Arows.dat"
`define AUTOTB_TVIN_Bcols  "../tv/cdatafile/c.blockmatmul.autotvin_Bcols.dat"
`define AUTOTB_TVIN_ABpartial  "../tv/cdatafile/c.blockmatmul.autotvin_ABpartial.dat"
`define AUTOTB_TVIN_it  "../tv/cdatafile/c.blockmatmul.autotvin_it.dat"
`define AUTOTB_TVIN_Arows_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_Arows.dat"
`define AUTOTB_TVIN_Bcols_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_Bcols.dat"
`define AUTOTB_TVIN_ABpartial_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_ABpartial.dat"
`define AUTOTB_TVIN_it_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_it.dat"
`define AUTOTB_TVOUT_ABpartial  "../tv/cdatafile/c.blockmatmul.autotvout_ABpartial.dat"
`define AUTOTB_TVOUT_ABpartial_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvout_ABpartial.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 16;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 18706;
parameter LENGTH_Arows = 64;
parameter LENGTH_Bcols = 64;
parameter LENGTH_ABpartial = 256;
parameter LENGTH_it = 1;

task read_token;
    input integer fp;
    output reg [1047 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [511 : 0] Arows_dout;
wire  Arows_empty_n;
wire  Arows_read;
wire [511 : 0] Bcols_dout;
wire  Bcols_empty_n;
wire  Bcols_read;
wire [7 : 0] ABpartial_address0;
wire  ABpartial_ce0;
wire  ABpartial_we0;
wire [31 : 0] ABpartial_d0;
wire [31 : 0] it;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .Arows_dout(Arows_dout),
    .Arows_empty_n(Arows_empty_n),
    .Arows_read(Arows_read),
    .Bcols_dout(Bcols_dout),
    .Bcols_empty_n(Bcols_empty_n),
    .Bcols_read(Bcols_read),
    .ABpartial_address0(ABpartial_address0),
    .ABpartial_ce0(ABpartial_ce0),
    .ABpartial_we0(ABpartial_we0),
    .ABpartial_d0(ABpartial_d0),
    .it(it));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation Arows

wire fifoArows_rd;
wire [511 : 0] fifoArows_dout;
wire fifoArows_empty_n;
wire fifoArows_ready;
wire fifoArows_done;
reg [31:0] ap_c_n_tvin_trans_num_Arows;
reg Arows_ready_reg;

`AESL_FIFO_Arows `AESL_FIFO_INST_Arows (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoArows_rd),
    .if_dout      (fifoArows_dout),
    .if_empty_n   (fifoArows_empty_n),
    .ready        (fifoArows_ready),
    .done         (fifoArows_done)
);

// Assignment between dut and fifoArows

// Assign input of fifoArows
assign      fifoArows_rd        =   Arows_read & Arows_empty_n;
assign    fifoArows_ready   =   Arows_ready_reg | ready_initial;
assign    fifoArows_done    =   0;
// Assign input of dut
assign      Arows_dout       =   fifoArows_dout;
reg   reg_fifoArows_empty_n;
initial begin : gen_reg_fifoArows_empty_n_process
    integer proc_rand;
    reg_fifoArows_empty_n = fifoArows_empty_n;
    while (1) begin
        @ (fifoArows_empty_n);
        reg_fifoArows_empty_n = fifoArows_empty_n;
    end
end

assign      Arows_empty_n    =   reg_fifoArows_empty_n;


// Fifo Instantiation Bcols

wire fifoBcols_rd;
wire [511 : 0] fifoBcols_dout;
wire fifoBcols_empty_n;
wire fifoBcols_ready;
wire fifoBcols_done;
reg [31:0] ap_c_n_tvin_trans_num_Bcols;
reg Bcols_ready_reg;

`AESL_FIFO_Bcols `AESL_FIFO_INST_Bcols (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoBcols_rd),
    .if_dout      (fifoBcols_dout),
    .if_empty_n   (fifoBcols_empty_n),
    .ready        (fifoBcols_ready),
    .done         (fifoBcols_done)
);

// Assignment between dut and fifoBcols

// Assign input of fifoBcols
assign      fifoBcols_rd        =   Bcols_read & Bcols_empty_n;
assign    fifoBcols_ready   =   Bcols_ready_reg | ready_initial;
assign    fifoBcols_done    =   0;
// Assign input of dut
assign      Bcols_dout       =   fifoBcols_dout;
reg   reg_fifoBcols_empty_n;
initial begin : gen_reg_fifoBcols_empty_n_process
    integer proc_rand;
    reg_fifoBcols_empty_n = fifoBcols_empty_n;
    while (1) begin
        @ (fifoBcols_empty_n);
        reg_fifoBcols_empty_n = fifoBcols_empty_n;
    end
end

assign      Bcols_empty_n    =   reg_fifoBcols_empty_n;


//------------------------arrayABpartial Instantiation--------------

// The input and output of arrayABpartial
wire    arrayABpartial_ce0, arrayABpartial_ce1;
wire [4 - 1 : 0]    arrayABpartial_we0, arrayABpartial_we1;
wire    [7 : 0]    arrayABpartial_address0, arrayABpartial_address1;
wire    [31 : 0]    arrayABpartial_din0, arrayABpartial_din1;
wire    [31 : 0]    arrayABpartial_dout0, arrayABpartial_dout1;
wire    arrayABpartial_ready;
wire    arrayABpartial_done;

`AESL_MEM_ABpartial `AESL_MEM_INST_ABpartial(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayABpartial_ce0),
    .we0        (arrayABpartial_we0),
    .address0   (arrayABpartial_address0),
    .din0       (arrayABpartial_din0),
    .dout0      (arrayABpartial_dout0),
    .ce1        (arrayABpartial_ce1),
    .we1        (arrayABpartial_we1),
    .address1   (arrayABpartial_address1),
    .din1       (arrayABpartial_din1),
    .dout1      (arrayABpartial_dout1),
    .ready      (arrayABpartial_ready),
    .done    (arrayABpartial_done)
);

// Assignment between dut and arrayABpartial
assign arrayABpartial_address0 = ABpartial_address0;
assign arrayABpartial_ce0 = ABpartial_ce0;
assign arrayABpartial_we0[0] = ABpartial_we0;
assign arrayABpartial_we0[1] = ABpartial_we0;
assign arrayABpartial_we0[2] = ABpartial_we0;
assign arrayABpartial_we0[3] = ABpartial_we0;
assign arrayABpartial_din0 = ABpartial_d0;
assign arrayABpartial_we1 = 0;
assign arrayABpartial_din1 = 0;
assign arrayABpartial_ready= ready_initial | arrayABpartial_done;
assign arrayABpartial_done =    AESL_done_delay;


// The signal of port it
reg [31: 0] AESL_REG_it = 0;
assign it = AESL_REG_it;
initial begin : read_file_process_it
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [1047  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_it,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_it);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_it);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_Arows;
reg [31:0] size_Arows;
reg [31:0] size_Arows_backup;
reg end_Bcols;
reg [31:0] size_Bcols;
reg [31:0] size_Bcols_backup;
reg end_ABpartial;
reg [31:0] size_ABpartial;
reg [31:0] size_ABpartial_backup;
reg end_it;
reg [31:0] size_it;
reg [31:0] size_it_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
initial begin : proc_gen_Arows_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    Arows_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_Arows > internal_trans_num) begin
            Arows_ready_reg <= 1;
            @(posedge AESL_clock);
            Arows_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    Arows_ready_reg <= 0;
end
initial begin : proc_gen_Bcols_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    Bcols_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_Bcols > internal_trans_num) begin
            Bcols_ready_reg <= 1;
            @(posedge AESL_clock);
            Bcols_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    Bcols_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_Arows "../tv/stream_size/stream_size_in_Arows.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_Arows
        integer fp_Arows;
        reg [127:0] token_Arows;
        integer ret;
        
        ap_c_n_tvin_trans_num_Arows = 0;
        end_Arows = 0;
        wait (AESL_reset === 0);
        
        fp_Arows = $fopen(`STREAM_SIZE_IN_Arows, "r");
        if(fp_Arows == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_Arows);
            $finish;
        end
        read_token(fp_Arows, token_Arows); // should be [[[runtime]]]
        if (token_Arows != "[[[runtime]]]") begin
            $display("ERROR: token_Arows != \"[[[runtime]]]\"");
            $finish;
        end
        size_Arows = 0;
        size_Arows_backup = 0;
        while (size_Arows == 0 && end_Arows == 0) begin
            ap_c_n_tvin_trans_num_Arows = ap_c_n_tvin_trans_num_Arows + 1;
            read_token(fp_Arows, token_Arows); // should be [[transaction]] or [[[/runtime]]]
            if (token_Arows == "[[transaction]]") begin
                read_token(fp_Arows, token_Arows); // should be transaction number
                read_token(fp_Arows, token_Arows); // should be size for hls::stream
                ret = $sscanf(token_Arows, "%d", size_Arows);
                if (size_Arows > 0) begin
                    size_Arows_backup = size_Arows;
                end
                read_token(fp_Arows, token_Arows); // should be [[/transaction]]
            end else if (token_Arows == "[[[/runtime]]]") begin
                $fclose(fp_Arows);
                end_Arows = 1;
            end else begin
                $display("ERROR: unknown token_Arows");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_Arows == 0) begin
                if (Arows_read == 1 && Arows_empty_n == 1) begin
                    if (size_Arows > 0) begin
                        size_Arows = size_Arows - 1;
                        while (size_Arows == 0 && end_Arows == 0) begin
                            ap_c_n_tvin_trans_num_Arows = ap_c_n_tvin_trans_num_Arows + 1;
                            read_token(fp_Arows, token_Arows); // should be [[transaction]] or [[[/runtime]]]
                            if (token_Arows == "[[transaction]]") begin
                                read_token(fp_Arows, token_Arows); // should be transaction number
                                read_token(fp_Arows, token_Arows); // should be size for hls::stream
                                ret = $sscanf(token_Arows, "%d", size_Arows);
                                if (size_Arows > 0) begin
                                    size_Arows_backup = size_Arows;
                                end
                                read_token(fp_Arows, token_Arows); // should be [[/transaction]]
                            end else if (token_Arows == "[[[/runtime]]]") begin
                                size_Arows = size_Arows_backup;
                                $fclose(fp_Arows);
                                end_Arows = 1;
                            end else begin
                                $display("ERROR: unknown token_Arows");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (Arows_read == 1 && Arows_empty_n == 1) begin
                    if (size_Arows > 0) begin
                        size_Arows = size_Arows - 1;
                        if (size_Arows == 0) begin
                            ap_c_n_tvin_trans_num_Arows = ap_c_n_tvin_trans_num_Arows + 1;
                            size_Arows = size_Arows_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_Bcols "../tv/stream_size/stream_size_in_Bcols.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_Bcols
        integer fp_Bcols;
        reg [127:0] token_Bcols;
        integer ret;
        
        ap_c_n_tvin_trans_num_Bcols = 0;
        end_Bcols = 0;
        wait (AESL_reset === 0);
        
        fp_Bcols = $fopen(`STREAM_SIZE_IN_Bcols, "r");
        if(fp_Bcols == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_Bcols);
            $finish;
        end
        read_token(fp_Bcols, token_Bcols); // should be [[[runtime]]]
        if (token_Bcols != "[[[runtime]]]") begin
            $display("ERROR: token_Bcols != \"[[[runtime]]]\"");
            $finish;
        end
        size_Bcols = 0;
        size_Bcols_backup = 0;
        while (size_Bcols == 0 && end_Bcols == 0) begin
            ap_c_n_tvin_trans_num_Bcols = ap_c_n_tvin_trans_num_Bcols + 1;
            read_token(fp_Bcols, token_Bcols); // should be [[transaction]] or [[[/runtime]]]
            if (token_Bcols == "[[transaction]]") begin
                read_token(fp_Bcols, token_Bcols); // should be transaction number
                read_token(fp_Bcols, token_Bcols); // should be size for hls::stream
                ret = $sscanf(token_Bcols, "%d", size_Bcols);
                if (size_Bcols > 0) begin
                    size_Bcols_backup = size_Bcols;
                end
                read_token(fp_Bcols, token_Bcols); // should be [[/transaction]]
            end else if (token_Bcols == "[[[/runtime]]]") begin
                $fclose(fp_Bcols);
                end_Bcols = 1;
            end else begin
                $display("ERROR: unknown token_Bcols");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_Bcols == 0) begin
                if (Bcols_read == 1 && Bcols_empty_n == 1) begin
                    if (size_Bcols > 0) begin
                        size_Bcols = size_Bcols - 1;
                        while (size_Bcols == 0 && end_Bcols == 0) begin
                            ap_c_n_tvin_trans_num_Bcols = ap_c_n_tvin_trans_num_Bcols + 1;
                            read_token(fp_Bcols, token_Bcols); // should be [[transaction]] or [[[/runtime]]]
                            if (token_Bcols == "[[transaction]]") begin
                                read_token(fp_Bcols, token_Bcols); // should be transaction number
                                read_token(fp_Bcols, token_Bcols); // should be size for hls::stream
                                ret = $sscanf(token_Bcols, "%d", size_Bcols);
                                if (size_Bcols > 0) begin
                                    size_Bcols_backup = size_Bcols;
                                end
                                read_token(fp_Bcols, token_Bcols); // should be [[/transaction]]
                            end else if (token_Bcols == "[[[/runtime]]]") begin
                                size_Bcols = size_Bcols_backup;
                                $fclose(fp_Bcols);
                                end_Bcols = 1;
                            end else begin
                                $display("ERROR: unknown token_Bcols");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (Bcols_read == 1 && Bcols_empty_n == 1) begin
                    if (size_Bcols > 0) begin
                        size_Bcols = size_Bcols - 1;
                        if (size_Bcols == 0) begin
                            ap_c_n_tvin_trans_num_Bcols = ap_c_n_tvin_trans_num_Bcols + 1;
                            size_Bcols = size_Bcols_backup;
                        end
                    end
                end
            end
        end
    end
    
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_ABpartial;

initial begin : dump_tvout_runtime_sign_ABpartial
    integer fp;
    dump_tvout_finish_ABpartial = 0;
    fp = $fopen(`AUTOTB_TVOUT_ABpartial_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ABpartial_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_ABpartial_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ABpartial_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_ABpartial = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
