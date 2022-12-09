//===========================================================================
// layer.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef LAYER_H
#define LAYER_H

#include "typedefs.h"

// // Constants used for MLP configuration
// const int MAX_FMAP = 3072; // 32*32*3
// const int OUT = 2;

// const int I_WIDTH1 = 3072; //conv1 input width
// const int N_CHANNEL1 = 6*14*14; // conv1 output channels
// const int I_WIDTH2 = 1176; //conv2 input width
// const int N_CHANNEL2 = 16*5*5; // conv2 output channels
// const int O_WIDTH = 4; //conv output width
// const int F = 5; //filter width
// const int FILTER_SIZE = F*F;
// //const int PADDING = F - 1;
// const int PADDING = 0;
// // const int MAX_FMAP = 5184; //18*18*16
// const int MAX_F = 32; //{16, 32} num of conv2 output fmaps
// const int MAX_W_CONV = 2400;// num of conv2 weights
// const int FC1_UNITS = O_WIDTH*O_WIDTH*N_CHANNEL2; //num of fc1 input units
// const int FC2_UNITS = 256;
// const int MAX_W_FC = FC1_UNITS*FC2_UNITS;
// // const int OUT = 10;
// const int BUS_WIDTH = 32;

// Constants used for MLP configuration
const int MAX_FMAP = 6 * 28 * 28; // 6*28*28

// Constants for conv
const int F = 5; // filter width
const int FILTER_SIZE = F * F;
const int PADDING = 0;
const int POOL2_OUT_N_CHANNEL = 16;
const int POOL2_OUT_WIDTH = 5;

// Padding the input feature map
void pad(float input[MAX_FMAP], float output[MAX_FMAP], int M, int I);

// Perform dense layer
void dense(float *input, float *output, const float *weight, const float *bias, int M, int N, bool use_relu);

// Perform dense layer for MLP
void dense_mlp(float input[MAX_FMAP], float output[MAX_FMAP], const float *weight, const float *bias, int M, int N, bool relu);

// Reduce the size of feature map
void max_pool(float input[MAX_FMAP], float output[MAX_FMAP], int M, int I);

// Reshape the conv laper output to dense layer input
void reshape(float *input, float *output);

// Perform convolutional kernel
void conv(float input[MAX_FMAP], float output[MAX_FMAP], int M, int N, int I, int L);
void conv1(float input[MAX_FMAP], float output[MAX_FMAP], int M, int N, int I, int L);

#endif
