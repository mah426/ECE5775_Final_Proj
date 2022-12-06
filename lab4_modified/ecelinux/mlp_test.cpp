//=========================================================================
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
const int TEST_SIZE = 120;

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

void read_any(float test_images[60][3072], string item) {
  for (int k = 1; k < 61; k++){
    string e = "data/testing_data/normalized_";
    string f = "_32/";
    string b =  ".png.dat";
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
  hls::stream<bit32_t> digitrec_in;
  hls::stream<bit32_t> digitrec_out;
  
  float cars[60][3072];
  float trucks[60][3072];
  float test_images[TEST_SIZE][3072];
  int test_labels[120];
  for (int  i = 0; i<120; i++){
    if(i<60){
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
    for (int i=0; i<120; i++){
      if(i<60){
        test_images[i][j] = cars[i][j];
      }
      else{
        test_images[i][j] = trucks[i-60][j];
      }
    }
  }
  //read_test_labels(test_labels);
  
  bit32_t test_image;
  float correct = 0.0;
  
  // Timer
  Timer timer("digirec mlp");
  timer.start();
  
  // pack images to 32-bit and transmit to dut function 
  for (int test = 0; test < TEST_SIZE; test++) {
    for (int i = 0; i < I_WIDTH1 * I_WIDTH1 / BUS_WIDTH; i++) {
      for (int j = 0; j < BUS_WIDTH; j++) {
        test_image(j,j) = test_images[test][i*BUS_WIDTH+j];
      }
      digitrec_in.write(test_image);
    }
    
    // perform prediction
    dut(digitrec_in, digitrec_out);
   
    // check results
    if (digitrec_out.read() == test_labels[test]) correct += 1.0;
  }
  timer.stop();

  // Calculate accuracy
  std::cout << "Accuracy: " << correct/TEST_SIZE << std::endl;
  
  return 0;
}
