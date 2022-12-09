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
  //union { float fval; int ival;} input_union;
  //union { float fval; int ival;} output_union;
  // read one test image into digit
  // for (int i = 0; i < I_WIDTH1 * I_WIDTH1 / BUS_WIDTH; i++)
  // {
    

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
  //std::cout << "i " <<i <<" \n";
  for (int i = 0; i < 3072; i++)
  {
    

    input_l = strm_in.read();
    //std::cout << "i " << (I_WIDTH1 * I_WIDTH1 / BUS_WIDTH)<<" \n";
    //std::cout << "i " <<i <<" \n";
    //if(i == 3){
    //std::cout << "QAZ"<<input_l<< "\n";
    //}
    input[i] = input_l;
  }
      //std::cout << "1 " <<" \n";
  // call mlp
  //std::cout << "mlp "<< mlp_xcel(input) <<" \n";
  std::cout << "Starting Output Function: " << endl;
  float mlp_result = 0;
  mlp_xcel(input, &mlp_result);
  output = mlp_result;
  //std::cout << "2 " <<" \n";
  std::cout << "output: " << output << endl;
  // write out the result
  strm_out.write(output);
  std::cout << "D" << endl;
  //std::cout << "3 "  <<" \n";
}

//----------------------------------------------------------
// mlp Accelerator//=========================================================================
// mlp_test.cpp
//=========================================================================
// @brief: testbench for Binarized Neural Betwork(mlp) digit recongnition application

#include <iostream>
#include <fstream>
#include "mlp.h"
#include "timer.h"
#include <string>
#include <sstream>

using namespace std;

// Number of test instances
 const int TEST_SIZE = 2000;
 const int TEST_SIZE_HALF = 1000;
// const int TEST_SIZE = 1;
// const int TEST_SIZE_HALF = 1;

//------------------------------------------------------------------------
// Helper function for reading images and labels
//------------------------------------------------------------------------

void read_test_images(int8_t test_images[TEST_SIZE][256]) {
  std::ifstream infile("data/test_b.dat");
  if (infile.is_open()) {
    for (int index = 0; index < TEST_SIZE; index++) {
      for (int pixel = 0; pixel < 256; pixel++) {
        int i; 
        infile >> i;
        test_images[index][pixel] = i;
      }
    }
    infile.close();
  }
}

void read_any(float test_images[TEST_SIZE_HALF][3072], string item) {
  for (int k = 0; k <TEST_SIZE_HALF; k++){
    string e = "data/testing_data/normalized_";
    string f = "_32/";
    string b =  ".jpg.dat";
    stringstream ss;
    ss << k;
    string str = ss.str();
    string file = string(e) + item  + f + str + b;
    std::ifstream infile(file.c_str());
    if (infile.is_open()) {
      for (int pixel = 0; pixel < 3072; pixel++) {
        float i;
        infile >> i;
        test_images[k][pixel] = i;
        if(pixel == 3071  && k ==1){
        //std::cout << file <<" \n";
        //std::cout << pixel  << " " << test_images[k][pixel] <<" \n";
        }
      }
      infile.close();
    }
  }
}

void read_test_labels(int test_labels[TEST_SIZE]) {
  std::ifstream infile("data/label.dat");
  if (infile.is_open()) {
    for (int index = 0; index < TEST_SIZE; index++) {
      infile >> test_labels[index];
    }
    infile.close();
  }
}

//------------------------------------------------------------------------
// Digitrec testbench
//------------------------------------------------------------------------

int main(){
  // HLS streams for communicating with the cordic block
  hls::stream<float> digitrec_in;
  hls::stream<float> digitrec_out;
  
  float cars[TEST_SIZE_HALF][3072];
  float trucks[TEST_SIZE_HALF][3072];
  float test_images[TEST_SIZE][3072];
  int test_labels[TEST_SIZE];
  for (int  i = 0; i<TEST_SIZE; i++){
    if(i<TEST_SIZE_HALF){
      test_labels[i] = 0;
    }
    else{
      test_labels[i] = 1;
    }
  }
  
  // read test images and labels
  read_any(cars,"cars");
  read_any(trucks,"trucks");
  for (int j = 0; j<3072; j++){
    for (int i=0; i<TEST_SIZE; i++){
      if(i<TEST_SIZE_HALF){
        test_images[i][j] = cars[i][j];
      }
      else{
        test_images[i][j] = trucks[i-TEST_SIZE_HALF][j];
      }
    }
  }
  //read_test_labels(test_labels);
  
  float test_image = 0.0;
  float correct = 0.0;
  
  // Timer
  Timer timer("digirec mlp");
  timer.start();

  // pack images to 32-bit and transmit to dut function 
  for (int test = 0; test < TEST_SIZE; test++) {
    std::cout << test <<" \n";
    //for (int i = 0; i < I_WIDTH1 * I_WIDTH1 / BUS_WIDTH; i++) {
    //std::cout << "test number: " <<test <<" \n";
      for (int i = 0; i <3072; i++) {
      //std::cout << "A" << "\n";

      //for (int j = 0; j < BUS_WIDTH; j++) {
        
        test_image = test_images[test][i];
        
        //if (i == 1 ){
        //std::cout << test_images[test][i] <<" \n";
        //std::cout << test_image <<" \n";
       // }
      //}
        
      digitrec_in.write(test_image);
     
  }
    
    // perform prediction
    //std::cout << test<< "\n";
    dut(digitrec_in, digitrec_out);
   
    // check results
    if (digitrec_out.read() == test_labels[test]) correct += 1.0;
  }
  timer.stop();

  // Calculate accuracy
  std::cout << "Accuracy: " << correct/TEST_SIZE << std::endl;
  
  return 0;
}

//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the predicted digit

float mlp_xcel(float input[3072], float final_out)
{ 
  float mem_conv1[4704];
  float mem_conv2[4704];

  for (int i = 0; i < 4704; i++){
    mem_conv1[i] = 0;
    mem_conv2[i] = 0;

  }
   std::ofstream outfile;
   outfile.open("testing.dat");
  /* First Conv Layer */
  conv1(input, mem_conv2, 3, 6, 32, 0);
  // outfile << "conv1 output \n";
  // for (int i = 0; i < 4704; i++) {    
  //   outfile << i << ": " << mem_conv2[i]<< "\n";
  // }
  
  // ! erase
  // std::cout << "After first conv " << endl;
  // std::cout << "mem_conv2[0]: " << mem_conv2[0]<<" \n";
  // std::cout << "mem_conv2[1]: " << mem_conv2[1]<<" \n";

  max_pool(mem_conv2, mem_conv1, 2, 2);
  // ! erase
  // std::cout << "After first MaxPool " << endl;
  // std::cout << "mem_conv1[0]: " << mem_conv1[0]<<" \n";
  // std::cout << "mem_conv1[1]: " << mem_conv1[1]<<" \n";

  // /* Second Conv Layer */
  conv1(mem_conv1, mem_conv2, 6, 16, 14, 1);
  // ! erase
  // std::cout << "After second conv " << endl;
  // std::cout << "mem_conv2[0]: " << mem_conv2[0]<<" \n";
  // std::cout << "mem_conv2[1]: " << mem_conv2[1]<<" \n";

  
  max_pool(mem_conv2, mem_conv1, 2, 2);
  // ! erase
  // std::cout << "After second MaxPool " << endl;
  // std::cout << "mem_conv1[0]: " << mem_conv1[0]<<" \n";
  // std::cout << "mem_conv1[1]: " << mem_conv1[1]<<" \n";


  reshape(mem_conv1, mem_conv2);
  // ! erase
  // std::cout << "After reshape" << endl;
  // std::cout << "mem_conv2[0]: " << mem_conv2[0]<<" \n";
  // std::cout << "mem_conv2[1]: " << mem_conv2[1]<<" \n";


  // /* Dense Layers */
  dense_mlp(mem_conv2, mem_conv1, fc1_weight, fc1_bias, 400, 120, true);
  // ! erase
  // std::cout << "After first linear" << endl;
  // std::cout << "mem_conv1[0]: " << mem_conv1[0]<<" \n";
  // std::cout << "mem_conv1[1]: " << mem_conv1[1]<<" \n";

  dense_mlp(mem_conv1, mem_conv2, fc2_weight, fc2_bias, 120, 84, true);
    // ! erase
  // std::cout << "After Second linear" << endl;
  // std::cout << "mem_conv2[0]: " << mem_conv2[0]<<" \n";
  // std::cout << "mem_conv2[1]: " << mem_conv2[1]<<" \n";

  dense_mlp(mem_conv2, mem_conv1, fc3_weight, fc3_bias, 84, 2, false);
 
  // predict car or truck
  //std::cout << "B " <<" \n";
  std::cout << "After third linear" << endl;
  std::cout << "mem_conv1[0]: " << mem_conv1[0]<<" \n";
  std::cout << "mem_conv1[1]: " << mem_conv1[1]<<" \n";
  final_out = 0;
  std::cout << "A" << endl;
  if (mem_conv1[0] < mem_conv1[1])
  {
    //std::cout << "C " <<" \n";
    final_out = 1;
  } else {
    final_out = 0;
  }
  std::cout << "B" << endl;
  //std::cout << "D " <<" \n";
  std::cout << "test if not segfaulted" << endl;
  std::cout << "final_out: " << final_out << endl;
  outfile.close();
}
