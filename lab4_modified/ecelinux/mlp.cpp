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
  union { float fval; int ival;} input_union;
  //union { float fval; int ival;} output_union;
  // read one test image into digit
  for (int i = 0; i < I_WIDTH1 * I_WIDTH1 / BUS_WIDTH; i++)
  {
    

    input_l = strm_in.read();
    //std::cout << "i " << (I_WIDTH1 * I_WIDTH1 / BUS_WIDTH)<<" \n";
    //std::cout << "i " <<i <<" \n";
    for (int j = 0; j < BUS_WIDTH; j++)
    {
      union { float fval; int ival;} input_union;
      float f =  input_union.fval;
      //input[i * BUS_WIDTH + j] = input_l(j, j);
      input[i * BUS_WIDTH + j] = f;
    }
  }
  //std::cout << "1 " <<" \n";
  // call mlp
  //std::cout << "mlp "<< mlp_xcel(input) <<" \n";
  output = mlp_xcel(input);
  //std::cout << "2 " <<" \n";

  // write out the result
  strm_out.write(output);
  //std::cout << "3 "  <<" \n";
}

//----------------------------------------------------------
// mlp Accelerator
//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the predicted digit

bit32_t mlp_xcel(float input[MAX_FMAP])
{ 
  bit32_t output = 0;
  float mem_conv1[MAX_FMAP];
  float mem_conv2[MAX_FMAP];

        //   self.conv1 = nn.Conv2d(3, 6, 5)
        // self.pool = nn.MaxPool2d(2, 2)
        // self.conv2 = nn.Conv2d(6, 16, 5)
        // self.fc1 = nn.Linear(16 * 5 * 5, 120)
        // self.fc2 = nn.Linear(120, 84)
        // self.fc3 = nn.Linear(84, 2)
  /* Dense Layers */

  /* First Conv Layer */
  
  //std::cout << "A " <<" \n";
  conv(mem_conv1, mem_conv2, 1, N_CHANNEL1, I_WIDTH1+PADDING, 0);
 
  max_pool(mem_conv2, mem_conv1, 2, 2);

  // /* Second Conv Layer */
  
  conv(mem_conv2, mem_conv1, N_CHANNEL1, N_CHANNEL2, I_WIDTH2+PADDING, 1);
  max_pool(mem_conv1, mem_conv2, 2, 2);

  reshape(mem_conv2, mem_conv1);

  // /* Dense Layers */
   dense_mlp(mem_conv1, mem_conv2, fc1_weight, fc1_bias, 16 * 5 * 5, 120);
   dense_mlp(mem_conv2, mem_conv1, fc2_weight, fc2_bias, 120, 84);
   dense_mlp(mem_conv1, mem_conv2, fc3_weight, fc3_bias, 84, 2);
 
  // predict car or truck
  //std::cout << "B " <<" \n";
  //std::cout << "mem_conv0: " << mem_conv1[0]<<" \n";
  //std::cout << "mem_conv1: " << mem_conv1[1]<<" \n";
  if (mem_conv1[0] < mem_conv1[1])
  {
    //std::cout << "C " <<" \n";
    output = 1;
  }
  //std::cout << "D " <<" \n";
  return output;
}
