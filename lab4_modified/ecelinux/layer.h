//===========================================================================
// layer.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef LAYER_H
#define LAYER_H

#include "typedefs.h"

// Constants used for BNN configuration
const int I_WIDTH1 = 16; //conv1 input width
const int N_CHANNEL1 = 16; // conv1 output channels
const int I_WIDTH2 = 8; //conv2 input width
const int N_CHANNEL2 = 32; // conv12 output channels
const int O_WIDTH = 4; //conv output width
const int F = 3; //filter width
const int FILTER_SIZE = F*F;
const int PADDING = F - 1;
const int MAX_FMAP = 5184; //18*18*16
const int MAX_F = 32; //{16, 32} num of conv2 output fmaps
const int MAX_W_CONV = 4608;//3*3*16*32 num of conv2 weights
const int FC1_UNITS = O_WIDTH*O_WIDTH*N_CHANNEL2; //num of fc1 input units
const int FC2_UNITS = 256;
const int MAX_W_FC = FC1_UNITS*FC2_UNITS;
const int OUT = 10;
const int BUS_WIDTH = 32;

// Perform dense layer
void dense(bit* input, bit*output, const bit* weight, const float* bias, int M, int N, bool use_relu);

// Perform dense layer
void dense_mlp(float input[MAX_FMAP], float output[MAX_FMAP], const float* weight, const float* bias, int M, int N);


#endif
