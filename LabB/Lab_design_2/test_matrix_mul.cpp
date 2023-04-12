#include <iostream>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include "matrix_mul_base.h"

void block_matrix_mul(stream_t* pstrmA, stream_t* pstrmB, stream_t* pstrmC);

int main()
{
    matrix_t A[M][N];
    matrix_t B[N][P];
    matrix_t C[M][P];

    // Initialize matrix A and B
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < N; ++j) {
            A[i][j] = (matrix_t)(i*N+j);
        }
    }
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < P; ++j) {
            B[i][j] = (matrix_t)(i*P+j);
        }
    }

    // Create input and output streams
    stream_t A_stream, B_stream, C_stream;

    // // Write A and B matrix to input streams
    // for (int i = 0; i < M/BL; ++i) {
    //     for (int j = 0; j < N/BL; ++j) {
    //         for (int ii = 0; ii < BL; ++ii) {
    //             for (int jj = 0; jj < BL; ++jj) {
    //                 value_t A_DataCtrl;
    //                 *((matrix_t*)&A_DataCtrl.data) = A[i*BL+ii][j*BL+jj];
    //                 A_DataCtrl.keep = 1;
    //                 A_DataCtrl.last = (ii == BL-1 && jj == BL-1);
    //                 A_stream.write(A_DataCtrl);
    //             }
    //         }
    //     }
    // }
    // for (int i = 0; i < N/BL; ++i) {
    //     for (int j = 0; j < P/BL; ++j) {
    //         for (int ii = 0; ii < BL; ++ii) {
    //             for (int jj = 0; jj < BL; ++jj) {
    //                 value_t B_DataCtrl;
    //                 *((matrix_t*)&B_DataCtrl.data) = B[i*BL+ii][j*BL+jj];
    //                 B_DataCtrl.keep = 1;
    //                 B_DataCtrl.last = (ii == BL-1 && jj == BL-1);
    //                 B_stream.write(B_DataCtrl);
    //             }
    //         }
    //     }
    // }

    // // Call the HLS block matrix multiplication function
    // block_matrix_mul(&A_stream, &B_stream, &C_stream);

    // // Read C matrix from output stream
    // for (int i = 0; i < M/BL; ++i) {
    //     for (int j = 0; j < P/BL; ++j) {
    //         for (int ii = 0; ii < BL; ++ii) {
    //             for (int jj = 0; jj < BL; ++jj) {
    //                 value_t Ctemp = C_stream.read();
    //                 C[i*BL+ii][j*BL+jj] = *((matrix_t*)&Ctemp.data);
    //             }
    //         }
    //     }
    // }
    int num_blocks_x = M / BL;
    int num_blocks_y = P / BL;
    int num_blocks_z = N / BL;
    //=============
    int block_x =0,block_y=0,block_z=0;
    // for (int block_x = 0; block_x < num_blocks_x; ++block_x) {
        for (int block_y = 0; block_y < num_blocks_y; ++block_y) {
    //         for (int block_z = 0; block_z < num_blocks_z; ++block_z) {
                // Load a block of A into local memory ((block_x, block_z
                for (int i = 0; i < BL; ++i) {
                    for (int j = 0; j < N; ++j) {
                        value_t A_DataCtrl;
                        *((matrix_t*)&A_DataCtrl.data) = A[BL*block_x+i][j];
                        A_DataCtrl.keep = 1;
                        A_DataCtrl.last = (i == BL-1 && j == N-1);
                        A_stream.write(A_DataCtrl);
                    }
                }
                // Load a block of B into local memory ((block_z, block_y
                for (int i = 0; i < N; ++i) {
                    for (int j = 0; j < BL; ++j) {
                        value_t B_DataCtrl;
                        *((matrix_t*)&B_DataCtrl.data) = B[i][BL*block_y+j];
                        B_DataCtrl.keep = 1;
                        // B_DataCtrl.last = (i == N-1 && j == BL-1);
                        B_stream.write(B_DataCtrl);
                    }
                }
                // Compute the block matrix multiplication
                block_matrix_mul(&A_stream, &B_stream, &C_stream);

                // Store the result block into the output stream ((block_x, block_y
                //storeC(pstrmC, C_local, block_x, block_y);
                for (int i = 0; i < BL; ++i) {
                    for (int j = 0; j < BL; ++j) {
                        value_t Ctemp = C_stream.read();
                        C[BL*block_x+i][BL*block_y+j] = *((matrix_t*)&Ctemp.data);
                    }
                }
            }
    //     }
    // }
//==================
    // Verify result
    matrix_t C_gold[M][P];
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < P; ++j) {
            C_gold[i][j] = 0;
            for (int k = 0; k < N; ++k) {
                C_gold[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    for (int i = 0; i < BL; ++i) {
        for (int j = 0; j < P; ++j) {
            if (C[i][j] != C_gold[i][j]) {
                std::cout << "Error: C[" << i << "][" << j << "] = " << C[i][j] << ", C_gold[" << i << "][" << j << "] = " << C_gold[i][j] << std::endl;
                return 1;
            }
        }
    }
    std::cout << "Test passed" << std::endl;
    return 0;
}
