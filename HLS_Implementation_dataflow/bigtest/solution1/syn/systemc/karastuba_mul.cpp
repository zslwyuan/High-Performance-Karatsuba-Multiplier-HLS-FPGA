// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "karastuba_mul.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const int karastuba_mul::C_S_AXI_DATA_WIDTH = "100000";
const int karastuba_mul::C_S_AXI_WSTRB_WIDTH = "100";
const int karastuba_mul::C_S_AXI_ADDR_WIDTH = "100000";
const sc_logic karastuba_mul::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<64> karastuba_mul::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_logic karastuba_mul::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<64> karastuba_mul::ap_const_lv64_1 = "1";
const bool karastuba_mul::ap_const_boolean_1 = true;

karastuba_mul::karastuba_mul(sc_module_name name) : sc_module(name), mVcdFile(0) {
    karastuba_mul_AXILiteS_s_axi_U = new karastuba_mul_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>("karastuba_mul_AXILiteS_s_axi_U");
    karastuba_mul_AXILiteS_s_axi_U->AWVALID(s_axi_AXILiteS_AWVALID);
    karastuba_mul_AXILiteS_s_axi_U->AWREADY(s_axi_AXILiteS_AWREADY);
    karastuba_mul_AXILiteS_s_axi_U->AWADDR(s_axi_AXILiteS_AWADDR);
    karastuba_mul_AXILiteS_s_axi_U->WVALID(s_axi_AXILiteS_WVALID);
    karastuba_mul_AXILiteS_s_axi_U->WREADY(s_axi_AXILiteS_WREADY);
    karastuba_mul_AXILiteS_s_axi_U->WDATA(s_axi_AXILiteS_WDATA);
    karastuba_mul_AXILiteS_s_axi_U->WSTRB(s_axi_AXILiteS_WSTRB);
    karastuba_mul_AXILiteS_s_axi_U->ARVALID(s_axi_AXILiteS_ARVALID);
    karastuba_mul_AXILiteS_s_axi_U->ARREADY(s_axi_AXILiteS_ARREADY);
    karastuba_mul_AXILiteS_s_axi_U->ARADDR(s_axi_AXILiteS_ARADDR);
    karastuba_mul_AXILiteS_s_axi_U->RVALID(s_axi_AXILiteS_RVALID);
    karastuba_mul_AXILiteS_s_axi_U->RREADY(s_axi_AXILiteS_RREADY);
    karastuba_mul_AXILiteS_s_axi_U->RDATA(s_axi_AXILiteS_RDATA);
    karastuba_mul_AXILiteS_s_axi_U->RRESP(s_axi_AXILiteS_RRESP);
    karastuba_mul_AXILiteS_s_axi_U->BVALID(s_axi_AXILiteS_BVALID);
    karastuba_mul_AXILiteS_s_axi_U->BREADY(s_axi_AXILiteS_BREADY);
    karastuba_mul_AXILiteS_s_axi_U->BRESP(s_axi_AXILiteS_BRESP);
    karastuba_mul_AXILiteS_s_axi_U->ACLK(ap_clk);
    karastuba_mul_AXILiteS_s_axi_U->ARESET(ap_rst_n_inv);
    karastuba_mul_AXILiteS_s_axi_U->ACLK_EN(ap_var_for_const0);
    karastuba_mul_AXILiteS_s_axi_U->ap_start(ap_start);
    karastuba_mul_AXILiteS_s_axi_U->interrupt(interrupt);
    karastuba_mul_AXILiteS_s_axi_U->ap_ready(ap_ready);
    karastuba_mul_AXILiteS_s_axi_U->ap_done(ap_done);
    karastuba_mul_AXILiteS_s_axi_U->ap_idle(ap_idle);
    lhs_digits_data_V_U = new karastuba_mul_lhsbek("lhs_digits_data_V_U");
    lhs_digits_data_V_U->clk(ap_clk);
    lhs_digits_data_V_U->reset(ap_rst_n_inv);
    lhs_digits_data_V_U->i_address0(Loop_1_proc_U0_lhs_digits_data_V_address0);
    lhs_digits_data_V_U->i_ce0(Loop_1_proc_U0_lhs_digits_data_V_ce0);
    lhs_digits_data_V_U->i_we0(Loop_1_proc_U0_lhs_digits_data_V_we0);
    lhs_digits_data_V_U->i_d0(Loop_1_proc_U0_lhs_digits_data_V_d0);
    lhs_digits_data_V_U->i_q0(lhs_digits_data_V_i_q0);
    lhs_digits_data_V_U->t_address0(karastuba_mul_templa_3_U0_lhs_digits_data_V_address0);
    lhs_digits_data_V_U->t_ce0(karastuba_mul_templa_3_U0_lhs_digits_data_V_ce0);
    lhs_digits_data_V_U->t_we0(ap_var_for_const1);
    lhs_digits_data_V_U->t_d0(ap_var_for_const2);
    lhs_digits_data_V_U->t_q0(lhs_digits_data_V_t_q0);
    lhs_digits_data_V_U->i_ce(ap_var_for_const0);
    lhs_digits_data_V_U->t_ce(ap_var_for_const0);
    lhs_digits_data_V_U->i_full_n(lhs_digits_data_V_i_full_n);
    lhs_digits_data_V_U->i_write(ap_channel_done_lhs_digits_data_V);
    lhs_digits_data_V_U->t_empty_n(lhs_digits_data_V_t_empty_n);
    lhs_digits_data_V_U->t_read(karastuba_mul_templa_3_U0_ap_ready);
    rhs_digits_data_V_U = new karastuba_mul_lhsbek("rhs_digits_data_V_U");
    rhs_digits_data_V_U->clk(ap_clk);
    rhs_digits_data_V_U->reset(ap_rst_n_inv);
    rhs_digits_data_V_U->i_address0(Loop_1_proc_U0_rhs_digits_data_V_address0);
    rhs_digits_data_V_U->i_ce0(Loop_1_proc_U0_rhs_digits_data_V_ce0);
    rhs_digits_data_V_U->i_we0(Loop_1_proc_U0_rhs_digits_data_V_we0);
    rhs_digits_data_V_U->i_d0(Loop_1_proc_U0_rhs_digits_data_V_d0);
    rhs_digits_data_V_U->i_q0(rhs_digits_data_V_i_q0);
    rhs_digits_data_V_U->t_address0(karastuba_mul_templa_3_U0_rhs_digits_data_V_address0);
    rhs_digits_data_V_U->t_ce0(karastuba_mul_templa_3_U0_rhs_digits_data_V_ce0);
    rhs_digits_data_V_U->t_we0(ap_var_for_const1);
    rhs_digits_data_V_U->t_d0(ap_var_for_const2);
    rhs_digits_data_V_U->t_q0(rhs_digits_data_V_t_q0);
    rhs_digits_data_V_U->i_ce(ap_var_for_const0);
    rhs_digits_data_V_U->t_ce(ap_var_for_const0);
    rhs_digits_data_V_U->i_full_n(rhs_digits_data_V_i_full_n);
    rhs_digits_data_V_U->i_write(ap_channel_done_rhs_digits_data_V);
    rhs_digits_data_V_U->t_empty_n(rhs_digits_data_V_t_empty_n);
    rhs_digits_data_V_U->t_read(karastuba_mul_templa_3_U0_ap_ready);
    res_digits_data_V_U = new karastuba_mul_resbgk("res_digits_data_V_U");
    res_digits_data_V_U->clk(ap_clk);
    res_digits_data_V_U->reset(ap_rst_n_inv);
    res_digits_data_V_U->i_address0(karastuba_mul_templa_3_U0_res_digits_data_V_address0);
    res_digits_data_V_U->i_ce0(karastuba_mul_templa_3_U0_res_digits_data_V_ce0);
    res_digits_data_V_U->i_we0(karastuba_mul_templa_3_U0_res_digits_data_V_we0);
    res_digits_data_V_U->i_d0(karastuba_mul_templa_3_U0_res_digits_data_V_d0);
    res_digits_data_V_U->i_q0(res_digits_data_V_i_q0);
    res_digits_data_V_U->t_address0(Loop_2_proc_U0_res_digits_data_V_address0);
    res_digits_data_V_U->t_ce0(Loop_2_proc_U0_res_digits_data_V_ce0);
    res_digits_data_V_U->t_we0(ap_var_for_const1);
    res_digits_data_V_U->t_d0(ap_var_for_const2);
    res_digits_data_V_U->t_q0(res_digits_data_V_t_q0);
    res_digits_data_V_U->i_ce(ap_var_for_const0);
    res_digits_data_V_U->t_ce(ap_var_for_const0);
    res_digits_data_V_U->i_full_n(res_digits_data_V_i_full_n);
    res_digits_data_V_U->i_write(karastuba_mul_templa_3_U0_ap_done);
    res_digits_data_V_U->t_empty_n(res_digits_data_V_t_empty_n);
    res_digits_data_V_U->t_read(Loop_2_proc_U0_ap_ready);
    Loop_1_proc_U0 = new Loop_1_proc("Loop_1_proc_U0");
    Loop_1_proc_U0->ap_clk(ap_clk);
    Loop_1_proc_U0->ap_rst(ap_rst_n_inv);
    Loop_1_proc_U0->ap_start(Loop_1_proc_U0_ap_start);
    Loop_1_proc_U0->ap_done(Loop_1_proc_U0_ap_done);
    Loop_1_proc_U0->ap_continue(Loop_1_proc_U0_ap_continue);
    Loop_1_proc_U0->ap_idle(Loop_1_proc_U0_ap_idle);
    Loop_1_proc_U0->ap_ready(Loop_1_proc_U0_ap_ready);
    Loop_1_proc_U0->hs_input_V_TDATA(hs_input_V_TDATA);
    Loop_1_proc_U0->hs_input_V_TVALID(hs_input_V_TVALID);
    Loop_1_proc_U0->hs_input_V_TREADY(Loop_1_proc_U0_hs_input_V_TREADY);
    Loop_1_proc_U0->lhs_digits_data_V_address0(Loop_1_proc_U0_lhs_digits_data_V_address0);
    Loop_1_proc_U0->lhs_digits_data_V_ce0(Loop_1_proc_U0_lhs_digits_data_V_ce0);
    Loop_1_proc_U0->lhs_digits_data_V_we0(Loop_1_proc_U0_lhs_digits_data_V_we0);
    Loop_1_proc_U0->lhs_digits_data_V_d0(Loop_1_proc_U0_lhs_digits_data_V_d0);
    Loop_1_proc_U0->rhs_digits_data_V_address0(Loop_1_proc_U0_rhs_digits_data_V_address0);
    Loop_1_proc_U0->rhs_digits_data_V_ce0(Loop_1_proc_U0_rhs_digits_data_V_ce0);
    Loop_1_proc_U0->rhs_digits_data_V_we0(Loop_1_proc_U0_rhs_digits_data_V_we0);
    Loop_1_proc_U0->rhs_digits_data_V_d0(Loop_1_proc_U0_rhs_digits_data_V_d0);
    karastuba_mul_templa_3_U0 = new karastuba_mul_templa_3("karastuba_mul_templa_3_U0");
    karastuba_mul_templa_3_U0->ap_clk(ap_clk);
    karastuba_mul_templa_3_U0->ap_rst(ap_rst_n_inv);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_address0(karastuba_mul_templa_3_U0_lhs_digits_data_V_address0);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_ce0(karastuba_mul_templa_3_U0_lhs_digits_data_V_ce0);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_d0(karastuba_mul_templa_3_U0_lhs_digits_data_V_d0);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_q0(lhs_digits_data_V_t_q0);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_we0(karastuba_mul_templa_3_U0_lhs_digits_data_V_we0);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_address1(karastuba_mul_templa_3_U0_lhs_digits_data_V_address1);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_ce1(karastuba_mul_templa_3_U0_lhs_digits_data_V_ce1);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_d1(karastuba_mul_templa_3_U0_lhs_digits_data_V_d1);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_q1(ap_var_for_const2);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_we1(karastuba_mul_templa_3_U0_lhs_digits_data_V_we1);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_address0(karastuba_mul_templa_3_U0_rhs_digits_data_V_address0);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_ce0(karastuba_mul_templa_3_U0_rhs_digits_data_V_ce0);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_d0(karastuba_mul_templa_3_U0_rhs_digits_data_V_d0);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_q0(rhs_digits_data_V_t_q0);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_we0(karastuba_mul_templa_3_U0_rhs_digits_data_V_we0);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_address1(karastuba_mul_templa_3_U0_rhs_digits_data_V_address1);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_ce1(karastuba_mul_templa_3_U0_rhs_digits_data_V_ce1);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_d1(karastuba_mul_templa_3_U0_rhs_digits_data_V_d1);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_q1(ap_var_for_const2);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_we1(karastuba_mul_templa_3_U0_rhs_digits_data_V_we1);
    karastuba_mul_templa_3_U0->res_digits_data_V_address0(karastuba_mul_templa_3_U0_res_digits_data_V_address0);
    karastuba_mul_templa_3_U0->res_digits_data_V_ce0(karastuba_mul_templa_3_U0_res_digits_data_V_ce0);
    karastuba_mul_templa_3_U0->res_digits_data_V_d0(karastuba_mul_templa_3_U0_res_digits_data_V_d0);
    karastuba_mul_templa_3_U0->res_digits_data_V_q0(ap_var_for_const2);
    karastuba_mul_templa_3_U0->res_digits_data_V_we0(karastuba_mul_templa_3_U0_res_digits_data_V_we0);
    karastuba_mul_templa_3_U0->res_digits_data_V_address1(karastuba_mul_templa_3_U0_res_digits_data_V_address1);
    karastuba_mul_templa_3_U0->res_digits_data_V_ce1(karastuba_mul_templa_3_U0_res_digits_data_V_ce1);
    karastuba_mul_templa_3_U0->res_digits_data_V_d1(karastuba_mul_templa_3_U0_res_digits_data_V_d1);
    karastuba_mul_templa_3_U0->res_digits_data_V_q1(ap_var_for_const2);
    karastuba_mul_templa_3_U0->res_digits_data_V_we1(karastuba_mul_templa_3_U0_res_digits_data_V_we1);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_empty_n(ap_var_for_const1);
    karastuba_mul_templa_3_U0->lhs_digits_data_V_read(karastuba_mul_templa_3_U0_lhs_digits_data_V_read);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_empty_n(ap_var_for_const1);
    karastuba_mul_templa_3_U0->rhs_digits_data_V_read(karastuba_mul_templa_3_U0_rhs_digits_data_V_read);
    karastuba_mul_templa_3_U0->ap_start(karastuba_mul_templa_3_U0_ap_start);
    karastuba_mul_templa_3_U0->res_digits_data_V_full_n(res_digits_data_V_i_full_n);
    karastuba_mul_templa_3_U0->res_digits_data_V_write(karastuba_mul_templa_3_U0_res_digits_data_V_write);
    karastuba_mul_templa_3_U0->ap_done(karastuba_mul_templa_3_U0_ap_done);
    karastuba_mul_templa_3_U0->ap_ready(karastuba_mul_templa_3_U0_ap_ready);
    karastuba_mul_templa_3_U0->ap_idle(karastuba_mul_templa_3_U0_ap_idle);
    karastuba_mul_templa_3_U0->ap_continue(karastuba_mul_templa_3_U0_ap_continue);
    Loop_2_proc_U0 = new Loop_2_proc("Loop_2_proc_U0");
    Loop_2_proc_U0->ap_clk(ap_clk);
    Loop_2_proc_U0->ap_rst(ap_rst_n_inv);
    Loop_2_proc_U0->ap_start(Loop_2_proc_U0_ap_start);
    Loop_2_proc_U0->ap_done(Loop_2_proc_U0_ap_done);
    Loop_2_proc_U0->ap_continue(Loop_2_proc_U0_ap_continue);
    Loop_2_proc_U0->ap_idle(Loop_2_proc_U0_ap_idle);
    Loop_2_proc_U0->ap_ready(Loop_2_proc_U0_ap_ready);
    Loop_2_proc_U0->res_digits_data_V_address0(Loop_2_proc_U0_res_digits_data_V_address0);
    Loop_2_proc_U0->res_digits_data_V_ce0(Loop_2_proc_U0_res_digits_data_V_ce0);
    Loop_2_proc_U0->res_digits_data_V_q0(res_digits_data_V_t_q0);
    Loop_2_proc_U0->res_output_V_TDATA(Loop_2_proc_U0_res_output_V_TDATA);
    Loop_2_proc_U0->res_output_V_TVALID(Loop_2_proc_U0_res_output_V_TVALID);
    Loop_2_proc_U0->res_output_V_TREADY(res_output_V_TREADY);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_Loop_1_proc_U0_ap_continue);
    sensitive << ( ap_sync_channel_write_rhs_digits_data_V );
    sensitive << ( ap_sync_channel_write_lhs_digits_data_V );

    SC_METHOD(thread_Loop_1_proc_U0_ap_start);
    sensitive << ( ap_start );

    SC_METHOD(thread_Loop_1_proc_U0_lhs_digits_data_V_full_n);
    sensitive << ( lhs_digits_data_V_i_full_n );

    SC_METHOD(thread_Loop_1_proc_U0_rhs_digits_data_V_full_n);
    sensitive << ( rhs_digits_data_V_i_full_n );

    SC_METHOD(thread_Loop_1_proc_U0_start_full_n);

    SC_METHOD(thread_Loop_1_proc_U0_start_write);

    SC_METHOD(thread_Loop_2_proc_U0_ap_continue);

    SC_METHOD(thread_Loop_2_proc_U0_ap_start);
    sensitive << ( res_digits_data_V_t_empty_n );

    SC_METHOD(thread_Loop_2_proc_U0_start_full_n);

    SC_METHOD(thread_Loop_2_proc_U0_start_write);

    SC_METHOD(thread_ap_channel_done_lhs_digits_data_V);
    sensitive << ( Loop_1_proc_U0_ap_done );
    sensitive << ( ap_sync_reg_channel_write_lhs_digits_data_V );

    SC_METHOD(thread_ap_channel_done_res_digits_data_V);
    sensitive << ( karastuba_mul_templa_3_U0_ap_done );

    SC_METHOD(thread_ap_channel_done_rhs_digits_data_V);
    sensitive << ( Loop_1_proc_U0_ap_done );
    sensitive << ( ap_sync_reg_channel_write_rhs_digits_data_V );

    SC_METHOD(thread_ap_done);
    sensitive << ( Loop_2_proc_U0_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( Loop_1_proc_U0_ap_idle );
    sensitive << ( karastuba_mul_templa_3_U0_ap_idle );
    sensitive << ( Loop_2_proc_U0_ap_idle );
    sensitive << ( lhs_digits_data_V_t_empty_n );
    sensitive << ( rhs_digits_data_V_t_empty_n );
    sensitive << ( res_digits_data_V_t_empty_n );

    SC_METHOD(thread_ap_ready);
    sensitive << ( Loop_1_proc_U0_ap_ready );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_channel_write_lhs_digits_data_V);
    sensitive << ( ap_channel_done_lhs_digits_data_V );
    sensitive << ( Loop_1_proc_U0_lhs_digits_data_V_full_n );
    sensitive << ( ap_sync_reg_channel_write_lhs_digits_data_V );

    SC_METHOD(thread_ap_sync_channel_write_rhs_digits_data_V);
    sensitive << ( ap_channel_done_rhs_digits_data_V );
    sensitive << ( Loop_1_proc_U0_rhs_digits_data_V_full_n );
    sensitive << ( ap_sync_reg_channel_write_rhs_digits_data_V );

    SC_METHOD(thread_ap_sync_continue);

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( Loop_2_proc_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( Loop_1_proc_U0_ap_ready );

    SC_METHOD(thread_hs_input_V_TREADY);
    sensitive << ( Loop_1_proc_U0_hs_input_V_TREADY );

    SC_METHOD(thread_karastuba_mul_templa_3_U0_ap_continue);
    sensitive << ( karastuba_mul_templa_3_U0_res_digits_data_V_full_n );

    SC_METHOD(thread_karastuba_mul_templa_3_U0_ap_start);
    sensitive << ( lhs_digits_data_V_t_empty_n );
    sensitive << ( rhs_digits_data_V_t_empty_n );

    SC_METHOD(thread_karastuba_mul_templa_3_U0_res_digits_data_V_full_n);
    sensitive << ( res_digits_data_V_i_full_n );

    SC_METHOD(thread_karastuba_mul_templa_3_U0_start_full_n);

    SC_METHOD(thread_karastuba_mul_templa_3_U0_start_write);

    SC_METHOD(thread_res_output_V_TDATA);
    sensitive << ( Loop_2_proc_U0_res_output_V_TDATA );

    SC_METHOD(thread_res_output_V_TVALID);
    sensitive << ( Loop_2_proc_U0_res_output_V_TVALID );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    SC_THREAD(thread_ap_var_for_const2);

    SC_THREAD(thread_ap_var_for_const1);

    ap_sync_reg_channel_write_rhs_digits_data_V = SC_LOGIC_0;
    ap_sync_reg_channel_write_lhs_digits_data_V = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "karastuba_mul_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, s_axi_AXILiteS_AWVALID, "(port)s_axi_AXILiteS_AWVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_AWREADY, "(port)s_axi_AXILiteS_AWREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_AWADDR, "(port)s_axi_AXILiteS_AWADDR");
    sc_trace(mVcdFile, s_axi_AXILiteS_WVALID, "(port)s_axi_AXILiteS_WVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_WREADY, "(port)s_axi_AXILiteS_WREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_WDATA, "(port)s_axi_AXILiteS_WDATA");
    sc_trace(mVcdFile, s_axi_AXILiteS_WSTRB, "(port)s_axi_AXILiteS_WSTRB");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARVALID, "(port)s_axi_AXILiteS_ARVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARREADY, "(port)s_axi_AXILiteS_ARREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARADDR, "(port)s_axi_AXILiteS_ARADDR");
    sc_trace(mVcdFile, s_axi_AXILiteS_RVALID, "(port)s_axi_AXILiteS_RVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_RREADY, "(port)s_axi_AXILiteS_RREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_RDATA, "(port)s_axi_AXILiteS_RDATA");
    sc_trace(mVcdFile, s_axi_AXILiteS_RRESP, "(port)s_axi_AXILiteS_RRESP");
    sc_trace(mVcdFile, s_axi_AXILiteS_BVALID, "(port)s_axi_AXILiteS_BVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_BREADY, "(port)s_axi_AXILiteS_BREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_BRESP, "(port)s_axi_AXILiteS_BRESP");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, interrupt, "(port)interrupt");
    sc_trace(mVcdFile, hs_input_V_TDATA, "(port)hs_input_V_TDATA");
    sc_trace(mVcdFile, res_output_V_TDATA, "(port)res_output_V_TDATA");
    sc_trace(mVcdFile, hs_input_V_TVALID, "(port)hs_input_V_TVALID");
    sc_trace(mVcdFile, hs_input_V_TREADY, "(port)hs_input_V_TREADY");
    sc_trace(mVcdFile, res_output_V_TVALID, "(port)res_output_V_TVALID");
    sc_trace(mVcdFile, res_output_V_TREADY, "(port)res_output_V_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_start, "ap_start");
    sc_trace(mVcdFile, ap_ready, "ap_ready");
    sc_trace(mVcdFile, ap_done, "ap_done");
    sc_trace(mVcdFile, ap_idle, "ap_idle");
    sc_trace(mVcdFile, lhs_digits_data_V_i_q0, "lhs_digits_data_V_i_q0");
    sc_trace(mVcdFile, lhs_digits_data_V_t_q0, "lhs_digits_data_V_t_q0");
    sc_trace(mVcdFile, rhs_digits_data_V_i_q0, "rhs_digits_data_V_i_q0");
    sc_trace(mVcdFile, rhs_digits_data_V_t_q0, "rhs_digits_data_V_t_q0");
    sc_trace(mVcdFile, res_digits_data_V_i_q0, "res_digits_data_V_i_q0");
    sc_trace(mVcdFile, res_digits_data_V_t_q0, "res_digits_data_V_t_q0");
    sc_trace(mVcdFile, Loop_1_proc_U0_ap_start, "Loop_1_proc_U0_ap_start");
    sc_trace(mVcdFile, Loop_1_proc_U0_ap_done, "Loop_1_proc_U0_ap_done");
    sc_trace(mVcdFile, Loop_1_proc_U0_ap_continue, "Loop_1_proc_U0_ap_continue");
    sc_trace(mVcdFile, Loop_1_proc_U0_ap_idle, "Loop_1_proc_U0_ap_idle");
    sc_trace(mVcdFile, Loop_1_proc_U0_ap_ready, "Loop_1_proc_U0_ap_ready");
    sc_trace(mVcdFile, Loop_1_proc_U0_hs_input_V_TREADY, "Loop_1_proc_U0_hs_input_V_TREADY");
    sc_trace(mVcdFile, Loop_1_proc_U0_lhs_digits_data_V_address0, "Loop_1_proc_U0_lhs_digits_data_V_address0");
    sc_trace(mVcdFile, Loop_1_proc_U0_lhs_digits_data_V_ce0, "Loop_1_proc_U0_lhs_digits_data_V_ce0");
    sc_trace(mVcdFile, Loop_1_proc_U0_lhs_digits_data_V_we0, "Loop_1_proc_U0_lhs_digits_data_V_we0");
    sc_trace(mVcdFile, Loop_1_proc_U0_lhs_digits_data_V_d0, "Loop_1_proc_U0_lhs_digits_data_V_d0");
    sc_trace(mVcdFile, Loop_1_proc_U0_rhs_digits_data_V_address0, "Loop_1_proc_U0_rhs_digits_data_V_address0");
    sc_trace(mVcdFile, Loop_1_proc_U0_rhs_digits_data_V_ce0, "Loop_1_proc_U0_rhs_digits_data_V_ce0");
    sc_trace(mVcdFile, Loop_1_proc_U0_rhs_digits_data_V_we0, "Loop_1_proc_U0_rhs_digits_data_V_we0");
    sc_trace(mVcdFile, Loop_1_proc_U0_rhs_digits_data_V_d0, "Loop_1_proc_U0_rhs_digits_data_V_d0");
    sc_trace(mVcdFile, ap_channel_done_rhs_digits_data_V, "ap_channel_done_rhs_digits_data_V");
    sc_trace(mVcdFile, Loop_1_proc_U0_rhs_digits_data_V_full_n, "Loop_1_proc_U0_rhs_digits_data_V_full_n");
    sc_trace(mVcdFile, ap_sync_reg_channel_write_rhs_digits_data_V, "ap_sync_reg_channel_write_rhs_digits_data_V");
    sc_trace(mVcdFile, ap_sync_channel_write_rhs_digits_data_V, "ap_sync_channel_write_rhs_digits_data_V");
    sc_trace(mVcdFile, ap_channel_done_lhs_digits_data_V, "ap_channel_done_lhs_digits_data_V");
    sc_trace(mVcdFile, Loop_1_proc_U0_lhs_digits_data_V_full_n, "Loop_1_proc_U0_lhs_digits_data_V_full_n");
    sc_trace(mVcdFile, ap_sync_reg_channel_write_lhs_digits_data_V, "ap_sync_reg_channel_write_lhs_digits_data_V");
    sc_trace(mVcdFile, ap_sync_channel_write_lhs_digits_data_V, "ap_sync_channel_write_lhs_digits_data_V");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_lhs_digits_data_V_address0, "karastuba_mul_templa_3_U0_lhs_digits_data_V_address0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_lhs_digits_data_V_ce0, "karastuba_mul_templa_3_U0_lhs_digits_data_V_ce0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_lhs_digits_data_V_d0, "karastuba_mul_templa_3_U0_lhs_digits_data_V_d0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_lhs_digits_data_V_we0, "karastuba_mul_templa_3_U0_lhs_digits_data_V_we0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_lhs_digits_data_V_address1, "karastuba_mul_templa_3_U0_lhs_digits_data_V_address1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_lhs_digits_data_V_ce1, "karastuba_mul_templa_3_U0_lhs_digits_data_V_ce1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_lhs_digits_data_V_d1, "karastuba_mul_templa_3_U0_lhs_digits_data_V_d1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_lhs_digits_data_V_we1, "karastuba_mul_templa_3_U0_lhs_digits_data_V_we1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_rhs_digits_data_V_address0, "karastuba_mul_templa_3_U0_rhs_digits_data_V_address0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_rhs_digits_data_V_ce0, "karastuba_mul_templa_3_U0_rhs_digits_data_V_ce0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_rhs_digits_data_V_d0, "karastuba_mul_templa_3_U0_rhs_digits_data_V_d0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_rhs_digits_data_V_we0, "karastuba_mul_templa_3_U0_rhs_digits_data_V_we0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_rhs_digits_data_V_address1, "karastuba_mul_templa_3_U0_rhs_digits_data_V_address1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_rhs_digits_data_V_ce1, "karastuba_mul_templa_3_U0_rhs_digits_data_V_ce1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_rhs_digits_data_V_d1, "karastuba_mul_templa_3_U0_rhs_digits_data_V_d1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_rhs_digits_data_V_we1, "karastuba_mul_templa_3_U0_rhs_digits_data_V_we1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_res_digits_data_V_address0, "karastuba_mul_templa_3_U0_res_digits_data_V_address0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_res_digits_data_V_ce0, "karastuba_mul_templa_3_U0_res_digits_data_V_ce0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_res_digits_data_V_d0, "karastuba_mul_templa_3_U0_res_digits_data_V_d0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_res_digits_data_V_we0, "karastuba_mul_templa_3_U0_res_digits_data_V_we0");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_res_digits_data_V_address1, "karastuba_mul_templa_3_U0_res_digits_data_V_address1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_res_digits_data_V_ce1, "karastuba_mul_templa_3_U0_res_digits_data_V_ce1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_res_digits_data_V_d1, "karastuba_mul_templa_3_U0_res_digits_data_V_d1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_res_digits_data_V_we1, "karastuba_mul_templa_3_U0_res_digits_data_V_we1");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_lhs_digits_data_V_read, "karastuba_mul_templa_3_U0_lhs_digits_data_V_read");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_rhs_digits_data_V_read, "karastuba_mul_templa_3_U0_rhs_digits_data_V_read");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_ap_start, "karastuba_mul_templa_3_U0_ap_start");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_res_digits_data_V_full_n, "karastuba_mul_templa_3_U0_res_digits_data_V_full_n");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_res_digits_data_V_write, "karastuba_mul_templa_3_U0_res_digits_data_V_write");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_ap_done, "karastuba_mul_templa_3_U0_ap_done");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_ap_ready, "karastuba_mul_templa_3_U0_ap_ready");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_ap_idle, "karastuba_mul_templa_3_U0_ap_idle");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_ap_continue, "karastuba_mul_templa_3_U0_ap_continue");
    sc_trace(mVcdFile, ap_channel_done_res_digits_data_V, "ap_channel_done_res_digits_data_V");
    sc_trace(mVcdFile, Loop_2_proc_U0_ap_start, "Loop_2_proc_U0_ap_start");
    sc_trace(mVcdFile, Loop_2_proc_U0_ap_done, "Loop_2_proc_U0_ap_done");
    sc_trace(mVcdFile, Loop_2_proc_U0_ap_continue, "Loop_2_proc_U0_ap_continue");
    sc_trace(mVcdFile, Loop_2_proc_U0_ap_idle, "Loop_2_proc_U0_ap_idle");
    sc_trace(mVcdFile, Loop_2_proc_U0_ap_ready, "Loop_2_proc_U0_ap_ready");
    sc_trace(mVcdFile, Loop_2_proc_U0_res_digits_data_V_address0, "Loop_2_proc_U0_res_digits_data_V_address0");
    sc_trace(mVcdFile, Loop_2_proc_U0_res_digits_data_V_ce0, "Loop_2_proc_U0_res_digits_data_V_ce0");
    sc_trace(mVcdFile, Loop_2_proc_U0_res_output_V_TDATA, "Loop_2_proc_U0_res_output_V_TDATA");
    sc_trace(mVcdFile, Loop_2_proc_U0_res_output_V_TVALID, "Loop_2_proc_U0_res_output_V_TVALID");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, lhs_digits_data_V_i_full_n, "lhs_digits_data_V_i_full_n");
    sc_trace(mVcdFile, lhs_digits_data_V_t_empty_n, "lhs_digits_data_V_t_empty_n");
    sc_trace(mVcdFile, rhs_digits_data_V_i_full_n, "rhs_digits_data_V_i_full_n");
    sc_trace(mVcdFile, rhs_digits_data_V_t_empty_n, "rhs_digits_data_V_t_empty_n");
    sc_trace(mVcdFile, res_digits_data_V_i_full_n, "res_digits_data_V_i_full_n");
    sc_trace(mVcdFile, res_digits_data_V_t_empty_n, "res_digits_data_V_t_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, Loop_1_proc_U0_start_full_n, "Loop_1_proc_U0_start_full_n");
    sc_trace(mVcdFile, Loop_1_proc_U0_start_write, "Loop_1_proc_U0_start_write");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_start_full_n, "karastuba_mul_templa_3_U0_start_full_n");
    sc_trace(mVcdFile, karastuba_mul_templa_3_U0_start_write, "karastuba_mul_templa_3_U0_start_write");
    sc_trace(mVcdFile, Loop_2_proc_U0_start_full_n, "Loop_2_proc_U0_start_full_n");
    sc_trace(mVcdFile, Loop_2_proc_U0_start_write, "Loop_2_proc_U0_start_write");
#endif

    }
    mHdltvinHandle.open("karastuba_mul.hdltvin.dat");
    mHdltvoutHandle.open("karastuba_mul.hdltvout.dat");
}

karastuba_mul::~karastuba_mul() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete karastuba_mul_AXILiteS_s_axi_U;
    delete lhs_digits_data_V_U;
    delete rhs_digits_data_V_U;
    delete res_digits_data_V_U;
    delete Loop_1_proc_U0;
    delete karastuba_mul_templa_3_U0;
    delete Loop_2_proc_U0;
}

void karastuba_mul::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void karastuba_mul::thread_ap_var_for_const2() {
    ap_var_for_const2 = ap_const_lv64_0;
}

void karastuba_mul::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_logic_0;
}

void karastuba_mul::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_sync_reg_channel_write_lhs_digits_data_V = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, (Loop_1_proc_U0_ap_done.read() & 
             Loop_1_proc_U0_ap_continue.read()))) {
            ap_sync_reg_channel_write_lhs_digits_data_V = ap_const_logic_0;
        } else {
            ap_sync_reg_channel_write_lhs_digits_data_V = ap_sync_channel_write_lhs_digits_data_V.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_sync_reg_channel_write_rhs_digits_data_V = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, (Loop_1_proc_U0_ap_done.read() & 
             Loop_1_proc_U0_ap_continue.read()))) {
            ap_sync_reg_channel_write_rhs_digits_data_V = ap_const_logic_0;
        } else {
            ap_sync_reg_channel_write_rhs_digits_data_V = ap_sync_channel_write_rhs_digits_data_V.read();
        }
    }
}

void karastuba_mul::thread_Loop_1_proc_U0_ap_continue() {
    Loop_1_proc_U0_ap_continue = (ap_sync_channel_write_rhs_digits_data_V.read() & ap_sync_channel_write_lhs_digits_data_V.read());
}

void karastuba_mul::thread_Loop_1_proc_U0_ap_start() {
    Loop_1_proc_U0_ap_start = ap_start.read();
}

void karastuba_mul::thread_Loop_1_proc_U0_lhs_digits_data_V_full_n() {
    Loop_1_proc_U0_lhs_digits_data_V_full_n = lhs_digits_data_V_i_full_n.read();
}

void karastuba_mul::thread_Loop_1_proc_U0_rhs_digits_data_V_full_n() {
    Loop_1_proc_U0_rhs_digits_data_V_full_n = rhs_digits_data_V_i_full_n.read();
}

void karastuba_mul::thread_Loop_1_proc_U0_start_full_n() {
    Loop_1_proc_U0_start_full_n = ap_const_logic_1;
}

void karastuba_mul::thread_Loop_1_proc_U0_start_write() {
    Loop_1_proc_U0_start_write = ap_const_logic_0;
}

void karastuba_mul::thread_Loop_2_proc_U0_ap_continue() {
    Loop_2_proc_U0_ap_continue = ap_const_logic_1;
}

void karastuba_mul::thread_Loop_2_proc_U0_ap_start() {
    Loop_2_proc_U0_ap_start = res_digits_data_V_t_empty_n.read();
}

void karastuba_mul::thread_Loop_2_proc_U0_start_full_n() {
    Loop_2_proc_U0_start_full_n = ap_const_logic_1;
}

void karastuba_mul::thread_Loop_2_proc_U0_start_write() {
    Loop_2_proc_U0_start_write = ap_const_logic_0;
}

void karastuba_mul::thread_ap_channel_done_lhs_digits_data_V() {
    ap_channel_done_lhs_digits_data_V = (Loop_1_proc_U0_ap_done.read() & (ap_sync_reg_channel_write_lhs_digits_data_V.read() ^ 
  ap_const_logic_1));
}

void karastuba_mul::thread_ap_channel_done_res_digits_data_V() {
    ap_channel_done_res_digits_data_V = karastuba_mul_templa_3_U0_ap_done.read();
}

void karastuba_mul::thread_ap_channel_done_rhs_digits_data_V() {
    ap_channel_done_rhs_digits_data_V = (Loop_1_proc_U0_ap_done.read() & (ap_sync_reg_channel_write_rhs_digits_data_V.read() ^ 
  ap_const_logic_1));
}

void karastuba_mul::thread_ap_done() {
    ap_done = Loop_2_proc_U0_ap_done.read();
}

void karastuba_mul::thread_ap_idle() {
    ap_idle = (Loop_1_proc_U0_ap_idle.read() & karastuba_mul_templa_3_U0_ap_idle.read() & Loop_2_proc_U0_ap_idle.read() & (lhs_digits_data_V_t_empty_n.read() ^ 
  ap_const_logic_1) & (rhs_digits_data_V_t_empty_n.read() ^ 
  ap_const_logic_1) & (res_digits_data_V_t_empty_n.read() ^ 
  ap_const_logic_1));
}

void karastuba_mul::thread_ap_ready() {
    ap_ready = Loop_1_proc_U0_ap_ready.read();
}

void karastuba_mul::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void karastuba_mul::thread_ap_sync_channel_write_lhs_digits_data_V() {
    ap_sync_channel_write_lhs_digits_data_V = ((ap_channel_done_lhs_digits_data_V.read() & 
  Loop_1_proc_U0_lhs_digits_data_V_full_n.read()) | ap_sync_reg_channel_write_lhs_digits_data_V.read());
}

void karastuba_mul::thread_ap_sync_channel_write_rhs_digits_data_V() {
    ap_sync_channel_write_rhs_digits_data_V = ((ap_channel_done_rhs_digits_data_V.read() & 
  Loop_1_proc_U0_rhs_digits_data_V_full_n.read()) | ap_sync_reg_channel_write_rhs_digits_data_V.read());
}

void karastuba_mul::thread_ap_sync_continue() {
    ap_sync_continue = ap_const_logic_1;
}

void karastuba_mul::thread_ap_sync_done() {
    ap_sync_done = Loop_2_proc_U0_ap_done.read();
}

void karastuba_mul::thread_ap_sync_ready() {
    ap_sync_ready = Loop_1_proc_U0_ap_ready.read();
}

void karastuba_mul::thread_hs_input_V_TREADY() {
    hs_input_V_TREADY = Loop_1_proc_U0_hs_input_V_TREADY.read();
}

void karastuba_mul::thread_karastuba_mul_templa_3_U0_ap_continue() {
    karastuba_mul_templa_3_U0_ap_continue = karastuba_mul_templa_3_U0_res_digits_data_V_full_n.read();
}

void karastuba_mul::thread_karastuba_mul_templa_3_U0_ap_start() {
    karastuba_mul_templa_3_U0_ap_start = (lhs_digits_data_V_t_empty_n.read() & rhs_digits_data_V_t_empty_n.read());
}

void karastuba_mul::thread_karastuba_mul_templa_3_U0_res_digits_data_V_full_n() {
    karastuba_mul_templa_3_U0_res_digits_data_V_full_n = res_digits_data_V_i_full_n.read();
}

void karastuba_mul::thread_karastuba_mul_templa_3_U0_start_full_n() {
    karastuba_mul_templa_3_U0_start_full_n = ap_const_logic_1;
}

void karastuba_mul::thread_karastuba_mul_templa_3_U0_start_write() {
    karastuba_mul_templa_3_U0_start_write = ap_const_logic_0;
}

void karastuba_mul::thread_res_output_V_TDATA() {
    res_output_V_TDATA = Loop_2_proc_U0_res_output_V_TDATA.read();
}

void karastuba_mul::thread_res_output_V_TVALID() {
    res_output_V_TVALID = Loop_2_proc_U0_res_output_V_TVALID.read();
}

void karastuba_mul::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"s_axi_AXILiteS_AWVALID\" :  \"" << s_axi_AXILiteS_AWVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"s_axi_AXILiteS_AWREADY\" :  \"" << s_axi_AXILiteS_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_AWADDR\" :  \"" << s_axi_AXILiteS_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WVALID\" :  \"" << s_axi_AXILiteS_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_WREADY\" :  \"" << s_axi_AXILiteS_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WDATA\" :  \"" << s_axi_AXILiteS_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WSTRB\" :  \"" << s_axi_AXILiteS_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_ARVALID\" :  \"" << s_axi_AXILiteS_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_ARREADY\" :  \"" << s_axi_AXILiteS_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_ARADDR\" :  \"" << s_axi_AXILiteS_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RVALID\" :  \"" << s_axi_AXILiteS_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_RREADY\" :  \"" << s_axi_AXILiteS_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RDATA\" :  \"" << s_axi_AXILiteS_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RRESP\" :  \"" << s_axi_AXILiteS_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_BVALID\" :  \"" << s_axi_AXILiteS_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_BREADY\" :  \"" << s_axi_AXILiteS_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_BRESP\" :  \"" << s_axi_AXILiteS_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"hs_input_V_TDATA\" :  \"" << hs_input_V_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_output_V_TDATA\" :  \"" << res_output_V_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"hs_input_V_TVALID\" :  \"" << hs_input_V_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"hs_input_V_TREADY\" :  \"" << hs_input_V_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_output_V_TVALID\" :  \"" << res_output_V_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"res_output_V_TREADY\" :  \"" << res_output_V_TREADY.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
