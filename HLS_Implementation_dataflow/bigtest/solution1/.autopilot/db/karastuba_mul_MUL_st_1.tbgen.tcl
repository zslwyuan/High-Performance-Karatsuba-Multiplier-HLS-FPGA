set moduleName karastuba_mul_MUL_st_1
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
set C_modelName {karastuba_mul_MUL_st.1}
set C_modelType { int 160 }
set C_modelArgList {
	{ lhs_tmp_bits_read int 2 regular  }
	{ lhs_digits_data_V int 64 regular {array 32 { 1 3 } 1 1 }  }
	{ rhs_tmp_bits_read int 2 regular  }
	{ rhs_digits_data_V int 64 regular {array 32 { 1 3 } 1 1 }  }
	{ z0_digits_data_V int 64 regular {array 32 { 0 3 } 0 1 }  }
	{ z2_digits_data_V int 64 regular {array 32 { 0 3 } 0 1 }  }
	{ cross_mul_digits_dat int 64 regular {array 32 { 0 3 } 0 1 }  }
	{ inter_lhs_digits_dat int 64 regular {array 32 { 0 3 } 0 1 }  }
	{ inter_rhs_digits_dat int 64 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lhs_tmp_bits_read", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "lhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rhs_tmp_bits_read", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "rhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z0_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z2_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cross_mul_digits_dat", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_lhs_digits_dat", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_rhs_digits_dat", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 160} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ lhs_tmp_bits_read sc_in sc_lv 2 signal 0 } 
	{ lhs_digits_data_V_address0 sc_out sc_lv 5 signal 1 } 
	{ lhs_digits_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ lhs_digits_data_V_q0 sc_in sc_lv 64 signal 1 } 
	{ rhs_tmp_bits_read sc_in sc_lv 2 signal 2 } 
	{ rhs_digits_data_V_address0 sc_out sc_lv 5 signal 3 } 
	{ rhs_digits_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ rhs_digits_data_V_q0 sc_in sc_lv 64 signal 3 } 
	{ z0_digits_data_V_address0 sc_out sc_lv 5 signal 4 } 
	{ z0_digits_data_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ z0_digits_data_V_we0 sc_out sc_logic 1 signal 4 } 
	{ z0_digits_data_V_d0 sc_out sc_lv 64 signal 4 } 
	{ z2_digits_data_V_address0 sc_out sc_lv 5 signal 5 } 
	{ z2_digits_data_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ z2_digits_data_V_we0 sc_out sc_logic 1 signal 5 } 
	{ z2_digits_data_V_d0 sc_out sc_lv 64 signal 5 } 
	{ cross_mul_digits_dat_address0 sc_out sc_lv 5 signal 6 } 
	{ cross_mul_digits_dat_ce0 sc_out sc_logic 1 signal 6 } 
	{ cross_mul_digits_dat_we0 sc_out sc_logic 1 signal 6 } 
	{ cross_mul_digits_dat_d0 sc_out sc_lv 64 signal 6 } 
	{ inter_lhs_digits_dat_address0 sc_out sc_lv 5 signal 7 } 
	{ inter_lhs_digits_dat_ce0 sc_out sc_logic 1 signal 7 } 
	{ inter_lhs_digits_dat_we0 sc_out sc_logic 1 signal 7 } 
	{ inter_lhs_digits_dat_d0 sc_out sc_lv 64 signal 7 } 
	{ inter_rhs_digits_dat_address0 sc_out sc_lv 5 signal 8 } 
	{ inter_rhs_digits_dat_ce0 sc_out sc_logic 1 signal 8 } 
	{ inter_rhs_digits_dat_we0 sc_out sc_logic 1 signal 8 } 
	{ inter_rhs_digits_dat_d0 sc_out sc_lv 64 signal 8 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "lhs_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "lhs_tmp_bits_read", "role": "default" }} , 
 	{ "name": "lhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "lhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "lhs_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "q0" }} , 
 	{ "name": "rhs_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rhs_tmp_bits_read", "role": "default" }} , 
 	{ "name": "rhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "rhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "rhs_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "q0" }} , 
 	{ "name": "z0_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "z0_digits_data_V", "role": "address0" }} , 
 	{ "name": "z0_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z0_digits_data_V", "role": "ce0" }} , 
 	{ "name": "z0_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z0_digits_data_V", "role": "we0" }} , 
 	{ "name": "z0_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z0_digits_data_V", "role": "d0" }} , 
 	{ "name": "z2_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "z2_digits_data_V", "role": "address0" }} , 
 	{ "name": "z2_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z2_digits_data_V", "role": "ce0" }} , 
 	{ "name": "z2_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z2_digits_data_V", "role": "we0" }} , 
 	{ "name": "z2_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2_digits_data_V", "role": "d0" }} , 
 	{ "name": "cross_mul_digits_dat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "cross_mul_digits_dat", "role": "address0" }} , 
 	{ "name": "cross_mul_digits_dat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cross_mul_digits_dat", "role": "ce0" }} , 
 	{ "name": "cross_mul_digits_dat_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cross_mul_digits_dat", "role": "we0" }} , 
 	{ "name": "cross_mul_digits_dat_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cross_mul_digits_dat", "role": "d0" }} , 
 	{ "name": "inter_lhs_digits_dat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "inter_lhs_digits_dat", "role": "address0" }} , 
 	{ "name": "inter_lhs_digits_dat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_lhs_digits_dat", "role": "ce0" }} , 
 	{ "name": "inter_lhs_digits_dat_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_lhs_digits_dat", "role": "we0" }} , 
 	{ "name": "inter_lhs_digits_dat_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inter_lhs_digits_dat", "role": "d0" }} , 
 	{ "name": "inter_rhs_digits_dat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "inter_rhs_digits_dat", "role": "address0" }} , 
 	{ "name": "inter_rhs_digits_dat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_rhs_digits_dat", "role": "ce0" }} , 
 	{ "name": "inter_rhs_digits_dat_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_rhs_digits_dat", "role": "we0" }} , 
 	{ "name": "inter_rhs_digits_dat_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inter_rhs_digits_dat", "role": "d0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "53", "91"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs0_digits_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs1_digits_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs0_digits_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs1_digits_data_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs0_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs1_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs0_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs1_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_z0_digits_data_V_i_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_z2_digits_data_V_i_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_cross_mul_digits_da_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480", "Parent" : "0", "Child" : ["13", "14", "15"],
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
					{"ID" : "15", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.add0_digits_data_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.add1_digits_data_V_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182", "Parent" : "12", "Child" : ["16", "17", "18", "19", "20", "21", "42", "48", "49", "50", "51", "52"],
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
			{"ID" : "21", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "42", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "15"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "15", "Child" : ["22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "38", "40"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "16"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "17"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "18"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "19"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "20"}]},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "21"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "21"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "21"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "21"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "21"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "21"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "21"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "21", "Child" : ["34", "35", "36"],
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
					{"ID" : "36", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "33", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "21", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "21", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "15", "Child" : ["43", "44", "45", "46", "47"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "48"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "16",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "49"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "17",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "50"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "18"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "51"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "19"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "52"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "20"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "42",
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
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "42"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "15"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "15"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "15"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "15"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "15"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490", "Parent" : "0", "Child" : ["54", "55", "56", "57", "58", "59", "80", "86", "87", "88", "89", "90"],
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
			{"ID" : "21", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "42", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.z0_digits_data_V_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.z2_digits_data_V_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.cross_mul_digits_dat_U", "Parent" : "53"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.inter_lhs_digits_dat_U", "Parent" : "53"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.inter_rhs_digits_dat_U", "Parent" : "53"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0", "Parent" : "53", "Child" : ["60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "76", "78"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "16"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "17"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "18"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "19"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "20"}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "59"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "59"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "59"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "59"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "59"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "59"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "59"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "59"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "59", "Child" : ["72", "73", "74"],
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
					{"ID" : "74", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "71", "Child" : ["75"],
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
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "74"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "59", "Child" : ["77"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "76"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "59", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0", "Parent" : "53", "Child" : ["81", "82", "83", "84", "85"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "48"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "16",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "49"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "17",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "50"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "18"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "51"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "19"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "52"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "20"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "80"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "80",
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
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "80"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.z0_tmp_bits_U", "Parent" : "53"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.z2_tmp_bits_U", "Parent" : "53"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.cross_mul_tmp_bits_U", "Parent" : "53"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.inter_lhs_tmp_bits_U", "Parent" : "53"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_490.inter_rhs_tmp_bits_U", "Parent" : "53"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502", "Parent" : "0", "Child" : ["92", "93", "94", "95", "96", "97", "118", "124", "125", "126", "127", "128"],
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
			{"ID" : "21", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "42", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.z0_digits_data_V_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.z2_digits_data_V_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.cross_mul_digits_dat_U", "Parent" : "91"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.inter_lhs_digits_dat_U", "Parent" : "91"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.inter_rhs_digits_dat_U", "Parent" : "91"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0", "Parent" : "91", "Child" : ["98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "114", "116"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "16"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "17"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "18"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "19"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "20"}]},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "97"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "97"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "97"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "97"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "97"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "97"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "97"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "97"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "97"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "97", "Child" : ["110", "111", "112"],
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
					{"ID" : "112", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "109", "Child" : ["113"],
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
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "97", "Child" : ["115"],
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
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "114"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "97", "Child" : ["117"],
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
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "116"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0", "Parent" : "91", "Child" : ["119", "120", "121", "122", "123"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "48"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "16",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "49"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "17",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "50"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "18"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "51"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "19"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "52"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "20"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "118"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "118"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "118",
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
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "118"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.z0_tmp_bits_U", "Parent" : "91"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.z2_tmp_bits_U", "Parent" : "91"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.cross_mul_tmp_bits_U", "Parent" : "91"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.inter_lhs_tmp_bits_U", "Parent" : "91"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_502.inter_rhs_tmp_bits_U", "Parent" : "91"}]}


set ArgLastReadFirstWriteLatency {
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
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "988", "Max" : "1110"}
	, {"Name" : "Interval", "Min" : "988", "Max" : "1110"}
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
	lhs_tmp_bits_read { ap_none {  { lhs_tmp_bits_read in_data 0 2 } } }
	lhs_digits_data_V { ap_memory {  { lhs_digits_data_V_address0 mem_address 1 5 }  { lhs_digits_data_V_ce0 mem_ce 1 1 }  { lhs_digits_data_V_q0 mem_dout 0 64 } } }
	rhs_tmp_bits_read { ap_none {  { rhs_tmp_bits_read in_data 0 2 } } }
	rhs_digits_data_V { ap_memory {  { rhs_digits_data_V_address0 mem_address 1 5 }  { rhs_digits_data_V_ce0 mem_ce 1 1 }  { rhs_digits_data_V_q0 mem_dout 0 64 } } }
	z0_digits_data_V { ap_memory {  { z0_digits_data_V_address0 mem_address 1 5 }  { z0_digits_data_V_ce0 mem_ce 1 1 }  { z0_digits_data_V_we0 mem_we 1 1 }  { z0_digits_data_V_d0 mem_din 1 64 } } }
	z2_digits_data_V { ap_memory {  { z2_digits_data_V_address0 mem_address 1 5 }  { z2_digits_data_V_ce0 mem_ce 1 1 }  { z2_digits_data_V_we0 mem_we 1 1 }  { z2_digits_data_V_d0 mem_din 1 64 } } }
	cross_mul_digits_dat { ap_memory {  { cross_mul_digits_dat_address0 mem_address 1 5 }  { cross_mul_digits_dat_ce0 mem_ce 1 1 }  { cross_mul_digits_dat_we0 mem_we 1 1 }  { cross_mul_digits_dat_d0 mem_din 1 64 } } }
	inter_lhs_digits_dat { ap_memory {  { inter_lhs_digits_dat_address0 mem_address 1 5 }  { inter_lhs_digits_dat_ce0 mem_ce 1 1 }  { inter_lhs_digits_dat_we0 mem_we 1 1 }  { inter_lhs_digits_dat_d0 mem_din 1 64 } } }
	inter_rhs_digits_dat { ap_memory {  { inter_rhs_digits_dat_address0 mem_address 1 5 }  { inter_rhs_digits_dat_ce0 mem_ce 1 1 }  { inter_rhs_digits_dat_we0 mem_we 1 1 }  { inter_rhs_digits_dat_d0 mem_din 1 64 } } }
}
