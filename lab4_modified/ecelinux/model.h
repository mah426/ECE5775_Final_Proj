//===========================================================================
// model.h
//===========================================================================
// @brief: This header file include the parameters for BNN

#ifndef MODEL_CONV
#define MODEL_CONV

#include "layer.h"

const float w_fc1[3072 * 2000] = {
#include "data/fc1_weights"
};

const float b_fc1[2000] = {
#include "data/fc1_bias"
};

const float w_fc2[2000 * 1500] = {
#include "data/fc2_weights"
};

const float b_fc2[1500] = {
#include "data/fc2_bias"
};

#endif
