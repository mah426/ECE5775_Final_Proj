//===========================================================================
// model.h
//===========================================================================
// @brief: This header file include the parameters for BNN

#ifndef MODEL_CONV
#define MODEL_CONV

#include"layer.h"

const float w_fc1[MAX_W_FC] = {
  #include"data/fc1_bias"
};

const float b_fc1[FC2_UNITS] = {
  #include"data/weight_11p"
};

const float w_fc2[FC2_UNITS*OUT] = {
  #include"data/weight_12b"
};

const float b_fc2[OUT] = {
  #include"data/weight_13p"
};




#endif
