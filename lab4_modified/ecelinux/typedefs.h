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

typedef union utype_
{
    float fval;
    int ival;
    // dtype dval;
} utype;

#ifdef FIXED_TYPE // fixed type

#ifndef TOT_WIDTH
#define TOT_WIDTH 32
#endif

#ifndef INT_WIDTH
#define INT_WIDTH 16
#endif

typedef ap_fixed<TOT_WIDTH, INT_WIDTH> dtype;

#else   // floating-point 

typedef float dtype;

#endif

#endif
