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
  bit input[MAX_FMAP];
  bit32_t input_l;
  bit32_t output;

  // read one test image into digit
  for (int i = 0; i < I_WIDTH1 * I_WIDTH1 / BUS_WIDTH; i++)
  {
    input_l = strm_in.read();
    for (int j = 0; j < BUS_WIDTH; j++)
    {
      input[i * BUS_WIDTH + j] = input_l(j, j);
    }
  }
  // call mlp
  output = mlp_xcel(input);

  // write out the result
  strm_out.write(output);
}

//----------------------------------------------------------
// mlp Accelerator
//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the predicted digit

bit32_t mlp_xcel(bit input[MAX_FMAP])
{
  bit mem_conv1[MAX_FMAP];
  bit mem_conv2[MAX_FMAP];
  //   self.fc1 = torch.nn.Linear(3072, 2000)
  //   self.fc2 = torch.nn.Linear(2000, 1500)
  //   self.fc3 = torch.nn.Linear(1500, 1000)
  //   self.fc4 = torch.nn.Linear(1000, 800)
  //   self.fc5 = torch.nn.Linear(800, 400)
  //   self.fc6 = torch.nn.Linear(400, 200)
  //   self.fc7 = torch.nn.Linear(200, 100)
  //   self.fc8 = torch.nn.Linear(100, 10)
  //   self.out = torch.nn.Linear(10, 2)
  /* Dense Layers */
  dense_mlp(mem_conv1, mem_conv2, w_fc1, b_fc1, 3072, 2000);
  dense_mlp(mem_conv2, mem_conv1, w_fc2, b_fc2, 2000, 1500);
  dense_mlp(mem_conv1, mem_conv2, w_fc3, b_fc3, 1500, 1000);
  dense_mlp(mem_conv2, mem_conv1, w_fc4, b_fc4, 1000, 800);
  dense_mlp(mem_conv1, mem_conv2, w_fc5, b_fc5, 800, 400);
  dense_mlp(mem_conv2, mem_conv1, w_fc6, b_fc6, 200, 100);
  dense_mlp(mem_conv1, mem_conv2, w_fc7, b_fc7, 100, 10);
  dense_mlp(mem_conv2, mem_conv1, w_fc8, b_fc8, 10, 2);

  // find predicted digit
  bit32_t max_id = 0;
  for (int i = 1; i < 10; i++)
    if (mem_conv1[i])
      max_id = i;
  return max_id;
}
