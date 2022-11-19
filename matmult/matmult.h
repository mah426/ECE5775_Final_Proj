//===========================================================================
// matmult.h
//===========================================================================
// @brief: This header file defines the interface for the matrix multiplication

#ifndef MATMULT_H
#define MATMULT_H

#include "typedefs.h"
#include "matmult_data.h"

// Top function for matmult

void matmult(bit32_t a[100][100],bit32_t b[100][100],bit32_t out[100][100]);

#endif
