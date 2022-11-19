//=========================================================================
// testbench.cpp
//=========================================================================
// @brief: testbench for k-nearest-neighbor digit recongnition application

#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>

#include "matmult.h"


//using namespace std;

int main() 
{
  std::ofstream outfile;
  outfile.open("out.dat");
  bit32_t i1[100][100];
  bit32_t i2[100][100];
  for (int i = 0; i < 100; i++) {
    for (int j = 0; j < 100; j++) {
      i1[i][j] = rand()%100;
      i2[i][j] = rand()%100;
    }
  }
  bit32_t expected[100][100];

  for (int i = 0; i < 100; i++) {
        for (int j = 0; j < 100; j++) {
            for (int k = 0; k < 100; k++) {
                expected[i][j] += i1[i][k] * i2[k][j];
            }
        }
    }
  bit32_t result[100][100];
  bool correct = true;
  matmult(i1,i2,result);
  int wrong = 0;
  for (int i = 0; i < 100; i++) {
    for (int j = 0; j < 100; j++) {
      if (expected[i][j] != result[i][j]){
        correct = false;
        wrong++;
      } 
    }
  }
  outfile << "result \n";
    for (int i = 0; i < 100; i++) {
        for (int j = 0; j < 100; j++) {
            outfile <<  std::dec << result[i][j] << " ";
        }
        outfile << "\n";
    }

    outfile << "expected \n";
    for (int i = 0; i < 100; i++) {
        for (int j = 0; j < 100; j++) {
            outfile <<  std::dec << expected[i][j] << " ";
        }
        outfile <<"\n";
    }

  

  if (correct){
    std::cout << " matrix matches! \n";
    std::cout << " 100% accurate \n";
  }
  else{
    std::cout << " matrix does NOT match! \n";
    std::cout <<  std::dec<< wrong <<"\n";
    std::cout << " accuracy = " << std::dec << (10000.0-wrong)/10000.0 << "\n";
  }
  return 0;
}
