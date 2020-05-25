// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mul_I_O_HH_
#define _mul_I_O_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "karastuba_mul_mulbkb.h"

namespace ap_rtl {

struct mul_I_O : public sc_module {
    // Port declarations 25
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<2> > u_tmp_bits_read;
    sc_out< sc_lv<3> > u_digits_data_address0;
    sc_out< sc_logic > u_digits_data_ce0;
    sc_in< sc_lv<32> > u_digits_data_q0;
    sc_in< sc_lv<2> > v_tmp_bits_read;
    sc_out< sc_lv<3> > v_digits_data_address0;
    sc_out< sc_logic > v_digits_data_ce0;
    sc_in< sc_lv<32> > v_digits_data_q0;
    sc_out< sc_lv<4> > w_digits_data_address0;
    sc_out< sc_logic > w_digits_data_ce0;
    sc_out< sc_logic > w_digits_data_we0;
    sc_out< sc_lv<32> > w_digits_data_d0;
    sc_in< sc_lv<32> > w_digits_data_q0;
    sc_out< sc_lv<4> > w_digits_data_address1;
    sc_out< sc_logic > w_digits_data_ce1;
    sc_out< sc_logic > w_digits_data_we1;
    sc_out< sc_lv<32> > w_digits_data_d1;
    sc_in< sc_lv<32> > w_digits_data_q1;
    sc_out< sc_lv<4> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    mul_I_O(sc_module_name name);
    SC_HAS_PROCESS(mul_I_O);

    ~mul_I_O();

    sc_trace_file* mVcdFile;

    karastuba_mul_mulbkb<1,5,32,32,64>* karastuba_mul_mulbkb_U1;
    sc_signal< sc_lv<15> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > k_1_reg_192;
    sc_signal< sc_lv<4> > i_0_reg_204;
    sc_signal< sc_lv<4> > i2_0_reg_216;
    sc_signal< sc_lv<2> > tmp_0_reg_227;
    sc_signal< sc_lv<5> > j3_0_reg_239;
    sc_signal< sc_lv<2> > tmp5_0_reg_262;
    sc_signal< sc_lv<4> > i6_0_reg_274;
    sc_signal< sc_lv<5> > j7_0_reg_285;
    sc_signal< sc_lv<32> > reg_305;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage1_iter1;
    sc_signal< bool > ap_block_state11_pp0_stage1_iter2;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<1> > icmp_ln106_reg_701;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_state16_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state17_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state18_pp1_stage0_iter2;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln128_reg_769;
    sc_signal< sc_lv<32> > reg_309;
    sc_signal< sc_logic > ap_CS_fsm_pp2_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter1;
    sc_signal< bool > ap_block_state21_pp2_stage0_iter0;
    sc_signal< bool > ap_block_state22_pp2_stage0_iter1;
    sc_signal< bool > ap_block_state23_pp2_stage0_iter2;
    sc_signal< bool > ap_block_pp2_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln142_reg_814;
    sc_signal< sc_lv<32> > reg_313;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > icmp_ln106_reg_701_pp0_iter2_reg;
    sc_signal< sc_lv<5> > j_fu_324_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln103_fu_335_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > j_2_fu_341_p2;
    sc_signal< sc_lv<4> > j_2_reg_687;
    sc_signal< sc_lv<3> > v_digits_data_addr_reg_692;
    sc_signal< sc_lv<1> > icmp_ln124_fu_352_p2;
    sc_signal< sc_lv<1> > icmp_ln106_fu_357_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln106_reg_701_pp0_iter1_reg;
    sc_signal< sc_lv<4> > add_ln106_fu_363_p2;
    sc_signal< sc_lv<4> > add_ln106_reg_705;
    sc_signal< sc_lv<4> > add_ln109_fu_374_p2;
    sc_signal< sc_lv<4> > add_ln109_reg_715;
    sc_signal< sc_lv<4> > add_ln109_reg_715_pp0_iter1_reg;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state6_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage2_iter1;
    sc_signal< bool > ap_block_state12_pp0_stage2_iter2;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<64> > grp_fu_388_p2;
    sc_signal< sc_lv<64> > mul_ln111_reg_730;
    sc_signal< sc_lv<4> > w_digits_data_addr_1_reg_735;
    sc_signal< sc_lv<64> > add_ln111_fu_402_p2;
    sc_signal< sc_lv<64> > add_ln111_reg_740;
    sc_signal< sc_lv<32> > trunc_ln111_fu_407_p1;
    sc_signal< sc_lv<32> > trunc_ln111_reg_745;
    sc_signal< sc_lv<1> > icmp_ln116_fu_436_p2;
    sc_signal< sc_lv<1> > icmp_ln116_reg_755;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<4> > w_digits_data_addr_3_reg_759;
    sc_signal< sc_lv<32> > w_digits_data_load_reg_764;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<1> > icmp_ln128_fu_459_p2;
    sc_signal< sc_lv<1> > icmp_ln128_reg_769_pp1_iter1_reg;
    sc_signal< sc_lv<4> > i_fu_465_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<4> > w_digits_data_addr_2_reg_783;
    sc_signal< sc_lv<4> > w_digits_data_addr_2_reg_783_pp1_iter1_reg;
    sc_signal< sc_lv<5> > j_1_fu_481_p2;
    sc_signal< sc_lv<33> > add_ln132_fu_495_p2;
    sc_signal< sc_lv<33> > add_ln132_reg_794;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_lv<3> > zext_ln138_fu_541_p1;
    sc_signal< sc_lv<3> > zext_ln138_reg_804;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<1> > icmp_ln138_fu_545_p2;
    sc_signal< sc_lv<1> > icmp_ln142_fu_550_p2;
    sc_signal< sc_lv<1> > icmp_ln142_reg_814_pp2_iter1_reg;
    sc_signal< sc_lv<4> > i_1_fu_556_p2;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter0;
    sc_signal< sc_lv<4> > w_digits_data_addr_4_reg_828;
    sc_signal< sc_lv<4> > w_digits_data_addr_4_reg_828_pp2_iter1_reg;
    sc_signal< sc_lv<5> > j_3_fu_572_p2;
    sc_signal< sc_lv<33> > add_ln146_fu_586_p2;
    sc_signal< sc_lv<33> > add_ln146_reg_839;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter2;
    sc_signal< sc_lv<3> > add_ln150_fu_636_p2;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state16;
    sc_signal< bool > ap_block_pp2_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp2_exit_iter0_state21;
    sc_signal< sc_lv<5> > j_0_reg_169;
    sc_signal< sc_lv<1> > icmp_ln100_fu_318_p2;
    sc_signal< sc_lv<4> > j1_0_reg_180;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<4> > ap_phi_mux_i_0_phi_fu_208_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<2> > w_tmp_bits_0_reg_250;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<3> > w_tmp_bits_1_reg_296;
    sc_signal< sc_lv<64> > zext_ln100_fu_330_p1;
    sc_signal< sc_lv<64> > zext_ln111_3_fu_347_p1;
    sc_signal< sc_lv<64> > zext_ln111_4_fu_369_p1;
    sc_signal< sc_lv<64> > zext_ln111_5_fu_394_p1;
    sc_signal< sc_lv<64> > zext_ln118_fu_448_p1;
    sc_signal< sc_lv<64> > zext_ln131_fu_471_p1;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<64> > zext_ln132_1_fu_476_p1;
    sc_signal< sc_lv<64> > zext_ln145_fu_562_p1;
    sc_signal< bool > ap_block_pp2_stage0;
    sc_signal< sc_lv<64> > zext_ln146_1_fu_567_p1;
    sc_signal< sc_lv<32> > add_ln112_fu_420_p2;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<32> > add_ln119_fu_453_p2;
    sc_signal< sc_lv<32> > add_ln147_fu_615_p2;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<32> > grp_fu_388_p0;
    sc_signal< sc_lv<32> > grp_fu_388_p1;
    sc_signal< sc_lv<64> > zext_ln106_fu_398_p1;
    sc_signal< sc_lv<64> > zext_ln111_2_fu_411_p1;
    sc_signal< sc_lv<64> > k_fu_415_p2;
    sc_signal< sc_lv<4> > xor_ln118_fu_442_p2;
    sc_signal< sc_lv<33> > zext_ln132_fu_487_p1;
    sc_signal< sc_lv<33> > zext_ln131_1_fu_491_p1;
    sc_signal< sc_lv<34> > zext_ln132_2_fu_509_p1;
    sc_signal< sc_lv<34> > zext_ln128_fu_501_p1;
    sc_signal< sc_lv<32> > zext_ln131_2_fu_505_p1;
    sc_signal< sc_lv<32> > add_ln133_1_fu_518_p2;
    sc_signal< sc_lv<34> > tmp_fu_512_p2;
    sc_signal< sc_lv<33> > zext_ln146_fu_578_p1;
    sc_signal< sc_lv<33> > zext_ln145_1_fu_582_p1;
    sc_signal< sc_lv<34> > zext_ln146_2_fu_600_p1;
    sc_signal< sc_lv<34> > zext_ln142_fu_592_p1;
    sc_signal< sc_lv<32> > zext_ln145_2_fu_596_p1;
    sc_signal< sc_lv<32> > add_ln147_1_fu_609_p2;
    sc_signal< sc_lv<34> > tmp_2_fu_603_p2;
    sc_signal< sc_lv<3> > zext_ln150_fu_632_p1;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<2> > mul_ln152_fu_651_p0;
    sc_signal< sc_lv<2> > mul_ln152_fu_651_p1;
    sc_signal< sc_lv<4> > zext_ln152_fu_641_p1;
    sc_signal< sc_lv<4> > mul_ln152_fu_651_p2;
    sc_signal< sc_lv<4> > add_ln152_fu_657_p2;
    sc_signal< sc_lv<4> > ap_return_preg;
    sc_signal< sc_lv<15> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_logic > ap_idle_pp2;
    sc_signal< sc_logic > ap_enable_pp2;
    sc_signal< sc_lv<64> > grp_fu_388_p00;
    sc_signal< sc_lv<64> > grp_fu_388_p10;
    sc_signal< sc_lv<4> > mul_ln152_fu_651_p00;
    sc_signal< sc_lv<4> > mul_ln152_fu_651_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<15> ap_ST_fsm_state1;
    static const sc_lv<15> ap_ST_fsm_state2;
    static const sc_lv<15> ap_ST_fsm_state3;
    static const sc_lv<15> ap_ST_fsm_pp0_stage0;
    static const sc_lv<15> ap_ST_fsm_pp0_stage1;
    static const sc_lv<15> ap_ST_fsm_pp0_stage2;
    static const sc_lv<15> ap_ST_fsm_state13;
    static const sc_lv<15> ap_ST_fsm_state14;
    static const sc_lv<15> ap_ST_fsm_state15;
    static const sc_lv<15> ap_ST_fsm_pp1_stage0;
    static const sc_lv<15> ap_ST_fsm_state19;
    static const sc_lv<15> ap_ST_fsm_state20;
    static const sc_lv<15> ap_ST_fsm_pp2_stage0;
    static const sc_lv<15> ap_ST_fsm_state24;
    static const sc_lv<15> ap_ST_fsm_state25;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<5> ap_const_lv5_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_E;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln106_fu_363_p2();
    void thread_add_ln109_fu_374_p2();
    void thread_add_ln111_fu_402_p2();
    void thread_add_ln112_fu_420_p2();
    void thread_add_ln119_fu_453_p2();
    void thread_add_ln132_fu_495_p2();
    void thread_add_ln133_1_fu_518_p2();
    void thread_add_ln146_fu_586_p2();
    void thread_add_ln147_1_fu_609_p2();
    void thread_add_ln147_fu_615_p2();
    void thread_add_ln150_fu_636_p2();
    void thread_add_ln152_fu_657_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp2_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp2_stage0();
    void thread_ap_block_pp2_stage0_11001();
    void thread_ap_block_pp2_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter2();
    void thread_ap_block_state11_pp0_stage1_iter2();
    void thread_ap_block_state12_pp0_stage2_iter2();
    void thread_ap_block_state16_pp1_stage0_iter0();
    void thread_ap_block_state17_pp1_stage0_iter1();
    void thread_ap_block_state18_pp1_stage0_iter2();
    void thread_ap_block_state21_pp2_stage0_iter0();
    void thread_ap_block_state22_pp2_stage0_iter1();
    void thread_ap_block_state23_pp2_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter0();
    void thread_ap_block_state5_pp0_stage1_iter0();
    void thread_ap_block_state6_pp0_stage2_iter0();
    void thread_ap_block_state7_pp0_stage0_iter1();
    void thread_ap_block_state8_pp0_stage1_iter1();
    void thread_ap_block_state9_pp0_stage2_iter1();
    void thread_ap_condition_pp0_exit_iter0_state4();
    void thread_ap_condition_pp1_exit_iter0_state16();
    void thread_ap_condition_pp2_exit_iter0_state21();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_enable_pp2();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_idle_pp2();
    void thread_ap_phi_mux_i_0_phi_fu_208_p4();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_grp_fu_388_p0();
    void thread_grp_fu_388_p00();
    void thread_grp_fu_388_p1();
    void thread_grp_fu_388_p10();
    void thread_i_1_fu_556_p2();
    void thread_i_fu_465_p2();
    void thread_icmp_ln100_fu_318_p2();
    void thread_icmp_ln103_fu_335_p2();
    void thread_icmp_ln106_fu_357_p2();
    void thread_icmp_ln116_fu_436_p2();
    void thread_icmp_ln124_fu_352_p2();
    void thread_icmp_ln128_fu_459_p2();
    void thread_icmp_ln138_fu_545_p2();
    void thread_icmp_ln142_fu_550_p2();
    void thread_j_1_fu_481_p2();
    void thread_j_2_fu_341_p2();
    void thread_j_3_fu_572_p2();
    void thread_j_fu_324_p2();
    void thread_k_fu_415_p2();
    void thread_mul_ln152_fu_651_p0();
    void thread_mul_ln152_fu_651_p00();
    void thread_mul_ln152_fu_651_p1();
    void thread_mul_ln152_fu_651_p10();
    void thread_mul_ln152_fu_651_p2();
    void thread_tmp_2_fu_603_p2();
    void thread_tmp_fu_512_p2();
    void thread_trunc_ln111_fu_407_p1();
    void thread_u_digits_data_address0();
    void thread_u_digits_data_ce0();
    void thread_v_digits_data_address0();
    void thread_v_digits_data_ce0();
    void thread_w_digits_data_address0();
    void thread_w_digits_data_address1();
    void thread_w_digits_data_ce0();
    void thread_w_digits_data_ce1();
    void thread_w_digits_data_d0();
    void thread_w_digits_data_d1();
    void thread_w_digits_data_we0();
    void thread_w_digits_data_we1();
    void thread_xor_ln118_fu_442_p2();
    void thread_zext_ln100_fu_330_p1();
    void thread_zext_ln106_fu_398_p1();
    void thread_zext_ln111_2_fu_411_p1();
    void thread_zext_ln111_3_fu_347_p1();
    void thread_zext_ln111_4_fu_369_p1();
    void thread_zext_ln111_5_fu_394_p1();
    void thread_zext_ln118_fu_448_p1();
    void thread_zext_ln128_fu_501_p1();
    void thread_zext_ln131_1_fu_491_p1();
    void thread_zext_ln131_2_fu_505_p1();
    void thread_zext_ln131_fu_471_p1();
    void thread_zext_ln132_1_fu_476_p1();
    void thread_zext_ln132_2_fu_509_p1();
    void thread_zext_ln132_fu_487_p1();
    void thread_zext_ln138_fu_541_p1();
    void thread_zext_ln142_fu_592_p1();
    void thread_zext_ln145_1_fu_582_p1();
    void thread_zext_ln145_2_fu_596_p1();
    void thread_zext_ln145_fu_562_p1();
    void thread_zext_ln146_1_fu_567_p1();
    void thread_zext_ln146_2_fu_600_p1();
    void thread_zext_ln146_fu_578_p1();
    void thread_zext_ln150_fu_632_p1();
    void thread_zext_ln152_fu_641_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
