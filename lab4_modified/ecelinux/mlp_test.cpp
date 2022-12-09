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
  
  float test_image;
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
