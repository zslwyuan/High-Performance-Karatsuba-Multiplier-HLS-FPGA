// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module karastuba_mul_templa (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        lhs0_tmp_digits_data_address0,
        lhs0_tmp_digits_data_ce0,
        lhs0_tmp_digits_data_q0,
        lhs1_tmp_digits_data_address0,
        lhs1_tmp_digits_data_ce0,
        lhs1_tmp_digits_data_q0,
        rhs0_tmp_digits_data_address0,
        rhs0_tmp_digits_data_ce0,
        rhs0_tmp_digits_data_q0,
        rhs1_tmp_digits_data_address0,
        rhs1_tmp_digits_data_ce0,
        rhs1_tmp_digits_data_q0,
        cross_mul_tmp_bits,
        cross_mul_tmp_bits_ap_vld,
        cross_mul_digits_data_address0,
        cross_mul_digits_data_ce0,
        cross_mul_digits_data_we0,
        cross_mul_digits_data_d0
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_pp0_stage0 = 8'd2;
parameter    ap_ST_fsm_pp0_stage1 = 8'd4;
parameter    ap_ST_fsm_state6 = 8'd8;
parameter    ap_ST_fsm_pp1_stage0 = 8'd16;
parameter    ap_ST_fsm_pp1_stage1 = 8'd32;
parameter    ap_ST_fsm_state11 = 8'd64;
parameter    ap_ST_fsm_state12 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] lhs0_tmp_digits_data_address0;
output   lhs0_tmp_digits_data_ce0;
input  [31:0] lhs0_tmp_digits_data_q0;
output  [4:0] lhs1_tmp_digits_data_address0;
output   lhs1_tmp_digits_data_ce0;
input  [31:0] lhs1_tmp_digits_data_q0;
output  [4:0] rhs0_tmp_digits_data_address0;
output   rhs0_tmp_digits_data_ce0;
input  [31:0] rhs0_tmp_digits_data_q0;
output  [4:0] rhs1_tmp_digits_data_address0;
output   rhs1_tmp_digits_data_ce0;
input  [31:0] rhs1_tmp_digits_data_q0;
output  [31:0] cross_mul_tmp_bits;
output   cross_mul_tmp_bits_ap_vld;
output  [5:0] cross_mul_digits_data_address0;
output   cross_mul_digits_data_ce0;
output   cross_mul_digits_data_we0;
output  [31:0] cross_mul_digits_data_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg lhs0_tmp_digits_data_ce0;
reg lhs1_tmp_digits_data_ce0;
reg rhs0_tmp_digits_data_ce0;
reg rhs1_tmp_digits_data_ce0;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [1:0] tmp_0_i_reg_136;
reg   [5:0] i_0_i_reg_148;
reg   [1:0] tmp_0_i3_reg_159;
reg   [5:0] i_0_i4_reg_171;
wire   [0:0] icmp_ln54_fu_196_p2;
reg   [0:0] icmp_ln54_reg_330;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln54_reg_330_pp0_iter1_reg;
wire   [5:0] i_fu_202_p2;
reg   [5:0] i_reg_334;
reg    ap_enable_reg_pp0_iter0;
wire   [63:0] zext_ln59_fu_208_p1;
reg   [63:0] zext_ln59_reg_339;
reg   [63:0] zext_ln59_reg_339_pp0_iter1_reg;
reg   [31:0] lhs0_tmp_digits_data_8_reg_354;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_state5_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] lhs1_tmp_digits_data_8_reg_360;
wire   [32:0] add_ln59_fu_225_p2;
reg   [32:0] add_ln59_reg_366;
wire   [31:0] add_ln61_1_fu_236_p2;
reg   [31:0] add_ln61_1_reg_371;
reg    ap_enable_reg_pp0_iter1;
wire   [0:0] icmp_ln54_1_fu_263_p2;
reg   [0:0] icmp_ln54_1_reg_381;
wire    ap_CS_fsm_pp1_stage0;
wire    ap_block_state7_pp1_stage0_iter0;
wire    ap_block_state9_pp1_stage0_iter1;
wire    ap_block_pp1_stage0_11001;
reg   [0:0] icmp_ln54_1_reg_381_pp1_iter1_reg;
wire   [5:0] i_5_fu_269_p2;
reg   [5:0] i_5_reg_385;
reg    ap_enable_reg_pp1_iter0;
wire   [63:0] zext_ln59_5_fu_275_p1;
reg   [63:0] zext_ln59_5_reg_390;
reg   [63:0] zext_ln59_5_reg_390_pp1_iter1_reg;
reg   [31:0] rhs0_tmp_digits_data_8_reg_405;
wire    ap_CS_fsm_pp1_stage1;
wire    ap_block_state8_pp1_stage1_iter0;
wire    ap_block_state10_pp1_stage1_iter1;
wire    ap_block_pp1_stage1_11001;
reg   [31:0] rhs1_tmp_digits_data_8_reg_411;
wire   [32:0] add_ln59_1_fu_292_p2;
reg   [32:0] add_ln59_1_reg_417;
wire   [31:0] add_ln61_3_fu_303_p2;
reg   [31:0] add_ln61_3_reg_422;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_CS_fsm_state6;
wire    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state7;
wire    ap_block_pp1_stage1_subdone;
reg   [4:0] add0_digits_data_address0;
reg    add0_digits_data_ce0;
reg    add0_digits_data_we0;
wire   [31:0] add0_digits_data_q0;
reg   [4:0] add1_digits_data_address0;
reg    add1_digits_data_ce0;
reg    add1_digits_data_we0;
wire   [31:0] add1_digits_data_q0;
wire   [4:0] grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_address0;
wire    grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_ce0;
wire   [31:0] grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_d0;
wire    grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_we0;
wire   [4:0] grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_address1;
wire    grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_ce1;
wire   [31:0] grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_d1;
wire    grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_we1;
wire   [4:0] grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_address0;
wire    grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_ce0;
wire   [31:0] grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_d0;
wire    grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_we0;
wire   [4:0] grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_address1;
wire    grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_ce1;
wire   [31:0] grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_d1;
wire    grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_we1;
wire   [31:0] grp_karastuba_mul_templa_5_fu_182_res_tmp_bits;
wire   [5:0] grp_karastuba_mul_templa_5_fu_182_res_digits_data_address0;
wire    grp_karastuba_mul_templa_5_fu_182_res_digits_data_ce0;
wire   [31:0] grp_karastuba_mul_templa_5_fu_182_res_digits_data_d0;
wire    grp_karastuba_mul_templa_5_fu_182_res_digits_data_we0;
wire   [5:0] grp_karastuba_mul_templa_5_fu_182_res_digits_data_address1;
wire    grp_karastuba_mul_templa_5_fu_182_res_digits_data_ce1;
wire   [31:0] grp_karastuba_mul_templa_5_fu_182_res_digits_data_d1;
wire    grp_karastuba_mul_templa_5_fu_182_res_digits_data_we1;
wire    grp_karastuba_mul_templa_5_fu_182_ap_start;
wire    grp_karastuba_mul_templa_5_fu_182_res_tmp_bits_ap_vld;
wire    grp_karastuba_mul_templa_5_fu_182_ap_done;
wire    grp_karastuba_mul_templa_5_fu_182_ap_ready;
wire    grp_karastuba_mul_templa_5_fu_182_ap_idle;
reg    grp_karastuba_mul_templa_5_fu_182_ap_continue;
reg   [5:0] ap_phi_mux_i_0_i_phi_fu_152_p4;
wire    ap_block_pp0_stage0;
reg   [5:0] ap_phi_mux_i_0_i4_phi_fu_175_p4;
wire    ap_block_pp1_stage0;
reg    grp_karastuba_mul_templa_5_fu_182_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_sync_grp_karastuba_mul_templa_5_fu_182_ap_ready;
wire    ap_sync_grp_karastuba_mul_templa_5_fu_182_ap_done;
reg    ap_block_state12_on_subcall_done;
reg    ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_ready;
reg    ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_done;
wire    ap_block_pp0_stage1;
wire    ap_block_pp1_stage1;
wire   [32:0] zext_ln59_1_fu_218_p1;
wire   [32:0] zext_ln54_fu_214_p1;
wire   [31:0] zext_ln59_3_fu_221_p1;
wire   [31:0] add_ln61_fu_231_p2;
wire   [33:0] zext_ln59_4_fu_244_p1;
wire   [33:0] zext_ln59_2_fu_241_p1;
wire   [33:0] tmp_fu_247_p2;
wire   [32:0] zext_ln59_6_fu_285_p1;
wire   [32:0] zext_ln54_1_fu_281_p1;
wire   [31:0] zext_ln59_8_fu_288_p1;
wire   [31:0] add_ln61_2_fu_298_p2;
wire   [33:0] zext_ln59_9_fu_311_p1;
wire   [33:0] zext_ln59_7_fu_308_p1;
wire   [33:0] tmp_11_fu_314_p2;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 grp_karastuba_mul_templa_5_fu_182_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_ready = 1'b0;
#0 ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_done = 1'b0;
end

karastuba_mul_ADDrcU #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
add0_digits_data_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(add0_digits_data_address0),
    .ce0(add0_digits_data_ce0),
    .we0(add0_digits_data_we0),
    .d0(add_ln61_1_reg_371),
    .q0(add0_digits_data_q0)
);

karastuba_mul_ADDrcU #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
add1_digits_data_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(add1_digits_data_address0),
    .ce0(add1_digits_data_ce0),
    .we0(add1_digits_data_we0),
    .d0(add_ln61_3_reg_422),
    .q0(add1_digits_data_q0)
);

karastuba_mul_templa_5 grp_karastuba_mul_templa_5_fu_182(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .lhs_tmp_bits_read(tmp_0_i_reg_136),
    .lhs_digits_data_address0(grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_address0),
    .lhs_digits_data_ce0(grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_ce0),
    .lhs_digits_data_d0(grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_d0),
    .lhs_digits_data_q0(add0_digits_data_q0),
    .lhs_digits_data_we0(grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_we0),
    .lhs_digits_data_address1(grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_address1),
    .lhs_digits_data_ce1(grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_ce1),
    .lhs_digits_data_d1(grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_d1),
    .lhs_digits_data_q1(32'd0),
    .lhs_digits_data_we1(grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_we1),
    .rhs_tmp_bits_read(tmp_0_i3_reg_159),
    .rhs_digits_data_address0(grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_address0),
    .rhs_digits_data_ce0(grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_ce0),
    .rhs_digits_data_d0(grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_d0),
    .rhs_digits_data_q0(add1_digits_data_q0),
    .rhs_digits_data_we0(grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_we0),
    .rhs_digits_data_address1(grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_address1),
    .rhs_digits_data_ce1(grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_ce1),
    .rhs_digits_data_d1(grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_d1),
    .rhs_digits_data_q1(32'd0),
    .rhs_digits_data_we1(grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_we1),
    .res_tmp_bits(grp_karastuba_mul_templa_5_fu_182_res_tmp_bits),
    .res_digits_data_address0(grp_karastuba_mul_templa_5_fu_182_res_digits_data_address0),
    .res_digits_data_ce0(grp_karastuba_mul_templa_5_fu_182_res_digits_data_ce0),
    .res_digits_data_d0(grp_karastuba_mul_templa_5_fu_182_res_digits_data_d0),
    .res_digits_data_q0(32'd0),
    .res_digits_data_we0(grp_karastuba_mul_templa_5_fu_182_res_digits_data_we0),
    .res_digits_data_address1(grp_karastuba_mul_templa_5_fu_182_res_digits_data_address1),
    .res_digits_data_ce1(grp_karastuba_mul_templa_5_fu_182_res_digits_data_ce1),
    .res_digits_data_d1(grp_karastuba_mul_templa_5_fu_182_res_digits_data_d1),
    .res_digits_data_q1(32'd0),
    .res_digits_data_we1(grp_karastuba_mul_templa_5_fu_182_res_digits_data_we1),
    .lhs_tmp_bits_read_ap_vld(1'b1),
    .rhs_tmp_bits_read_ap_vld(1'b1),
    .ap_start(grp_karastuba_mul_templa_5_fu_182_ap_start),
    .res_tmp_bits_ap_vld(grp_karastuba_mul_templa_5_fu_182_res_tmp_bits_ap_vld),
    .ap_done(grp_karastuba_mul_templa_5_fu_182_ap_done),
    .ap_ready(grp_karastuba_mul_templa_5_fu_182_ap_ready),
    .ap_idle(grp_karastuba_mul_templa_5_fu_182_ap_idle),
    .ap_continue(grp_karastuba_mul_templa_5_fu_182_ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state7) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage1_subdone) & (1'b1 == ap_CS_fsm_pp1_stage1))) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_done <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
            ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_done <= 1'b0;
        end else if ((grp_karastuba_mul_templa_5_fu_182_ap_done == 1'b1)) begin
            ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_ready <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
            ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_ready <= 1'b0;
        end else if ((grp_karastuba_mul_templa_5_fu_182_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_karastuba_mul_templa_5_fu_182_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state11) | ((ap_sync_grp_karastuba_mul_templa_5_fu_182_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state12)))) begin
            grp_karastuba_mul_templa_5_fu_182_ap_start_reg <= 1'b1;
        end else if ((grp_karastuba_mul_templa_5_fu_182_ap_ready == 1'b1)) begin
            grp_karastuba_mul_templa_5_fu_182_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_0_i4_reg_171 <= 6'd0;
    end else if (((icmp_ln54_1_reg_381 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        i_0_i4_reg_171 <= i_5_reg_385;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_i_reg_148 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_reg_330 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_0_i_reg_148 <= i_reg_334;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_0_i3_reg_159 <= 2'd0;
    end else if (((icmp_ln54_1_reg_381_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage1) & (1'b0 == ap_block_pp1_stage1_11001))) begin
        tmp_0_i3_reg_159 <= {{tmp_11_fu_314_p2[33:32]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_0_i_reg_136 <= 2'd0;
    end else if (((icmp_ln54_reg_330_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        tmp_0_i_reg_136 <= {{tmp_fu_247_p2[33:32]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln54_1_reg_381 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        add_ln59_1_reg_417 <= add_ln59_1_fu_292_p2;
        add_ln61_3_reg_422 <= add_ln61_3_fu_303_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_reg_330 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln59_reg_366 <= add_ln59_fu_225_p2;
        add_ln61_1_reg_371 <= add_ln61_1_fu_236_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        i_5_reg_385 <= i_5_fu_269_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_334 <= i_fu_202_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        icmp_ln54_1_reg_381 <= icmp_ln54_1_fu_263_p2;
        icmp_ln54_1_reg_381_pp1_iter1_reg <= icmp_ln54_1_reg_381;
        zext_ln59_5_reg_390_pp1_iter1_reg[5 : 0] <= zext_ln59_5_reg_390[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln54_reg_330 <= icmp_ln54_fu_196_p2;
        icmp_ln54_reg_330_pp0_iter1_reg <= icmp_ln54_reg_330;
        zext_ln59_reg_339_pp0_iter1_reg[5 : 0] <= zext_ln59_reg_339[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln54_reg_330 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        lhs0_tmp_digits_data_8_reg_354 <= lhs0_tmp_digits_data_q0;
        lhs1_tmp_digits_data_8_reg_360 <= lhs1_tmp_digits_data_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln54_1_reg_381 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage1) & (1'b0 == ap_block_pp1_stage1_11001))) begin
        rhs0_tmp_digits_data_8_reg_405 <= rhs0_tmp_digits_data_q0;
        rhs1_tmp_digits_data_8_reg_411 <= rhs1_tmp_digits_data_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln54_1_fu_263_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        zext_ln59_5_reg_390[5 : 0] <= zext_ln59_5_fu_275_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_fu_196_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln59_reg_339[5 : 0] <= zext_ln59_fu_208_p1[5 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add0_digits_data_address0 = zext_ln59_reg_339_pp0_iter1_reg;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        add0_digits_data_address0 = grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_address0;
    end else begin
        add0_digits_data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add0_digits_data_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        add0_digits_data_ce0 = grp_karastuba_mul_templa_5_fu_182_lhs_digits_data_ce0;
    end else begin
        add0_digits_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_reg_330_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add0_digits_data_we0 = 1'b1;
    end else begin
        add0_digits_data_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage1))) begin
        add1_digits_data_address0 = zext_ln59_5_reg_390_pp1_iter1_reg;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        add1_digits_data_address0 = grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_address0;
    end else begin
        add1_digits_data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage1) & (1'b0 == ap_block_pp1_stage1_11001))) begin
        add1_digits_data_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        add1_digits_data_ce0 = grp_karastuba_mul_templa_5_fu_182_rhs_digits_data_ce0;
    end else begin
        add1_digits_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_1_reg_381_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage1) & (1'b0 == ap_block_pp1_stage1_11001))) begin
        add1_digits_data_we0 = 1'b1;
    end else begin
        add1_digits_data_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln54_fu_196_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln54_1_fu_263_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state7 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state7 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_1_reg_381 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_i_0_i4_phi_fu_175_p4 = i_5_reg_385;
    end else begin
        ap_phi_mux_i_0_i4_phi_fu_175_p4 = i_0_i4_reg_171;
    end
end

always @ (*) begin
    if (((icmp_ln54_reg_330 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_i_0_i_phi_fu_152_p4 = i_reg_334;
    end else begin
        ap_phi_mux_i_0_i_phi_fu_152_p4 = i_0_i_reg_148;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
        grp_karastuba_mul_templa_5_fu_182_ap_continue = 1'b1;
    end else begin
        grp_karastuba_mul_templa_5_fu_182_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lhs0_tmp_digits_data_ce0 = 1'b1;
    end else begin
        lhs0_tmp_digits_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lhs1_tmp_digits_data_ce0 = 1'b1;
    end else begin
        lhs1_tmp_digits_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        rhs0_tmp_digits_data_ce0 = 1'b1;
    end else begin
        rhs0_tmp_digits_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        rhs1_tmp_digits_data_ce0 = 1'b1;
    end else begin
        rhs1_tmp_digits_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln54_fu_196_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((icmp_ln54_fu_196_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln54_1_fu_263_p2 == 1'd1)) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage1;
            end else if (((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln54_1_fu_263_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_pp1_stage1 : begin
            if ((~((1'b0 == ap_block_pp1_stage1_subdone) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage1) & (ap_enable_reg_pp1_iter0 == 1'b0)) & (1'b0 == ap_block_pp1_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((1'b0 == ap_block_pp1_stage1_subdone) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage1) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage1;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln59_1_fu_292_p2 = (zext_ln59_6_fu_285_p1 + zext_ln54_1_fu_281_p1);

assign add_ln59_fu_225_p2 = (zext_ln59_1_fu_218_p1 + zext_ln54_fu_214_p1);

assign add_ln61_1_fu_236_p2 = (add_ln61_fu_231_p2 + lhs0_tmp_digits_data_8_reg_354);

assign add_ln61_2_fu_298_p2 = (rhs1_tmp_digits_data_8_reg_411 + zext_ln59_8_fu_288_p1);

assign add_ln61_3_fu_303_p2 = (add_ln61_2_fu_298_p2 + rhs0_tmp_digits_data_8_reg_405);

assign add_ln61_fu_231_p2 = (lhs1_tmp_digits_data_8_reg_360 + zext_ln59_3_fu_221_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp1_stage1 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp1_stage1_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state12_on_subcall_done = ((ap_sync_grp_karastuba_mul_templa_5_fu_182_ap_ready & ap_sync_grp_karastuba_mul_templa_5_fu_182_ap_done) == 1'b0);
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp1_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_sync_grp_karastuba_mul_templa_5_fu_182_ap_done = (grp_karastuba_mul_templa_5_fu_182_ap_done | ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_done);

assign ap_sync_grp_karastuba_mul_templa_5_fu_182_ap_ready = (grp_karastuba_mul_templa_5_fu_182_ap_ready | ap_sync_reg_grp_karastuba_mul_templa_5_fu_182_ap_ready);

assign cross_mul_digits_data_address0 = grp_karastuba_mul_templa_5_fu_182_res_digits_data_address0;

assign cross_mul_digits_data_ce0 = grp_karastuba_mul_templa_5_fu_182_res_digits_data_ce0;

assign cross_mul_digits_data_d0 = grp_karastuba_mul_templa_5_fu_182_res_digits_data_d0;

assign cross_mul_digits_data_we0 = grp_karastuba_mul_templa_5_fu_182_res_digits_data_we0;

assign cross_mul_tmp_bits = grp_karastuba_mul_templa_5_fu_182_res_tmp_bits;

assign cross_mul_tmp_bits_ap_vld = grp_karastuba_mul_templa_5_fu_182_res_tmp_bits_ap_vld;

assign grp_karastuba_mul_templa_5_fu_182_ap_start = grp_karastuba_mul_templa_5_fu_182_ap_start_reg;

assign i_5_fu_269_p2 = (ap_phi_mux_i_0_i4_phi_fu_175_p4 + 6'd1);

assign i_fu_202_p2 = (ap_phi_mux_i_0_i_phi_fu_152_p4 + 6'd1);

assign icmp_ln54_1_fu_263_p2 = ((ap_phi_mux_i_0_i4_phi_fu_175_p4 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln54_fu_196_p2 = ((ap_phi_mux_i_0_i_phi_fu_152_p4 == 6'd32) ? 1'b1 : 1'b0);

assign lhs0_tmp_digits_data_address0 = zext_ln59_fu_208_p1;

assign lhs1_tmp_digits_data_address0 = zext_ln59_fu_208_p1;

assign rhs0_tmp_digits_data_address0 = zext_ln59_5_fu_275_p1;

assign rhs1_tmp_digits_data_address0 = zext_ln59_5_fu_275_p1;

assign tmp_11_fu_314_p2 = (zext_ln59_9_fu_311_p1 + zext_ln59_7_fu_308_p1);

assign tmp_fu_247_p2 = (zext_ln59_4_fu_244_p1 + zext_ln59_2_fu_241_p1);

assign zext_ln54_1_fu_281_p1 = tmp_0_i3_reg_159;

assign zext_ln54_fu_214_p1 = tmp_0_i_reg_136;

assign zext_ln59_1_fu_218_p1 = lhs0_tmp_digits_data_8_reg_354;

assign zext_ln59_2_fu_241_p1 = lhs1_tmp_digits_data_8_reg_360;

assign zext_ln59_3_fu_221_p1 = tmp_0_i_reg_136;

assign zext_ln59_4_fu_244_p1 = add_ln59_reg_366;

assign zext_ln59_5_fu_275_p1 = ap_phi_mux_i_0_i4_phi_fu_175_p4;

assign zext_ln59_6_fu_285_p1 = rhs0_tmp_digits_data_8_reg_405;

assign zext_ln59_7_fu_308_p1 = rhs1_tmp_digits_data_8_reg_411;

assign zext_ln59_8_fu_288_p1 = tmp_0_i3_reg_159;

assign zext_ln59_9_fu_311_p1 = add_ln59_1_reg_417;

assign zext_ln59_fu_208_p1 = ap_phi_mux_i_0_i_phi_fu_152_p4;

always @ (posedge ap_clk) begin
    zext_ln59_reg_339[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln59_reg_339_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln59_5_reg_390[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln59_5_reg_390_pp1_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end

endmodule //karastuba_mul_templa