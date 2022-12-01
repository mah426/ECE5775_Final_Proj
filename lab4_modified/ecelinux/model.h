//===========================================================================
// model.h
//===========================================================================
// @brief: This header file include the parameters for mlp

#ifndef MODEL_CONV
#define MODEL_CONV

#include "layer.h"

// 6*3*5*5 = 450
const float conv1_weight[450] = {
#include "data/conv1_weight"
};

const float conv1_bias[6] = {
#include "data/conv1_bias"
};

// 16*6*5*5 = 2400
const float conv2_weight[2400] = {
#include "data/conv2_weight"
};

const float conv1_bias[6] = {
#include "data/conv2_bias"
};

// 120*400=48000
const float fc1_weight[48000] = {
#include "data/fc1_weight"
};

const float fc1_bias[120] = {
#include "data/fc1_bias"
};

// 84*120=10080
const float fc2_weight[10080] = {
#include "data/fc2_weight"
};

const float fc2_bias[84] = {
#include "data/fc2_bias"
};

// 2*84=168
const float fc3_weight[168] = {
#include "data/fc3_weight"
};

const float fc3_bias[2] = {
#include "data/fc3_bias"
};

#endif
