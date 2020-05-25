// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "hs_input"
#define AUTOTB_TVIN_hs_input  "../tv/cdatafile/c.karastuba_mul.autotvin_hs_input.dat"
// wrapc file define: "res_output"
#define AUTOTB_TVOUT_res_output  "../tv/cdatafile/c.karastuba_mul.autotvout_res_output.dat"
#define AUTOTB_TVIN_res_output  "../tv/cdatafile/c.karastuba_mul.autotvin_res_output.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "res_output"
#define AUTOTB_TVOUT_PC_res_output  "../tv/rtldatafile/rtl.karastuba_mul.autotvout_res_output.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			hs_input_depth = 0;
			res_output_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{hs_input " << hs_input_depth << "}\n";
			total_list << "{res_output " << res_output_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int hs_input_depth;
		int res_output_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void karastuba_mul (
unsigned int hs_input[32],
unsigned int res_output[32]);

void AESL_WRAP_karastuba_mul (
unsigned int hs_input[32],
unsigned int res_output[32])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "res_output"
		aesl_fh.read(AUTOTB_TVOUT_PC_res_output, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_res_output, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_res_output, AESL_token); // data

			sc_bv<32> *res_output_pc_buffer = new sc_bv<32>[32];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'res_output', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'res_output', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					res_output_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_res_output, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_res_output))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: res_output
				{
					// bitslice(31, 0)
					// {
						// celement: res_output(31, 0)
						// {
							sc_lv<32>* res_output_lv0_0_31_1 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: res_output(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								if (&(res_output[0]) != NULL) // check the null address if the c port is array or others
								{
									res_output_lv0_0_31_1[hls_map_index].range(31, 0) = sc_bv<32>(res_output_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: res_output(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : res_output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : res_output[0]
								// output_left_conversion : res_output[i_0]
								// output_type_conversion : (res_output_lv0_0_31_1[hls_map_index]).to_uint64()
								if (&(res_output[0]) != NULL) // check the null address if the c port is array or others
								{
									res_output[i_0] = (res_output_lv0_0_31_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] res_output_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "hs_input"
		char* tvin_hs_input = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_hs_input);

		// "res_output"
		char* tvin_res_output = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_res_output);
		char* tvout_res_output = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_res_output);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_hs_input, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_hs_input, tvin_hs_input);

		sc_bv<32>* hs_input_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: hs_input
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: hs_input(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : hs_input[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : hs_input[0]
						// regulate_c_name       : hs_input
						// input_type_conversion : hs_input[i_0]
						if (&(hs_input[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> hs_input_tmp_mem;
							hs_input_tmp_mem = hs_input[i_0];
							hs_input_tvin_wrapc_buffer[hls_map_index].range(31, 0) = hs_input_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_hs_input, "%s\n", (hs_input_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_hs_input, tvin_hs_input);
		}

		tcl_file.set_num(32, &tcl_file.hs_input_depth);
		sprintf(tvin_hs_input, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_hs_input, tvin_hs_input);

		// release memory allocation
		delete [] hs_input_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_res_output, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_res_output, tvin_res_output);

		sc_bv<32>* res_output_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: res_output
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: res_output(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : res_output[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : res_output[0]
						// regulate_c_name       : res_output
						// input_type_conversion : res_output[i_0]
						if (&(res_output[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> res_output_tmp_mem;
							res_output_tmp_mem = res_output[i_0];
							res_output_tvin_wrapc_buffer[hls_map_index].range(31, 0) = res_output_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_res_output, "%s\n", (res_output_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_res_output, tvin_res_output);
		}

		tcl_file.set_num(32, &tcl_file.res_output_depth);
		sprintf(tvin_res_output, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_res_output, tvin_res_output);

		// release memory allocation
		delete [] res_output_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		karastuba_mul(hs_input, res_output);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_res_output, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_res_output, tvout_res_output);

		sc_bv<32>* res_output_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: res_output
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: res_output(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : res_output[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : res_output[0]
						// regulate_c_name       : res_output
						// input_type_conversion : res_output[i_0]
						if (&(res_output[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> res_output_tmp_mem;
							res_output_tmp_mem = res_output[i_0];
							res_output_tvout_wrapc_buffer[hls_map_index].range(31, 0) = res_output_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_res_output, "%s\n", (res_output_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_res_output, tvout_res_output);
		}

		tcl_file.set_num(32, &tcl_file.res_output_depth);
		sprintf(tvout_res_output, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_res_output, tvout_res_output);

		// release memory allocation
		delete [] res_output_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "hs_input"
		delete [] tvin_hs_input;
		// release memory allocation: "res_output"
		delete [] tvout_res_output;
		delete [] tvin_res_output;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

