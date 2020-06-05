set moduleName karastuba_mul_templa_1
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
set C_modelName {karastuba_mul_templa.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ lhs0_tmp_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ lhs1_tmp_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ rhs0_tmp_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ rhs1_tmp_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ cross_mul_tmp_bits int 32 regular {pointer 1}  }
	{ cross_mul_digits_data_V int 64 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lhs0_tmp_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "lhs1_tmp_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rhs0_tmp_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rhs1_tmp_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "cross_mul_tmp_bits", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cross_mul_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ lhs0_tmp_digits_data_V_address0 sc_out sc_lv 4 signal 0 } 
	{ lhs0_tmp_digits_data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ lhs0_tmp_digits_data_V_q0 sc_in sc_lv 64 signal 0 } 
	{ lhs1_tmp_digits_data_V_address0 sc_out sc_lv 4 signal 1 } 
	{ lhs1_tmp_digits_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ lhs1_tmp_digits_data_V_q0 sc_in sc_lv 64 signal 1 } 
	{ rhs0_tmp_digits_data_V_address0 sc_out sc_lv 4 signal 2 } 
	{ rhs0_tmp_digits_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ rhs0_tmp_digits_data_V_q0 sc_in sc_lv 64 signal 2 } 
	{ rhs1_tmp_digits_data_V_address0 sc_out sc_lv 4 signal 3 } 
	{ rhs1_tmp_digits_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ rhs1_tmp_digits_data_V_q0 sc_in sc_lv 64 signal 3 } 
	{ cross_mul_tmp_bits sc_out sc_lv 32 signal 4 } 
	{ cross_mul_tmp_bits_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ cross_mul_digits_data_V_address0 sc_out sc_lv 5 signal 5 } 
	{ cross_mul_digits_data_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ cross_mul_digits_data_V_we0 sc_out sc_logic 1 signal 5 } 
	{ cross_mul_digits_data_V_d0 sc_out sc_lv 64 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "lhs0_tmp_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "lhs0_tmp_digits_data_V", "role": "address0" }} , 
 	{ "name": "lhs0_tmp_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs0_tmp_digits_data_V", "role": "ce0" }} , 
 	{ "name": "lhs0_tmp_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs0_tmp_digits_data_V", "role": "q0" }} , 
 	{ "name": "lhs1_tmp_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "lhs1_tmp_digits_data_V", "role": "address0" }} , 
 	{ "name": "lhs1_tmp_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs1_tmp_digits_data_V", "role": "ce0" }} , 
 	{ "name": "lhs1_tmp_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs1_tmp_digits_data_V", "role": "q0" }} , 
 	{ "name": "rhs0_tmp_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rhs0_tmp_digits_data_V", "role": "address0" }} , 
 	{ "name": "rhs0_tmp_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs0_tmp_digits_data_V", "role": "ce0" }} , 
 	{ "name": "rhs0_tmp_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs0_tmp_digits_data_V", "role": "q0" }} , 
 	{ "name": "rhs1_tmp_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rhs1_tmp_digits_data_V", "role": "address0" }} , 
 	{ "name": "rhs1_tmp_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs1_tmp_digits_data_V", "role": "ce0" }} , 
 	{ "name": "rhs1_tmp_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs1_tmp_digits_data_V", "role": "q0" }} , 
 	{ "name": "cross_mul_tmp_bits", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cross_mul_tmp_bits", "role": "default" }} , 
 	{ "name": "cross_mul_tmp_bits_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "cross_mul_tmp_bits", "role": "ap_vld" }} , 
 	{ "name": "cross_mul_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "address0" }} , 
 	{ "name": "cross_mul_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "ce0" }} , 
 	{ "name": "cross_mul_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "we0" }} , 
 	{ "name": "cross_mul_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
					{"ID" : "3", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_tmp_bits"}]},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_karastuba_mul_templa_5_fu_182", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add0_digits_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add1_digits_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "30", "36", "37", "38", "39", "40"],
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
			{"ID" : "9", "Name" : "karastuba_mul_MUL_st_2_U0"}],
		"OutputProcess" : [
			{"ID" : "30", "Name" : "karastuba_mul_ADD_SU_2_U0"}],
		"Port" : [
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "lhs_digits_data_V"}]},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "karastuba_mul_MUL_st_2_U0", "Port" : "rhs_digits_data_V"}]},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_tmp_bits"}]},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "karastuba_mul_ADD_SU_2_U0", "Port" : "res_digits_data_V"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.z0_digits_data_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.z2_digits_data_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.cross_mul_digits_dat_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.inter_lhs_digits_dat_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.inter_rhs_digits_dat_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0", "Parent" : "3", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "26", "28"],
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
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "4"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "5"},
			{"Name" : "cross_mul_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "6"},
			{"Name" : "inter_lhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "7"},
			{"Name" : "inter_rhs_digits_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "8"}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_digits_data_V_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_digits_data_V_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_digits_data_V_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_digits_data_V_U", "Parent" : "9"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs0_tmp_digits_data_U", "Parent" : "9"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.lhs1_tmp_digits_data_U", "Parent" : "9"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs0_tmp_digits_data_U", "Parent" : "9"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.rhs1_tmp_digits_data_U", "Parent" : "9"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_U", "Parent" : "9"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.res_digits_data_V_as_1_U", "Parent" : "9"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.p_cross_mul_digits_da_U", "Parent" : "9"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476", "Parent" : "9", "Child" : ["22", "23", "24"],
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
					{"ID" : "24", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add0_digits_data_V_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.add1_digits_data_V_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180", "Parent" : "21", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_karastuba_mul_templa_2_fu_476.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485", "Parent" : "9", "Child" : ["27"],
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
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_485.karastuba_mul_mulbkb_U5", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496", "Parent" : "9", "Child" : ["29"],
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
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_MUL_st_2_U0.grp_mul_I_O_fu_496.karastuba_mul_mulbkb_U5", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0", "Parent" : "3", "Child" : ["31", "32", "33", "34", "35"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "36"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "37"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "38"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "6"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "39"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "7"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "40"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "8"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.add2_digits_data_V_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.z1_digits_data_V_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.p_res_digits_data_V_U", "Parent" : "30"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "30",
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
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.karastuba_mul_ADD_SU_2_U0.karastuba_mul_mulsc4_U33", "Parent" : "30"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.z0_tmp_bits_U", "Parent" : "3"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.z2_tmp_bits_U", "Parent" : "3"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.cross_mul_tmp_bits_U", "Parent" : "3"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.inter_lhs_tmp_bits_U", "Parent" : "3"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_5_fu_182.inter_rhs_tmp_bits_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
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
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "805", "Max" : "927"}
	, {"Name" : "Interval", "Min" : "805", "Max" : "927"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	lhs0_tmp_digits_data_V { ap_memory {  { lhs0_tmp_digits_data_V_address0 mem_address 1 4 }  { lhs0_tmp_digits_data_V_ce0 mem_ce 1 1 }  { lhs0_tmp_digits_data_V_q0 mem_dout 0 64 } } }
	lhs1_tmp_digits_data_V { ap_memory {  { lhs1_tmp_digits_data_V_address0 mem_address 1 4 }  { lhs1_tmp_digits_data_V_ce0 mem_ce 1 1 }  { lhs1_tmp_digits_data_V_q0 mem_dout 0 64 } } }
	rhs0_tmp_digits_data_V { ap_memory {  { rhs0_tmp_digits_data_V_address0 mem_address 1 4 }  { rhs0_tmp_digits_data_V_ce0 mem_ce 1 1 }  { rhs0_tmp_digits_data_V_q0 mem_dout 0 64 } } }
	rhs1_tmp_digits_data_V { ap_memory {  { rhs1_tmp_digits_data_V_address0 mem_address 1 4 }  { rhs1_tmp_digits_data_V_ce0 mem_ce 1 1 }  { rhs1_tmp_digits_data_V_q0 mem_dout 0 64 } } }
	cross_mul_tmp_bits { ap_vld {  { cross_mul_tmp_bits out_data 1 32 }  { cross_mul_tmp_bits_ap_vld out_vld 1 1 } } }
	cross_mul_digits_data_V { ap_memory {  { cross_mul_digits_data_V_address0 mem_address 1 5 }  { cross_mul_digits_data_V_ce0 mem_ce 1 1 }  { cross_mul_digits_data_V_we0 mem_we 1 1 }  { cross_mul_digits_data_V_d0 mem_din 1 64 } } }
}
