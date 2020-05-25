#pragma once



// set this MACRO if you want to speed up C/RTL co-simulation
#define C_RTL_COSIMULATION



#ifndef C_RTL_COSIMULATION
	#include "ap_int.h"
	#define UNIT_WORD_BITWIDTH 64
	#define WUnsignedDigit ap_uint<128>
	#define WSignedDigit ap_int<128>
	#define UnsignedUnitDigit ap_uint<64>
#else
	// for C/RTL co-simulation verification
	#define UNIT_WORD_BITWIDTH 32
	#define WUnsignedDigit unsigned long long
	#define WSignedDigit long long
	#define UnsignedUnitDigit unsigned int
#endif



template <typename T, int LEN>
struct Array
{
  T data[LEN];
};

template <int MAX_DIGITS, int BITS>
struct Bignum {
  const static int N_ele = MAX_DIGITS;
  unsigned int tmp_bits;
  Bignum(): tmp_bits(0)
  {
//#pragma HLS RESOURCE variable=digits.data core=RAM_T2P_BRAM
  }

  Array<UnsignedUnitDigit, MAX_DIGITS> digits;
};
