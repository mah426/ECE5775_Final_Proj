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
#include "model.h"
#include <vector>
#include <string>

using namespace std;

// Number of test instances
 const int TEST_SIZE = 2000;
 const int TEST_SIZE_HALF = 1000;

//------------------------------------------------------------------------
// Helper function for reading images and labels
//------------------------------------------------------------------------

void read_test_images1(float test_images[100][3072])
{
  char fname[25] = "test_data2/test_data.dat";
  FILE *file = fopen(fname, "r");
  if (!file)
  {
    printf("Could not open the file\n");
    exit(0);
  }

  char content[3072 * 30];
  int i = 0;
  while (fgets(content, 3072 * 30, file))
  {
    const char *v = strtok(content, ",");
    int j = 0;
    while (v)
    {
      // printf("%s ", v);
      test_images[i][j] = atof(v);
      j++;
      v = strtok(NULL, ",");
    }
    // printf("\n");
    i++;
  }
  fclose(file);
}


void read_any(float test_images[TEST_SIZE_HALF][3072], string item)
{
  for (int k = 0; k < TEST_SIZE_HALF; k++)
  {
    string e = "data/testing_data/normalized_";
    string f = "_32/";
    string b = ".jpg.dat";
    stringstream ss;
    ss << k;
    string str = ss.str();
    string file = string(e) + item + f + str + b;
    std::ifstream infile(file.c_str());
    if (infile.is_open())
    {
      for (int pixel = 0; pixel < 3072; pixel++)
      {
        float i;
        infile >> i;
        test_images[k][pixel] = i;
        if (pixel == 3071 && k == 1)
        {
          // std::cout << file <<" \n";
          // std::cout << pixel  << " " << test_images[k][pixel] <<" \n";
        }
      }
      infile.close();
    }
  }
}

void read_test_labels(int test_labels[TEST_SIZE])
{
  std::ifstream infile("data/label.dat");
  if (infile.is_open())
  {
    for (int index = 0; index < TEST_SIZE; index++)
    {
      infile >> test_labels[index];
    }
    infile.close();
  }
}

//------------------------------------------------------------------------
// Digitrec testbench
//------------------------------------------------------------------------

int main()
{
  // HLS streams for communicating with the cordic block
  hls::stream<bit32_t> digitrec_in;
  hls::stream<bit32_t> digitrec_out;

  dtype test_images[100][3072];
  read_test_images1(test_images);

  dtype test_image;
  int correct = 0;

  // Timer
  Timer timer("digirec mlp");
  timer.start();

  // pack images to 32-bit and transmit to dut function
  for (int test = 0; test < 100; test++)
  {
    std::cout << test << " \n";
    for (int i = 0; i < 3072; i++)
    {
      utype u;
      u.fval = test_images[test][i];
      int iv = u.ival;
      test_image = iv;
      digitrec_in.write(test_image);
    }
    // perform prediction
    dut(digitrec_in, digitrec_out);

    // check results
    if (digitrec_out.read() == 0)
      correct += 1;
  }

  timer.stop();

  // Calculate accuracy
  std::cout << "Accuracy: " << (float) correct / 100.0 << std::endl;

  return 0;
}
