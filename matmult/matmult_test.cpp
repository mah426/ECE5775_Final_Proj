//=========================================================================
// testbench.cpp
//=========================================================================
// @brief: testbench for k-nearest-neighbor digit recongnition application

#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>
#include <ctime>
#include "matmult.h"


//using namespace std;

int main() 
{
  srand ( time(NULL) );
  std::ofstream outfile;
  outfile.open("out.dat");
  float i1[100][100];
  float i2[100][100];
  float LO = 0.0;
  float HI = 256.0;
  for (int i = 0; i < 100; i++) {
    for (int j = 0; j < 100; j++) {
      i1[i][j] = LO + static_cast <float> (rand()) /( static_cast <float> (RAND_MAX/(HI-LO)));
      i2[i][j] = LO + static_cast <float> (rand()) /( static_cast <float> (RAND_MAX/(HI-LO)));
    }
  }
  float expected[100];

  for (int i = 0; i < 100; i++) {
    expected[i] = 0;
    for (int j = 0; j < 100; j++) {
      expected[i] += i1[i][j] * i2[i][j];
    }
  }
  float result[100];
  bool correct = true;
  matmult(i1,i2,result);
  int wrong = 0;
  for (int i = 0; i < 100; i++) {
    if (expected[i] != result[i]){
      correct = false;
      wrong++;
    }
  }
  outfile << "result \n";
    for (int i = 0; i < 100; i++) {
      outfile <<  std::dec << result[i] << " ";
    }

    outfile << "expected \n";
    for (int i = 0; i < 100; i++) {
      outfile <<  std::dec << expected[i] << " ";
    }

  

  if (correct){
    std::cout << " matrix matches! \n";
    std::cout << " 100% accurate \n";
  }
  else{
    std::cout << " matrix does NOT match! \n";
    std::cout <<  std::dec<< wrong <<"\n";
    std::cout << " accuracy = " << std::dec << (100.0-wrong)/100.0 << "\n";
  }
  return 0;
}
