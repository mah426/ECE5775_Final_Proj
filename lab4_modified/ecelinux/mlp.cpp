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

bit32_t mlp_xcel(float input[MAX_FMAP])
{
  float mem_conv1[MAX_FMAP];
  float mem_conv2[MAX_FMAP];
  //   self.fc1 = torch.nn.Linear(3072, 2000)
  //   self.fc2 = torch.nn.Linear(2000, 1500)
  //   self.fc3 = torch.nn.Linear(1500, 1000)
  //   self.fc4 = torch.nn.Linear(1000, 800)
  //   self.fc5 = torch.nn.Linear(800, 400)
  //   self.fc6 = torch.nn.Linear(400, 200)
  //   self.fc7 = torch.nn.Linear(200, 100)
  //   self.fc8 = torch.nn.Linear(100, 10)
  //   self.out = torch.nn.Linear(10, 2)

        //   self.conv1 = nn.Conv2d(3, 6, 5)
        // self.pool = nn.MaxPool2d(2, 2)
        // self.conv2 = nn.Conv2d(6, 16, 5)
        // self.fc1 = nn.Linear(16 * 5 * 5, 120)
        // self.fc2 = nn.Linear(120, 84)
        // self.fc3 = nn.Linear(84, 2)
  /* Dense Layers */

  /* First Conv Layer */
  conv(mem_conv1, mem_conv2, threshold1, 1, N_CHANNEL1, I_WIDTH1+PADDING, 0);
  max_pool(mem_conv2, mem_conv1, N_CHANNEL1, I_WIDTH1);

  /* Second Conv Layer */
  conv(mem_conv2, mem_conv1, threshold2, N_CHANNEL1, N_CHANNEL2, I_WIDTH2+PADDING, 1);
  max_pool(mem_conv1, mem_conv2, N_CHANNEL2, I_WIDTH2);

  reshape(mem_conv2, mem_conv1);

  /* Dense Layers */
  dense_mlp(mem_conv1, mem_conv2, fc1_weight, fc1_bias, 16 * 5 * 5, 120);
  dense_mlp(mem_conv2, mem_conv1, fc2_weight, fc2_bias, 120, 84);
  dense_mlp(mem_conv1, mem_conv2, fc3_weight, fc3_bias, 84, 2);

  // predict car or truck
  if (mem_conv1[0] > mem_conv1[1])
  {
    return 0;
  }
  return 1;
}
