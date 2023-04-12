#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <iostream>
#include "matrix_mul_base.h"

void loadA(stream_t* pstrmA, matrix_t A[BL][N], int block_x, int block_z) {
    for (int i = 0; i < BL; ++i) {
        for (int j = 0; j < N; ++j) {
#pragma HLS PIPELINE off
// #pragma HLS PIPELINE II=1
        	if (!pstrmA->empty()) {
                value_t ATemp = pstrmA->read();
                A[i][j] = *((matrix_t*)&ATemp.data);    //trans unsigned int to int
                printf("Success: pstrmA A[i][j]=%d, where block_x=%d, block_z=%d\n", A[i][j], block_x, block_z);
        	} else {
        	    printf("Error: pstrmA is empty in line %d, where block_x=%d, block_z=%d\n", __LINE__, block_x, block_z);
        	}

        }
    }
}

void loadB(stream_t* pstrmB, matrix_t B[N][BL], int block_z, int block_y) {
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < BL; ++j) {
#pragma HLS PIPELINE off
// #pragma HLS PIPELINE II=1
        	if (!pstrmB->empty()) {
                value_t BTemp = pstrmB->read();
                B[i][j] = *((matrix_t*)&BTemp.data);    //trans unsigned int to int
                printf("Success: pstrmB B[%d][%d]=%d, where block_z=%d, block_y=%d\n",i,j, B[i][j], block_z, block_y);

        	} else {
        	    printf("Error: pstrmB B[%d][%d] is empty in line %d, where block_z=%d, block_y=%d\n", i,j,__LINE__, block_z, block_y);
        	}
        }
    }
}

void storeC(stream_t* pstrmC, matrix_t C[BL][BL], int block_x, int block_y) {
    for (int i = 0; i < BL; ++i) {
        for (int j = 0; j < BL; ++j) {
#pragma HLS PIPELINE off
// #pragma HLS PIPELINE II=1
            value_t CTemp;
            CTemp.data = *((unsigned int*)&C[i][j]);
            CTemp.keep = 1;
            CTemp.last = (i == BL-1 && j == BL-1); // Store a block and stop writing
            pstrmC->write(CTemp);
        }
    }
}

void block_matrix_mul(stream_t* pstrmA, stream_t* pstrmB, stream_t* pstrmC) {
#pragma HLS INTERFACE axis register both port=pstrmC
#pragma HLS INTERFACE axis register both port=pstrmA
#pragma HLS INTERFACE axis register both port=pstrmB
#pragma HLS INTERFACE s_axilite port=return

    matrix_t A_local[BL][N];
    matrix_t B_local[N][BL];
    matrix_t C_local[BL][BL];

    int num_blocks_x = M / BL;
    int num_blocks_y = P / BL;
    int num_blocks_z = N / BL;

    int block_x =0,block_y=0,block_z=0;

    // for (int block_x = 0; block_x < num_blocks_x; ++block_x) {
        for (int block_y = 0; block_y < num_blocks_y; ++block_y) {
    //         for (int block_z = 0; block_z < num_blocks_z; ++block_z) {
                // Load a block of A into local memory
                loadA(pstrmA, A_local, block_x, block_z);
                // Load a block of B into local memory
                 printf("HI\n");
                loadB(pstrmB, B_local, block_z, block_y);
                // Compute the block matrix multiplication
                for (int i = 0; i < BL; ++i) {
                    for (int j = 0; j < BL; ++j) {
// #pragma HLS PIPELINE II=1
#pragma HLS PIPELINE off
                        matrix_t sum = 0;
                        for (int k = 0; k < N; ++k) {
// #pragma HLS UNROLL factor=2
                            sum += A_local[i][k] * B_local[k][j];
                        }
                        C_local[i][j] = sum;
                    }
                }
// Store the result block into the output stream
storeC(pstrmC, C_local, block_x, block_y);
            }
        }
//     }
// }
