set moduleName mul_I_O
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
set C_modelName {mul_I_O}
set C_modelType { int 4 }
set C_modelArgList {
	{ u_tmp_bits_read int 2 regular  }
	{ u_digits_data int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ v_tmp_bits_read int 2 regular  }
	{ v_digits_data int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ w_digits_data int 32 regular {array 16 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "u_tmp_bits_read", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_digits_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v_tmp_bits_read", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "v_digits_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_digits_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 4} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ u_tmp_bits_read sc_in sc_lv 2 signal 0 } 
	{ u_digits_data_address0 sc_out sc_lv 3 signal 1 } 
	{ u_digits_data_ce0 sc_out sc_logic 1 signal 1 } 
	{ u_digits_data_q0 sc_in sc_lv 32 signal 1 } 
	{ v_tmp_bits_read sc_in sc_lv 2 signal 2 } 
	{ v_digits_data_address0 sc_out sc_lv 3 signal 3 } 
	{ v_digits_data_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_digits_data_q0 sc_in sc_lv 32 signal 3 } 
	{ w_digits_data_address0 sc_out sc_lv 4 signal 4 } 
	{ w_digits_data_ce0 sc_out sc_logic 1 signal 4 } 
	{ w_digits_data_we0 sc_out sc_logic 1 signal 4 } 
	{ w_digits_data_d0 sc_out sc_lv 32 signal 4 } 
	{ w_digits_data_q0 sc_in sc_lv 32 signal 4 } 
	{ w_digits_data_address1 sc_out sc_lv 4 signal 4 } 
	{ w_digits_data_ce1 sc_out sc_logic 1 signal 4 } 
	{ w_digits_data_we1 sc_out sc_logic 1 signal 4 } 
	{ w_digits_data_d1 sc_out sc_lv 32 signal 4 } 
	{ w_digits_data_q1 sc_in sc_lv 32 signal 4 } 
	{ ap_return sc_out sc_lv 4 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "u_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_tmp_bits_read", "role": "default" }} , 
 	{ "name": "u_digits_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_digits_data", "role": "address0" }} , 
 	{ "name": "u_digits_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_digits_data", "role": "ce0" }} , 
 	{ "name": "u_digits_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_digits_data", "role": "q0" }} , 
 	{ "name": "v_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v_tmp_bits_read", "role": "default" }} , 
 	{ "name": "v_digits_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v_digits_data", "role": "address0" }} , 
 	{ "name": "v_digits_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_digits_data", "role": "ce0" }} , 
 	{ "name": "v_digits_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_digits_data", "role": "q0" }} , 
 	{ "name": "w_digits_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w_digits_data", "role": "address0" }} , 
 	{ "name": "w_digits_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_digits_data", "role": "ce0" }} , 
 	{ "name": "w_digits_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_digits_data", "role": "we0" }} , 
 	{ "name": "w_digits_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_digits_data", "role": "d0" }} , 
 	{ "name": "w_digits_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_digits_data", "role": "q0" }} , 
 	{ "name": "w_digits_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w_digits_data", "role": "address1" }} , 
 	{ "name": "w_digits_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_digits_data", "role": "ce1" }} , 
 	{ "name": "w_digits_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_digits_data", "role": "we1" }} , 
 	{ "name": "w_digits_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_digits_data", "role": "d1" }} , 
 	{ "name": "w_digits_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_digits_data", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_mulbkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_I_O {
		u_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		u_digits_data {Type I LastRead 4 FirstWrite -1}
		v_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		v_digits_data {Type I LastRead 6 FirstWrite -1}
		w_digits_data {Type IO LastRead 9 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "284", "Max" : "314"}
	, {"Name" : "Interval", "Min" : "284", "Max" : "314"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	u_tmp_bits_read { ap_none {  { u_tmp_bits_read in_data 0 2 } } }
	u_digits_data { ap_memory {  { u_digits_data_address0 mem_address 1 3 }  { u_digits_data_ce0 mem_ce 1 1 }  { u_digits_data_q0 mem_dout 0 32 } } }
	v_tmp_bits_read { ap_none {  { v_tmp_bits_read in_data 0 2 } } }
	v_digits_data { ap_memory {  { v_digits_data_address0 mem_address 1 3 }  { v_digits_data_ce0 mem_ce 1 1 }  { v_digits_data_q0 mem_dout 0 32 } } }
	w_digits_data { ap_memory {  { w_digits_data_address0 mem_address 1 4 }  { w_digits_data_ce0 mem_ce 1 1 }  { w_digits_data_we0 mem_we 1 1 }  { w_digits_data_d0 mem_din 1 32 }  { w_digits_data_q0 mem_dout 0 32 }  { w_digits_data_address1 MemPortADDR2 1 4 }  { w_digits_data_ce1 MemPortCE2 1 1 }  { w_digits_data_we1 MemPortWE2 1 1 }  { w_digits_data_d1 MemPortDIN2 1 32 }  { w_digits_data_q1 MemPortDOUT2 0 32 } } }
}
