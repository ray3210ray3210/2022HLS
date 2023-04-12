
#ifndef __BLOCK_MATRIX_MUL_BASE_H__
#define __BLOCK_MATRIX_MUL_BASE_H__

#include <ap_axi_sdata.h>
#include <hls_stream.h>


#define m_size  4 * 8 // Must be a multiple of 8.  128x8
#define N   (m_size / 8)
#define M   (m_size / 8)
#define P   (m_size / 8)
#define BL  2


typedef ap_axiu<32,1,1,1> value_t;
typedef hls::stream<value_t> stream_t;
typedef ap_uint<32> reg32_t;
typedef signed int int32_t;
typedef unsigned int uint32_t;
typedef int32_t matrix_t;

void block_matrix_mul(stream_t* pstrmA, stream_t* pstrmB, stream_t* pstrmC);

#endif
