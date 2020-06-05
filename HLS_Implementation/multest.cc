#include "BigIntegerHLS.h"
#include <cstdio>
#include <iostream>
#include <gmp.h>
#include <string>
#include <assert.h>
#include <time.h>
#include <ctime>
#include <stdlib.h>

// UNIT_WORD_BITWIDTH: split the large number into pieces of small digits, define in header, please check the header
const int BITS_PER_DIGIT = UNIT_WORD_BITWIDTH;


#ifndef C_RTL_COSIMULATION
	// MIN_ELE: the multiplier tree will be generated recursive via template,
	// set the number of operand digits at the leaf level of the tree to stop recursive generation
	#define MIN_ELE 8
	// LARGE_BITWIDTH: define your operand bitwidth, here the example is for 4096x4096=>8192
	#define LARGE_BITWIDTH 4096
#else
	#define MIN_ELE 8
	#define LARGE_BITWIDTH 4096
#endif

using namespace std;

void little_end_to_array(mpz_t a, unsigned int output[1024])
{
    int sizea = mpz_sizeinbase(a, 256);
    // std::cout << "asize is : " << sizea << std::endl;
    unsigned char *ropa = new unsigned char[sizea];
    mpz_export(ropa, NULL,  -1, 1, 1, 0, a); // just for display; remembr mpz_export(rop, NULL,  -1, 1, 1, 0, a); for FPGA
    for (size_t i = 0; i < sizea; ++i) {
        int digit_N = i/4;
        int offset = (i%4)*8;
        output[digit_N] += ropa[i]<<offset;
        //printf("%02x", ropa[i]);
    }
    delete[] ropa;
    //printf("\n");
}


// Addition for Karatsuba Multiplier
template <typename In_T, typename Out_T>
void add_I_O(const In_T *u, const In_T *v, Out_T *w)
{
    w->tmp_bits = 0;
    for (int j = u->N_ele; j < w->N_ele; ++j)  w->digits.data[j] = (0);
    bool needUp = false;
    WUnsignedDigit tmp = 0;
	for (int i = 0; i < u->N_ele; i++)
	{
#pragma HLS pipeline
if (tmp>1)
assert(false);
		tmp += static_cast<WUnsignedDigit>(u->digits.data[i]);
		tmp += static_cast<WUnsignedDigit>(v->digits.data[i]);
        w->digits.data[i] = (static_cast<UnsignedUnitDigit>(tmp));
		tmp >>= UNIT_WORD_BITWIDTH;
	}
    w->tmp_bits = tmp+ u->tmp_bits+ v->tmp_bits;
	return;
}

// Subtraction for Karatsuba Multiplier
template <typename In_T, typename Out_T>
void sub_I_O(const In_T *u, const In_T *v, Out_T *w)
{
    w->tmp_bits = 0;
    // WARNING: WE ASSUME U>V
    int reset_start = u->N_ele < w->N_ele? u->N_ele : w->N_ele;
    for (int j = reset_start; j < w->N_ele; ++j)  w->digits.data[j] = (0);
    bool needDown = false;
    WSignedDigit tmp = 0;
	for (int i = 0; (i < u->N_ele && i < w->N_ele); i++)
	{
#pragma HLS pipeline
		tmp = (WSignedDigit)(u->digits.data[i]);
		tmp -= (WSignedDigit)(v->digits.data[i]);
		tmp -= needDown;
		needDown = 0;
		if (tmp < 0)
		{
			needDown = 1;
			tmp += (((WUnsignedDigit)1)<<UNIT_WORD_BITWIDTH);
			w->digits.data[i] = (static_cast<UnsignedUnitDigit>(tmp));
		}
        else
        {
            w->digits.data[i] = (static_cast<UnsignedUnitDigit>(tmp));
        }        
	}
    w->tmp_bits = (WSignedDigit)(u->tmp_bits)-(WSignedDigit)(v->tmp_bits)-needDown;
	return;
}

// Basic multiplication at the leaf level of Karatsuba Multiplier tree
template <typename In_T, typename Out_T>
void mul_I_O(const In_T *u, const In_T *v, Out_T *w)
{
    w->tmp_bits = 0;
    for (int j = 0; j < w->N_ele; ++j)  w->digits.data[j] = (0);
    int i,j;
    WUnsignedDigit k = 0;
    for (j = 0; j < v->N_ele; ++j)
    {
        k = 0;
        for (i = 0; i < u->N_ele; ++i)
        {
        #pragma HLS pipeline
            if ((i + j)<w->N_ele)
            {
                k += static_cast<WUnsignedDigit>(u->digits.data[i]) * v->digits.data[j] + w->digits.data[(i + j)];
                w->digits.data[(i + j)] = (static_cast<UnsignedUnitDigit>(k));
                k >>= UNIT_WORD_BITWIDTH;
            }                        
        }
        if (k!=0)
        {
                k += w->digits.data[(i + j)];
                w->digits.data[(i + j)] = (static_cast<UnsignedUnitDigit>(k));
                k>>=UNIT_WORD_BITWIDTH;
        } 
    }
    assert(k==0);
    if (v->tmp_bits)
    {
        int offset = v->N_ele;
        WUnsignedDigit tmp = 0;
        for (int i = 0,j=offset; i < u->N_ele; i++,j++)
        {
    #pragma HLS pipeline
            tmp += static_cast<WUnsignedDigit>(u->digits.data[i]);
            tmp += static_cast<WUnsignedDigit>(w->digits.data[j]);
            w->digits.data[j] = ( static_cast<UnsignedUnitDigit>(tmp));
            tmp >>= UNIT_WORD_BITWIDTH;
        }
        w->tmp_bits += tmp;
    }
    if (u->tmp_bits)
    {
        int offset = u->N_ele;
        WUnsignedDigit tmp = 0;
        for (int i = 0,j=offset; i < v->N_ele; i++,j++)
        {
    #pragma HLS pipeline
            tmp += static_cast<WUnsignedDigit>(v->digits.data[i]);
            tmp += static_cast<WUnsignedDigit>(w->digits.data[j]);
            w->digits.data[j] = ( static_cast<UnsignedUnitDigit>(tmp));
            tmp >>= UNIT_WORD_BITWIDTH;
        }
        w->tmp_bits += tmp;
    }
    w->tmp_bits += u->tmp_bits*v->tmp_bits;
    return;
}

// 3-Input special shfit-addtion for result calculation (z2*2^N + z1*2*(N/2) + z0)
template <typename In_T0, typename In_T1, typename In_T2, typename Out_T>
void CAT_I_I_I_O(const In_T0 *x0, const In_T1 *x1, const In_T2 *x2, Out_T *w)
{
    w->tmp_bits = 0;

    // WARNING: WE ASSUME U>V
    for (int j = x0->N_ele; j < w->N_ele; ++j)  w->digits.data[j] = (0);
    int offset = 0;
    for (int i=0;i<x0->N_ele;i++) w->digits.data[i] = x0->digits.data[i];

    offset = x0->N_ele/2;
    WUnsignedDigit tmp = 0;
    int j=offset;
	for (int i = 0; i < x1->N_ele; i++)
	{
#pragma HLS pipeline
if (tmp>1)
assert(false);
		tmp += static_cast<WUnsignedDigit>(x1->digits.data[i]);
		tmp += static_cast<WUnsignedDigit>(w->digits.data[j]);
        w->digits.data[j] = ( static_cast<UnsignedUnitDigit>(tmp));
		tmp >>= UNIT_WORD_BITWIDTH;
		j++;
	}
    w->digits.data[offset+x1->N_ele] = (w->digits.data[(offset+x1->N_ele)]+tmp+x1->tmp_bits);

    offset = x0->N_ele;
    tmp = 0;
    j=offset;
	for (int i = 0; i < x2->N_ele; i++)
	{
#pragma HLS pipeline
if (tmp>1)
assert(false);
		tmp += static_cast<WUnsignedDigit>(x2->digits.data[i]);
		tmp += static_cast<WUnsignedDigit>(w->digits.data[j]);
        w->digits.data[j] = ( static_cast<UnsignedUnitDigit>(tmp));
		tmp >>= UNIT_WORD_BITWIDTH;
		j++;
	}

    return;
}

// declartion of karastuba_mul_template
template <int MAX_N_ele_input, int BITS_PER_DIGIT>
void karastuba_mul_template(
    Bignum<MAX_N_ele_input, BITS_PER_DIGIT>  *lhs,
    Bignum<MAX_N_ele_input, BITS_PER_DIGIT>  *rhs,
    Bignum<2 * MAX_N_ele_input, BITS_PER_DIGIT> *res);

// declartion of karastuba_mul_template lowest level operation
template <int MAX_N_ele_input, int BITS_PER_DIGIT>
void karastuba_mul_template(
    Bignum<MIN_ELE, BITS_PER_DIGIT>  *lhs,
    Bignum<MIN_ELE, BITS_PER_DIGIT>  *rhs,
    Bignum<2 * MAX_N_ele_input, BITS_PER_DIGIT> *res)
{
    mul_I_O<Bignum<MIN_ELE, BITS_PER_DIGIT>, Bignum<2 * MIN_ELE, BITS_PER_DIGIT> >(lhs, rhs, res);
}

// declartion of karastuba_mul_template for z1 (get rid of extra bit for partital addition with tmp_bit)
template <int MAX_N_ele_input, int BITS_PER_DIGIT>
void karastuba_mul_template_z1(
	    Bignum<MAX_N_ele_input / 2 , BITS_PER_DIGIT> *lhs0_tmp,
	    Bignum<MAX_N_ele_input / 2 , BITS_PER_DIGIT> *lhs1_tmp,
	    Bignum<MAX_N_ele_input / 2 , BITS_PER_DIGIT> *rhs0_tmp,
	    Bignum<MAX_N_ele_input / 2 , BITS_PER_DIGIT> *rhs1_tmp,
        Bignum<MAX_N_ele_input, BITS_PER_DIGIT> *cross_mul)
{
#pragma HLS inline off
    Bignum<MAX_N_ele_input / 2, BITS_PER_DIGIT> add0;
    Bignum<MAX_N_ele_input / 2, BITS_PER_DIGIT> add1;

    add0.tmp_bits=add1.tmp_bits=0;

    add_I_O<Bignum<MAX_N_ele_input / 2 , BITS_PER_DIGIT>,Bignum<MAX_N_ele_input / 2, BITS_PER_DIGIT> >(lhs0_tmp,lhs1_tmp, &add0);    
    add_I_O<Bignum<MAX_N_ele_input / 2 , BITS_PER_DIGIT>,Bignum<MAX_N_ele_input / 2, BITS_PER_DIGIT> >(rhs0_tmp,rhs1_tmp,&add1);

    karastuba_mul_template<MAX_N_ele_input / 2,BITS_PER_DIGIT>(&add0, &add1, cross_mul);
    return;
}

// declartion of overall karastuba_mul_template which can generate tree with template
template <int MAX_N_ele_input, int BITS_PER_DIGIT>
void karastuba_mul_template(
    Bignum<MAX_N_ele_input, BITS_PER_DIGIT>  *lhs,
    Bignum<MAX_N_ele_input, BITS_PER_DIGIT>  *rhs,
    Bignum<2 * MAX_N_ele_input, BITS_PER_DIGIT> *res
    )
{
#pragma HLS inline off
    Bignum<MAX_N_ele_input / 2 , BITS_PER_DIGIT> lhs0,lhs1,rhs0,rhs1,lhs0_tmp,lhs1_tmp,rhs0_tmp,rhs1_tmp;
    lhs0.tmp_bits=lhs1.tmp_bits=rhs0.tmp_bits=rhs1.tmp_bits=lhs0_tmp.tmp_bits=lhs1_tmp.tmp_bits=rhs0_tmp.tmp_bits=rhs1_tmp.tmp_bits=0;
    for (int i=0;i<lhs0.N_ele;i++)lhs0.digits.data[i]=lhs0_tmp.digits.data[i]=lhs->digits.data[i];
    for (int i=0;i<lhs1.N_ele;i++)lhs1.digits.data[i]=lhs1_tmp.digits.data[i]=lhs->digits.data[i+MAX_N_ele_input / 2];
    for (int i=0;i<rhs0.N_ele;i++)rhs0.digits.data[i]=rhs0_tmp.digits.data[i]=rhs->digits.data[i];
    for (int i=0;i<rhs1.N_ele;i++)rhs1.digits.data[i]=rhs1_tmp.digits.data[i]=rhs->digits.data[i+MAX_N_ele_input / 2];


    Bignum<MAX_N_ele_input, BITS_PER_DIGIT>  z0;
    karastuba_mul_template<MAX_N_ele_input / 2,BITS_PER_DIGIT>(&lhs0, &rhs0, &z0);
    Bignum<MAX_N_ele_input, BITS_PER_DIGIT>  z2;
    karastuba_mul_template<MAX_N_ele_input / 2,BITS_PER_DIGIT>(&lhs1, &rhs1, &z2);
    Bignum<MAX_N_ele_input, BITS_PER_DIGIT> cross_mul;
    karastuba_mul_template_z1<MAX_N_ele_input,BITS_PER_DIGIT>(&lhs0_tmp,&lhs1_tmp,&rhs0_tmp,&rhs1_tmp, &cross_mul);

    

    Bignum<MAX_N_ele_input, BITS_PER_DIGIT> add2;
    add_I_O<Bignum<MAX_N_ele_input, BITS_PER_DIGIT> ,Bignum<MAX_N_ele_input, BITS_PER_DIGIT> >(&z0,&z2,&add2);
    Bignum<MAX_N_ele_input, BITS_PER_DIGIT> z1;
    sub_I_O<Bignum<MAX_N_ele_input, BITS_PER_DIGIT>,Bignum<MAX_N_ele_input, BITS_PER_DIGIT> >(&cross_mul,&add2,&z1);

    CAT_I_I_I_O<Bignum<MAX_N_ele_input, BITS_PER_DIGIT> ,Bignum<MAX_N_ele_input, BITS_PER_DIGIT>,Bignum<MAX_N_ele_input, BITS_PER_DIGIT> ,Bignum<2 * MAX_N_ele_input, BITS_PER_DIGIT> >(&z0,&z1,&z2,res);


    if (rhs->tmp_bits)
    {
        int offset = rhs->N_ele;
        WUnsignedDigit tmp = 0;
        for (int i = 0,j=offset; i < lhs->N_ele; i++,j++)
        {
    #pragma HLS pipeline
            tmp += static_cast<WUnsignedDigit>(lhs->digits.data[i]);
            tmp += static_cast<WUnsignedDigit>(res->digits.data[j]);
            res->digits.data[j] = ( static_cast<UnsignedUnitDigit>(tmp));
            tmp >>= UNIT_WORD_BITWIDTH;
        }
        res->tmp_bits += tmp;
    }
    if (lhs->tmp_bits)
    {
        int offset = lhs->N_ele;
        WUnsignedDigit tmp = 0;
        for (int i = 0,j=offset; i < rhs->N_ele; i++,j++)
        {
    #pragma HLS pipeline
            tmp += static_cast<WUnsignedDigit>(rhs->digits.data[i]);
            tmp += static_cast<WUnsignedDigit>(res->digits.data[j]);
            res->digits.data[j] = ( static_cast<UnsignedUnitDigit>(tmp));
            tmp >>= UNIT_WORD_BITWIDTH;
        }
        res->tmp_bits += tmp;
    }
    res->tmp_bits += lhs->tmp_bits*rhs->tmp_bits;

    return;
}


//  A HLS warpper for template to get data from AXI and write result back to AXI
void karastuba_mul(
		UnsignedUnitDigit hs_input[2*LARGE_BITWIDTH / UNIT_WORD_BITWIDTH],
		UnsignedUnitDigit res_output[2*LARGE_BITWIDTH / UNIT_WORD_BITWIDTH])
{
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE axis register both port=hs_input depth=1024
#pragma HLS INTERFACE axis register both port=res_output depth=1024

	Bignum<LARGE_BITWIDTH/UNIT_WORD_BITWIDTH, UNIT_WORD_BITWIDTH>  lhs;
	Bignum<LARGE_BITWIDTH/UNIT_WORD_BITWIDTH, UNIT_WORD_BITWIDTH>  rhs;
	//Bignum<2 * LARGE_BITWIDTH/UNIT_WORD_BITWIDTH, UNIT_WORD_BITWIDTH> res;
	lhs.tmp_bits = 0; rhs.tmp_bits = 0;
	//res.tmp_bits =0;
	for (int i=0;i<LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i++)
	{
#pragma HLS pipeline
		lhs.digits.data[i] = hs_input[i];
	}
	for (int i=LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i<2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i++)
	{
#pragma HLS pipeline
		rhs.digits.data[i-LARGE_BITWIDTH/UNIT_WORD_BITWIDTH] = hs_input[i];
	}

	Bignum<2 * LARGE_BITWIDTH/UNIT_WORD_BITWIDTH, UNIT_WORD_BITWIDTH> res;
	karastuba_mul_template<LARGE_BITWIDTH/UNIT_WORD_BITWIDTH,UNIT_WORD_BITWIDTH>(&lhs, &rhs, &res);

	for (int i=0;i<2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i++)
	{
#pragma HLS pipeline
		res_output[i] = res.digits.data[i];
	}

}

//  A duplicated warpper for software verificatio in C/RTL-cosimulation
void karastuba_mul_software(
		UnsignedUnitDigit hs_input[2*LARGE_BITWIDTH / UNIT_WORD_BITWIDTH],
		UnsignedUnitDigit res_output[2*LARGE_BITWIDTH / UNIT_WORD_BITWIDTH])
{
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE axis register both port=hs_input depth=1024
#pragma HLS INTERFACE axis register both port=res_output depth=1024

	Bignum<LARGE_BITWIDTH/UNIT_WORD_BITWIDTH, UNIT_WORD_BITWIDTH>  lhs;
	Bignum<LARGE_BITWIDTH/UNIT_WORD_BITWIDTH, UNIT_WORD_BITWIDTH>  rhs;
	//Bignum<2 * LARGE_BITWIDTH/UNIT_WORD_BITWIDTH, UNIT_WORD_BITWIDTH> res;
	lhs.tmp_bits = 0; rhs.tmp_bits = 0;
	//res.tmp_bits =0;
	for (int i=0;i<LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i++)
	{
#pragma HLS pipeline
		lhs.digits.data[i] = hs_input[i];
	}
	for (int i=LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i<2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i++)
	{
#pragma HLS pipeline
		rhs.digits.data[i-LARGE_BITWIDTH/UNIT_WORD_BITWIDTH] = hs_input[i];
	}

	Bignum<2 * LARGE_BITWIDTH/UNIT_WORD_BITWIDTH, UNIT_WORD_BITWIDTH> res;
	karastuba_mul_template<LARGE_BITWIDTH/UNIT_WORD_BITWIDTH,UNIT_WORD_BITWIDTH>(&lhs, &rhs, &res);

	for (int i=0;i<2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i++)
	{
#pragma HLS pipeline
		res_output[i] = res.digits.data[i];
	}

}

#ifdef C_RTL_COSIMULATION
int main()
{

	for (int seed=0;seed<10;seed++)
	{
		UnsignedUnitDigit hs_input[2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH],
						          res_output_hardware[2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH],
						          res_output_software[2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH];


	    srand(0);

		for (int i=0;i<2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i++)
			 hs_input[i]=i+rand();


		printf("HARDWARE RESULT:\nc=");
		karastuba_mul(hs_input,res_output_hardware);
	  //for (int i=0;i<2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i++)
		//for (int i=2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH-1;i>=0;i--)
		for (int i=0;i<2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i++) printf("%08x",res_output_hardware[i]);


		printf("\nSOFTWARE RESULT:\nc=");
		karastuba_mul_software(hs_input,res_output_software);
		//for (int i=2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH-1;i>=0;i--)
		for (int i=0;i<2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH;i++) printf("%08x",res_output_software[i]);
		printf("\n");

		for (int i=2*LARGE_BITWIDTH/UNIT_WORD_BITWIDTH-1;i>=0;i--)
		{
			if (res_output_software[i]!=res_output_hardware[i])
				return -1;
		}
	}


    return 0;
}
#endif
