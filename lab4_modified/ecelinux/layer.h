//===========================================================================
// layer.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef LAYER_H
#define LAYER_H

#include "typedefs.h"

// Constants used for MLP configuration
const int MAX_FMAP = 3072; // 32*32*3
const int OUT = 2;

// Perform dense layer
void dense(bit *input, bit *output, const bit *weight, const float *bias, int M, int N, bool use_relu);

// Perform dense layer for MLP
void dense_mlp(float input[MAX_FMAP], float output[MAX_FMAP], const float *weight, const float *bias, int M, int N);

#endif
