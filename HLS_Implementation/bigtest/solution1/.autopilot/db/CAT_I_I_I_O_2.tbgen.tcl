set moduleName CAT_I_I_I_O_2
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
set C_modelName {CAT_I_I_I_O.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ x0_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ x1_tmp_bits_read int 7 regular  }
	{ x1_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ x2_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ w_digits_data_V int 64 regular {array 32 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x0_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x1_tmp_bits_read", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "x1_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x2_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "w_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x0_digits_data_V_address0 sc_out sc_lv 4 signal 0 } 
	{ x0_digits_data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ x0_digits_data_V_q0 sc_in sc_lv 64 signal 0 } 
	{ x1_tmp_bits_read sc_in sc_lv 7 signal 1 } 
	{ x1_digits_data_V_address0 sc_out sc_lv 4 signal 2 } 
	{ x1_digits_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ x1_digits_data_V_q0 sc_in sc_lv 64 signal 2 } 
	{ x2_digits_data_V_address0 sc_out sc_lv 4 signal 3 } 
	{ x2_digits_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ x2_digits_data_V_q0 sc_in sc_lv 64 signal 3 } 
	{ w_digits_data_V_address0 sc_out sc_lv 5 signal 4 } 
	{ w_digits_data_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ w_digits_data_V_we0 sc_out sc_logic 1 signal 4 } 
	{ w_digits_data_V_d0 sc_out sc_lv 64 signal 4 } 
	{ w_digits_data_V_q0 sc_in sc_lv 64 signal 4 } 
	{ w_digits_data_V_address1 sc_out sc_lv 5 signal 4 } 
	{ w_digits_data_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ w_digits_data_V_we1 sc_out sc_logic 1 signal 4 } 
	{ w_digits_data_V_d1 sc_out sc_lv 64 signal 4 } 
	{ w_digits_data_V_q1 sc_in sc_lv 64 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x0_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x0_digits_data_V", "role": "address0" }} , 
 	{ "name": "x0_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x0_digits_data_V", "role": "ce0" }} , 
 	{ "name": "x0_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x0_digits_data_V", "role": "q0" }} , 
 	{ "name": "x1_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "x1_tmp_bits_read", "role": "default" }} , 
 	{ "name": "x1_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x1_digits_data_V", "role": "address0" }} , 
 	{ "name": "x1_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x1_digits_data_V", "role": "ce0" }} , 
 	{ "name": "x1_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x1_digits_data_V", "role": "q0" }} , 
 	{ "name": "x2_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x2_digits_data_V", "role": "address0" }} , 
 	{ "name": "x2_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2_digits_data_V", "role": "ce0" }} , 
 	{ "name": "x2_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x2_digits_data_V", "role": "q0" }} , 
 	{ "name": "w_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "w_digits_data_V", "role": "address0" }} , 
 	{ "name": "w_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_digits_data_V", "role": "ce0" }} , 
 	{ "name": "w_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_digits_data_V", "role": "we0" }} , 
 	{ "name": "w_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w_digits_data_V", "role": "d0" }} , 
 	{ "name": "w_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w_digits_data_V", "role": "q0" }} , 
 	{ "name": "w_digits_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "w_digits_data_V", "role": "address1" }} , 
 	{ "name": "w_digits_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_digits_data_V", "role": "ce1" }} , 
 	{ "name": "w_digits_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_digits_data_V", "role": "we1" }} , 
 	{ "name": "w_digits_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w_digits_data_V", "role": "d1" }} , 
 	{ "name": "w_digits_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w_digits_data_V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "CAT_I_I_I_O_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "111", "EstimateLatencyMax" : "111",
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
			{"Name" : "w_digits_data_V", "Type" : "Memory", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	CAT_I_I_I_O_2 {
		x0_digits_data_V {Type I LastRead 2 FirstWrite -1}
		x1_tmp_bits_read {Type I LastRead 0 FirstWrite -1}
		x1_digits_data_V {Type I LastRead 3 FirstWrite -1}
		x2_digits_data_V {Type I LastRead 8 FirstWrite -1}
		w_digits_data_V {Type IO LastRead 8 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "111", "Max" : "111"}
	, {"Name" : "Interval", "Min" : "111", "Max" : "111"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	x0_digits_data_V { ap_memory {  { x0_digits_data_V_address0 mem_address 1 4 }  { x0_digits_data_V_ce0 mem_ce 1 1 }  { x0_digits_data_V_q0 mem_dout 0 64 } } }
	x1_tmp_bits_read { ap_none {  { x1_tmp_bits_read in_data 0 7 } } }
	x1_digits_data_V { ap_memory {  { x1_digits_data_V_address0 mem_address 1 4 }  { x1_digits_data_V_ce0 mem_ce 1 1 }  { x1_digits_data_V_q0 mem_dout 0 64 } } }
	x2_digits_data_V { ap_memory {  { x2_digits_data_V_address0 mem_address 1 4 }  { x2_digits_data_V_ce0 mem_ce 1 1 }  { x2_digits_data_V_q0 mem_dout 0 64 } } }
	w_digits_data_V { ap_memory {  { w_digits_data_V_address0 mem_address 1 5 }  { w_digits_data_V_ce0 mem_ce 1 1 }  { w_digits_data_V_we0 mem_we 1 1 }  { w_digits_data_V_d0 mem_din 1 64 }  { w_digits_data_V_q0 mem_dout 0 64 }  { w_digits_data_V_address1 MemPortADDR2 1 5 }  { w_digits_data_V_ce1 MemPortCE2 1 1 }  { w_digits_data_V_we1 MemPortWE2 1 1 }  { w_digits_data_V_d1 MemPortDIN2 1 64 }  { w_digits_data_V_q1 MemPortDOUT2 0 64 } } }
}
