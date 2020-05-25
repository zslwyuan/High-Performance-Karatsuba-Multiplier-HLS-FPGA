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
	{ lhs_digits_data int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ rhs_digits_data int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ res_digits_data int 32 regular {array 32 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lhs_digits_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rhs_digits_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "res_digits_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ lhs_digits_data_address0 sc_out sc_lv 4 signal 0 } 
	{ lhs_digits_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ lhs_digits_data_q0 sc_in sc_lv 32 signal 0 } 
	{ rhs_digits_data_address0 sc_out sc_lv 4 signal 1 } 
	{ rhs_digits_data_ce0 sc_out sc_logic 1 signal 1 } 
	{ rhs_digits_data_q0 sc_in sc_lv 32 signal 1 } 
	{ res_digits_data_address0 sc_out sc_lv 5 signal 2 } 
	{ res_digits_data_ce0 sc_out sc_logic 1 signal 2 } 
	{ res_digits_data_we0 sc_out sc_logic 1 signal 2 } 
	{ res_digits_data_d0 sc_out sc_lv 32 signal 2 } 
	{ res_digits_data_q0 sc_in sc_lv 32 signal 2 } 
	{ res_digits_data_address1 sc_out sc_lv 5 signal 2 } 
	{ res_digits_data_ce1 sc_out sc_logic 1 signal 2 } 
	{ res_digits_data_we1 sc_out sc_logic 1 signal 2 } 
	{ res_digits_data_d1 sc_out sc_lv 32 signal 2 } 
	{ res_digits_data_q1 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "lhs_digits_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "lhs_digits_data", "role": "address0" }} , 
 	{ "name": "lhs_digits_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data", "role": "ce0" }} , 
 	{ "name": "lhs_digits_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lhs_digits_data", "role": "q0" }} , 
 	{ "name": "rhs_digits_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rhs_digits_data", "role": "address0" }} , 
 	{ "name": "rhs_digits_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data", "role": "ce0" }} , 
 	{ "name": "rhs_digits_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rhs_digits_data", "role": "q0" }} , 
 	{ "name": "res_digits_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "res_digits_data", "role": "address0" }} , 
 	{ "name": "res_digits_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data", "role": "ce0" }} , 
 	{ "name": "res_digits_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data", "role": "we0" }} , 
 	{ "name": "res_digits_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_digits_data", "role": "d0" }} , 
 	{ "name": "res_digits_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_digits_data", "role": "q0" }} , 
 	{ "name": "res_digits_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "res_digits_data", "role": "address1" }} , 
 	{ "name": "res_digits_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data", "role": "ce1" }} , 
 	{ "name": "res_digits_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data", "role": "we1" }} , 
 	{ "name": "res_digits_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_digits_data", "role": "d1" }} , 
 	{ "name": "res_digits_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_digits_data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "19", "21", "23"],
		"CDFG" : "karastuba_mul_templa_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "510", "EstimateLatencyMax" : "540",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_fu_427"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_436"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_447"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CAT_I_I_I_O_fu_458"}],
		"Port" : [
			{"Name" : "lhs_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_digits_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_CAT_I_I_I_O_fu_458", "Port" : "w_digits_data"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs0_digits_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs1_digits_data_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs0_digits_data_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs1_digits_data_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs0_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs1_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs0_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs1_tmp_digits_data_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z0_digits_data_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_digits_data_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_mul_digits_dat_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add2_digits_data_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z1_digits_data_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_427", "Parent" : "0", "Child" : ["15", "16", "17"],
		"CDFG" : "karastuba_mul_templa",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "307", "EstimateLatencyMax" : "337",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mul_I_O_fu_180"}],
		"Port" : [
			{"Name" : "lhs0_tmp_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lhs1_tmp_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs0_tmp_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs1_tmp_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cross_mul_digits_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_427.add0_digits_data_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_427.add1_digits_data_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_427.grp_mul_I_O_fu_180", "Parent" : "14", "Child" : ["18"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "284", "EstimateLatencyMax" : "314",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_fu_427.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U1", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_I_O_fu_436", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "284", "EstimateLatencyMax" : "314",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_I_O_fu_436.karastuba_mul_mulbkb_U1", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_I_O_fu_447", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "mul_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "284", "EstimateLatencyMax" : "314",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_I_O_fu_447.karastuba_mul_mulbkb_U1", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CAT_I_I_I_O_fu_458", "Parent" : "0",
		"CDFG" : "CAT_I_I_I_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "95", "EstimateLatencyMax" : "95",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x0_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_tmp_bits_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x1_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_digits_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_digits_data", "Type" : "Memory", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	karastuba_mul_templa_1 {
		lhs_digits_data {Type I LastRead 2 FirstWrite -1}
		rhs_digits_data {Type I LastRead 4 FirstWrite -1}
		res_digits_data {Type IO LastRead 8 FirstWrite 1}}
	karastuba_mul_templa {
		lhs0_tmp_digits_data {Type I LastRead 1 FirstWrite -1}
		lhs1_tmp_digits_data {Type I LastRead 1 FirstWrite -1}
		rhs0_tmp_digits_data {Type I LastRead 3 FirstWrite -1}
		rhs1_tmp_digits_data {Type I LastRead 3 FirstWrite -1}
		cross_mul_digits_data {Type IO LastRead 9 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data {Type I LastRead 6 FirstWrite -1}
		w_digits_data {Type IO LastRead 9 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data {Type I LastRead 6 FirstWrite -1}
		w_digits_data {Type IO LastRead 9 FirstWrite 1}}
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data {Type I LastRead 6 FirstWrite -1}
		w_digits_data {Type IO LastRead 9 FirstWrite 1}}
	CAT_I_I_I_O {
		x0_digits_data {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data {Type I LastRead 4 FirstWrite -1}
		x2_digits_data {Type I LastRead 9 FirstWrite -1}
		w_digits_data {Type IO LastRead 8 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "510", "Max" : "540"}
	, {"Name" : "Interval", "Min" : "510", "Max" : "540"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	lhs_digits_data { ap_memory {  { lhs_digits_data_address0 mem_address 1 4 }  { lhs_digits_data_ce0 mem_ce 1 1 }  { lhs_digits_data_q0 mem_dout 0 32 } } }
	rhs_digits_data { ap_memory {  { rhs_digits_data_address0 mem_address 1 4 }  { rhs_digits_data_ce0 mem_ce 1 1 }  { rhs_digits_data_q0 mem_dout 0 32 } } }
	res_digits_data { ap_memory {  { res_digits_data_address0 mem_address 1 5 }  { res_digits_data_ce0 mem_ce 1 1 }  { res_digits_data_we0 mem_we 1 1 }  { res_digits_data_d0 mem_din 1 32 }  { res_digits_data_q0 mem_dout 0 32 }  { res_digits_data_address1 MemPortADDR2 1 5 }  { res_digits_data_ce1 MemPortCE2 1 1 }  { res_digits_data_we1 MemPortWE2 1 1 }  { res_digits_data_d1 MemPortDIN2 1 32 }  { res_digits_data_q1 MemPortDOUT2 0 32 } } }
}
