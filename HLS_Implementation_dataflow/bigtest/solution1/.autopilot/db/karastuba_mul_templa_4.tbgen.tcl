set moduleName karastuba_mul_templa_4
set isTopModule 0
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
set C_modelName {karastuba_mul_templa.4}
set C_modelType { void 0 }
set C_modelArgList {
	{ lhs_tmp_bits_read int 2 regular  }
	{ lhs_digits_data_V int 64 regular {array 32 { 1 3 } 1 1 }  }
	{ rhs_tmp_bits_read int 2 regular  }
	{ rhs_digits_data_V int 64 regular {array 32 { 1 3 } 1 1 }  }
	{ res_tmp_bits int 32 regular {pointer 1}  }
	{ res_digits_data_V int 64 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lhs_tmp_bits_read", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "lhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rhs_tmp_bits_read", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "rhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "res_tmp_bits", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ lhs_tmp_bits_read sc_in sc_lv 2 signal 0 } 
	{ lhs_digits_data_V_address0 sc_out sc_lv 5 signal 1 } 
	{ lhs_digits_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ lhs_digits_data_V_d0 sc_out sc_lv 64 signal 1 } 
	{ lhs_digits_data_V_q0 sc_in sc_lv 64 signal 1 } 
	{ lhs_digits_data_V_we0 sc_out sc_logic 1 signal 1 } 
	{ lhs_digits_data_V_address1 sc_out sc_lv 5 signal 1 } 
	{ lhs_digits_data_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ lhs_digits_data_V_d1 sc_out sc_lv 64 signal 1 } 
	{ lhs_digits_data_V_q1 sc_in sc_lv 64 signal 1 } 
	{ lhs_digits_data_V_we1 sc_out sc_logic 1 signal 1 } 
	{ rhs_tmp_bits_read sc_in sc_lv 2 signal 2 } 
	{ rhs_digits_data_V_address0 sc_out sc_lv 5 signal 3 } 
	{ rhs_digits_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ rhs_digits_data_V_d0 sc_out sc_lv 64 signal 3 } 
	{ rhs_digits_data_V_q0 sc_in sc_lv 64 signal 3 } 
	{ rhs_digits_data_V_we0 sc_out sc_logic 1 signal 3 } 
	{ rhs_digits_data_V_address1 sc_out sc_lv 5 signal 3 } 
	{ rhs_digits_data_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ rhs_digits_data_V_d1 sc_out sc_lv 64 signal 3 } 
	{ rhs_digits_data_V_q1 sc_in sc_lv 64 signal 3 } 
	{ rhs_digits_data_V_we1 sc_out sc_logic 1 signal 3 } 
	{ res_tmp_bits sc_out sc_lv 32 signal 4 } 
	{ res_digits_data_V_address0 sc_out sc_lv 6 signal 5 } 
	{ res_digits_data_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ res_digits_data_V_d0 sc_out sc_lv 64 signal 5 } 
	{ res_digits_data_V_q0 sc_in sc_lv 64 signal 5 } 
	{ res_digits_data_V_we0 sc_out sc_logic 1 signal 5 } 
	{ res_digits_data_V_address1 sc_out sc_lv 6 signal 5 } 
	{ res_digits_data_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ res_digits_data_V_d1 sc_out sc_lv 64 signal 5 } 
	{ res_digits_data_V_q1 sc_in sc_lv 64 signal 5 } 
	{ res_digits_data_V_we1 sc_out sc_logic 1 signal 5 } 
	{ lhs_tmp_bits_read_ap_vld sc_in sc_logic 1 invld 0 } 
	{ rhs_tmp_bits_read_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ res_tmp_bits_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "lhs_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "lhs_tmp_bits_read", "role": "default" }} , 
 	{ "name": "lhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "lhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "lhs_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "d0" }} , 
 	{ "name": "lhs_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "q0" }} , 
 	{ "name": "lhs_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "we0" }} , 
 	{ "name": "lhs_digits_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "address1" }} , 
 	{ "name": "lhs_digits_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "ce1" }} , 
 	{ "name": "lhs_digits_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "d1" }} , 
 	{ "name": "lhs_digits_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "q1" }} , 
 	{ "name": "lhs_digits_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "we1" }} , 
 	{ "name": "rhs_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rhs_tmp_bits_read", "role": "default" }} , 
 	{ "name": "rhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "rhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "rhs_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "d0" }} , 
 	{ "name": "rhs_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "q0" }} , 
 	{ "name": "rhs_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "we0" }} , 
 	{ "name": "rhs_digits_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "address1" }} , 
 	{ "name": "rhs_digits_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "ce1" }} , 
 	{ "name": "rhs_digits_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "d1" }} , 
 	{ "name": "rhs_digits_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "q1" }} , 
 	{ "name": "rhs_digits_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "we1" }} , 
 	{ "name": "res_tmp_bits", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_tmp_bits", "role": "default" }} , 
 	{ "name": "res_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "address0" }} , 
 	{ "name": "res_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "ce0" }} , 
 	{ "name": "res_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "d0" }} , 
 	{ "name": "res_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "q0" }} , 
 	{ "name": "res_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "we0" }} , 
 	{ "name": "res_digits_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "address1" }} , 
 	{ "name": "res_digits_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "ce1" }} , 
 	{ "name": "res_digits_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "d1" }} , 
 	{ "name": "res_digits_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "q1" }} , 
 	{ "name": "res_digits_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "we1" }} , 
 	{ "name": "lhs_tmp_bits_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "lhs_tmp_bits_read", "role": "ap_vld" }} , 
 	{ "name": "rhs_tmp_bits_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rhs_tmp_bits_read", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "res_tmp_bits_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_tmp_bits", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "135", "141", "142", "143", "144", "145"],
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
			{"ID" : "6", "Name" : "karastuba_mul_MUL_st_1_U0"}],
		"OutputProcess" : [
			{"ID" : "135", "Name" : "karastuba_mul_ADD_SU_1_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z0_digits_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_digits_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_mul_digits_dat_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter_lhs_digits_dat_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter_rhs_digits_dat_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "59", "97"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "1"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "2"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "3"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "4"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "5"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.lhs0_digits_data_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.lhs1_digits_data_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.rhs0_digits_data_V_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.rhs1_digits_data_V_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.lhs0_tmp_digits_data_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.lhs1_tmp_digits_data_U", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.rhs0_tmp_digits_data_U", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.rhs1_tmp_digits_data_U", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.p_z0_digits_data_V_i_U", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.p_z2_digits_data_V_i_U", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.p_cross_mul_digits_da_U", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480", "Parent" : "6", "Child" : ["19", "20", "21"],
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
					{"ID" : "21", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add0_digits_data_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add1_digits_data_V_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182", "Parent" : "18", "Child" : ["22", "23", "24", "25", "26", "27", "48", "54", "55", "56", "57", "58"],
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
			{"ID" : "27", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "48", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "21"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "21", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "44", "46"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "22"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "23"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "24"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "25"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "26"}]},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "27"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "27"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "27"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "27"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "27"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "27"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "27"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "27"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "27", "Child" : ["40", "41", "42"],
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
					{"ID" : "42", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "40", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "39", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "27", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "44"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "27", "Child" : ["47"],
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
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "21", "Child" : ["49", "50", "51", "52", "53"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "54"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "22",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "55"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "23",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "56"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "24"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "57"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "25"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "58"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "26"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "48",
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
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "48"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "21"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "21"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "21"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "21"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "21"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490", "Parent" : "6", "Child" : ["60", "61", "62", "63", "64", "65", "86", "92", "93", "94", "95", "96"],
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
			{"ID" : "27", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "48", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_digits_data_V_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_digits_data_V_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_digits_dat_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_digits_dat_U", "Parent" : "59"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_digits_dat_U", "Parent" : "59"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0", "Parent" : "59", "Child" : ["66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "82", "84"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "22"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "23"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "24"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "25"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "26"}]},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "65"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "65"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "65"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "65"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "65"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "65"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "65"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "65"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "65", "Child" : ["78", "79", "80"],
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
					{"ID" : "80", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "77", "Child" : ["81"],
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
	{"ID" : "81", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "80"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "65", "Child" : ["83"],
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
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "82"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "65", "Child" : ["85"],
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
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "84"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0", "Parent" : "59", "Child" : ["87", "88", "89", "90", "91"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "54"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "22",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "55"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "23",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "56"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "24"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "57"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "25"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "58"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "26"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "86"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "86",
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
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "86"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_tmp_bits_U", "Parent" : "59"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_tmp_bits_U", "Parent" : "59"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_tmp_bits_U", "Parent" : "59"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_tmp_bits_U", "Parent" : "59"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_tmp_bits_U", "Parent" : "59"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502", "Parent" : "6", "Child" : ["98", "99", "100", "101", "102", "103", "124", "130", "131", "132", "133", "134"],
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
			{"ID" : "27", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "48", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_digits_data_V_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_digits_data_V_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_digits_dat_U", "Parent" : "97"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_digits_dat_U", "Parent" : "97"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_digits_dat_U", "Parent" : "97"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0", "Parent" : "97", "Child" : ["104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "120", "122"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "22"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "23"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "24"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "25"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "26"}]},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "103"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "103"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "103"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "103"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "103"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "103"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "103"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "103"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "103"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "103", "Child" : ["116", "117", "118"],
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
					{"ID" : "118", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "115", "Child" : ["119"],
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
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "118"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "103", "Child" : ["121"],
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
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "120"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "103", "Child" : ["123"],
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
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "122"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0", "Parent" : "97", "Child" : ["125", "126", "127", "128", "129"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "54"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "22",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "55"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "23",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "56"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "24"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "57"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "25"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "58"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "26"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "124"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "124",
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
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "124"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_tmp_bits_U", "Parent" : "97"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_tmp_bits_U", "Parent" : "97"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_tmp_bits_U", "Parent" : "97"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_tmp_bits_U", "Parent" : "97"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_tmp_bits_U", "Parent" : "97"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_ADD_SU_1_U0", "Parent" : "0", "Child" : ["136", "137", "138", "139", "140"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "141"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "142"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "143"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "3"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "144"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "4"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "145"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "5"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_ADD_SU_1_U0.add2_digits_data_V_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_ADD_SU_1_U0.z1_digits_data_V_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_ADD_SU_1_U0.p_res_digits_data_V_U", "Parent" : "135"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_ADD_SU_1_U0.grp_CAT_I_I_I_O_1_fu_428", "Parent" : "135",
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
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_ADD_SU_1_U0.karastuba_mul_mulsc4_U80", "Parent" : "135"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z0_tmp_bits_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_tmp_bits_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_mul_tmp_bits_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter_lhs_tmp_bits_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter_rhs_tmp_bits_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1435", "Max" : "1689"}
	, {"Name" : "Interval", "Min" : "989", "Max" : "1111"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	lhs_tmp_bits_read { ap_none {  { lhs_tmp_bits_read in_data 0 2 }  { lhs_tmp_bits_read_ap_vld in_vld 0 1 } } }
	lhs_digits_data_V { ap_memory {  { lhs_digits_data_V_address0 mem_address 1 5 }  { lhs_digits_data_V_ce0 mem_ce 1 1 }  { lhs_digits_data_V_d0 mem_din 1 64 }  { lhs_digits_data_V_q0 mem_dout 0 64 }  { lhs_digits_data_V_we0 mem_we 1 1 }  { lhs_digits_data_V_address1 mem_address 1 5 }  { lhs_digits_data_V_ce1 mem_ce 1 1 }  { lhs_digits_data_V_d1 mem_din 1 64 }  { lhs_digits_data_V_q1 mem_dout 0 64 }  { lhs_digits_data_V_we1 mem_we 1 1 } } }
	rhs_tmp_bits_read { ap_none {  { rhs_tmp_bits_read in_data 0 2 }  { rhs_tmp_bits_read_ap_vld in_vld 0 1 } } }
	rhs_digits_data_V { ap_memory {  { rhs_digits_data_V_address0 mem_address 1 5 }  { rhs_digits_data_V_ce0 mem_ce 1 1 }  { rhs_digits_data_V_d0 mem_din 1 64 }  { rhs_digits_data_V_q0 mem_dout 0 64 }  { rhs_digits_data_V_we0 mem_we 1 1 }  { rhs_digits_data_V_address1 mem_address 1 5 }  { rhs_digits_data_V_ce1 mem_ce 1 1 }  { rhs_digits_data_V_d1 mem_din 1 64 }  { rhs_digits_data_V_q1 mem_dout 0 64 }  { rhs_digits_data_V_we1 mem_we 1 1 } } }
	res_tmp_bits { ap_vld {  { res_tmp_bits out_data 1 32 }  { res_tmp_bits_ap_vld out_vld 1 1 } } }
	res_digits_data_V { ap_memory {  { res_digits_data_V_address0 mem_address 1 6 }  { res_digits_data_V_ce0 mem_ce 1 1 }  { res_digits_data_V_d0 mem_din 1 64 }  { res_digits_data_V_q0 mem_dout 0 64 }  { res_digits_data_V_we0 mem_we 1 1 }  { res_digits_data_V_address1 mem_address 1 6 }  { res_digits_data_V_ce1 mem_ce 1 1 }  { res_digits_data_V_d1 mem_din 1 64 }  { res_digits_data_V_q1 mem_dout 0 64 }  { res_digits_data_V_we1 mem_we 1 1 } } }
}
