set moduleName karastuba_mul
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {karastuba_mul}
set C_modelType { void 0 }
set C_modelArgList {
	{ hs_input_V int 64 regular {axi_s 0 volatile  { hs_input_V Data } }  }
	{ res_output_V int 64 regular {axi_s 1 volatile  { res_output_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hs_input_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "hs_input.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "res_output_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "res_output.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 127,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ hs_input_V_TDATA sc_in sc_lv 64 signal 0 } 
	{ res_output_V_TDATA sc_out sc_lv 64 signal 1 } 
	{ hs_input_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ hs_input_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ res_output_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ res_output_V_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"karastuba_mul","role":"start","value":"0","valid_bit":"0"},{"name":"karastuba_mul","role":"continue","value":"0","valid_bit":"4"},{"name":"karastuba_mul","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"karastuba_mul","role":"start","value":"0","valid_bit":"0"},{"name":"karastuba_mul","role":"done","value":"0","valid_bit":"1"},{"name":"karastuba_mul","role":"idle","value":"0","valid_bit":"2"},{"name":"karastuba_mul","role":"ready","value":"0","valid_bit":"3"},{"name":"karastuba_mul","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "hs_input_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hs_input_V", "role": "TDATA" }} , 
 	{ "name": "res_output_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "res_output_V", "role": "TDATA" }} , 
 	{ "name": "hs_input_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "hs_input_V", "role": "TVALID" }} , 
 	{ "name": "hs_input_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "hs_input_V", "role": "TREADY" }} , 
 	{ "name": "res_output_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_output_V", "role": "TVALID" }} , 
 	{ "name": "res_output_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_output_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "474"],
		"CDFG" : "karastuba_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3032", "EstimateLatencyMax" : "3286",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "Loop_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "474", "Name" : "Loop_2_proc_U0"}],
		"Port" : [
			{"Name" : "hs_input_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Loop_1_proc_U0", "Port" : "hs_input_V"}]},
			{"Name" : "res_output_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "474", "SubInstance" : "Loop_2_proc_U0", "Port" : "res_output_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs_digits_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs_digits_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_digits_data_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "Loop_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "hs_input_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "hs_input_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "2"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "3"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc_U0.regslice_both_hs_input_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "466", "471", "472", "473"],
		"CDFG" : "karastuba_mul_templa_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2769", "EstimateLatencyMax" : "3023",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "13", "Name" : "karastuba_mul_MUL_st_U0"}],
		"OutputProcess" : [
			{"ID" : "466", "Name" : "karastuba_mul_ADD_SU_U0"}],
		"Port" : [
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "karastuba_mul_MUL_st_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "karastuba_mul_MUL_st_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "474", "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "466", "SubInstance" : "karastuba_mul_ADD_SU_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.z0_digits_data_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.z2_digits_data_V_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.cross_mul_digits_dat_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.inter_lhs_digits_dat_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.inter_rhs_digits_dat_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0", "Parent" : "7", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "174", "320"],
		"CDFG" : "karastuba_mul_MUL_st",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1913", "EstimateLatencyMax" : "2167",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_fu_462"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_4_fu_472"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_4_fu_484"}],
		"Port" : [
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "2"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "3"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "466", "DependentChan" : "8"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "466", "DependentChan" : "9"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "466", "DependentChan" : "10"},
			{"Name" : "inter_lhs_digits_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_rhs_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.lhs0_digits_data_V_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.lhs1_digits_data_V_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.rhs0_digits_data_V_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.rhs1_digits_data_V_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.lhs0_tmp_digits_data_U", "Parent" : "13"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.lhs1_tmp_digits_data_U", "Parent" : "13"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.rhs0_tmp_digits_data_U", "Parent" : "13"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.rhs1_tmp_digits_data_U", "Parent" : "13"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.p_z0_digits_data_V_U", "Parent" : "13"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.p_z2_digits_data_V_U", "Parent" : "13"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.p_cross_mul_digits_da_U", "Parent" : "13"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462", "Parent" : "13", "Child" : ["26", "27", "28"],
		"CDFG" : "karastuba_mul_templa",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1570", "EstimateLatencyMax" : "1824",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_4_fu_182"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_karastuba_mul_templa_4_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_karastuba_mul_templa_4_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.add0_digits_data_V_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.add1_digits_data_V_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182", "Parent" : "25", "Child" : ["29", "30", "31", "32", "33", "34", "163", "169", "170", "171", "172", "173"],
		"CDFG" : "karastuba_mul_templa_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1435", "EstimateLatencyMax" : "1689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "34", "Name" : "karastuba_mul_MUL_st_1_U0"}],
		"OutputProcess" : [
			{"ID" : "163", "Name" : "karastuba_mul_ADD_SU_1_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z0_digits_data_V_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z2_digits_data_V_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.cross_mul_digits_dat_U", "Parent" : "28"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_lhs_digits_dat_U", "Parent" : "28"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_rhs_digits_dat_U", "Parent" : "28"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0", "Parent" : "28", "Child" : ["35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "87", "125"],
		"CDFG" : "karastuba_mul_MUL_st_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "988", "EstimateLatencyMax" : "1110",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_1_fu_480"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_5_fu_490"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_5_fu_502"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "29"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "30"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "31"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "32"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "33"}]},
	{"ID" : "35", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs0_digits_data_V_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs1_digits_data_V_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs0_digits_data_V_U", "Parent" : "34"},
	{"ID" : "38", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs1_digits_data_V_U", "Parent" : "34"},
	{"ID" : "39", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs0_tmp_digits_data_U", "Parent" : "34"},
	{"ID" : "40", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs1_tmp_digits_data_U", "Parent" : "34"},
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs0_tmp_digits_data_U", "Parent" : "34"},
	{"ID" : "42", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs1_tmp_digits_data_U", "Parent" : "34"},
	{"ID" : "43", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.p_z0_digits_data_V_i_U", "Parent" : "34"},
	{"ID" : "44", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.p_z2_digits_data_V_i_U", "Parent" : "34"},
	{"ID" : "45", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.p_cross_mul_digits_da_U", "Parent" : "34"},
	{"ID" : "46", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480", "Parent" : "34", "Child" : ["47", "48", "49"],
		"CDFG" : "karastuba_mul_templa_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "805", "EstimateLatencyMax" : "927",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add0_digits_data_V_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add1_digits_data_V_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182", "Parent" : "46", "Child" : ["50", "51", "52", "53", "54", "55", "76", "82", "83", "84", "85", "86"],
		"CDFG" : "karastuba_mul_templa_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "734", "EstimateLatencyMax" : "856",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "55", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "76", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "50", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "49"},
	{"ID" : "53", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "49"},
	{"ID" : "54", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "49"},
	{"ID" : "55", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "49", "Child" : ["56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "72", "74"],
		"CDFG" : "karastuba_mul_MUL_st_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "495", "EstimateLatencyMax" : "549",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_2_fu_476"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_485"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_496"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "50"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "51"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "52"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "53"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "54"}]},
	{"ID" : "56", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "55"},
	{"ID" : "59", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "55"},
	{"ID" : "60", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "55"},
	{"ID" : "61", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "55"},
	{"ID" : "62", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "55"},
	{"ID" : "63", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "55"},
	{"ID" : "64", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "55"},
	{"ID" : "65", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "55"},
	{"ID" : "66", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "55"},
	{"ID" : "67", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "55", "Child" : ["68", "69", "70"],
		"CDFG" : "karastuba_mul_templa_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393", "EstimateLatencyMax" : "447",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_180"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "68", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "67", "Child" : ["71"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "71", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "70"},
	{"ID" : "72", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "55", "Child" : ["73"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "73", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "72"},
	{"ID" : "74", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "55", "Child" : ["75"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "75", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "74"},
	{"ID" : "76", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "49", "Child" : ["77", "78", "79", "80", "81"],
		"CDFG" : "karastuba_mul_ADD_SU_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "306",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "82"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "50",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "83"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "84"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "52"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "85"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "53"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "86"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "54"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "77", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "76"},
	{"ID" : "80", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "76",
		"CDFG" : "CAT_I_I_I_O_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "81", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "76"},
	{"ID" : "82", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "49"},
	{"ID" : "83", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "49"},
	{"ID" : "84", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "49"},
	{"ID" : "85", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "49"},
	{"ID" : "86", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "49"},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490", "Parent" : "34", "Child" : ["88", "89", "90", "91", "92", "93", "114", "120", "121", "122", "123", "124"],
		"CDFG" : "karastuba_mul_templa_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "734", "EstimateLatencyMax" : "856",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "55", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "76", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "88", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_digits_data_V_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_digits_data_V_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_digits_dat_U", "Parent" : "87"},
	{"ID" : "91", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_digits_dat_U", "Parent" : "87"},
	{"ID" : "92", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_digits_dat_U", "Parent" : "87"},
	{"ID" : "93", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0", "Parent" : "87", "Child" : ["94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "110", "112"],
		"CDFG" : "karastuba_mul_MUL_st_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "495", "EstimateLatencyMax" : "549",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_2_fu_476"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_485"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_496"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "50"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "51"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "52"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "53"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "54"}]},
	{"ID" : "94", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "93"},
	{"ID" : "96", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "93"},
	{"ID" : "97", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "93"},
	{"ID" : "98", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "93"},
	{"ID" : "99", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "93"},
	{"ID" : "100", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "93"},
	{"ID" : "101", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "93"},
	{"ID" : "102", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "93"},
	{"ID" : "103", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "93"},
	{"ID" : "104", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "93"},
	{"ID" : "105", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "93", "Child" : ["106", "107", "108"],
		"CDFG" : "karastuba_mul_templa_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393", "EstimateLatencyMax" : "447",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_180"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "106", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "105", "Child" : ["109"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "109", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "108"},
	{"ID" : "110", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "93", "Child" : ["111"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "111", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "110"},
	{"ID" : "112", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "93", "Child" : ["113"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "113", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "112"},
	{"ID" : "114", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0", "Parent" : "87", "Child" : ["115", "116", "117", "118", "119"],
		"CDFG" : "karastuba_mul_ADD_SU_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "306",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "82"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "50",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "83"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "84"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "52"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "85"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "53"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "86"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "54"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "115", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "114"},
	{"ID" : "118", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "114",
		"CDFG" : "CAT_I_I_I_O_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "119", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "114"},
	{"ID" : "120", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_tmp_bits_U", "Parent" : "87"},
	{"ID" : "121", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_tmp_bits_U", "Parent" : "87"},
	{"ID" : "122", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_tmp_bits_U", "Parent" : "87"},
	{"ID" : "123", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_tmp_bits_U", "Parent" : "87"},
	{"ID" : "124", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_tmp_bits_U", "Parent" : "87"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502", "Parent" : "34", "Child" : ["126", "127", "128", "129", "130", "131", "152", "158", "159", "160", "161", "162"],
		"CDFG" : "karastuba_mul_templa_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "734", "EstimateLatencyMax" : "856",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "55", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "76", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "126", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_digits_data_V_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_digits_data_V_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_digits_dat_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_digits_dat_U", "Parent" : "125"},
	{"ID" : "130", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_digits_dat_U", "Parent" : "125"},
	{"ID" : "131", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0", "Parent" : "125", "Child" : ["132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "148", "150"],
		"CDFG" : "karastuba_mul_MUL_st_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "495", "EstimateLatencyMax" : "549",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_2_fu_476"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_485"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_496"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "50"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "51"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "52"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "53"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "54"}]},
	{"ID" : "132", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "131"},
	{"ID" : "134", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "131"},
	{"ID" : "135", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "131"},
	{"ID" : "136", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "131"},
	{"ID" : "137", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "131"},
	{"ID" : "138", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "131"},
	{"ID" : "139", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "131"},
	{"ID" : "140", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "131"},
	{"ID" : "141", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "131"},
	{"ID" : "142", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "131"},
	{"ID" : "143", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "131", "Child" : ["144", "145", "146"],
		"CDFG" : "karastuba_mul_templa_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393", "EstimateLatencyMax" : "447",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_180"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "144", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "143"},
	{"ID" : "146", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "143", "Child" : ["147"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "147", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "146"},
	{"ID" : "148", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "131", "Child" : ["149"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "149", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "148"},
	{"ID" : "150", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "131", "Child" : ["151"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "151", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "150"},
	{"ID" : "152", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0", "Parent" : "125", "Child" : ["153", "154", "155", "156", "157"],
		"CDFG" : "karastuba_mul_ADD_SU_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "306",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "82"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "50",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "83"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "84"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "52"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "85"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "53"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "86"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "54"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "153", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "152"},
	{"ID" : "155", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "152"},
	{"ID" : "156", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "152",
		"CDFG" : "CAT_I_I_I_O_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "157", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "152"},
	{"ID" : "158", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_tmp_bits_U", "Parent" : "125"},
	{"ID" : "159", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_tmp_bits_U", "Parent" : "125"},
	{"ID" : "160", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_tmp_bits_U", "Parent" : "125"},
	{"ID" : "161", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_tmp_bits_U", "Parent" : "125"},
	{"ID" : "162", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_tmp_bits_U", "Parent" : "125"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0", "Parent" : "28", "Child" : ["164", "165", "166", "167", "168"],
		"CDFG" : "karastuba_mul_ADD_SU_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "446", "EstimateLatencyMax" : "578",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "169"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "29",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "170"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "30",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "171"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "31"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "172"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "32"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "173"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "33"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "164", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.add2_digits_data_V_U", "Parent" : "163"},
	{"ID" : "165", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.z1_digits_data_V_U", "Parent" : "163"},
	{"ID" : "166", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.p_res_digits_data_V_U", "Parent" : "163"},
	{"ID" : "167", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.grp_CAT_I_I_I_O_1_fu_428", "Parent" : "163",
		"CDFG" : "CAT_I_I_I_O_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "267", "EstimateLatencyMax" : "267",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.karastuba_mul_mulsc4_U80", "Parent" : "163"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z0_tmp_bits_U", "Parent" : "28"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z2_tmp_bits_U", "Parent" : "28"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.cross_mul_tmp_bits_U", "Parent" : "28"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_lhs_tmp_bits_U", "Parent" : "28"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_rhs_tmp_bits_U", "Parent" : "28"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472", "Parent" : "13", "Child" : ["175", "176", "177", "178", "179", "180", "309", "315", "316", "317", "318", "319"],
		"CDFG" : "karastuba_mul_templa_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1435", "EstimateLatencyMax" : "1689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "34", "Name" : "karastuba_mul_MUL_st_1_U0"}],
		"OutputProcess" : [
			{"ID" : "163", "Name" : "karastuba_mul_ADD_SU_1_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "309", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "309", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.z0_digits_data_V_U", "Parent" : "174"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.z2_digits_data_V_U", "Parent" : "174"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.cross_mul_digits_dat_U", "Parent" : "174"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.inter_lhs_digits_dat_U", "Parent" : "174"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.inter_rhs_digits_dat_U", "Parent" : "174"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0", "Parent" : "174", "Child" : ["181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "233", "271"],
		"CDFG" : "karastuba_mul_MUL_st_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "988", "EstimateLatencyMax" : "1110",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_1_fu_480"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_5_fu_490"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_5_fu_502"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "29"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "30"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "31"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "32"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "33"}]},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs0_digits_data_V_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs1_digits_data_V_U", "Parent" : "180"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs0_digits_data_V_U", "Parent" : "180"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs1_digits_data_V_U", "Parent" : "180"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs0_tmp_digits_data_U", "Parent" : "180"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs1_tmp_digits_data_U", "Parent" : "180"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs0_tmp_digits_data_U", "Parent" : "180"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs1_tmp_digits_data_U", "Parent" : "180"},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.p_z0_digits_data_V_i_U", "Parent" : "180"},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.p_z2_digits_data_V_i_U", "Parent" : "180"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.p_cross_mul_digits_da_U", "Parent" : "180"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480", "Parent" : "180", "Child" : ["193", "194", "195"],
		"CDFG" : "karastuba_mul_templa_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "805", "EstimateLatencyMax" : "927",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "193", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add0_digits_data_V_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add1_digits_data_V_U", "Parent" : "192"},
	{"ID" : "195", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182", "Parent" : "192", "Child" : ["196", "197", "198", "199", "200", "201", "222", "228", "229", "230", "231", "232"],
		"CDFG" : "karastuba_mul_templa_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "734", "EstimateLatencyMax" : "856",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "55", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "76", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "196", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "195"},
	{"ID" : "198", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "195"},
	{"ID" : "199", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "195"},
	{"ID" : "200", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "195"},
	{"ID" : "201", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "195", "Child" : ["202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "218", "220"],
		"CDFG" : "karastuba_mul_MUL_st_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "495", "EstimateLatencyMax" : "549",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_2_fu_476"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_485"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_496"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "50"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "51"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "52"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "53"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "54"}]},
	{"ID" : "202", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "201"},
	{"ID" : "204", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "201"},
	{"ID" : "205", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "201"},
	{"ID" : "206", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "201"},
	{"ID" : "207", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "201"},
	{"ID" : "208", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "201"},
	{"ID" : "209", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "201"},
	{"ID" : "210", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "201"},
	{"ID" : "211", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "201"},
	{"ID" : "212", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "201"},
	{"ID" : "213", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "201", "Child" : ["214", "215", "216"],
		"CDFG" : "karastuba_mul_templa_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393", "EstimateLatencyMax" : "447",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_180"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "214", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "213"},
	{"ID" : "216", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "213", "Child" : ["217"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "217", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "216"},
	{"ID" : "218", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "201", "Child" : ["219"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "219", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "218"},
	{"ID" : "220", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "201", "Child" : ["221"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "221", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "220"},
	{"ID" : "222", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "195", "Child" : ["223", "224", "225", "226", "227"],
		"CDFG" : "karastuba_mul_ADD_SU_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "306",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "82"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "50",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "83"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "84"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "52"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "85"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "53"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "86"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "54"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "223", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "222"},
	{"ID" : "225", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "222"},
	{"ID" : "226", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "222",
		"CDFG" : "CAT_I_I_I_O_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "227", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "222"},
	{"ID" : "228", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "195"},
	{"ID" : "229", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "195"},
	{"ID" : "230", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "195"},
	{"ID" : "231", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "195"},
	{"ID" : "232", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "195"},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490", "Parent" : "180", "Child" : ["234", "235", "236", "237", "238", "239", "260", "266", "267", "268", "269", "270"],
		"CDFG" : "karastuba_mul_templa_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "734", "EstimateLatencyMax" : "856",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "55", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "76", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "234", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_digits_data_V_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_digits_data_V_U", "Parent" : "233"},
	{"ID" : "236", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_digits_dat_U", "Parent" : "233"},
	{"ID" : "237", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_digits_dat_U", "Parent" : "233"},
	{"ID" : "238", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_digits_dat_U", "Parent" : "233"},
	{"ID" : "239", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0", "Parent" : "233", "Child" : ["240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "256", "258"],
		"CDFG" : "karastuba_mul_MUL_st_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "495", "EstimateLatencyMax" : "549",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_2_fu_476"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_485"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_496"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "50"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "51"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "52"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "53"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "54"}]},
	{"ID" : "240", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "239"},
	{"ID" : "242", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "239"},
	{"ID" : "243", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "239"},
	{"ID" : "244", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "239"},
	{"ID" : "245", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "239"},
	{"ID" : "246", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "239"},
	{"ID" : "247", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "239"},
	{"ID" : "248", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "239"},
	{"ID" : "249", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "239"},
	{"ID" : "250", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "239"},
	{"ID" : "251", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "239", "Child" : ["252", "253", "254"],
		"CDFG" : "karastuba_mul_templa_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393", "EstimateLatencyMax" : "447",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_180"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "252", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "251"},
	{"ID" : "254", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "251", "Child" : ["255"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "255", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "254"},
	{"ID" : "256", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "239", "Child" : ["257"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "257", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "256"},
	{"ID" : "258", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "239", "Child" : ["259"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "259", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "258"},
	{"ID" : "260", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0", "Parent" : "233", "Child" : ["261", "262", "263", "264", "265"],
		"CDFG" : "karastuba_mul_ADD_SU_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "306",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "82"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "50",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "83"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "84"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "52"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "85"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "53"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "86"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "54"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "261", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "260"},
	{"ID" : "264", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "260",
		"CDFG" : "CAT_I_I_I_O_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "265", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "260"},
	{"ID" : "266", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_tmp_bits_U", "Parent" : "233"},
	{"ID" : "267", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_tmp_bits_U", "Parent" : "233"},
	{"ID" : "268", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_tmp_bits_U", "Parent" : "233"},
	{"ID" : "269", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_tmp_bits_U", "Parent" : "233"},
	{"ID" : "270", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_tmp_bits_U", "Parent" : "233"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502", "Parent" : "180", "Child" : ["272", "273", "274", "275", "276", "277", "298", "304", "305", "306", "307", "308"],
		"CDFG" : "karastuba_mul_templa_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "734", "EstimateLatencyMax" : "856",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "55", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "76", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "272", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_digits_data_V_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_digits_data_V_U", "Parent" : "271"},
	{"ID" : "274", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_digits_dat_U", "Parent" : "271"},
	{"ID" : "275", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_digits_dat_U", "Parent" : "271"},
	{"ID" : "276", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_digits_dat_U", "Parent" : "271"},
	{"ID" : "277", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0", "Parent" : "271", "Child" : ["278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "294", "296"],
		"CDFG" : "karastuba_mul_MUL_st_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "495", "EstimateLatencyMax" : "549",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_2_fu_476"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_485"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_496"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "50"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "51"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "52"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "53"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "54"}]},
	{"ID" : "278", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "277"},
	{"ID" : "280", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "277"},
	{"ID" : "281", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "277"},
	{"ID" : "282", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "277"},
	{"ID" : "283", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "277"},
	{"ID" : "284", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "277"},
	{"ID" : "285", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "277"},
	{"ID" : "286", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "277"},
	{"ID" : "287", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "277"},
	{"ID" : "288", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "277"},
	{"ID" : "289", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "277", "Child" : ["290", "291", "292"],
		"CDFG" : "karastuba_mul_templa_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393", "EstimateLatencyMax" : "447",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_180"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "290", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "289"},
	{"ID" : "292", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "289", "Child" : ["293"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "293", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "292"},
	{"ID" : "294", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "277", "Child" : ["295"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "295", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "294"},
	{"ID" : "296", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "277", "Child" : ["297"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "297", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "296"},
	{"ID" : "298", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0", "Parent" : "271", "Child" : ["299", "300", "301", "302", "303"],
		"CDFG" : "karastuba_mul_ADD_SU_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "306",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "82"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "50",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "83"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "84"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "52"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "85"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "53"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "86"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "54"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "299", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "298"},
	{"ID" : "301", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "298"},
	{"ID" : "302", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "298",
		"CDFG" : "CAT_I_I_I_O_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "303", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "298"},
	{"ID" : "304", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_tmp_bits_U", "Parent" : "271"},
	{"ID" : "305", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_tmp_bits_U", "Parent" : "271"},
	{"ID" : "306", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_tmp_bits_U", "Parent" : "271"},
	{"ID" : "307", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_tmp_bits_U", "Parent" : "271"},
	{"ID" : "308", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_tmp_bits_U", "Parent" : "271"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0", "Parent" : "174", "Child" : ["310", "311", "312", "313", "314"],
		"CDFG" : "karastuba_mul_ADD_SU_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "446", "EstimateLatencyMax" : "578",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "169"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "29",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "170"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "30",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "171"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "31"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "172"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "32"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "173"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "33"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.add2_digits_data_V_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.z1_digits_data_V_U", "Parent" : "309"},
	{"ID" : "312", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.p_res_digits_data_V_U", "Parent" : "309"},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.grp_CAT_I_I_I_O_1_fu_428", "Parent" : "309",
		"CDFG" : "CAT_I_I_I_O_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "267", "EstimateLatencyMax" : "267",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "314", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.karastuba_mul_mulsc4_U80", "Parent" : "309"},
	{"ID" : "315", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.z0_tmp_bits_U", "Parent" : "174"},
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.z2_tmp_bits_U", "Parent" : "174"},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.cross_mul_tmp_bits_U", "Parent" : "174"},
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.inter_lhs_tmp_bits_U", "Parent" : "174"},
	{"ID" : "319", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.inter_rhs_tmp_bits_U", "Parent" : "174"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484", "Parent" : "13", "Child" : ["321", "322", "323", "324", "325", "326", "455", "461", "462", "463", "464", "465"],
		"CDFG" : "karastuba_mul_templa_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1435", "EstimateLatencyMax" : "1689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "34", "Name" : "karastuba_mul_MUL_st_1_U0"}],
		"OutputProcess" : [
			{"ID" : "163", "Name" : "karastuba_mul_ADD_SU_1_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "455", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "455", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.z0_digits_data_V_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.z2_digits_data_V_U", "Parent" : "320"},
	{"ID" : "323", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.cross_mul_digits_dat_U", "Parent" : "320"},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.inter_lhs_digits_dat_U", "Parent" : "320"},
	{"ID" : "325", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.inter_rhs_digits_dat_U", "Parent" : "320"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0", "Parent" : "320", "Child" : ["327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "379", "417"],
		"CDFG" : "karastuba_mul_MUL_st_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "988", "EstimateLatencyMax" : "1110",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_1_fu_480"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_5_fu_490"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_5_fu_502"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "29"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "30"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "31"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "32"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "33"}]},
	{"ID" : "327", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs0_digits_data_V_U", "Parent" : "326"},
	{"ID" : "328", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs1_digits_data_V_U", "Parent" : "326"},
	{"ID" : "329", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs0_digits_data_V_U", "Parent" : "326"},
	{"ID" : "330", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs1_digits_data_V_U", "Parent" : "326"},
	{"ID" : "331", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs0_tmp_digits_data_U", "Parent" : "326"},
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs1_tmp_digits_data_U", "Parent" : "326"},
	{"ID" : "333", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs0_tmp_digits_data_U", "Parent" : "326"},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs1_tmp_digits_data_U", "Parent" : "326"},
	{"ID" : "335", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.p_z0_digits_data_V_i_U", "Parent" : "326"},
	{"ID" : "336", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.p_z2_digits_data_V_i_U", "Parent" : "326"},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.p_cross_mul_digits_da_U", "Parent" : "326"},
	{"ID" : "338", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480", "Parent" : "326", "Child" : ["339", "340", "341"],
		"CDFG" : "karastuba_mul_templa_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "805", "EstimateLatencyMax" : "927",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "339", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add0_digits_data_V_U", "Parent" : "338"},
	{"ID" : "340", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add1_digits_data_V_U", "Parent" : "338"},
	{"ID" : "341", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182", "Parent" : "338", "Child" : ["342", "343", "344", "345", "346", "347", "368", "374", "375", "376", "377", "378"],
		"CDFG" : "karastuba_mul_templa_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "734", "EstimateLatencyMax" : "856",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "55", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "76", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "342", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "341"},
	{"ID" : "344", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "341"},
	{"ID" : "345", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "341"},
	{"ID" : "346", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "341"},
	{"ID" : "347", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "341", "Child" : ["348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "364", "366"],
		"CDFG" : "karastuba_mul_MUL_st_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "495", "EstimateLatencyMax" : "549",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_2_fu_476"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_485"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_496"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "50"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "51"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "52"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "53"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "54"}]},
	{"ID" : "348", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "347"},
	{"ID" : "350", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "347"},
	{"ID" : "351", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "347"},
	{"ID" : "352", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "347"},
	{"ID" : "353", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "347"},
	{"ID" : "354", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "347"},
	{"ID" : "355", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "347"},
	{"ID" : "356", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "347"},
	{"ID" : "357", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "347"},
	{"ID" : "358", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "347"},
	{"ID" : "359", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "347", "Child" : ["360", "361", "362"],
		"CDFG" : "karastuba_mul_templa_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393", "EstimateLatencyMax" : "447",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_180"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "360", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "359"},
	{"ID" : "361", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "359"},
	{"ID" : "362", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "359", "Child" : ["363"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "363", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "362"},
	{"ID" : "364", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "347", "Child" : ["365"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "365", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "364"},
	{"ID" : "366", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "347", "Child" : ["367"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "367", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "366"},
	{"ID" : "368", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "341", "Child" : ["369", "370", "371", "372", "373"],
		"CDFG" : "karastuba_mul_ADD_SU_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "306",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "82"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "50",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "83"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "84"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "52"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "85"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "53"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "86"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "54"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "369", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "368"},
	{"ID" : "370", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "368"},
	{"ID" : "371", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "368"},
	{"ID" : "372", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "368",
		"CDFG" : "CAT_I_I_I_O_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "373", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "368"},
	{"ID" : "374", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "341"},
	{"ID" : "375", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "341"},
	{"ID" : "376", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "341"},
	{"ID" : "377", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "341"},
	{"ID" : "378", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "341"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490", "Parent" : "326", "Child" : ["380", "381", "382", "383", "384", "385", "406", "412", "413", "414", "415", "416"],
		"CDFG" : "karastuba_mul_templa_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "734", "EstimateLatencyMax" : "856",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "55", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "76", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "385", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "385", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "380", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_digits_data_V_U", "Parent" : "379"},
	{"ID" : "381", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_digits_data_V_U", "Parent" : "379"},
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_digits_dat_U", "Parent" : "379"},
	{"ID" : "383", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_digits_dat_U", "Parent" : "379"},
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_digits_dat_U", "Parent" : "379"},
	{"ID" : "385", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0", "Parent" : "379", "Child" : ["386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "402", "404"],
		"CDFG" : "karastuba_mul_MUL_st_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "495", "EstimateLatencyMax" : "549",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_2_fu_476"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_485"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_496"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "50"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "51"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "52"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "53"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "54"}]},
	{"ID" : "386", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "385"},
	{"ID" : "388", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "385"},
	{"ID" : "389", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "385"},
	{"ID" : "390", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "385"},
	{"ID" : "391", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "385"},
	{"ID" : "392", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "385"},
	{"ID" : "393", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "385"},
	{"ID" : "394", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "385"},
	{"ID" : "395", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "385"},
	{"ID" : "396", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "385"},
	{"ID" : "397", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "385", "Child" : ["398", "399", "400"],
		"CDFG" : "karastuba_mul_templa_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393", "EstimateLatencyMax" : "447",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_180"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "400", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "398", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "397"},
	{"ID" : "399", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "397"},
	{"ID" : "400", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "397", "Child" : ["401"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "401", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "400"},
	{"ID" : "402", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "385", "Child" : ["403"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "403", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "402"},
	{"ID" : "404", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "385", "Child" : ["405"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "405", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "404"},
	{"ID" : "406", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0", "Parent" : "379", "Child" : ["407", "408", "409", "410", "411"],
		"CDFG" : "karastuba_mul_ADD_SU_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "306",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "82"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "50",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "83"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "84"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "52"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "85"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "53"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "86"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "54"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "407", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "406"},
	{"ID" : "409", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "406"},
	{"ID" : "410", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "406",
		"CDFG" : "CAT_I_I_I_O_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "411", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "406"},
	{"ID" : "412", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_tmp_bits_U", "Parent" : "379"},
	{"ID" : "413", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_tmp_bits_U", "Parent" : "379"},
	{"ID" : "414", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_tmp_bits_U", "Parent" : "379"},
	{"ID" : "415", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_tmp_bits_U", "Parent" : "379"},
	{"ID" : "416", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_tmp_bits_U", "Parent" : "379"},
	{"ID" : "417", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502", "Parent" : "326", "Child" : ["418", "419", "420", "421", "422", "423", "444", "450", "451", "452", "453", "454"],
		"CDFG" : "karastuba_mul_templa_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "734", "EstimateLatencyMax" : "856",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "55", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "76", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "423", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "423", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "444", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "444", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "418", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_digits_data_V_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_digits_data_V_U", "Parent" : "417"},
	{"ID" : "420", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_digits_dat_U", "Parent" : "417"},
	{"ID" : "421", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_digits_dat_U", "Parent" : "417"},
	{"ID" : "422", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_digits_dat_U", "Parent" : "417"},
	{"ID" : "423", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0", "Parent" : "417", "Child" : ["424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "440", "442"],
		"CDFG" : "karastuba_mul_MUL_st_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "495", "EstimateLatencyMax" : "549",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_2_fu_476"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_485"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_496"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "50"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "51"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "52"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "53"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "54"}]},
	{"ID" : "424", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "423"},
	{"ID" : "426", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "423"},
	{"ID" : "427", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "423"},
	{"ID" : "428", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "423"},
	{"ID" : "429", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "423"},
	{"ID" : "430", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "423"},
	{"ID" : "431", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "423"},
	{"ID" : "432", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "423"},
	{"ID" : "433", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "423"},
	{"ID" : "434", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "423"},
	{"ID" : "435", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "423", "Child" : ["436", "437", "438"],
		"CDFG" : "karastuba_mul_templa_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393", "EstimateLatencyMax" : "447",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_180"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "438", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "436", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "435"},
	{"ID" : "437", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "435"},
	{"ID" : "438", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "435", "Child" : ["439"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "439", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "438"},
	{"ID" : "440", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "423", "Child" : ["441"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "441", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "440"},
	{"ID" : "442", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "423", "Child" : ["443"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "356", "EstimateLatencyMax" : "410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "443", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "442"},
	{"ID" : "444", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0", "Parent" : "417", "Child" : ["445", "446", "447", "448", "449"],
		"CDFG" : "karastuba_mul_ADD_SU_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "306",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "82"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "50",
				"SubConnect" : [
					{"ID" : "448", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "83"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "448", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "84"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "52"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "85"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "53"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "86"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "54"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "445", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "444"},
	{"ID" : "446", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "444"},
	{"ID" : "447", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "444"},
	{"ID" : "448", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "444",
		"CDFG" : "CAT_I_I_I_O_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "449", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "444"},
	{"ID" : "450", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_tmp_bits_U", "Parent" : "417"},
	{"ID" : "451", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_tmp_bits_U", "Parent" : "417"},
	{"ID" : "452", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_tmp_bits_U", "Parent" : "417"},
	{"ID" : "453", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_tmp_bits_U", "Parent" : "417"},
	{"ID" : "454", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_tmp_bits_U", "Parent" : "417"},
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0", "Parent" : "320", "Child" : ["456", "457", "458", "459", "460"],
		"CDFG" : "karastuba_mul_ADD_SU_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "446", "EstimateLatencyMax" : "578",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "169"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "29",
				"SubConnect" : [
					{"ID" : "459", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "170"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "30",
				"SubConnect" : [
					{"ID" : "459", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "171"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "31"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "172"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "32"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "173"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "33"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "456", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.add2_digits_data_V_U", "Parent" : "455"},
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.z1_digits_data_V_U", "Parent" : "455"},
	{"ID" : "458", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.p_res_digits_data_V_U", "Parent" : "455"},
	{"ID" : "459", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.grp_CAT_I_I_I_O_1_fu_428", "Parent" : "455",
		"CDFG" : "CAT_I_I_I_O_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "267", "EstimateLatencyMax" : "267",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "460", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.karastuba_mul_mulsc4_U80", "Parent" : "455"},
	{"ID" : "461", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.z0_tmp_bits_U", "Parent" : "320"},
	{"ID" : "462", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.z2_tmp_bits_U", "Parent" : "320"},
	{"ID" : "463", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.cross_mul_tmp_bits_U", "Parent" : "320"},
	{"ID" : "464", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.inter_lhs_tmp_bits_U", "Parent" : "320"},
	{"ID" : "465", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.inter_rhs_tmp_bits_U", "Parent" : "320"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_ADD_SU_U0", "Parent" : "7", "Child" : ["467", "468", "469", "470"],
		"CDFG" : "karastuba_mul_ADD_SU",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "855", "EstimateLatencyMax" : "855",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_fu_260"}],
		"Port" : [
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "471"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "470", "SubInstance" : "grp_CAT_I_I_I_O_fu_260", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "472"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "9",
				"SubConnect" : [
					{"ID" : "470", "SubInstance" : "grp_CAT_I_I_I_O_fu_260", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "473"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "10"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "474", "DependentChan" : "4"}]},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_ADD_SU_U0.add2_digits_data_V_U", "Parent" : "466"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_ADD_SU_U0.z1_digits_data_V_U", "Parent" : "466"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_ADD_SU_U0.p_res_digits_data_V_U", "Parent" : "466"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.karastuba_mul_ADD_SU_U0.grp_CAT_I_I_I_O_fu_260", "Parent" : "466",
		"CDFG" : "CAT_I_I_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "523", "EstimateLatencyMax" : "523",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.z0_tmp_bits_U", "Parent" : "7"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.z2_tmp_bits_U", "Parent" : "7"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_templa_3_U0.cross_mul_tmp_bits_U", "Parent" : "7"},
	{"ID" : "474", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_2_proc_U0", "Parent" : "0", "Child" : ["475"],
		"CDFG" : "Loop_2_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "466", "DependentChan" : "4"},
			{"Name" : "res_output_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_output_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_2_proc_U0.regslice_both_res_output_V_U", "Parent" : "474"}]}


set ArgLastReadFirstWriteLatency {
	karastuba_mul {
		hs_input_V {Type I LastRead 1 FirstWrite -1}
		res_output_V {Type O LastRead -1 FirstWrite 2}}
	Loop_1_proc {
		hs_input_V {Type I LastRead 1 FirstWrite -1}
		lhs_digits_data_V {Type O LastRead -1 FirstWrite 1}
		rhs_digits_data_V {Type O LastRead -1 FirstWrite 2}}
	karastuba_mul_templa_3 {
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_digits_data_V {Type O LastRead -1 FirstWrite 8}}
	karastuba_mul_MUL_st {
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 13}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 15}
		cross_mul_digits_data_V {Type O LastRead -1 FirstWrite 17}
		inter_lhs_digits_data_V {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_data_V {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_tmp_bits {Type O LastRead -1 FirstWrite 16}
		cross_mul_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_templa_4 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_1 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 13}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 15}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 17}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_1 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_tmp_bits {Type O LastRead -1 FirstWrite 16}
		cross_mul_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_templa_5 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_2 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 12}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 14}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 16}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_2 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	karastuba_mul_ADD_SU_2 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_2 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_templa_5 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_2 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 12}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 14}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 16}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_2 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	karastuba_mul_ADD_SU_2 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_2 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_templa_5 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_2 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 12}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 14}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 16}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_2 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	karastuba_mul_ADD_SU_2 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_2 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_ADD_SU_1 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_1 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_templa_4 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_1 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 13}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 15}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 17}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_1 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_tmp_bits {Type O LastRead -1 FirstWrite 16}
		cross_mul_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_templa_5 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_2 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 12}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 14}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 16}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_2 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	karastuba_mul_ADD_SU_2 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_2 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_templa_5 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_2 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 12}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 14}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 16}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_2 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	karastuba_mul_ADD_SU_2 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_2 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_templa_5 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_2 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 12}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 14}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 16}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_2 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	karastuba_mul_ADD_SU_2 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_2 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_ADD_SU_1 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_1 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_templa_4 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_1 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 13}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 15}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 17}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_1 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_tmp_bits {Type O LastRead -1 FirstWrite 16}
		cross_mul_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_templa_5 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_2 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 12}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 14}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 16}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_2 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	karastuba_mul_ADD_SU_2 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_2 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_templa_5 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_2 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 12}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 14}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 16}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_2 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	karastuba_mul_ADD_SU_2 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_2 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_templa_5 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	karastuba_mul_MUL_st_2 {
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 7 FirstWrite -1}
		z0_digits_data_V {Type O LastRead -1 FirstWrite 12}
		z2_digits_data_V {Type O LastRead -1 FirstWrite 14}
		cross_mul_digits_dat {Type O LastRead -1 FirstWrite 16}
		inter_lhs_digits_dat {Type O LastRead -1 FirstWrite 3}
		inter_rhs_digits_dat {Type O LastRead -1 FirstWrite 7}}
	karastuba_mul_templa_2 {
		lhs0_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data_V {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data_V {Type I LastRead 3 FirstWrite -1}
		cross_mul_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data_V {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data_V {Type I LastRead 6 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}
	karastuba_mul_ADD_SU_2 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_2 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_ADD_SU_1 {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		lhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		lhs_digits_data_V {Type I LastRead 6 FirstWrite -1}
		rhs_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		rhs_digits_data_V {Type I LastRead 8 FirstWrite -1}
		res_tmp_bits {Type O LastRead -1 FirstWrite 16}
		res_digits_data_V {Type O LastRead -1 FirstWrite 17}}
	CAT_I_I_I_O_1 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_ADD_SU {
		z0_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		z2_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		z2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		cross_mul_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		cross_mul_digits_data_V {Type I LastRead 3 FirstWrite -1}
		res_digits_data_V {Type O LastRead -1 FirstWrite 8}}
	CAT_I_I_I_O {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}
	Loop_2_proc {
		res_digits_data_V {Type I LastRead 1 FirstWrite -1}
		res_output_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3032", "Max" : "3286"}
	, {"Name" : "Interval", "Min" : "1914", "Max" : "2168"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hs_input_V { axis {  { hs_input_V_TDATA in_data 0 64 }  { hs_input_V_TVALID in_vld 0 1 }  { hs_input_V_TREADY in_acc 1 1 } } }
	res_output_V { axis {  { res_output_V_TDATA out_data 1 64 }  { res_output_V_TVALID out_vld 1 1 }  { res_output_V_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
