set moduleName karastuba_mul_templa_3
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
set C_modelName {karastuba_mul_templa.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ lhs_digits_data_V int 64 regular {array 64 { 1 3 } 1 1 }  }
	{ rhs_digits_data_V int 64 regular {array 64 { 1 3 } 1 1 }  }
	{ res_digits_data_V int 64 regular {array 128 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "res_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ lhs_digits_data_V_address0 sc_out sc_lv 6 signal 0 } 
	{ lhs_digits_data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ lhs_digits_data_V_d0 sc_out sc_lv 64 signal 0 } 
	{ lhs_digits_data_V_q0 sc_in sc_lv 64 signal 0 } 
	{ lhs_digits_data_V_we0 sc_out sc_logic 1 signal 0 } 
	{ lhs_digits_data_V_address1 sc_out sc_lv 6 signal 0 } 
	{ lhs_digits_data_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ lhs_digits_data_V_d1 sc_out sc_lv 64 signal 0 } 
	{ lhs_digits_data_V_q1 sc_in sc_lv 64 signal 0 } 
	{ lhs_digits_data_V_we1 sc_out sc_logic 1 signal 0 } 
	{ rhs_digits_data_V_address0 sc_out sc_lv 6 signal 1 } 
	{ rhs_digits_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ rhs_digits_data_V_d0 sc_out sc_lv 64 signal 1 } 
	{ rhs_digits_data_V_q0 sc_in sc_lv 64 signal 1 } 
	{ rhs_digits_data_V_we0 sc_out sc_logic 1 signal 1 } 
	{ rhs_digits_data_V_address1 sc_out sc_lv 6 signal 1 } 
	{ rhs_digits_data_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ rhs_digits_data_V_d1 sc_out sc_lv 64 signal 1 } 
	{ rhs_digits_data_V_q1 sc_in sc_lv 64 signal 1 } 
	{ rhs_digits_data_V_we1 sc_out sc_logic 1 signal 1 } 
	{ res_digits_data_V_address0 sc_out sc_lv 7 signal 2 } 
	{ res_digits_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ res_digits_data_V_d0 sc_out sc_lv 64 signal 2 } 
	{ res_digits_data_V_q0 sc_in sc_lv 64 signal 2 } 
	{ res_digits_data_V_we0 sc_out sc_logic 1 signal 2 } 
	{ res_digits_data_V_address1 sc_out sc_lv 7 signal 2 } 
	{ res_digits_data_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ res_digits_data_V_d1 sc_out sc_lv 64 signal 2 } 
	{ res_digits_data_V_q1 sc_in sc_lv 64 signal 2 } 
	{ res_digits_data_V_we1 sc_out sc_logic 1 signal 2 } 
	{ lhs_digits_data_V_empty_n sc_in sc_logic 1 signal -1 } 
	{ lhs_digits_data_V_read sc_out sc_logic 1 signal -1 } 
	{ rhs_digits_data_V_empty_n sc_in sc_logic 1 signal -1 } 
	{ rhs_digits_data_V_read sc_out sc_logic 1 signal -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ res_digits_data_V_full_n sc_in sc_logic 1 signal -1 } 
	{ res_digits_data_V_write sc_out sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "lhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "lhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "lhs_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "d0" }} , 
 	{ "name": "lhs_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "q0" }} , 
 	{ "name": "lhs_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "we0" }} , 
 	{ "name": "lhs_digits_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "address1" }} , 
 	{ "name": "lhs_digits_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "ce1" }} , 
 	{ "name": "lhs_digits_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "d1" }} , 
 	{ "name": "lhs_digits_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "q1" }} , 
 	{ "name": "lhs_digits_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "we1" }} , 
 	{ "name": "rhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "rhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "rhs_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "d0" }} , 
 	{ "name": "rhs_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "q0" }} , 
 	{ "name": "rhs_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "we0" }} , 
 	{ "name": "rhs_digits_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "address1" }} , 
 	{ "name": "rhs_digits_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "ce1" }} , 
 	{ "name": "rhs_digits_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "d1" }} , 
 	{ "name": "rhs_digits_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "q1" }} , 
 	{ "name": "rhs_digits_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "we1" }} , 
 	{ "name": "res_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "address0" }} , 
 	{ "name": "res_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "ce0" }} , 
 	{ "name": "res_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "d0" }} , 
 	{ "name": "res_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "q0" }} , 
 	{ "name": "res_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "we0" }} , 
 	{ "name": "res_digits_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "address1" }} , 
 	{ "name": "res_digits_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "ce1" }} , 
 	{ "name": "res_digits_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "d1" }} , 
 	{ "name": "res_digits_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "q1" }} , 
 	{ "name": "res_digits_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "we1" }} , 
 	{ "name": "lhs_digits_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V_empty_n", "role": "default" }} , 
 	{ "name": "lhs_digits_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V_read", "role": "default" }} , 
 	{ "name": "rhs_digits_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V_empty_n", "role": "default" }} , 
 	{ "name": "rhs_digits_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V_read", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "res_digits_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V_full_n", "role": "default" }} , 
 	{ "name": "res_digits_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V_write", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "459", "464", "465", "466"],
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
			{"ID" : "6", "Name" : "karastuba_mul_MUL_st_U0"}],
		"OutputProcess" : [
			{"ID" : "459", "Name" : "karastuba_mul_ADD_SU_U0"}],
		"Port" : [
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "karastuba_mul_MUL_st_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "karastuba_mul_MUL_st_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "459", "SubInstance" : "karastuba_mul_ADD_SU_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z0_digits_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_digits_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_mul_digits_dat_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter_lhs_digits_dat_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inter_rhs_digits_dat_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "167", "313"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "459", "DependentChan" : "1"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "459", "DependentChan" : "2"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "459", "DependentChan" : "3"},
			{"Name" : "inter_lhs_digits_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_rhs_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.lhs0_digits_data_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.lhs1_digits_data_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.rhs0_digits_data_V_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.rhs1_digits_data_V_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.lhs0_tmp_digits_data_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.lhs1_tmp_digits_data_U", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.rhs0_tmp_digits_data_U", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.rhs1_tmp_digits_data_U", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.p_z0_digits_data_V_U", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.p_z2_digits_data_V_U", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.p_cross_mul_digits_da_U", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462", "Parent" : "6", "Child" : ["19", "20", "21"],
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
					{"ID" : "21", "SubInstance" : "grp_karastuba_mul_templa_4_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_karastuba_mul_templa_4_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.add0_digits_data_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.add1_digits_data_V_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182", "Parent" : "18", "Child" : ["22", "23", "24", "25", "26", "27", "156", "162", "163", "164", "165", "166"],
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
			{"ID" : "27", "Name" : "karastuba_mul_MUL_st_1_U0"}],
		"OutputProcess" : [
			{"ID" : "156", "Name" : "karastuba_mul_ADD_SU_1_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z0_digits_data_V_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z2_digits_data_V_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.cross_mul_digits_dat_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_lhs_digits_dat_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_rhs_digits_dat_U", "Parent" : "21"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0", "Parent" : "21", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "80", "118"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "22"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "23"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "24"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "25"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "26"}]},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs0_digits_data_V_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs1_digits_data_V_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs0_digits_data_V_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs1_digits_data_V_U", "Parent" : "27"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs0_tmp_digits_data_U", "Parent" : "27"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.lhs1_tmp_digits_data_U", "Parent" : "27"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs0_tmp_digits_data_U", "Parent" : "27"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.rhs1_tmp_digits_data_U", "Parent" : "27"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.p_z0_digits_data_V_i_U", "Parent" : "27"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.p_z2_digits_data_V_i_U", "Parent" : "27"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.p_cross_mul_digits_da_U", "Parent" : "27"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480", "Parent" : "27", "Child" : ["40", "41", "42"],
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
					{"ID" : "42", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "40", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add0_digits_data_V_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add1_digits_data_V_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182", "Parent" : "39", "Child" : ["43", "44", "45", "46", "47", "48", "69", "75", "76", "77", "78", "79"],
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
			{"ID" : "48", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "69", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "43", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "42"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "42"},
	{"ID" : "48", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "42", "Child" : ["49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "65", "67"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "43"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "44"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "45"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "46"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "47"}]},
	{"ID" : "49", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "48"},
	{"ID" : "53", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "48"},
	{"ID" : "54", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "48"},
	{"ID" : "55", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "48"},
	{"ID" : "56", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "48"},
	{"ID" : "57", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "48"},
	{"ID" : "58", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "48"},
	{"ID" : "59", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "48"},
	{"ID" : "60", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "48", "Child" : ["61", "62", "63"],
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
					{"ID" : "63", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "61", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "60", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "63"},
	{"ID" : "65", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "48", "Child" : ["66"],
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
	{"ID" : "66", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "65"},
	{"ID" : "67", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "48", "Child" : ["68"],
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
	{"ID" : "68", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "67"},
	{"ID" : "69", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "42", "Child" : ["70", "71", "72", "73", "74"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "75"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "43",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "76"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "44",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "77"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "45"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "78"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "46"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "79"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "47"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "70", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "69"},
	{"ID" : "73", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "69",
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
	{"ID" : "74", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "69"},
	{"ID" : "75", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "42"},
	{"ID" : "76", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "42"},
	{"ID" : "77", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "42"},
	{"ID" : "78", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "42"},
	{"ID" : "79", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "42"},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490", "Parent" : "27", "Child" : ["81", "82", "83", "84", "85", "86", "107", "113", "114", "115", "116", "117"],
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
			{"ID" : "48", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "69", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "81", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_digits_data_V_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_digits_data_V_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_digits_dat_U", "Parent" : "80"},
	{"ID" : "84", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_digits_dat_U", "Parent" : "80"},
	{"ID" : "85", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_digits_dat_U", "Parent" : "80"},
	{"ID" : "86", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0", "Parent" : "80", "Child" : ["87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "103", "105"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "43"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "44"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "45"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "46"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "47"}]},
	{"ID" : "87", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "86"},
	{"ID" : "90", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "86"},
	{"ID" : "91", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "86"},
	{"ID" : "92", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "86"},
	{"ID" : "93", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "86"},
	{"ID" : "94", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "86"},
	{"ID" : "95", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "86"},
	{"ID" : "96", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "86"},
	{"ID" : "97", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "86"},
	{"ID" : "98", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "86", "Child" : ["99", "100", "101"],
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
					{"ID" : "101", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "99", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "98", "Child" : ["102"],
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
	{"ID" : "102", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "101"},
	{"ID" : "103", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "86", "Child" : ["104"],
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
	{"ID" : "104", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "103"},
	{"ID" : "105", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "86", "Child" : ["106"],
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
	{"ID" : "106", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "105"},
	{"ID" : "107", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0", "Parent" : "80", "Child" : ["108", "109", "110", "111", "112"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "75"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "43",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "76"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "44",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "77"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "45"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "78"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "46"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "79"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "47"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "108", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "107"},
	{"ID" : "110", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "107"},
	{"ID" : "111", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "107",
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
	{"ID" : "112", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "107"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_tmp_bits_U", "Parent" : "80"},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_tmp_bits_U", "Parent" : "80"},
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_tmp_bits_U", "Parent" : "80"},
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_tmp_bits_U", "Parent" : "80"},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_tmp_bits_U", "Parent" : "80"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502", "Parent" : "27", "Child" : ["119", "120", "121", "122", "123", "124", "145", "151", "152", "153", "154", "155"],
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
			{"ID" : "48", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "69", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_digits_data_V_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_digits_data_V_U", "Parent" : "118"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_digits_dat_U", "Parent" : "118"},
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_digits_dat_U", "Parent" : "118"},
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_digits_dat_U", "Parent" : "118"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0", "Parent" : "118", "Child" : ["125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "141", "143"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "43"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "44"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "45"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "46"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "47"}]},
	{"ID" : "125", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "124"},
	{"ID" : "128", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "124"},
	{"ID" : "129", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "124"},
	{"ID" : "130", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "124"},
	{"ID" : "131", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "124"},
	{"ID" : "132", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "124"},
	{"ID" : "133", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "124"},
	{"ID" : "134", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "124"},
	{"ID" : "135", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "124"},
	{"ID" : "136", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "124", "Child" : ["137", "138", "139"],
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
					{"ID" : "139", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "137", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "136"},
	{"ID" : "139", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "136", "Child" : ["140"],
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
	{"ID" : "140", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "139"},
	{"ID" : "141", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "124", "Child" : ["142"],
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
	{"ID" : "142", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "141"},
	{"ID" : "143", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "124", "Child" : ["144"],
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
	{"ID" : "144", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "143"},
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0", "Parent" : "118", "Child" : ["146", "147", "148", "149", "150"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "75"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "43",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "76"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "44",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "77"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "45"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "78"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "46"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "79"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "47"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "146", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "145"},
	{"ID" : "149", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "145",
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
	{"ID" : "150", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "145"},
	{"ID" : "151", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_tmp_bits_U", "Parent" : "118"},
	{"ID" : "152", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_tmp_bits_U", "Parent" : "118"},
	{"ID" : "153", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_tmp_bits_U", "Parent" : "118"},
	{"ID" : "154", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_tmp_bits_U", "Parent" : "118"},
	{"ID" : "155", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_tmp_bits_U", "Parent" : "118"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0", "Parent" : "21", "Child" : ["157", "158", "159", "160", "161"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "162"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "22",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "163"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "23",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "164"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "24"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "165"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "25"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "166"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "26"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.add2_digits_data_V_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.z1_digits_data_V_U", "Parent" : "156"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.p_res_digits_data_V_U", "Parent" : "156"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.grp_CAT_I_I_I_O_1_fu_428", "Parent" : "156",
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
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.karastuba_mul_ADD_SU_1_U0.karastuba_mul_mulsc4_U80", "Parent" : "156"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z0_tmp_bits_U", "Parent" : "21"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.z2_tmp_bits_U", "Parent" : "21"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.cross_mul_tmp_bits_U", "Parent" : "21"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_lhs_tmp_bits_U", "Parent" : "21"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_fu_462.grp_karastuba_mul_templa_4_fu_182.inter_rhs_tmp_bits_U", "Parent" : "21"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472", "Parent" : "6", "Child" : ["168", "169", "170", "171", "172", "173", "302", "308", "309", "310", "311", "312"],
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
			{"ID" : "27", "Name" : "karastuba_mul_MUL_st_1_U0"}],
		"OutputProcess" : [
			{"ID" : "156", "Name" : "karastuba_mul_ADD_SU_1_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "173", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "173", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.z0_digits_data_V_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.z2_digits_data_V_U", "Parent" : "167"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.cross_mul_digits_dat_U", "Parent" : "167"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.inter_lhs_digits_dat_U", "Parent" : "167"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.inter_rhs_digits_dat_U", "Parent" : "167"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0", "Parent" : "167", "Child" : ["174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "226", "264"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "22"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "23"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "24"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "25"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "26"}]},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs0_digits_data_V_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs1_digits_data_V_U", "Parent" : "173"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs0_digits_data_V_U", "Parent" : "173"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs1_digits_data_V_U", "Parent" : "173"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs0_tmp_digits_data_U", "Parent" : "173"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.lhs1_tmp_digits_data_U", "Parent" : "173"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs0_tmp_digits_data_U", "Parent" : "173"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.rhs1_tmp_digits_data_U", "Parent" : "173"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.p_z0_digits_data_V_i_U", "Parent" : "173"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.p_z2_digits_data_V_i_U", "Parent" : "173"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.p_cross_mul_digits_da_U", "Parent" : "173"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480", "Parent" : "173", "Child" : ["186", "187", "188"],
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
					{"ID" : "188", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add0_digits_data_V_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add1_digits_data_V_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182", "Parent" : "185", "Child" : ["189", "190", "191", "192", "193", "194", "215", "221", "222", "223", "224", "225"],
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
			{"ID" : "48", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "69", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "189", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "188"},
	{"ID" : "191", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "188"},
	{"ID" : "192", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "188"},
	{"ID" : "193", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "188"},
	{"ID" : "194", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "188", "Child" : ["195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "211", "213"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "43"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "44"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "45"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "46"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "47"}]},
	{"ID" : "195", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "194"},
	{"ID" : "198", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "194"},
	{"ID" : "199", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "194"},
	{"ID" : "200", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "194"},
	{"ID" : "201", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "194"},
	{"ID" : "202", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "194"},
	{"ID" : "203", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "194"},
	{"ID" : "204", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "194"},
	{"ID" : "205", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "194"},
	{"ID" : "206", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "194", "Child" : ["207", "208", "209"],
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
					{"ID" : "209", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "207", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "206", "Child" : ["210"],
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
	{"ID" : "210", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "209"},
	{"ID" : "211", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "194", "Child" : ["212"],
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
	{"ID" : "212", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "211"},
	{"ID" : "213", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "194", "Child" : ["214"],
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
	{"ID" : "214", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "213"},
	{"ID" : "215", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "188", "Child" : ["216", "217", "218", "219", "220"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "75"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "43",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "76"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "44",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "77"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "45"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "78"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "46"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "79"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "47"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "216", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "215"},
	{"ID" : "219", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "215",
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
	{"ID" : "220", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "215"},
	{"ID" : "221", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "188"},
	{"ID" : "222", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "188"},
	{"ID" : "223", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "188"},
	{"ID" : "224", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "188"},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "188"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490", "Parent" : "173", "Child" : ["227", "228", "229", "230", "231", "232", "253", "259", "260", "261", "262", "263"],
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
			{"ID" : "48", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "69", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "232", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "232", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "227", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_digits_data_V_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_digits_data_V_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_digits_dat_U", "Parent" : "226"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_digits_dat_U", "Parent" : "226"},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_digits_dat_U", "Parent" : "226"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0", "Parent" : "226", "Child" : ["233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "249", "251"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "43"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "44"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "45"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "46"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "47"}]},
	{"ID" : "233", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "232"},
	{"ID" : "235", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "232"},
	{"ID" : "236", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "232"},
	{"ID" : "237", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "232"},
	{"ID" : "238", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "232"},
	{"ID" : "239", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "232"},
	{"ID" : "240", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "232"},
	{"ID" : "241", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "232"},
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "232"},
	{"ID" : "243", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "232"},
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "232", "Child" : ["245", "246", "247"],
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
					{"ID" : "247", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "245", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "244", "Child" : ["248"],
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
	{"ID" : "248", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "247"},
	{"ID" : "249", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "232", "Child" : ["250"],
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
	{"ID" : "250", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "249"},
	{"ID" : "251", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "232", "Child" : ["252"],
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
	{"ID" : "252", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "251"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0", "Parent" : "226", "Child" : ["254", "255", "256", "257", "258"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "75"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "43",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "76"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "44",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "77"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "45"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "78"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "46"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "79"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "47"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "254", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "253"},
	{"ID" : "256", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "253"},
	{"ID" : "257", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "253",
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
	{"ID" : "258", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "253"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_tmp_bits_U", "Parent" : "226"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_tmp_bits_U", "Parent" : "226"},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_tmp_bits_U", "Parent" : "226"},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_tmp_bits_U", "Parent" : "226"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_tmp_bits_U", "Parent" : "226"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502", "Parent" : "173", "Child" : ["265", "266", "267", "268", "269", "270", "291", "297", "298", "299", "300", "301"],
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
			{"ID" : "48", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "69", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_digits_data_V_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_digits_data_V_U", "Parent" : "264"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_digits_dat_U", "Parent" : "264"},
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_digits_dat_U", "Parent" : "264"},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_digits_dat_U", "Parent" : "264"},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0", "Parent" : "264", "Child" : ["271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "287", "289"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "43"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "44"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "45"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "46"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "47"}]},
	{"ID" : "271", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "270"},
	{"ID" : "273", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "270"},
	{"ID" : "274", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "270"},
	{"ID" : "275", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "270"},
	{"ID" : "276", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "270"},
	{"ID" : "277", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "270"},
	{"ID" : "278", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "270"},
	{"ID" : "279", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "270"},
	{"ID" : "280", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "270"},
	{"ID" : "281", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "270"},
	{"ID" : "282", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "270", "Child" : ["283", "284", "285"],
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
					{"ID" : "285", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "283", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "282"},
	{"ID" : "285", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "282", "Child" : ["286"],
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
	{"ID" : "286", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "285"},
	{"ID" : "287", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "270", "Child" : ["288"],
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
	{"ID" : "288", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "287"},
	{"ID" : "289", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "270", "Child" : ["290"],
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
	{"ID" : "290", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "289"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0", "Parent" : "264", "Child" : ["292", "293", "294", "295", "296"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "75"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "43",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "76"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "44",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "77"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "45"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "78"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "46"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "79"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "47"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "292", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "291"},
	{"ID" : "294", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "291"},
	{"ID" : "295", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "291",
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
	{"ID" : "296", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "291"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_tmp_bits_U", "Parent" : "264"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_tmp_bits_U", "Parent" : "264"},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_tmp_bits_U", "Parent" : "264"},
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_tmp_bits_U", "Parent" : "264"},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_tmp_bits_U", "Parent" : "264"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0", "Parent" : "167", "Child" : ["303", "304", "305", "306", "307"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "162"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "22",
				"SubConnect" : [
					{"ID" : "306", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "163"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "23",
				"SubConnect" : [
					{"ID" : "306", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "164"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "24"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "165"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "25"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "166"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "26"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.add2_digits_data_V_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.z1_digits_data_V_U", "Parent" : "302"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.p_res_digits_data_V_U", "Parent" : "302"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.grp_CAT_I_I_I_O_1_fu_428", "Parent" : "302",
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
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.karastuba_mul_ADD_SU_1_U0.karastuba_mul_mulsc4_U80", "Parent" : "302"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.z0_tmp_bits_U", "Parent" : "167"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.z2_tmp_bits_U", "Parent" : "167"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.cross_mul_tmp_bits_U", "Parent" : "167"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.inter_lhs_tmp_bits_U", "Parent" : "167"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_472.inter_rhs_tmp_bits_U", "Parent" : "167"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484", "Parent" : "6", "Child" : ["314", "315", "316", "317", "318", "319", "448", "454", "455", "456", "457", "458"],
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
			{"ID" : "27", "Name" : "karastuba_mul_MUL_st_1_U0"}],
		"OutputProcess" : [
			{"ID" : "156", "Name" : "karastuba_mul_ADD_SU_1_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "karastuba_mul_MUL_st_1_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "448", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "448", "SubInstance" : "karastuba_mul_ADD_SU_1_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.z0_digits_data_V_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.z2_digits_data_V_U", "Parent" : "313"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.cross_mul_digits_dat_U", "Parent" : "313"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.inter_lhs_digits_dat_U", "Parent" : "313"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.inter_rhs_digits_dat_U", "Parent" : "313"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0", "Parent" : "313", "Child" : ["320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "372", "410"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "22"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "23"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "24"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "25"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "26"}]},
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs0_digits_data_V_U", "Parent" : "319"},
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs1_digits_data_V_U", "Parent" : "319"},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs0_digits_data_V_U", "Parent" : "319"},
	{"ID" : "323", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs1_digits_data_V_U", "Parent" : "319"},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs0_tmp_digits_data_U", "Parent" : "319"},
	{"ID" : "325", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.lhs1_tmp_digits_data_U", "Parent" : "319"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs0_tmp_digits_data_U", "Parent" : "319"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.rhs1_tmp_digits_data_U", "Parent" : "319"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.p_z0_digits_data_V_i_U", "Parent" : "319"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.p_z2_digits_data_V_i_U", "Parent" : "319"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.p_cross_mul_digits_da_U", "Parent" : "319"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480", "Parent" : "319", "Child" : ["332", "333", "334"],
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
					{"ID" : "334", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add0_digits_data_V_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.add1_digits_data_V_U", "Parent" : "331"},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182", "Parent" : "331", "Child" : ["335", "336", "337", "338", "339", "340", "361", "367", "368", "369", "370", "371"],
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
			{"ID" : "48", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "69", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "361", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "361", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "335", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "334"},
	{"ID" : "337", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "334"},
	{"ID" : "338", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "334"},
	{"ID" : "339", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "334"},
	{"ID" : "340", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "334", "Child" : ["341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "357", "359"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "43"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "44"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "45"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "46"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "47"}]},
	{"ID" : "341", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "340"},
	{"ID" : "342", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "340"},
	{"ID" : "343", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "340"},
	{"ID" : "344", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "340"},
	{"ID" : "345", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "340"},
	{"ID" : "346", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "340"},
	{"ID" : "347", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "340"},
	{"ID" : "348", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "340"},
	{"ID" : "349", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "340"},
	{"ID" : "350", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "340"},
	{"ID" : "351", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "340"},
	{"ID" : "352", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "340", "Child" : ["353", "354", "355"],
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
					{"ID" : "355", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "353", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "352"},
	{"ID" : "354", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "352"},
	{"ID" : "355", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "352", "Child" : ["356"],
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
	{"ID" : "356", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "355"},
	{"ID" : "357", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "340", "Child" : ["358"],
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
	{"ID" : "358", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "357"},
	{"ID" : "359", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "340", "Child" : ["360"],
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
	{"ID" : "360", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "359"},
	{"ID" : "361", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "334", "Child" : ["362", "363", "364", "365", "366"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "75"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "43",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "76"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "44",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "77"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "45"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "78"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "46"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "79"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "47"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "362", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "361"},
	{"ID" : "363", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "361"},
	{"ID" : "364", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "361"},
	{"ID" : "365", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "361",
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
	{"ID" : "366", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "361"},
	{"ID" : "367", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "334"},
	{"ID" : "368", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "334"},
	{"ID" : "369", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "334"},
	{"ID" : "370", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "334"},
	{"ID" : "371", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_1_fu_480.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "334"},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490", "Parent" : "319", "Child" : ["373", "374", "375", "376", "377", "378", "399", "405", "406", "407", "408", "409"],
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
			{"ID" : "48", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "69", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "378", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "378", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "399", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "399", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_digits_data_V_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_digits_data_V_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_digits_dat_U", "Parent" : "372"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_digits_dat_U", "Parent" : "372"},
	{"ID" : "377", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_digits_dat_U", "Parent" : "372"},
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0", "Parent" : "372", "Child" : ["379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "395", "397"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "43"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "44"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "45"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "46"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "47"}]},
	{"ID" : "379", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "378"},
	{"ID" : "380", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "378"},
	{"ID" : "381", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "378"},
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "378"},
	{"ID" : "383", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "378"},
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "378"},
	{"ID" : "385", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "378"},
	{"ID" : "386", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "378"},
	{"ID" : "387", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "378"},
	{"ID" : "388", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "378"},
	{"ID" : "389", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "378"},
	{"ID" : "390", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "378", "Child" : ["391", "392", "393"],
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
					{"ID" : "393", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "391", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "390"},
	{"ID" : "392", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "390"},
	{"ID" : "393", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "390", "Child" : ["394"],
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
	{"ID" : "394", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "393"},
	{"ID" : "395", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "378", "Child" : ["396"],
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
	{"ID" : "396", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "395"},
	{"ID" : "397", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "378", "Child" : ["398"],
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
	{"ID" : "398", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "397"},
	{"ID" : "399", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0", "Parent" : "372", "Child" : ["400", "401", "402", "403", "404"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "75"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "43",
				"SubConnect" : [
					{"ID" : "403", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "76"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "44",
				"SubConnect" : [
					{"ID" : "403", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "77"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "45"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "78"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "46"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "79"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "47"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "400", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "399"},
	{"ID" : "402", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "399"},
	{"ID" : "403", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "399",
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
	{"ID" : "404", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "399"},
	{"ID" : "405", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z0_tmp_bits_U", "Parent" : "372"},
	{"ID" : "406", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.z2_tmp_bits_U", "Parent" : "372"},
	{"ID" : "407", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.cross_mul_tmp_bits_U", "Parent" : "372"},
	{"ID" : "408", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_lhs_tmp_bits_U", "Parent" : "372"},
	{"ID" : "409", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_490.inter_rhs_tmp_bits_U", "Parent" : "372"},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502", "Parent" : "319", "Child" : ["411", "412", "413", "414", "415", "416", "437", "443", "444", "445", "446", "447"],
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
			{"ID" : "48", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "69", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "437", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "437", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_digits_data_V_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_digits_data_V_U", "Parent" : "410"},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_digits_dat_U", "Parent" : "410"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_digits_dat_U", "Parent" : "410"},
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_digits_dat_U", "Parent" : "410"},
	{"ID" : "416", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0", "Parent" : "410", "Child" : ["417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "433", "435"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "43"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "44"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "45"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "46"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "47"}]},
	{"ID" : "417", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "416"},
	{"ID" : "419", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "416"},
	{"ID" : "420", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "416"},
	{"ID" : "421", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "416"},
	{"ID" : "422", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "416"},
	{"ID" : "423", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "416"},
	{"ID" : "424", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "416"},
	{"ID" : "425", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "416"},
	{"ID" : "426", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "416"},
	{"ID" : "427", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "416"},
	{"ID" : "428", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "416", "Child" : ["429", "430", "431"],
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
					{"ID" : "431", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "429", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "428"},
	{"ID" : "430", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "428"},
	{"ID" : "431", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "428", "Child" : ["432"],
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
	{"ID" : "432", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "431"},
	{"ID" : "433", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "416", "Child" : ["434"],
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
	{"ID" : "434", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "433"},
	{"ID" : "435", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "416", "Child" : ["436"],
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
	{"ID" : "436", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "435"},
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0", "Parent" : "410", "Child" : ["438", "439", "440", "441", "442"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "75"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "43",
				"SubConnect" : [
					{"ID" : "441", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "76"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "44",
				"SubConnect" : [
					{"ID" : "441", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "77"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "45"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "78"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "46"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "79"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "47"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "438", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "437"},
	{"ID" : "439", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "437"},
	{"ID" : "440", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "437"},
	{"ID" : "441", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "437",
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
	{"ID" : "442", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "437"},
	{"ID" : "443", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z0_tmp_bits_U", "Parent" : "410"},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.z2_tmp_bits_U", "Parent" : "410"},
	{"ID" : "445", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.cross_mul_tmp_bits_U", "Parent" : "410"},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_lhs_tmp_bits_U", "Parent" : "410"},
	{"ID" : "447", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_MUL_st_1_U0.grp_karastuba_mul_templa_5_fu_502.inter_rhs_tmp_bits_U", "Parent" : "410"},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0", "Parent" : "313", "Child" : ["449", "450", "451", "452", "453"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "162"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "22",
				"SubConnect" : [
					{"ID" : "452", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "163"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "23",
				"SubConnect" : [
					{"ID" : "452", "SubInstance" : "grp_CAT_I_I_I_O_1_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "164"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "24"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "165"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "25"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "166"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "26"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "449", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.add2_digits_data_V_U", "Parent" : "448"},
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.z1_digits_data_V_U", "Parent" : "448"},
	{"ID" : "451", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.p_res_digits_data_V_U", "Parent" : "448"},
	{"ID" : "452", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.grp_CAT_I_I_I_O_1_fu_428", "Parent" : "448",
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
	{"ID" : "453", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.karastuba_mul_ADD_SU_1_U0.karastuba_mul_mulsc4_U80", "Parent" : "448"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.z0_tmp_bits_U", "Parent" : "313"},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.z2_tmp_bits_U", "Parent" : "313"},
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.cross_mul_tmp_bits_U", "Parent" : "313"},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.inter_lhs_tmp_bits_U", "Parent" : "313"},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_MUL_st_U0.grp_karastuba_mul_templa_4_fu_484.inter_rhs_tmp_bits_U", "Parent" : "313"},
	{"ID" : "459", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_ADD_SU_U0", "Parent" : "0", "Child" : ["460", "461", "462", "463"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "464"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "463", "SubInstance" : "grp_CAT_I_I_I_O_fu_260", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "465"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "463", "SubInstance" : "grp_CAT_I_I_I_O_fu_260", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "466"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "3"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_ADD_SU_U0.add2_digits_data_V_U", "Parent" : "459"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_ADD_SU_U0.z1_digits_data_V_U", "Parent" : "459"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_ADD_SU_U0.p_res_digits_data_V_U", "Parent" : "459"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_ADD_SU_U0.grp_CAT_I_I_I_O_fu_260", "Parent" : "459",
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
	{"ID" : "464", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z0_tmp_bits_U", "Parent" : "0"},
	{"ID" : "465", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_tmp_bits_U", "Parent" : "0"},
	{"ID" : "466", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_mul_tmp_bits_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2769", "Max" : "3023"}
	, {"Name" : "Interval", "Min" : "1914", "Max" : "2168"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	lhs_digits_data_V { ap_memory {  { lhs_digits_data_V_address0 mem_address 1 6 }  { lhs_digits_data_V_ce0 mem_ce 1 1 }  { lhs_digits_data_V_d0 mem_din 1 64 }  { lhs_digits_data_V_q0 mem_dout 0 64 }  { lhs_digits_data_V_we0 mem_we 1 1 }  { lhs_digits_data_V_address1 mem_address 1 6 }  { lhs_digits_data_V_ce1 mem_ce 1 1 }  { lhs_digits_data_V_d1 mem_din 1 64 }  { lhs_digits_data_V_q1 mem_dout 0 64 }  { lhs_digits_data_V_we1 mem_we 1 1 } } }
	rhs_digits_data_V { ap_memory {  { rhs_digits_data_V_address0 mem_address 1 6 }  { rhs_digits_data_V_ce0 mem_ce 1 1 }  { rhs_digits_data_V_d0 mem_din 1 64 }  { rhs_digits_data_V_q0 mem_dout 0 64 }  { rhs_digits_data_V_we0 mem_we 1 1 }  { rhs_digits_data_V_address1 mem_address 1 6 }  { rhs_digits_data_V_ce1 mem_ce 1 1 }  { rhs_digits_data_V_d1 mem_din 1 64 }  { rhs_digits_data_V_q1 mem_dout 0 64 }  { rhs_digits_data_V_we1 mem_we 1 1 } } }
	res_digits_data_V { ap_memory {  { res_digits_data_V_address0 mem_address 1 7 }  { res_digits_data_V_ce0 mem_ce 1 1 }  { res_digits_data_V_d0 mem_din 1 64 }  { res_digits_data_V_q0 mem_dout 0 64 }  { res_digits_data_V_we0 mem_we 1 1 }  { res_digits_data_V_address1 mem_address 1 7 }  { res_digits_data_V_ce1 mem_ce 1 1 }  { res_digits_data_V_d1 mem_din 1 64 }  { res_digits_data_V_q1 mem_dout 0 64 }  { res_digits_data_V_we1 mem_we 1 1 } } }
}
