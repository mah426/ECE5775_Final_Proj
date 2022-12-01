//==========================================================================
// layer.cpp
//==========================================================================
// @brief: this file contains all layers

#include "layer.h"
#include "model.h"
#include <cmath>
#include <iostream>

using namespace std;

//----------------------------------------------------------
// Perform Dense Layer
//----------------------------------------------------------
// @param[in] : input - input fmaps
//              weight - weights
//              bias - biases
//              M - number of input fmaps
//              N - number of output fmaps
//              use_relu - enable relu or not
// @param[out] : output - output fmaps

void dense(bit input[MAX_FMAP], bit output[MAX_FMAP], const bit* weight, const float* bias, int M, int N, bool use_relu){
  float var_w = 2. / M;
  float c = sqrt(var_w);
  float max = -100;

  for (int n = 0; n < N; n++){
    float one_out = 0;
    for (int m = 0; m < M; m++) {
      int w_index = m * N + n;
      one_out += input[m] == weight[w_index]; //XNOR
    }
    one_out = (2 * one_out - M)*c;
    float biased = one_out + bias[n];
    if (use_relu) output[n] = (biased > 0) ? 1 : 0;
    else { // last layer
      if (biased > max) {
        max = biased;
        output[n] = 1;
      } else {
        output[n] = 0;
      }
    }
  }
}

//----------------------------------------------------------
// Perform Dense Layer
//----------------------------------------------------------
// @param[in] : input - input fmaps
//              weight - weights
//              bias - biases
//              M - number of input fmaps
//              N - number of output fmaps
//              use_relu - enable relu or not
// @param[out] : output - output fmaps

void dense_mlp(float input[MAX_FMAP], float output[MAX_FMAP], const float* weight, const float* bias, int M, int N){
  for (int n = 0; n < N; n++){
    float sum = 0;
    for (int m = 0; m < M; m++) {
      int w_index = m * N + n;
      sum += input[m] *weight[w_index]; 
    }
    float biased = sum + bias[n];
    output[n] = (biased > 0) ? 1 : 0;
  }
}
