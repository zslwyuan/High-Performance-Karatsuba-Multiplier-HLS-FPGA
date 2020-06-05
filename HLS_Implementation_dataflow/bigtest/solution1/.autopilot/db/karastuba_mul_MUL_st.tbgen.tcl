set moduleName karastuba_mul_MUL_st
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {karastuba_mul_MUL_st}
set C_modelType { int 96 }
set C_modelArgList {
	{ lhs_digits_data_V int 64 regular {array 64 { 1 3 } 1 1 }  }
	{ rhs_digits_data_V int 64 regular {array 64 { 1 3 } 1 1 }  }
	{ z0_digits_data_V int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ z2_digits_data_V int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ cross_mul_digits_data_V int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ inter_lhs_digits_data_V int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ inter_rhs_digits_data_V int 64 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z0_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z2_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cross_mul_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_lhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_rhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ lhs_digits_data_V_address0 sc_out sc_lv 6 signal 0 } 
	{ lhs_digits_data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ lhs_digits_data_V_q0 sc_in sc_lv 64 signal 0 } 
	{ rhs_digits_data_V_address0 sc_out sc_lv 6 signal 1 } 
	{ rhs_digits_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ rhs_digits_data_V_q0 sc_in sc_lv 64 signal 1 } 
	{ z0_digits_data_V_address0 sc_out sc_lv 6 signal 2 } 
	{ z0_digits_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ z0_digits_data_V_we0 sc_out sc_logic 1 signal 2 } 
	{ z0_digits_data_V_d0 sc_out sc_lv 64 signal 2 } 
	{ z2_digits_data_V_address0 sc_out sc_lv 6 signal 3 } 
	{ z2_digits_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ z2_digits_data_V_we0 sc_out sc_logic 1 signal 3 } 
	{ z2_digits_data_V_d0 sc_out sc_lv 64 signal 3 } 
	{ cross_mul_digits_data_V_address0 sc_out sc_lv 6 signal 4 } 
	{ cross_mul_digits_data_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ cross_mul_digits_data_V_we0 sc_out sc_logic 1 signal 4 } 
	{ cross_mul_digits_data_V_d0 sc_out sc_lv 64 signal 4 } 
	{ inter_lhs_digits_data_V_address0 sc_out sc_lv 6 signal 5 } 
	{ inter_lhs_digits_data_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ inter_lhs_digits_data_V_we0 sc_out sc_logic 1 signal 5 } 
	{ inter_lhs_digits_data_V_d0 sc_out sc_lv 64 signal 5 } 
	{ inter_rhs_digits_data_V_address0 sc_out sc_lv 6 signal 6 } 
	{ inter_rhs_digits_data_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ inter_rhs_digits_data_V_we0 sc_out sc_logic 1 signal 6 } 
	{ inter_rhs_digits_data_V_d0 sc_out sc_lv 64 signal 6 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "lhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "lhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "lhs_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "q0" }} , 
 	{ "name": "rhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "rhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "rhs_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "q0" }} , 
 	{ "name": "z0_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "z0_digits_data_V", "role": "address0" }} , 
 	{ "name": "z0_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z0_digits_data_V", "role": "ce0" }} , 
 	{ "name": "z0_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z0_digits_data_V", "role": "we0" }} , 
 	{ "name": "z0_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z0_digits_data_V", "role": "d0" }} , 
 	{ "name": "z2_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "z2_digits_data_V", "role": "address0" }} , 
 	{ "name": "z2_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z2_digits_data_V", "role": "ce0" }} , 
 	{ "name": "z2_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z2_digits_data_V", "role": "we0" }} , 
 	{ "name": "z2_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2_digits_data_V", "role": "d0" }} , 
 	{ "name": "cross_mul_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "address0" }} , 
 	{ "name": "cross_mul_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "ce0" }} , 
 	{ "name": "cross_mul_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "we0" }} , 
 	{ "name": "cross_mul_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "d0" }} , 
 	{ "name": "inter_lhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "inter_lhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "inter_lhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_lhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "inter_lhs_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_lhs_digits_data_V", "role": "we0" }} , 
 	{ "name": "inter_lhs_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inter_lhs_digits_data_V", "role": "d0" }} , 
 	{ "name": "inter_rhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "inter_rhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "inter_rhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_rhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "inter_rhs_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_rhs_digits_data_V", "role": "we0" }} , 
 	{ "name": "inter_rhs_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inter_rhs_digits_data_V", "role": "d0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "161", "307"],
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
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "inter_lhs_digits_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_rhs_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs0_digits_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs1_digits_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs0_digits_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs1_digits_data_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs0_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs1_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs0_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs1_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_z0_digits_data_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_z2_digits_data_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_cross_mul_digits_da_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462", "Parent" : "0", "Child" : ["13", "14", "15"],
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
					{"ID" : "15", "SubInstance" : "grp_karastuba_mul_templa_4_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_karastuba_mul_templa_4_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.add0_digits_data_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.add1_digits_data_V_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182", "Parent" : "12", "Child" : ["16", "17", "18", "19", "20", "21", "150", "156", "157", "158", "159", "160"],
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
			{"ID" : "21", "Name" : "karastuba_mul_MUL_st_1_U0"}],
		"OutputProcess" : [
			{"ID" : "150", "Name" : "karastuba_mul_ADD_SU_1_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z0_digits_data_V_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z2_digits_data_V_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.cross_mul_digits_dat_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_lhs_digits_dat_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_rhs_digits_dat_U", "Parent" : "15"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0", "Parent" : "15", "Child" : ["22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "74", "112"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "16"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "17"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "18"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "19"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "20"}]},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs0_digits_data_V_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs1_digits_data_V_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs0_digits_data_V_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs1_digits_data_V_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs0_tmp_digits_data_U", "Parent" : "21"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs1_tmp_digits_data_U", "Parent" : "21"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs0_tmp_digits_data_U", "Parent" : "21"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs1_tmp_digits_data_U", "Parent" : "21"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.p_z0_digits_data_V_i_U", "Parent" : "21"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.p_z2_digits_data_V_i_U", "Parent" : "21"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.p_cross_mul_digits_da_U", "Parent" : "21"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480", "Parent" : "21", "Child" : ["34", "35", "36"],
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
					{"ID" : "36", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add0_digits_data_V_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add1_digits_data_V_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182", "Parent" : "33", "Child" : ["37", "38", "39", "40", "41", "42", "63", "69", "70", "71", "72", "73"],
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
			{"ID" : "42", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "37", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "36"},
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "36"},
	{"ID" : "42", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "36", "Child" : ["43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "59", "61"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "37"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "38"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "39"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "40"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "41"}]},
	{"ID" : "43", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "42"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "42"},
	{"ID" : "48", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "42"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "42"},
	{"ID" : "50", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "42"},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "42"},
	{"ID" : "52", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "42"},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "42"},
	{"ID" : "54", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "42", "Child" : ["55", "56", "57"],
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
					{"ID" : "57", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "55", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "54", "Child" : ["58"],
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
	{"ID" : "58", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "57"},
	{"ID" : "59", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "42", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "59"},
	{"ID" : "61", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "42", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "61"},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "36", "Child" : ["64", "65", "66", "67", "68"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "69"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "37",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "70"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "38",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "71"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "39"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "72"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "40"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "73"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "41"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "64", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "63"},
	{"ID" : "67", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "63",
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
	{"ID" : "68", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "63"},
	{"ID" : "69", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "36"},
	{"ID" : "70", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "36"},
	{"ID" : "71", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "36"},
	{"ID" : "72", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "36"},
	{"ID" : "73", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "36"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490", "Parent" : "21", "Child" : ["75", "76", "77", "78", "79", "80", "101", "107", "108", "109", "110", "111"],
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
			{"ID" : "42", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_digits_data_V_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_digits_data_V_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_digits_dat_U", "Parent" : "74"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_digits_dat_U", "Parent" : "74"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_digits_dat_U", "Parent" : "74"},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0", "Parent" : "74", "Child" : ["81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "97", "99"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "37"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "38"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "39"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "40"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "41"}]},
	{"ID" : "81", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "80"},
	{"ID" : "84", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "80"},
	{"ID" : "85", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "80"},
	{"ID" : "86", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "80"},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "80"},
	{"ID" : "88", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "80"},
	{"ID" : "89", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "80"},
	{"ID" : "90", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "80"},
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "80"},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "80", "Child" : ["93", "94", "95"],
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
					{"ID" : "95", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "93", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "92", "Child" : ["96"],
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
	{"ID" : "96", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "95"},
	{"ID" : "97", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "80", "Child" : ["98"],
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
	{"ID" : "98", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "97"},
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "80", "Child" : ["100"],
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
	{"ID" : "100", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "99"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0", "Parent" : "74", "Child" : ["102", "103", "104", "105", "106"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "69"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "37",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "70"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "38",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "71"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "39"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "72"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "40"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "73"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "41"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "101"},
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "101"},
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "101",
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
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "101"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_tmp_bits_U", "Parent" : "74"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_tmp_bits_U", "Parent" : "74"},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_tmp_bits_U", "Parent" : "74"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_tmp_bits_U", "Parent" : "74"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_tmp_bits_U", "Parent" : "74"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502", "Parent" : "21", "Child" : ["113", "114", "115", "116", "117", "118", "139", "145", "146", "147", "148", "149"],
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
			{"ID" : "42", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_digits_data_V_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_digits_data_V_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_digits_dat_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_digits_dat_U", "Parent" : "112"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_digits_dat_U", "Parent" : "112"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0", "Parent" : "112", "Child" : ["119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "135", "137"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "37"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "38"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "39"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "40"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "41"}]},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "118"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "118"},
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "118"},
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "118"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "118"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "118"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "118"},
	{"ID" : "127", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "118"},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "118"},
	{"ID" : "129", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "118"},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "118", "Child" : ["131", "132", "133"],
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
					{"ID" : "133", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "131", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "130", "Child" : ["134"],
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
	{"ID" : "134", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "133"},
	{"ID" : "135", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "118", "Child" : ["136"],
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
	{"ID" : "136", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "135"},
	{"ID" : "137", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "118", "Child" : ["138"],
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
	{"ID" : "138", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "137"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0", "Parent" : "112", "Child" : ["140", "141", "142", "143", "144"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "69"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "37",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "70"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "38",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "71"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "39"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "72"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "40"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "73"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "41"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "140", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "139"},
	{"ID" : "143", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "139",
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
	{"ID" : "144", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "139"},
	{"ID" : "145", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_tmp_bits_U", "Parent" : "112"},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_tmp_bits_U", "Parent" : "112"},
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_tmp_bits_U", "Parent" : "112"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_tmp_bits_U", "Parent" : "112"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_tmp_bits_U", "Parent" : "112"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0", "Parent" : "15", "Child" : ["151", "152", "153", "154", "155"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "156"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "16",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "157"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "17",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "158"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "18"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "159"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "19"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "160"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "20"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.add2_digits_data_V_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.z1_digits_data_V_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.p_res_digits_data_V_U", "Parent" : "150"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.grp_CAT_I_I_I_O_1_fu_428", "Parent" : "150",
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
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.karastuba_mul_mulsc4_U80", "Parent" : "150"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z0_tmp_bits_U", "Parent" : "15"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z2_tmp_bits_U", "Parent" : "15"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.cross_mul_tmp_bits_U", "Parent" : "15"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_lhs_tmp_bits_U", "Parent" : "15"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_rhs_tmp_bits_U", "Parent" : "15"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472", "Parent" : "0", "Child" : ["162", "163", "164", "165", "166", "167", "296", "302", "303", "304", "305", "306"],
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
			{"ID" : "21", "Name" : "karastuba_mul_MUL_st_1_U0"}],
		"OutputProcess" : [
			{"ID" : "150", "Name" : "karastuba_mul_ADD_SU_1_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.z0_digits_data_V_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.z2_digits_data_V_U", "Parent" : "161"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.cross_mul_digits_dat_U", "Parent" : "161"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.inter_lhs_digits_dat_U", "Parent" : "161"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.inter_rhs_digits_dat_U", "Parent" : "161"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0", "Parent" : "161", "Child" : ["168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "220", "258"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "16"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "17"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "18"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "19"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "20"}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs0_digits_data_V_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs1_digits_data_V_U", "Parent" : "167"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs0_digits_data_V_U", "Parent" : "167"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs1_digits_data_V_U", "Parent" : "167"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs0_tmp_digits_data_U", "Parent" : "167"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs1_tmp_digits_data_U", "Parent" : "167"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs0_tmp_digits_data_U", "Parent" : "167"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs1_tmp_digits_data_U", "Parent" : "167"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.p_z0_digits_data_V_i_U", "Parent" : "167"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.p_z2_digits_data_V_i_U", "Parent" : "167"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.p_cross_mul_digits_da_U", "Parent" : "167"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480", "Parent" : "167", "Child" : ["180", "181", "182"],
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
					{"ID" : "182", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add0_digits_data_V_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add1_digits_data_V_U", "Parent" : "179"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182", "Parent" : "179", "Child" : ["183", "184", "185", "186", "187", "188", "209", "215", "216", "217", "218", "219"],
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
			{"ID" : "42", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "209", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "209", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "182"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "182"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "182"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "182"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "182", "Child" : ["189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "205", "207"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "37"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "38"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "39"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "40"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "41"}]},
	{"ID" : "189", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "188"},
	{"ID" : "191", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "188"},
	{"ID" : "192", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "188"},
	{"ID" : "193", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "188"},
	{"ID" : "194", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "188"},
	{"ID" : "195", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "188"},
	{"ID" : "196", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "188"},
	{"ID" : "197", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "188"},
	{"ID" : "198", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "188"},
	{"ID" : "199", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "188"},
	{"ID" : "200", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "188", "Child" : ["201", "202", "203"],
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
					{"ID" : "203", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "201", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "200"},
	{"ID" : "203", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "200", "Child" : ["204"],
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
	{"ID" : "204", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "203"},
	{"ID" : "205", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "188", "Child" : ["206"],
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
	{"ID" : "206", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "205"},
	{"ID" : "207", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "188", "Child" : ["208"],
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
	{"ID" : "208", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "207"},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "182", "Child" : ["210", "211", "212", "213", "214"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "69"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "37",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "70"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "38",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "71"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "39"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "72"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "40"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "73"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "41"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "209"},
	{"ID" : "212", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "209"},
	{"ID" : "213", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "209",
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
	{"ID" : "214", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "209"},
	{"ID" : "215", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "182"},
	{"ID" : "216", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "182"},
	{"ID" : "217", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "182"},
	{"ID" : "218", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "182"},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "182"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490", "Parent" : "167", "Child" : ["221", "222", "223", "224", "225", "226", "247", "253", "254", "255", "256", "257"],
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
			{"ID" : "42", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_digits_data_V_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_digits_data_V_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_digits_dat_U", "Parent" : "220"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_digits_dat_U", "Parent" : "220"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_digits_dat_U", "Parent" : "220"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0", "Parent" : "220", "Child" : ["227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "243", "245"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "37"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "38"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "39"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "40"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "41"}]},
	{"ID" : "227", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "226"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "226"},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "226"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "226"},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "226"},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "226"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "226"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "226"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "226"},
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "226", "Child" : ["239", "240", "241"],
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
					{"ID" : "241", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "239", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "238"},
	{"ID" : "241", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "238", "Child" : ["242"],
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
	{"ID" : "242", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "241"},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "226", "Child" : ["244"],
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
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "243"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "226", "Child" : ["246"],
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
	{"ID" : "246", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "245"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0", "Parent" : "220", "Child" : ["248", "249", "250", "251", "252"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "69"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "37",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "70"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "38",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "71"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "39"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "72"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "40"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "73"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "41"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "248", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "247"},
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "247"},
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "247",
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
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "247"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_tmp_bits_U", "Parent" : "220"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_tmp_bits_U", "Parent" : "220"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_tmp_bits_U", "Parent" : "220"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_tmp_bits_U", "Parent" : "220"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_tmp_bits_U", "Parent" : "220"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502", "Parent" : "167", "Child" : ["259", "260", "261", "262", "263", "264", "285", "291", "292", "293", "294", "295"],
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
			{"ID" : "42", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_digits_data_V_U", "Parent" : "258"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_digits_data_V_U", "Parent" : "258"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_digits_dat_U", "Parent" : "258"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_digits_dat_U", "Parent" : "258"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_digits_dat_U", "Parent" : "258"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0", "Parent" : "258", "Child" : ["265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "281", "283"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "37"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "38"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "39"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "40"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "41"}]},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "264"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "264"},
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "264"},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "264"},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "264"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "264"},
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "264"},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "264"},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "264"},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "264"},
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "264", "Child" : ["277", "278", "279"],
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
					{"ID" : "279", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "277", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "276", "Child" : ["280"],
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
	{"ID" : "280", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "279"},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "264", "Child" : ["282"],
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
	{"ID" : "282", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "281"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "264", "Child" : ["284"],
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
	{"ID" : "284", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "283"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0", "Parent" : "258", "Child" : ["286", "287", "288", "289", "290"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "69"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "37",
				"SubConnect" : [
					{"ID" : "289", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "70"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "38",
				"SubConnect" : [
					{"ID" : "289", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "71"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "39"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "72"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "40"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "73"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "41"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "285"},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "285"},
	{"ID" : "289", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "285",
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
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "285"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_tmp_bits_U", "Parent" : "258"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_tmp_bits_U", "Parent" : "258"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_tmp_bits_U", "Parent" : "258"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_tmp_bits_U", "Parent" : "258"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_tmp_bits_U", "Parent" : "258"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0", "Parent" : "161", "Child" : ["297", "298", "299", "300", "301"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "156"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "16",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "157"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "17",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "158"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "18"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "159"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "19"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "160"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "20"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.add2_digits_data_V_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.z1_digits_data_V_U", "Parent" : "296"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.p_res_digits_data_V_U", "Parent" : "296"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.grp_CAT_I_I_I_O_1_fu_428", "Parent" : "296",
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
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.karastuba_mul_mulsc4_U80", "Parent" : "296"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.z0_tmp_bits_U", "Parent" : "161"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.z2_tmp_bits_U", "Parent" : "161"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.cross_mul_tmp_bits_U", "Parent" : "161"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.inter_lhs_tmp_bits_U", "Parent" : "161"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_472.inter_rhs_tmp_bits_U", "Parent" : "161"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484", "Parent" : "0", "Child" : ["308", "309", "310", "311", "312", "313", "442", "448", "449", "450", "451", "452"],
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
			{"ID" : "21", "Name" : "karastuba_mul_MUL_st_1_U0"}],
		"OutputProcess" : [
			{"ID" : "150", "Name" : "karastuba_mul_ADD_SU_1_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "442", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "442", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.z0_digits_data_V_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.z2_digits_data_V_U", "Parent" : "307"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.cross_mul_digits_dat_U", "Parent" : "307"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.inter_lhs_digits_dat_U", "Parent" : "307"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.inter_rhs_digits_dat_U", "Parent" : "307"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0", "Parent" : "307", "Child" : ["314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "366", "404"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "16"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "17"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "18"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "19"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "20"}]},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs0_digits_data_V_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs1_digits_data_V_U", "Parent" : "313"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs0_digits_data_V_U", "Parent" : "313"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs1_digits_data_V_U", "Parent" : "313"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs0_tmp_digits_data_U", "Parent" : "313"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs1_tmp_digits_data_U", "Parent" : "313"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs0_tmp_digits_data_U", "Parent" : "313"},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs1_tmp_digits_data_U", "Parent" : "313"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.p_z0_digits_data_V_i_U", "Parent" : "313"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.p_z2_digits_data_V_i_U", "Parent" : "313"},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.p_cross_mul_digits_da_U", "Parent" : "313"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480", "Parent" : "313", "Child" : ["326", "327", "328"],
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
					{"ID" : "328", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "328", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add0_digits_data_V_U", "Parent" : "325"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add1_digits_data_V_U", "Parent" : "325"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182", "Parent" : "325", "Child" : ["329", "330", "331", "332", "333", "334", "355", "361", "362", "363", "364", "365"],
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
			{"ID" : "42", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "355", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "355", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "329", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "328"},
	{"ID" : "330", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "328"},
	{"ID" : "331", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "328"},
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "328"},
	{"ID" : "333", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "328"},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "328", "Child" : ["335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "351", "353"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "37"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "38"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "39"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "40"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "41"}]},
	{"ID" : "335", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "334"},
	{"ID" : "337", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "334"},
	{"ID" : "338", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "334"},
	{"ID" : "339", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "334"},
	{"ID" : "340", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "334"},
	{"ID" : "341", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "334"},
	{"ID" : "342", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "334"},
	{"ID" : "343", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "334"},
	{"ID" : "344", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "334"},
	{"ID" : "345", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "334"},
	{"ID" : "346", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "334", "Child" : ["347", "348", "349"],
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
					{"ID" : "349", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "347", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "346"},
	{"ID" : "349", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "346", "Child" : ["350"],
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
	{"ID" : "350", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "349"},
	{"ID" : "351", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "334", "Child" : ["352"],
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
	{"ID" : "352", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "351"},
	{"ID" : "353", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "334", "Child" : ["354"],
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
	{"ID" : "354", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "353"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "328", "Child" : ["356", "357", "358", "359", "360"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "69"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "37",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "70"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "38",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "71"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "39"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "72"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "40"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "73"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "41"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "356", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "355"},
	{"ID" : "357", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "355"},
	{"ID" : "358", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "355"},
	{"ID" : "359", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "355",
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
	{"ID" : "360", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "355"},
	{"ID" : "361", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "328"},
	{"ID" : "362", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "328"},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "328"},
	{"ID" : "364", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "328"},
	{"ID" : "365", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "328"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490", "Parent" : "313", "Child" : ["367", "368", "369", "370", "371", "372", "393", "399", "400", "401", "402", "403"],
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
			{"ID" : "42", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "393", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "393", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "367", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_digits_data_V_U", "Parent" : "366"},
	{"ID" : "368", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_digits_data_V_U", "Parent" : "366"},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_digits_dat_U", "Parent" : "366"},
	{"ID" : "370", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_digits_dat_U", "Parent" : "366"},
	{"ID" : "371", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_digits_dat_U", "Parent" : "366"},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0", "Parent" : "366", "Child" : ["373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "389", "391"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "37"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "38"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "39"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "40"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "41"}]},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "372"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "372"},
	{"ID" : "377", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "372"},
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "372"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "372"},
	{"ID" : "380", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "372"},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "372"},
	{"ID" : "382", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "372"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "372"},
	{"ID" : "384", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "372", "Child" : ["385", "386", "387"],
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
					{"ID" : "387", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "385", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "384"},
	{"ID" : "386", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "384"},
	{"ID" : "387", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "384", "Child" : ["388"],
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
	{"ID" : "388", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "387"},
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "372", "Child" : ["390"],
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
	{"ID" : "390", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "389"},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "372", "Child" : ["392"],
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
	{"ID" : "392", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "391"},
	{"ID" : "393", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0", "Parent" : "366", "Child" : ["394", "395", "396", "397", "398"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "69"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "37",
				"SubConnect" : [
					{"ID" : "397", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "70"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "38",
				"SubConnect" : [
					{"ID" : "397", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "71"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "39"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "72"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "40"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "73"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "41"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "394", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "393"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "393"},
	{"ID" : "397", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "393",
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
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "393"},
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_tmp_bits_U", "Parent" : "366"},
	{"ID" : "400", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_tmp_bits_U", "Parent" : "366"},
	{"ID" : "401", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_tmp_bits_U", "Parent" : "366"},
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_tmp_bits_U", "Parent" : "366"},
	{"ID" : "403", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_tmp_bits_U", "Parent" : "366"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502", "Parent" : "313", "Child" : ["405", "406", "407", "408", "409", "410", "431", "437", "438", "439", "440", "441"],
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
			{"ID" : "42", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "405", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_digits_data_V_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_digits_data_V_U", "Parent" : "404"},
	{"ID" : "407", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_digits_dat_U", "Parent" : "404"},
	{"ID" : "408", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_digits_dat_U", "Parent" : "404"},
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_digits_dat_U", "Parent" : "404"},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0", "Parent" : "404", "Child" : ["411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "427", "429"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "37"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "38"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "39"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "40"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "41"}]},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "410"},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "410"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "410"},
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "410"},
	{"ID" : "416", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "410"},
	{"ID" : "417", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "410"},
	{"ID" : "418", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "410"},
	{"ID" : "419", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "410"},
	{"ID" : "420", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "410"},
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "410"},
	{"ID" : "422", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "410", "Child" : ["423", "424", "425"],
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
					{"ID" : "425", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "423", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "422"},
	{"ID" : "424", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "422"},
	{"ID" : "425", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "422", "Child" : ["426"],
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
	{"ID" : "426", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "425"},
	{"ID" : "427", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "410", "Child" : ["428"],
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
	{"ID" : "428", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "427"},
	{"ID" : "429", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "410", "Child" : ["430"],
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
	{"ID" : "430", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "429"},
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0", "Parent" : "404", "Child" : ["432", "433", "434", "435", "436"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "69"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "37",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "70"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "38",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "71"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "39"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "72"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "40"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "73"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "41"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "432", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "431"},
	{"ID" : "433", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "431"},
	{"ID" : "434", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "431"},
	{"ID" : "435", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "431",
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
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "431"},
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_tmp_bits_U", "Parent" : "404"},
	{"ID" : "438", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_tmp_bits_U", "Parent" : "404"},
	{"ID" : "439", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_tmp_bits_U", "Parent" : "404"},
	{"ID" : "440", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_tmp_bits_U", "Parent" : "404"},
	{"ID" : "441", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_tmp_bits_U", "Parent" : "404"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0", "Parent" : "307", "Child" : ["443", "444", "445", "446", "447"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "156"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "16",
				"SubConnect" : [
					{"ID" : "446", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "157"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "17",
				"SubConnect" : [
					{"ID" : "446", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "158"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "18"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "159"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "19"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "160"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "20"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.add2_digits_data_V_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.z1_digits_data_V_U", "Parent" : "442"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.p_res_digits_data_V_U", "Parent" : "442"},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.grp_CAT_I_I_I_O_1_fu_428", "Parent" : "442",
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
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.karastuba_mul_mulsc4_U80", "Parent" : "442"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.z0_tmp_bits_U", "Parent" : "307"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.z2_tmp_bits_U", "Parent" : "307"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.cross_mul_tmp_bits_U", "Parent" : "307"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.inter_lhs_tmp_bits_U", "Parent" : "307"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_4_fu_484.inter_rhs_tmp_bits_U", "Parent" : "307"}]}


set ArgLastReadFirstWriteLatency {
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
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1913", "Max" : "2167"}
	, {"Name" : "Interval", "Min" : "1913", "Max" : "2167"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
]}

set Spec2ImplPortList { 
	lhs_digits_data_V { ap_memory {  { lhs_digits_data_V_address0 mem_address 1 6 }  { lhs_digits_data_V_ce0 mem_ce 1 1 }  { lhs_digits_data_V_q0 mem_dout 0 64 } } }
	rhs_digits_data_V { ap_memory {  { rhs_digits_data_V_address0 mem_address 1 6 }  { rhs_digits_data_V_ce0 mem_ce 1 1 }  { rhs_digits_data_V_q0 mem_dout 0 64 } } }
	z0_digits_data_V { ap_memory {  { z0_digits_data_V_address0 mem_address 1 6 }  { z0_digits_data_V_ce0 mem_ce 1 1 }  { z0_digits_data_V_we0 mem_we 1 1 }  { z0_digits_data_V_d0 mem_din 1 64 } } }
	z2_digits_data_V { ap_memory {  { z2_digits_data_V_address0 mem_address 1 6 }  { z2_digits_data_V_ce0 mem_ce 1 1 }  { z2_digits_data_V_we0 mem_we 1 1 }  { z2_digits_data_V_d0 mem_din 1 64 } } }
	cross_mul_digits_data_V { ap_memory {  { cross_mul_digits_data_V_address0 mem_address 1 6 }  { cross_mul_digits_data_V_ce0 mem_ce 1 1 }  { cross_mul_digits_data_V_we0 mem_we 1 1 }  { cross_mul_digits_data_V_d0 mem_din 1 64 } } }
	inter_lhs_digits_data_V { ap_memory {  { inter_lhs_digits_data_V_address0 mem_address 1 6 }  { inter_lhs_digits_data_V_ce0 mem_ce 1 1 }  { inter_lhs_digits_data_V_we0 mem_we 1 1 }  { inter_lhs_digits_data_V_d0 mem_din 1 64 } } }
	inter_rhs_digits_data_V { ap_memory {  { inter_rhs_digits_data_V_address0 mem_address 1 6 }  { inter_rhs_digits_data_V_ce0 mem_ce 1 1 }  { inter_rhs_digits_data_V_we0 mem_we 1 1 }  { inter_rhs_digits_data_V_d0 mem_din 1 64 } } }
}
