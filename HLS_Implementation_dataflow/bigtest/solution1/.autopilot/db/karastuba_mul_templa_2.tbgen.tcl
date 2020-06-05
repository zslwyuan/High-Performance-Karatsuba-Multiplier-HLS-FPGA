set moduleName karastuba_mul_templa_2
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
set C_modelName {karastuba_mul_templa.2}
set C_modelType { int 4 }
set C_modelArgList {
	{ lhs0_tmp_digits_data_V int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ lhs1_tmp_digits_data_V int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ rhs0_tmp_digits_data_V int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ rhs1_tmp_digits_data_V int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ cross_mul_digits_data_V int 64 regular {array 16 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lhs0_tmp_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "lhs1_tmp_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rhs0_tmp_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rhs1_tmp_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "cross_mul_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 4} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ lhs0_tmp_digits_data_V_address0 sc_out sc_lv 3 signal 0 } 
	{ lhs0_tmp_digits_data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ lhs0_tmp_digits_data_V_q0 sc_in sc_lv 64 signal 0 } 
	{ lhs1_tmp_digits_data_V_address0 sc_out sc_lv 3 signal 1 } 
	{ lhs1_tmp_digits_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ lhs1_tmp_digits_data_V_q0 sc_in sc_lv 64 signal 1 } 
	{ rhs0_tmp_digits_data_V_address0 sc_out sc_lv 3 signal 2 } 
	{ rhs0_tmp_digits_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ rhs0_tmp_digits_data_V_q0 sc_in sc_lv 64 signal 2 } 
	{ rhs1_tmp_digits_data_V_address0 sc_out sc_lv 3 signal 3 } 
	{ rhs1_tmp_digits_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ rhs1_tmp_digits_data_V_q0 sc_in sc_lv 64 signal 3 } 
	{ cross_mul_digits_data_V_address0 sc_out sc_lv 4 signal 4 } 
	{ cross_mul_digits_data_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ cross_mul_digits_data_V_we0 sc_out sc_logic 1 signal 4 } 
	{ cross_mul_digits_data_V_d0 sc_out sc_lv 64 signal 4 } 
	{ cross_mul_digits_data_V_q0 sc_in sc_lv 64 signal 4 } 
	{ ap_return sc_out sc_lv 4 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "lhs0_tmp_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lhs0_tmp_digits_data_V", "role": "address0" }} , 
 	{ "name": "lhs0_tmp_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs0_tmp_digits_data_V", "role": "ce0" }} , 
 	{ "name": "lhs0_tmp_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs0_tmp_digits_data_V", "role": "q0" }} , 
 	{ "name": "lhs1_tmp_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lhs1_tmp_digits_data_V", "role": "address0" }} , 
 	{ "name": "lhs1_tmp_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs1_tmp_digits_data_V", "role": "ce0" }} , 
 	{ "name": "lhs1_tmp_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs1_tmp_digits_data_V", "role": "q0" }} , 
 	{ "name": "rhs0_tmp_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rhs0_tmp_digits_data_V", "role": "address0" }} , 
 	{ "name": "rhs0_tmp_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs0_tmp_digits_data_V", "role": "ce0" }} , 
 	{ "name": "rhs0_tmp_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs0_tmp_digits_data_V", "role": "q0" }} , 
 	{ "name": "rhs1_tmp_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rhs1_tmp_digits_data_V", "role": "address0" }} , 
 	{ "name": "rhs1_tmp_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs1_tmp_digits_data_V", "role": "ce0" }} , 
 	{ "name": "rhs1_tmp_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs1_tmp_digits_data_V", "role": "q0" }} , 
 	{ "name": "cross_mul_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "address0" }} , 
 	{ "name": "cross_mul_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "ce0" }} , 
 	{ "name": "cross_mul_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "we0" }} , 
 	{ "name": "cross_mul_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "d0" }} , 
 	{ "name": "cross_mul_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
					{"ID" : "3", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add0_digits_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add1_digits_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_I_O_fu_180", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U5", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
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
		w_digits_data_V {Type IO LastRead 10 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "393", "Max" : "447"}
	, {"Name" : "Interval", "Min" : "393", "Max" : "447"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	lhs0_tmp_digits_data_V { ap_memory {  { lhs0_tmp_digits_data_V_address0 mem_address 1 3 }  { lhs0_tmp_digits_data_V_ce0 mem_ce 1 1 }  { lhs0_tmp_digits_data_V_q0 mem_dout 0 64 } } }
	lhs1_tmp_digits_data_V { ap_memory {  { lhs1_tmp_digits_data_V_address0 mem_address 1 3 }  { lhs1_tmp_digits_data_V_ce0 mem_ce 1 1 }  { lhs1_tmp_digits_data_V_q0 mem_dout 0 64 } } }
	rhs0_tmp_digits_data_V { ap_memory {  { rhs0_tmp_digits_data_V_address0 mem_address 1 3 }  { rhs0_tmp_digits_data_V_ce0 mem_ce 1 1 }  { rhs0_tmp_digits_data_V_q0 mem_dout 0 64 } } }
	rhs1_tmp_digits_data_V { ap_memory {  { rhs1_tmp_digits_data_V_address0 mem_address 1 3 }  { rhs1_tmp_digits_data_V_ce0 mem_ce 1 1 }  { rhs1_tmp_digits_data_V_q0 mem_dout 0 64 } } }
	cross_mul_digits_data_V { ap_memory {  { cross_mul_digits_data_V_address0 mem_address 1 4 }  { cross_mul_digits_data_V_ce0 mem_ce 1 1 }  { cross_mul_digits_data_V_we0 mem_we 1 1 }  { cross_mul_digits_data_V_d0 mem_din 1 64 }  { cross_mul_digits_data_V_q0 mem_dout 0 64 } } }
}
