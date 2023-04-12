#include "BlockMatrix_design.h"



void blockmatmul(hls::stream<blockvec> &Arows, hls::stream<blockvec> &Bcols,blockmat &ABpartial, int it) {
    
    DTYPE AB[BLOCK_SIZE][BLOCK_SIZE] = { 0 };           //4x4

//#pragma HLS DATAFLOW
    
    int counter = it % (SIZE/BLOCK_SIZE);
    static DTYPE A[BLOCK_SIZE][SIZE];                   //4x8
    if(counter == 0){ //only load the A rows when necessary
        loadA: for(int i = 0; i < SIZE; i++) {
            blockvec tempA = Arows.read();              //1x4
            for(int j = 0; j < BLOCK_SIZE; j++) {
//#pragma HLS PIPELINE II=1
                A[j][i] = tempA.a[j];
            }
        }
    }

    partialsum: for(int k=0; k < SIZE; k++) {
        blockvec tempB = Bcols.read();
//#pragma HLS PIPELINE II=1
        ps_i:for(int i = 0; i < BLOCK_SIZE; i++) {
            ps_j:for(int j = 0; j < BLOCK_SIZE; j++) {
                AB[i][j] = AB[i][j]  + A[i][k] * tempB.a[j];
            }
        }
    }

    writeoutput: for(int i = 0; i < BLOCK_SIZE; i++) {
        for(int j = 0; j < BLOCK_SIZE; j++) {
            ABpartial.out[i][j] = AB[i][j];
        }
    }
    
}
