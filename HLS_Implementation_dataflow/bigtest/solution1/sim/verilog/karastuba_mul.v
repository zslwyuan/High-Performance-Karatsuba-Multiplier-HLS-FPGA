// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="karastuba_mul,hls_ip_2019_2_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu095-ffva2104-2-e,HLS_INPUT_CLOCK=3.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=2.492000,HLS_SYN_LAT=6065,HLS_SYN_TPT=3859,HLS_SYN_MEM=213,HLS_SYN_DSP=360,HLS_SYN_FF=176330,HLS_SYN_LUT=261515,HLS_VERSION=2019_2_1}" *)

module karastuba_mul (
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        hs_input_TDATA,
        res_output_TDATA,
        hs_input_TVALID,
        hs_input_TREADY,
        res_output_TVALID,
        res_output_TREADY
);

parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 4;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_S_AXI_ADDR_WIDTH = 32;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
input  [31:0] hs_input_TDATA;
output  [31:0] res_output_TDATA;
input   hs_input_TVALID;
output   hs_input_TREADY;
output   res_output_TVALID;
input   res_output_TREADY;

 reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire   [31:0] lhs_digits_data_i_q0;
wire   [31:0] lhs_digits_data_t_q0;
wire   [31:0] rhs_digits_data_i_q0;
wire   [31:0] rhs_digits_data_t_q0;
wire   [31:0] res_digits_data_i_q0;
wire   [31:0] res_digits_data_t_q0;
wire    Loop_1_proc_U0_ap_start;
wire    Loop_1_proc_U0_ap_done;
wire    Loop_1_proc_U0_ap_continue;
wire    Loop_1_proc_U0_ap_idle;
wire    Loop_1_proc_U0_ap_ready;
wire   [6:0] Loop_1_proc_U0_lhs_digits_data_address0;
wire    Loop_1_proc_U0_lhs_digits_data_ce0;
wire    Loop_1_proc_U0_lhs_digits_data_we0;
wire   [31:0] Loop_1_proc_U0_lhs_digits_data_d0;
wire    Loop_1_proc_U0_hs_input_TREADY;
wire   [6:0] Loop_1_proc_U0_rhs_digits_data_address0;
wire    Loop_1_proc_U0_rhs_digits_data_ce0;
wire    Loop_1_proc_U0_rhs_digits_data_we0;
wire   [31:0] Loop_1_proc_U0_rhs_digits_data_d0;
wire    ap_channel_done_rhs_digits_data;
wire    Loop_1_proc_U0_rhs_digits_data_full_n;
reg    ap_sync_reg_channel_write_rhs_digits_data;
wire    ap_sync_channel_write_rhs_digits_data;
wire    ap_channel_done_lhs_digits_data;
wire    Loop_1_proc_U0_lhs_digits_data_full_n;
reg    ap_sync_reg_channel_write_lhs_digits_data;
wire    ap_sync_channel_write_lhs_digits_data;
wire   [6:0] karastuba_mul_templa_7_U0_lhs_digits_data_address0;
wire    karastuba_mul_templa_7_U0_lhs_digits_data_ce0;
wire   [31:0] karastuba_mul_templa_7_U0_lhs_digits_data_d0;
wire    karastuba_mul_templa_7_U0_lhs_digits_data_we0;
wire   [6:0] karastuba_mul_templa_7_U0_lhs_digits_data_address1;
wire    karastuba_mul_templa_7_U0_lhs_digits_data_ce1;
wire   [31:0] karastuba_mul_templa_7_U0_lhs_digits_data_d1;
wire    karastuba_mul_templa_7_U0_lhs_digits_data_we1;
wire   [6:0] karastuba_mul_templa_7_U0_rhs_digits_data_address0;
wire    karastuba_mul_templa_7_U0_rhs_digits_data_ce0;
wire   [31:0] karastuba_mul_templa_7_U0_rhs_digits_data_d0;
wire    karastuba_mul_templa_7_U0_rhs_digits_data_we0;
wire   [6:0] karastuba_mul_templa_7_U0_rhs_digits_data_address1;
wire    karastuba_mul_templa_7_U0_rhs_digits_data_ce1;
wire   [31:0] karastuba_mul_templa_7_U0_rhs_digits_data_d1;
wire    karastuba_mul_templa_7_U0_rhs_digits_data_we1;
wire   [7:0] karastuba_mul_templa_7_U0_res_digits_data_address0;
wire    karastuba_mul_templa_7_U0_res_digits_data_ce0;
wire   [31:0] karastuba_mul_templa_7_U0_res_digits_data_d0;
wire    karastuba_mul_templa_7_U0_res_digits_data_we0;
wire   [7:0] karastuba_mul_templa_7_U0_res_digits_data_address1;
wire    karastuba_mul_templa_7_U0_res_digits_data_ce1;
wire   [31:0] karastuba_mul_templa_7_U0_res_digits_data_d1;
wire    karastuba_mul_templa_7_U0_res_digits_data_we1;
wire    karastuba_mul_templa_7_U0_lhs_digits_data_read;
wire    karastuba_mul_templa_7_U0_rhs_digits_data_read;
wire    karastuba_mul_templa_7_U0_ap_start;
wire    karastuba_mul_templa_7_U0_res_digits_data_full_n;
wire    karastuba_mul_templa_7_U0_res_digits_data_write;
wire    karastuba_mul_templa_7_U0_ap_done;
wire    karastuba_mul_templa_7_U0_ap_ready;
wire    karastuba_mul_templa_7_U0_ap_idle;
wire    karastuba_mul_templa_7_U0_ap_continue;
wire    ap_channel_done_res_digits_data;
wire    Loop_2_proc_U0_ap_start;
wire    Loop_2_proc_U0_ap_done;
wire    Loop_2_proc_U0_ap_continue;
wire    Loop_2_proc_U0_ap_idle;
wire    Loop_2_proc_U0_ap_ready;
wire   [7:0] Loop_2_proc_U0_res_digits_data_address0;
wire    Loop_2_proc_U0_res_digits_data_ce0;
wire   [31:0] Loop_2_proc_U0_res_output_TDATA;
wire    Loop_2_proc_U0_res_output_TVALID;
wire    ap_sync_continue;
wire    lhs_digits_data_i_full_n;
wire    lhs_digits_data_t_empty_n;
wire    rhs_digits_data_i_full_n;
wire    rhs_digits_data_t_empty_n;
wire    res_digits_data_i_full_n;
wire    res_digits_data_t_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    Loop_1_proc_U0_start_full_n;
wire    Loop_1_proc_U0_start_write;
wire    karastuba_mul_templa_7_U0_start_full_n;
wire    karastuba_mul_templa_7_U0_start_write;
wire    Loop_2_proc_U0_start_full_n;
wire    Loop_2_proc_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_rhs_digits_data = 1'b0;
#0 ap_sync_reg_channel_write_lhs_digits_data = 1'b0;
end

karastuba_mul_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
karastuba_mul_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

karastuba_mul_lhsbzo #(
    .DataWidth( 32 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
lhs_digits_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_1_proc_U0_lhs_digits_data_address0),
    .i_ce0(Loop_1_proc_U0_lhs_digits_data_ce0),
    .i_we0(Loop_1_proc_U0_lhs_digits_data_we0),
    .i_d0(Loop_1_proc_U0_lhs_digits_data_d0),
    .i_q0(lhs_digits_data_i_q0),
    .t_address0(karastuba_mul_templa_7_U0_lhs_digits_data_address0),
    .t_ce0(karastuba_mul_templa_7_U0_lhs_digits_data_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(lhs_digits_data_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(lhs_digits_data_i_full_n),
    .i_write(ap_channel_done_lhs_digits_data),
    .t_empty_n(lhs_digits_data_t_empty_n),
    .t_read(karastuba_mul_templa_7_U0_ap_ready)
);

karastuba_mul_lhsbzo #(
    .DataWidth( 32 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
rhs_digits_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_1_proc_U0_rhs_digits_data_address0),
    .i_ce0(Loop_1_proc_U0_rhs_digits_data_ce0),
    .i_we0(Loop_1_proc_U0_rhs_digits_data_we0),
    .i_d0(Loop_1_proc_U0_rhs_digits_data_d0),
    .i_q0(rhs_digits_data_i_q0),
    .t_address0(karastuba_mul_templa_7_U0_rhs_digits_data_address0),
    .t_ce0(karastuba_mul_templa_7_U0_rhs_digits_data_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(rhs_digits_data_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(rhs_digits_data_i_full_n),
    .i_write(ap_channel_done_rhs_digits_data),
    .t_empty_n(rhs_digits_data_t_empty_n),
    .t_read(karastuba_mul_templa_7_U0_ap_ready)
);

karastuba_mul_resbBo #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
res_digits_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(karastuba_mul_templa_7_U0_res_digits_data_address0),
    .i_ce0(karastuba_mul_templa_7_U0_res_digits_data_ce0),
    .i_we0(karastuba_mul_templa_7_U0_res_digits_data_we0),
    .i_d0(karastuba_mul_templa_7_U0_res_digits_data_d0),
    .i_q0(res_digits_data_i_q0),
    .t_address0(Loop_2_proc_U0_res_digits_data_address0),
    .t_ce0(Loop_2_proc_U0_res_digits_data_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(res_digits_data_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(res_digits_data_i_full_n),
    .i_write(karastuba_mul_templa_7_U0_ap_done),
    .t_empty_n(res_digits_data_t_empty_n),
    .t_read(Loop_2_proc_U0_ap_ready)
);

Loop_1_proc Loop_1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_1_proc_U0_ap_start),
    .ap_done(Loop_1_proc_U0_ap_done),
    .ap_continue(Loop_1_proc_U0_ap_continue),
    .ap_idle(Loop_1_proc_U0_ap_idle),
    .ap_ready(Loop_1_proc_U0_ap_ready),
    .lhs_digits_data_address0(Loop_1_proc_U0_lhs_digits_data_address0),
    .lhs_digits_data_ce0(Loop_1_proc_U0_lhs_digits_data_ce0),
    .lhs_digits_data_we0(Loop_1_proc_U0_lhs_digits_data_we0),
    .lhs_digits_data_d0(Loop_1_proc_U0_lhs_digits_data_d0),
    .hs_input_TDATA(hs_input_TDATA),
    .hs_input_TVALID(hs_input_TVALID),
    .hs_input_TREADY(Loop_1_proc_U0_hs_input_TREADY),
    .rhs_digits_data_address0(Loop_1_proc_U0_rhs_digits_data_address0),
    .rhs_digits_data_ce0(Loop_1_proc_U0_rhs_digits_data_ce0),
    .rhs_digits_data_we0(Loop_1_proc_U0_rhs_digits_data_we0),
    .rhs_digits_data_d0(Loop_1_proc_U0_rhs_digits_data_d0)
);

karastuba_mul_templa_7 karastuba_mul_templa_7_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .lhs_digits_data_address0(karastuba_mul_templa_7_U0_lhs_digits_data_address0),
    .lhs_digits_data_ce0(karastuba_mul_templa_7_U0_lhs_digits_data_ce0),
    .lhs_digits_data_d0(karastuba_mul_templa_7_U0_lhs_digits_data_d0),
    .lhs_digits_data_q0(lhs_digits_data_t_q0),
    .lhs_digits_data_we0(karastuba_mul_templa_7_U0_lhs_digits_data_we0),
    .lhs_digits_data_address1(karastuba_mul_templa_7_U0_lhs_digits_data_address1),
    .lhs_digits_data_ce1(karastuba_mul_templa_7_U0_lhs_digits_data_ce1),
    .lhs_digits_data_d1(karastuba_mul_templa_7_U0_lhs_digits_data_d1),
    .lhs_digits_data_q1(32'd0),
    .lhs_digits_data_we1(karastuba_mul_templa_7_U0_lhs_digits_data_we1),
    .rhs_digits_data_address0(karastuba_mul_templa_7_U0_rhs_digits_data_address0),
    .rhs_digits_data_ce0(karastuba_mul_templa_7_U0_rhs_digits_data_ce0),
    .rhs_digits_data_d0(karastuba_mul_templa_7_U0_rhs_digits_data_d0),
    .rhs_digits_data_q0(rhs_digits_data_t_q0),
    .rhs_digits_data_we0(karastuba_mul_templa_7_U0_rhs_digits_data_we0),
    .rhs_digits_data_address1(karastuba_mul_templa_7_U0_rhs_digits_data_address1),
    .rhs_digits_data_ce1(karastuba_mul_templa_7_U0_rhs_digits_data_ce1),
    .rhs_digits_data_d1(karastuba_mul_templa_7_U0_rhs_digits_data_d1),
    .rhs_digits_data_q1(32'd0),
    .rhs_digits_data_we1(karastuba_mul_templa_7_U0_rhs_digits_data_we1),
    .res_digits_data_address0(karastuba_mul_templa_7_U0_res_digits_data_address0),
    .res_digits_data_ce0(karastuba_mul_templa_7_U0_res_digits_data_ce0),
    .res_digits_data_d0(karastuba_mul_templa_7_U0_res_digits_data_d0),
    .res_digits_data_q0(32'd0),
    .res_digits_data_we0(karastuba_mul_templa_7_U0_res_digits_data_we0),
    .res_digits_data_address1(karastuba_mul_templa_7_U0_res_digits_data_address1),
    .res_digits_data_ce1(karastuba_mul_templa_7_U0_res_digits_data_ce1),
    .res_digits_data_d1(karastuba_mul_templa_7_U0_res_digits_data_d1),
    .res_digits_data_q1(32'd0),
    .res_digits_data_we1(karastuba_mul_templa_7_U0_res_digits_data_we1),
    .lhs_digits_data_empty_n(1'b0),
    .lhs_digits_data_read(karastuba_mul_templa_7_U0_lhs_digits_data_read),
    .rhs_digits_data_empty_n(1'b0),
    .rhs_digits_data_read(karastuba_mul_templa_7_U0_rhs_digits_data_read),
    .ap_start(karastuba_mul_templa_7_U0_ap_start),
    .res_digits_data_full_n(res_digits_data_i_full_n),
    .res_digits_data_write(karastuba_mul_templa_7_U0_res_digits_data_write),
    .ap_done(karastuba_mul_templa_7_U0_ap_done),
    .ap_ready(karastuba_mul_templa_7_U0_ap_ready),
    .ap_idle(karastuba_mul_templa_7_U0_ap_idle),
    .ap_continue(karastuba_mul_templa_7_U0_ap_continue)
);

Loop_2_proc Loop_2_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_2_proc_U0_ap_start),
    .ap_done(Loop_2_proc_U0_ap_done),
    .ap_continue(Loop_2_proc_U0_ap_continue),
    .ap_idle(Loop_2_proc_U0_ap_idle),
    .ap_ready(Loop_2_proc_U0_ap_ready),
    .res_digits_data_address0(Loop_2_proc_U0_res_digits_data_address0),
    .res_digits_data_ce0(Loop_2_proc_U0_res_digits_data_ce0),
    .res_digits_data_q0(res_digits_data_t_q0),
    .res_output_TDATA(Loop_2_proc_U0_res_output_TDATA),
    .res_output_TVALID(Loop_2_proc_U0_res_output_TVALID),
    .res_output_TREADY(res_output_TREADY)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_lhs_digits_data <= 1'b0;
    end else begin
        if (((Loop_1_proc_U0_ap_done & Loop_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_lhs_digits_data <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_lhs_digits_data <= ap_sync_channel_write_lhs_digits_data;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_rhs_digits_data <= 1'b0;
    end else begin
        if (((Loop_1_proc_U0_ap_done & Loop_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_rhs_digits_data <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_rhs_digits_data <= ap_sync_channel_write_rhs_digits_data;
        end
    end
end

assign Loop_1_proc_U0_ap_continue = (ap_sync_channel_write_rhs_digits_data & ap_sync_channel_write_lhs_digits_data);

assign Loop_1_proc_U0_ap_start = ap_start;

assign Loop_1_proc_U0_lhs_digits_data_full_n = lhs_digits_data_i_full_n;

assign Loop_1_proc_U0_rhs_digits_data_full_n = rhs_digits_data_i_full_n;

assign Loop_1_proc_U0_start_full_n = 1'b1;

assign Loop_1_proc_U0_start_write = 1'b0;

assign Loop_2_proc_U0_ap_continue = 1'b1;

assign Loop_2_proc_U0_ap_start = res_digits_data_t_empty_n;

assign Loop_2_proc_U0_start_full_n = 1'b1;

assign Loop_2_proc_U0_start_write = 1'b0;

assign ap_channel_done_lhs_digits_data = ((ap_sync_reg_channel_write_lhs_digits_data ^ 1'b1) & Loop_1_proc_U0_ap_done);

assign ap_channel_done_res_digits_data = karastuba_mul_templa_7_U0_ap_done;

assign ap_channel_done_rhs_digits_data = ((ap_sync_reg_channel_write_rhs_digits_data ^ 1'b1) & Loop_1_proc_U0_ap_done);

assign ap_done = Loop_2_proc_U0_ap_done;

assign ap_idle = (karastuba_mul_templa_7_U0_ap_idle & (res_digits_data_t_empty_n ^ 1'b1) & (rhs_digits_data_t_empty_n ^ 1'b1) & (lhs_digits_data_t_empty_n ^ 1'b1) & Loop_2_proc_U0_ap_idle & Loop_1_proc_U0_ap_idle);

assign ap_ready = Loop_1_proc_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_channel_write_lhs_digits_data = ((ap_channel_done_lhs_digits_data & Loop_1_proc_U0_lhs_digits_data_full_n) | ap_sync_reg_channel_write_lhs_digits_data);

assign ap_sync_channel_write_rhs_digits_data = ((ap_channel_done_rhs_digits_data & Loop_1_proc_U0_rhs_digits_data_full_n) | ap_sync_reg_channel_write_rhs_digits_data);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Loop_2_proc_U0_ap_done;

assign ap_sync_ready = Loop_1_proc_U0_ap_ready;

assign hs_input_TREADY = Loop_1_proc_U0_hs_input_TREADY;

assign karastuba_mul_templa_7_U0_ap_continue = karastuba_mul_templa_7_U0_res_digits_data_full_n;

assign karastuba_mul_templa_7_U0_ap_start = (rhs_digits_data_t_empty_n & lhs_digits_data_t_empty_n);

assign karastuba_mul_templa_7_U0_res_digits_data_full_n = res_digits_data_i_full_n;

assign karastuba_mul_templa_7_U0_start_full_n = 1'b1;

assign karastuba_mul_templa_7_U0_start_write = 1'b0;

assign res_output_TDATA = Loop_2_proc_U0_res_output_TDATA;

assign res_output_TVALID = Loop_2_proc_U0_res_output_TVALID;

endmodule //karastuba_mul