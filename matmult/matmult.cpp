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

void matmult(float a[100][100],float b[100][100], float out[100]){
   LOOP_MAT_MULT_0: for (int i = 0; i < 100; i++) {
    out[i] = 0;
        LOOP_MAT_MULT_1: for (int j = 0; j < 100; j++) {
            out[i] += a[i][j] * b[i][j];
        }
    }
}

