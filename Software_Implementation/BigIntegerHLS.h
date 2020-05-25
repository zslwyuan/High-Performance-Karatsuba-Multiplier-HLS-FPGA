#pragma once

// #include "ap_int.h"

#define UNIT_WORD_BITWIDTH 32 // CAN ONLY 32-BIT CURRENTLY BUT GOOD ENOUGH FOR FPGA AXI-4 BUS
#define WUnsignedDigit unsigned long long
#define WSignedDigit long long
#define UnsignedUnitDigit unsigned int


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
  }

  Array<UnsignedUnitDigit, MAX_DIGITS> digits;
};
