
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set res_output_group [add_wave_group res_output(axis) -into $coutputgroup]
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/res_output_TREADY -into $res_output_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/res_output_TVALID -into $res_output_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/res_output_TDATA -into $res_output_group -radix hex
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/interrupt -into $return_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_BRESP -into $return_group -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_BREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_BVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_RRESP -into $return_group -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_RDATA -into $return_group -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_RREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_RVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_ARREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_ARVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_ARADDR -into $return_group -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_WSTRB -into $return_group -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_WDATA -into $return_group -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_WREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_WVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_AWREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_AWVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/s_axi_AXILiteS_AWADDR -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set hs_input_group [add_wave_group hs_input(axis) -into $cinputgroup]
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/hs_input_TREADY -into $hs_input_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/hs_input_TVALID -into $hs_input_group -color #ffff00 -radix hex
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/hs_input_TDATA -into $hs_input_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_karastuba_mul_top/AESL_inst_karastuba_mul/ap_clk -into $clockgroup
save_wave_config karastuba_mul.wcfg
run all
quit

