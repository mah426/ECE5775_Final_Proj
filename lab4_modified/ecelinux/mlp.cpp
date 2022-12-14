//==========================================================================
// mlp.cpp
//==========================================================================
// @brief: A convolution kernel for CNN on digit recognition

#include "layer.h"
#include "model.h"
#include "mlp.h"
#include <fstream>
#include <iostream>
#include <iomanip>

using namespace std;

//----------------------------------------------------------
// Top function
//----------------------------------------------------------
void dut(
    hls::stream<bit32_t> &strm_in,
    hls::stream<bit32_t> &strm_out)
{
  float input[MAX_FMAP];
  bit32_t input_l;
  bit32_t output;
  
  for (int i = 0; i < 3072; i++)
  {
    input_l = strm_in.read();
    union { float fval; int ival; } u;
    u.ival = input_l;
    float fv = u.fval;
  
    input[i] = fv;
  }

  output = mlp_xcel(input);

  strm_out.write(output);
 
}

inline void print_array(float *input, int size)
{
  cout << endl;
  for (int i = 0; i < size; i++)
  {
    cout << input[i] << ",";
  }
  cout << endl;
}
//----------------------------------------------------------
// mlp Accelerator
//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the predicted digit

bit32_t mlp_xcel(float input[3072])
{
  bit32_t final_out = 0;
  float mem_conv1[4704];
  float mem_conv2[4704];

  //print_array(input, 100);

  /*
    conv1
    M=3 N=6 I=32
    F=5
    input: 3*32*32
    weight: 6*3*5*5 (N*M*F*F)
    bias: 6
    output: 6*28*28
  */
  conv1(input, mem_conv2, 3, 6, 32, 0);

  //cout << "conv1 done \n";
  //print_array(mem_conv2, 100);

  /*
    pool1
    M=6 I=28
    input: 6*28*28
    output: 6*14*14
  */
  max_pool(mem_conv2, mem_conv1, 6, 28);

  //cout << "pool1 done \n";
  //print_array(mem_conv1, 100);

  /*
   conv2
   M=6 N=16 I=14
   F=5
   input: 6*14*14
   weight: 16*6*5*5 (N*M*F*F)
   bias: 16
   output: 6*10*10
 */
  conv1(mem_conv1, mem_conv2, 6, 16, 14, 1);

  /*
  pool2
  M=16 I=10
  input: 16*10*10
  output: 16*5*5
  */
  max_pool(mem_conv2, mem_conv1, 16, 10);

  /*
  reshape
  input: 16*5*5
  output: 400
  */
  // reshape(mem_conv1, mem_conv2);

  // dense_mlp(mem_conv2, mem_conv1, fc1_weight, fc1_bias, 400, 120, true);
  // dense_mlp(mem_conv1, mem_conv2, fc2_weight, fc2_bias, 120, 84, true);
  // dense_mlp(mem_conv2, mem_conv1, fc3_weight, fc3_bias, 84, 2, false);

  /*
  fc1
  N=120 M=400
  input: 400
  weight: 120*400(N*M)
  bias:120
  output: 120
  */
  dense_mlp(mem_conv1, mem_conv2, fc1_weight, fc1_bias, 400, 120, true);

  dense_mlp(mem_conv2, mem_conv1, fc2_weight, fc2_bias, 120, 84, true);
  dense_mlp(mem_conv1, mem_conv2, fc3_weight, fc3_bias, 84, 2, false);

  // predict car or truck
  //std::cout << "mem_conv0: " << mem_conv2[0] << " \n";
  //std::cout << "mem_conv1: " << mem_conv2[1] << " \n";
  if (mem_conv2[0] < mem_conv2[1])
  {
    final_out = 1;
  }
  return final_out;
}
