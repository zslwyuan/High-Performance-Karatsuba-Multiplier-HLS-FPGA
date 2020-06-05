set moduleName Loop_1_proc
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
set C_modelName {Loop_1_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ hs_input_V int 64 regular {axi_s 0 volatile  { hs_input_V Data } }  }
	{ lhs_digits_data_V int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ rhs_digits_data_V int 64 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hs_input_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "lhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ hs_input_V_TDATA sc_in sc_lv 64 signal 0 } 
	{ hs_input_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ hs_input_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ lhs_digits_data_V_address0 sc_out sc_lv 6 signal 1 } 
	{ lhs_digits_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ lhs_digits_data_V_we0 sc_out sc_logic 1 signal 1 } 
	{ lhs_digits_data_V_d0 sc_out sc_lv 64 signal 1 } 
	{ rhs_digits_data_V_address0 sc_out sc_lv 6 signal 2 } 
	{ rhs_digits_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ rhs_digits_data_V_we0 sc_out sc_logic 1 signal 2 } 
	{ rhs_digits_data_V_d0 sc_out sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "hs_input_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hs_input_V", "role": "TDATA" }} , 
 	{ "name": "hs_input_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "hs_input_V", "role": "TVALID" }} , 
 	{ "name": "hs_input_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "hs_input_V", "role": "TREADY" }} , 
 	{ "name": "lhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "lhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "lhs_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "we0" }} , 
 	{ "name": "lhs_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "d0" }} , 
 	{ "name": "rhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "rhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "rhs_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "we0" }} , 
 	{ "name": "rhs_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_hs_input_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_1_proc {
		hs_input_V {Type I LastRead 1 FirstWrite -1}
		lhs_digits_data_V {Type O LastRead -1 FirstWrite 1}
		rhs_digits_data_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "130", "Max" : "130"}
	, {"Name" : "Interval", "Min" : "130", "Max" : "130"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	hs_input_V { axis {  { hs_input_V_TDATA in_data 0 64 }  { hs_input_V_TVALID in_vld 0 1 }  { hs_input_V_TREADY in_acc 1 1 } } }
	lhs_digits_data_V { ap_memory {  { lhs_digits_data_V_address0 mem_address 1 6 }  { lhs_digits_data_V_ce0 mem_ce 1 1 }  { lhs_digits_data_V_we0 mem_we 1 1 }  { lhs_digits_data_V_d0 mem_din 1 64 } } }
	rhs_digits_data_V { ap_memory {  { rhs_digits_data_V_address0 mem_address 1 6 }  { rhs_digits_data_V_ce0 mem_ce 1 1 }  { rhs_digits_data_V_we0 mem_we 1 1 }  { rhs_digits_data_V_d0 mem_din 1 64 } } }
}
