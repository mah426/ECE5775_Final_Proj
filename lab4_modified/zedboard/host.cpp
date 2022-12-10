#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>
#include<math.h>
#include<assert.h>

#include<iostream>
#include<fstream>

#include "typedefs.h"
#include "timer.h"
#include "model.h"
#include "mlp.h"

//------------------------------------------------------------------------
// Helper function for reading images and labels
//------------------------------------------------------------------------
const int TEST_SIZE = 2000;  // number of test instances
const int TEST_SIZE_HALF = 1000;  // number of test instances

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

void read_test_labels(int test_labels[TEST_SIZE]) {
  std::ifstream infile("data/label.dat");
  if (infile.is_open()) {
    for (int index = 0; index < TEST_SIZE; index++) {
      infile >> test_labels[index];
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

//--------------------------------------
// main function
//--------------------------------------
int main(int argc, char** argv)
{
  // Open channels to the FPGA board.
  // These channels appear as files to the Linux OS
  int fdr = open("/dev/xillybus_read_32", O_RDONLY);
  int fdw = open("/dev/xillybus_write_32", O_WRONLY);

  // Check that the channels are correctly opened
  if ((fdr < 0) || (fdw < 0)) {
    fprintf (stderr, "Failed to open Xillybus device channels\n");
    exit(-1);
  }
  
  // Arrays to store test data and expected results (labels)
  float test_images[TEST_SIZE][3072];
  bit32_t test_image;
  int test_labels[TEST_SIZE];

  // Timer
  Timer timer("digitrec mlp on FPGA");
  // intermediate results
  int nbytes;
  int error = 0;
  int num_test_insts = 0;
  float correct = 0.0;
    
  //--------------------------------------------------------------------
  // Read data from the input file into two arrays
  //--------------------------------------------------------------------
  float cars[TEST_SIZE_HALF][3072];
  float trucks[TEST_SIZE_HALF][3072];

  for (int  i = 0; i<TEST_SIZE; i++){
    if(i<TEST_SIZE_HALF){
      test_labels[i] = 0;
    }
    else{
      test_labels[i] = 1;
    }
  }
  read_any(cars,"cars");
  read_any(trucks,"trucks");

  timer.start();
  //--------------------------------------------------------------------
  // Send data to accelerator
  //--------------------------------------------------------------------
  for (int i = 0; i < TEST_SIZE; ++i) {
    // Send 32-bit value through the write channel
    for (int j = 0; j < 96; j++) {
      for (int k = 0; k < 32; k++) {
        test_image(k,k) = test_images[i][j*32+k];
      }
      nbytes = write (fdw, (void*)&test_image, sizeof(test_image));
      assert (nbytes == sizeof(test_image));
    }
  }

  //--------------------------------------------------------------------
  // Receive data from the accelerator
  //--------------------------------------------------------------------
  for (int i = 0; i < TEST_SIZE; ++i) {
    bit32_t output;
    nbytes = read (fdr, (void*)&output, sizeof(output));
    assert (nbytes == sizeof(output));
    // verify results
    if (output == test_labels[i]) correct += 1.0;
  }
  timer.stop();

  //--------------------------------------------------------------------
  // Calculate error rate
  //--------------------------------------------------------------------
  std::cout << "Testing images: " << TEST_SIZE << std::endl;
  std::cout << "Accuracy: " << correct/TEST_SIZE << std::endl;

  return 0;
}
