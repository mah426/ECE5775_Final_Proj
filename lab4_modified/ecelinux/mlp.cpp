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
    hls::stream<float> &strm_in,
    hls::stream<float> &strm_out)
{
  float input[MAX_FMAP];
  float input_l;
  float output;
  // union { float fval; int ival;} input_union;
  // union { float fval; int ival;} output_union;
  //  read one test image into digit
  //  for (int i = 0; i < I_WIDTH1 * I_WIDTH1 / BUS_WIDTH; i++)
  //  {

  //   input_l = strm_in.read();
  //   //std::cout << "i " << (I_WIDTH1 * I_WIDTH1 / BUS_WIDTH)<<" \n";
  //   //std::cout << "i " <<i <<" \n";
  //   for (int j = 0; j < BUS_WIDTH; j++)
  //   {
  //     union { float fval; int ival;} input_union;
  //     float f =  input_union.fval;
  //     //input[i * BUS_WIDTH + j] = input_l(j, j);
  //     input[i * BUS_WIDTH + j] = f;
  //   }
  // }
  // std::cout << "i " <<i <<" \n";
  for (int i = 0; i < 3072; i++)
  {

    input_l = strm_in.read();
    // std::cout << "i " << (I_WIDTH1 * I_WIDTH1 / BUS_WIDTH)<<" \n";
    // std::cout << "i " <<i <<" \n";
    // if(i == 3){
    // std::cout << "QAZ"<<input_l<< "\n";
    // }
    input[i] = input_l;
  }
  // std::cout << "1 " <<" \n";
  // call mlp
  // std::cout << "mlp "<< mlp_xcel(input) <<" \n";
  output = mlp_xcel(input);
  // std::cout << "2 " <<" \n";
  //  output = mlp_xcel(first_img);
  //  write out the result
  strm_out.write(output);
  // std::cout << "3 "  <<" \n";
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

  for (int i = 0; i < 4704; i++)
  {
    mem_conv1[i] = 0;
    mem_conv2[i] = 0;
  }

  print_array(input, 100);

  /*
    conv1
    M=3 N=6 I=32 F=5 FILTER_SIZE=25
    input: 3*32*32
    weight: 6*3*5*5 (N*M*F*F)
    bias: 6
    output: 6*28*28
  */
  conv1(input, mem_conv2, 3, 6, 32, 0);

  cout << "conv1 done \n";
  print_array(mem_conv2, 100);

  /*
    pool1
    M=6 I=28
    input: 6*28*28
    output: 6*14*14
  */
  max_pool(mem_conv2, mem_conv1, 6, 28);

  cout << "conv1 and pool1 done \n";
  print_array(mem_conv1, 100);

  /* Second Conv Layer */
  conv1(mem_conv1, mem_conv2, 6, 16, 14, 1);
  max_pool(mem_conv2, mem_conv1, 2, 2);

  reshape(mem_conv1, mem_conv2);

  /* Dense Layers */
  dense_mlp(mem_conv2, mem_conv1, fc1_weight, fc1_bias, 400, 120, true);
  dense_mlp(mem_conv1, mem_conv2, fc2_weight, fc2_bias, 120, 84, true);
  dense_mlp(mem_conv2, mem_conv1, fc3_weight, fc3_bias, 84, 2, false);

  // predict car or truck
  // std::cout << "B " <<" \n";
  // std::cout << "mem_conv0: " << mem_conv1[0]<<" \n";
  // std::cout << "mem_conv1: " << mem_conv1[1]<<" \n";
  if (mem_conv1[0] < mem_conv1[1])
  {
    // std::cout << "C " <<" \n";
    final_out = 1;
  }
  // std::cout << "D " <<" \n";
  return final_out;
}
