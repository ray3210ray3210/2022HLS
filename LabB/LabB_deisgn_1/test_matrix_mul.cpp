#include <iostream>
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include "matrix_mul_base.h"


void block_matrix_mul(matrix_t A[N][N], matrix_t B[N][N], matrix_t C[N][N]);

int main() {
    matrix_t A[M][N];
    matrix_t B[N][P];
    matrix_t C[M][P];

    // Initialize matrix A and B
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < N; ++j) {
            A[i][j] = (matrix_t)(i+j);
        }
    }
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < P; ++j) {
            B[i][j] = (matrix_t)(i*j);
        }
    }
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < P; ++j) {
            C[i][j] = 0;
        }
    }
    // Call the block matrix multiplication function
    block_matrix_mul(A, B, C);

    // Verify the results
    matrix_t C_gold[M][P];
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < P; ++j) {
            C_gold[i][j] = 0;
            for (int k = 0; k < N; ++k) {
                C_gold[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    for (int i = 0; i < M; ++i) {
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
