//===========================================================================
// typedefs.h
//===========================================================================
// @brief: This header defines the shorthand of several ap_uint data types.

#ifndef TYPEDEFS
#define TYPEDEFS

#include <ap_int.h>

typedef bool bit;
typedef ap_int<8> bit8_t;
typedef ap_uint<2> bit2_t;
typedef ap_uint<32> bit32_t;

// typedef float dtype;

typedef ap_fixed<32, 16, AP_TRN> dtype;

typedef union
{
    dtype fval;
    int ival;
} utype;

#endif
