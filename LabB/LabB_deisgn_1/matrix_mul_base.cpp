#include <iostream>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include "matrix_mul_base.h"

using namespace std;

void block_matrix_mul(matrix_t A[M][N], matrix_t B[N][P], matrix_t C[M][P]) {
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE m_axi depth=N*N port=A offset=slave //
#pragma HLS INTERFACE m_axi depth=N*N port=B offset=slave
#pragma HLS INTERFACE m_axi depth=N*N port=C offset=slave

    matrix_t A_local[BL][BL];
    matrix_t B_local[BL][BL];
    matrix_t C_local[BL][BL];

    int num_blocks_x = M / BL;
    int num_blocks_y = P / BL;
    int num_blocks_z = N / BL;

    for (int block_x = 0; block_x < num_blocks_x; ++block_x) {
        for (int block_y = 0; block_y < num_blocks_y; ++block_y) {
            for (int block_z = 0; block_z < num_blocks_z; ++block_z) {
                // Load a block of A into local memory
                for (int i = 0; i < BL; ++i) {
                    for (int j = 0; j < BL; ++j) {
#pragma HLS PIPELINE II=1
                        A_local[i][j] = A[block_x*BL+i][block_z*BL+j];
                    }
                }
                // Load a block of B into local memory
                for (int i = 0; i < BL; ++i) {
                    for (int j = 0; j < BL; ++j) {
#pragma HLS PIPELINE II=1
                        B_local[i][j] = B[block_z*BL+i][block_y*BL+j];
                    }
                }
                // Compute the block matrix multiplication
                for (int i = 0; i < BL; ++i) {
                    for (int j = 0; j < BL; ++j) {
#pragma HLS PIPELINE II=1
                        C_local[i][j] = 0.0f;
                        for (int k = 0; k < BL; ++k) {
                            C_local[i][j] += A_local[i][k] * B_local[k][j];
                        }
                    }
                }
                // Store the result back to global memory
                for (int i = 0; i < BL; ++i) {
                    for (int j = 0; j < BL; ++j) {
#pragma HLS PIPELINE II=1
                        C[block_x*BL+i][block_y*BL+j] += C_local[i][j];
                    }
                }
            }
        }
    }
}
