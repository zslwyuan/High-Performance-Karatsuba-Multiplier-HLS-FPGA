set moduleName karastuba_mul_ADD_SU_2
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
set C_modelName {karastuba_mul_ADD_SU.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ z0_tmp_bits_read int 32 regular  }
	{ z0_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ z2_tmp_bits_read int 32 regular  }
	{ z2_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ cross_mul_tmp_bits_read int 32 regular  }
	{ cross_mul_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ lhs_tmp_bits_read int 32 regular  }
	{ lhs_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ rhs_tmp_bits_read int 32 regular  }
	{ rhs_digits_data_V int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ res_tmp_bits int 32 regular {pointer 1}  }
	{ res_digits_data_V int 64 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "z0_tmp_bits_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z0_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z2_tmp_bits_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z2_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "cross_mul_tmp_bits_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cross_mul_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "lhs_tmp_bits_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rhs_tmp_bits_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rhs_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "res_tmp_bits", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_digits_data_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ z0_tmp_bits_read sc_in sc_lv 32 signal 0 } 
	{ z0_digits_data_V_address0 sc_out sc_lv 4 signal 1 } 
	{ z0_digits_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ z0_digits_data_V_q0 sc_in sc_lv 64 signal 1 } 
	{ z2_tmp_bits_read sc_in sc_lv 32 signal 2 } 
	{ z2_digits_data_V_address0 sc_out sc_lv 4 signal 3 } 
	{ z2_digits_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ z2_digits_data_V_q0 sc_in sc_lv 64 signal 3 } 
	{ cross_mul_tmp_bits_read sc_in sc_lv 32 signal 4 } 
	{ cross_mul_digits_data_V_address0 sc_out sc_lv 4 signal 5 } 
	{ cross_mul_digits_data_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ cross_mul_digits_data_V_q0 sc_in sc_lv 64 signal 5 } 
	{ lhs_tmp_bits_read sc_in sc_lv 32 signal 6 } 
	{ lhs_digits_data_V_address0 sc_out sc_lv 4 signal 7 } 
	{ lhs_digits_data_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ lhs_digits_data_V_q0 sc_in sc_lv 64 signal 7 } 
	{ rhs_tmp_bits_read sc_in sc_lv 32 signal 8 } 
	{ rhs_digits_data_V_address0 sc_out sc_lv 4 signal 9 } 
	{ rhs_digits_data_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ rhs_digits_data_V_q0 sc_in sc_lv 64 signal 9 } 
	{ res_tmp_bits sc_out sc_lv 32 signal 10 } 
	{ res_tmp_bits_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ res_digits_data_V_address0 sc_out sc_lv 5 signal 11 } 
	{ res_digits_data_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ res_digits_data_V_we0 sc_out sc_logic 1 signal 11 } 
	{ res_digits_data_V_d0 sc_out sc_lv 64 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "z0_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z0_tmp_bits_read", "role": "default" }} , 
 	{ "name": "z0_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z0_digits_data_V", "role": "address0" }} , 
 	{ "name": "z0_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z0_digits_data_V", "role": "ce0" }} , 
 	{ "name": "z0_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z0_digits_data_V", "role": "q0" }} , 
 	{ "name": "z2_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z2_tmp_bits_read", "role": "default" }} , 
 	{ "name": "z2_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z2_digits_data_V", "role": "address0" }} , 
 	{ "name": "z2_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z2_digits_data_V", "role": "ce0" }} , 
 	{ "name": "z2_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2_digits_data_V", "role": "q0" }} , 
 	{ "name": "cross_mul_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cross_mul_tmp_bits_read", "role": "default" }} , 
 	{ "name": "cross_mul_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "address0" }} , 
 	{ "name": "cross_mul_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "ce0" }} , 
 	{ "name": "cross_mul_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cross_mul_digits_data_V", "role": "q0" }} , 
 	{ "name": "lhs_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lhs_tmp_bits_read", "role": "default" }} , 
 	{ "name": "lhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "lhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "lhs_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lhs_digits_data_V", "role": "q0" }} , 
 	{ "name": "rhs_tmp_bits_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rhs_tmp_bits_read", "role": "default" }} , 
 	{ "name": "rhs_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "address0" }} , 
 	{ "name": "rhs_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "ce0" }} , 
 	{ "name": "rhs_digits_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rhs_digits_data_V", "role": "q0" }} , 
 	{ "name": "res_tmp_bits", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_tmp_bits", "role": "default" }} , 
 	{ "name": "res_tmp_bits_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_tmp_bits", "role": "ap_vld" }} , 
 	{ "name": "res_digits_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "address0" }} , 
 	{ "name": "res_digits_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "ce0" }} , 
 	{ "name": "res_digits_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "we0" }} , 
 	{ "name": "res_digits_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "res_digits_data_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
			{"Name" : "z0_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "z0_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x0_digits_data_V"}]},
			{"Name" : "z2_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "z2_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_CAT_I_I_I_O_2_fu_428", "Port" : "x2_digits_data_V"}]},
			{"Name" : "cross_mul_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "cross_mul_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "lhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "lhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "rhs_tmp_bits_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "rhs_digits_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "res_tmp_bits", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_digits_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add2_digits_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z1_digits_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_res_digits_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CAT_I_I_I_O_2_fu_428", "Parent" : "0",
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
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_mulsc4_U33", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "238", "Max" : "306"}
	, {"Name" : "Interval", "Min" : "238", "Max" : "306"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
]}

set Spec2ImplPortList { 
	z0_tmp_bits_read { ap_none {  { z0_tmp_bits_read in_data 0 32 } } }
	z0_digits_data_V { ap_memory {  { z0_digits_data_V_address0 mem_address 1 4 }  { z0_digits_data_V_ce0 mem_ce 1 1 }  { z0_digits_data_V_q0 mem_dout 0 64 } } }
	z2_tmp_bits_read { ap_none {  { z2_tmp_bits_read in_data 0 32 } } }
	z2_digits_data_V { ap_memory {  { z2_digits_data_V_address0 mem_address 1 4 }  { z2_digits_data_V_ce0 mem_ce 1 1 }  { z2_digits_data_V_q0 mem_dout 0 64 } } }
	cross_mul_tmp_bits_read { ap_none {  { cross_mul_tmp_bits_read in_data 0 32 } } }
	cross_mul_digits_data_V { ap_memory {  { cross_mul_digits_data_V_address0 mem_address 1 4 }  { cross_mul_digits_data_V_ce0 mem_ce 1 1 }  { cross_mul_digits_data_V_q0 mem_dout 0 64 } } }
	lhs_tmp_bits_read { ap_none {  { lhs_tmp_bits_read in_data 0 32 } } }
	lhs_digits_data_V { ap_memory {  { lhs_digits_data_V_address0 mem_address 1 4 }  { lhs_digits_data_V_ce0 mem_ce 1 1 }  { lhs_digits_data_V_q0 mem_dout 0 64 } } }
	rhs_tmp_bits_read { ap_none {  { rhs_tmp_bits_read in_data 0 32 } } }
	rhs_digits_data_V { ap_memory {  { rhs_digits_data_V_address0 mem_address 1 4 }  { rhs_digits_data_V_ce0 mem_ce 1 1 }  { rhs_digits_data_V_q0 mem_dout 0 64 } } }
	res_tmp_bits { ap_vld {  { res_tmp_bits out_data 1 32 }  { res_tmp_bits_ap_vld out_vld 1 1 } } }
	res_digits_data_V { ap_memory {  { res_digits_data_V_address0 mem_address 1 5 }  { res_digits_data_V_ce0 mem_ce 1 1 }  { res_digits_data_V_we0 mem_we 1 1 }  { res_digits_data_V_d0 mem_din 1 64 } } }
}
