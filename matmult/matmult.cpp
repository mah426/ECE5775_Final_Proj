//==========================================================================
//matmult.cpp
//==========================================================================
// @brief: Matrix multiplication

#include "matmult.h"

//----------------------------------------------------------
// Top function
//----------------------------------------------------------
// @param[a] : input - first matrix
// @param[b] : input - second matrix
// @param[c] : input - output matrix

void matmult(bit32_t a[100][100],bit32_t b[100][100], bit32_t out[100][100]){
   LOOP_MAT_MULT_0: for (int i = 0; i < 100; i++) {
        LOOP_MAT_MULT_1: for (int j = 0; j < 100; j++) {
            out[i][j] = 0;
            LOOP_MAT_MULT_2: for (int k = 0; k < 100; k++) {
                out[i][j] += a[i][k] * b[k][j];
            }
        }
    }
}

