//==========================================================================
//digitrec.cpp
//==========================================================================
// @brief: A k-nearest-neighbor implementation for digit recognition (k=1)

#include "digitrec.h"
#define DIGIT_SIZE 49
#define DIGIT_OPTION_NUM 10
//----------------------------------------------------------
// Top function
//----------------------------------------------------------

void dut(
    hls::stream<bit32_t> &strm_in,
    hls::stream<bit32_t> &strm_out
)
{
  // -----------------------------
  // YOUR CODE GOES HERE
  // -----------------------------
  digit input_digit;
  bit32_t input_lo = strm_in.read();
  bit32_t input_hi = strm_in.read();
  input_digit(31, 0)            = input_lo;
  input_digit(DIGIT_SIZE-1, 32) = input_hi;
  bit4_t output = digitrec(input_digit);
  strm_out.write(output);
}

//----------------------------------------------------------
// Digitrec
//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the recognized digit (0~9)

bit4_t digitrec( digit input ) 
{
  #include "training_data.h"

  // This array stores K minimum distances per training set
  bit6_t knn_set[10][K_CONST];

  // Initialize the knn set
  DIGITREC_INIT_KNN_LOOP_0:
  for ( int i = 0; i < 10; ++i )
  DIGITREC_INIT_KNN_LOOP_1:
    for ( int k = 0; k < K_CONST; ++k )
      // Note that the max distance is 49
      knn_set[i][k] = 50; 

  L1800: for ( int i = 0; i < TRAINING_SIZE; ++i ) {
    L10: for ( int j = 0; j < 10; j++ ) {
      // Read a new instance from the training set
      digit training_instance = training_data[j][i];
      // Update the KNN set
      update_knn( input, training_instance, knn_set[j] );
    }
  } 

  // Compute the final output
  return knn_vote( knn_set ); 
}


//-----------------------------------------------------------------------
// update_knn function
//-----------------------------------------------------------------------
// Given the test instance and a (new) training instance, this
// function maintains/updates an array of K minimum
// distances per training set.

// @param[in] : test_inst - the testing instance
// @param[in] : train_inst - the training instance
// @param[in/out] : min_distances[K_CONST] - the array that stores the current
//                  K_CONST minimum distance values per training set

void update_knn( digit test_inst, digit train_inst, bit6_t min_distances[K_CONST] )
{
  // Compute the difference using XOR
  digit diff = test_inst ^ train_inst;

  bit6_t dist = 0;
  // Count the number of set bits
  UPDATE_FIND_DISTANCE_LOOP:
  for ( int i = 0; i < 49; ++i ) { 
    dist += diff[i];
  }

  // -----------------------------
  // YOUR CODE GOES HERE
  // -----------------------------
//update the new minimum distances
  UPDATE_MIN_DISTANCE_LOOP:
  for ( int i = 0; i < K_CONST; i++ )
    if ( min_distances[i] > dist ) {
      min_distances[i] = dist; 
      break;
    }
}

//-----------------------------------------------------------------------
// knn_vote function
//-----------------------------------------------------------------------
// Given 10xK minimum distance values, this function 
// finds the actual K nearest neighbors and determines the
// final output based on the most common digit represented by 
// these nearest neighbors (i.e., a vote among KNNs). 
//
// @param[in] : knn_set - 10xK_CONST min distance values
// @return : the recognized digit
// 

bit4_t knn_vote( bit6_t knn_set[10][K_CONST] )
{
  // -----------------------------
  // YOUR CODE GOES HERE
  // -----------------------------

  bit6_t distance[K_CONST];
  bit4_t digit[K_CONST];
  bit4_t ballot[DIGIT_OPTION_NUM];
  bit4_t max_vote_share = 0;
  bit4_t winner = -1;
  
  //initialize the distance and digit arrays
  VOTE_INIT_LOOP:
    for ( int i = 0; i < K_CONST; i++ ) {
      distance[i] = DIGIT_SIZE+1;
      digit[i] = -1;
    }
  //initialize the ballot
  VOTE_INIT_BALLOT_LOOP:
    for ( int i = 0; i < DIGIT_OPTION_NUM; i++ )
      ballot[i] = 0;

  //loop through every digit option
  VOTE_DIGIT_OPTION_LOOP:
    for ( int i = 0; i < DIGIT_OPTION_NUM; i++ )
  //loop through the distance array
  VOTE_DISTANCE_LOOP:
      for ( int j = 0; j < K_CONST; j++ ) {
  //loop throught the digit array
  VOTE_DIGIT_LOOP:
        for ( int k = 0; k < K_CONST; k++ )
          if ( distance[k] > knn_set[i][j] ) {
  //and finally record the value of knn_set in the distance array if the current value in the distance array is greater
            distance[k] = knn_set[i][j];
            digit[k] = i;
            break;
          }
      }

  //sum up the votes
  VOTE_SUM_VOTE_LOOP:
    for ( int i = 0; i < K_CONST; i++ )
      ballot[digit[i]]++;

  //loop through the results and see who has the most votes
  VOTE_DECIDE_WINNER_LOOP:
    for ( int i = 0; i < DIGIT_OPTION_NUM; i++ )
      if ( ballot[i] > max_vote_share ) {
        max_vote_share = ballot[i];
        winner = i;
      }
    
    return winner;

}

