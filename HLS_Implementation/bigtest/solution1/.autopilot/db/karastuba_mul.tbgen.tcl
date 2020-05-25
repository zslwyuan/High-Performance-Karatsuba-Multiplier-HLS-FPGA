set moduleName karastuba_mul
set isTopModule 1
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
set C_modelName {karastuba_mul}
set C_modelType { void 0 }
set C_modelArgList {
	{ hs_input int 32 regular {axi_s 0 volatile  { hs_input Data } }  }
	{ res_output int 32 regular {axi_s 1 volatile  { res_output Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hs_input", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hs_input","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "res_output", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "res_output","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ hs_input_TDATA sc_in sc_lv 32 signal 0 } 
	{ hs_input_TVALID sc_in sc_logic 1 invld 0 } 
	{ hs_input_TREADY sc_out sc_logic 1 inacc 0 } 
	{ res_output_TDATA sc_out sc_lv 32 signal 1 } 
	{ res_output_TVALID sc_out sc_logic 1 outvld 1 } 
	{ res_output_TREADY sc_in sc_logic 1 outacc 1 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"karastuba_mul","role":"start","value":"0","valid_bit":"0"},{"name":"karastuba_mul","role":"continue","value":"0","valid_bit":"4"},{"name":"karastuba_mul","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"karastuba_mul","role":"start","value":"0","valid_bit":"0"},{"name":"karastuba_mul","role":"done","value":"0","valid_bit":"1"},{"name":"karastuba_mul","role":"idle","value":"0","valid_bit":"2"},{"name":"karastuba_mul","role":"ready","value":"0","valid_bit":"3"},{"name":"karastuba_mul","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "hs_input_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hs_input", "role": "TDATA" }} , 
 	{ "name": "hs_input_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "hs_input", "role": "TVALID" }} , 
 	{ "name": "hs_input_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "hs_input", "role": "TREADY" }} , 
 	{ "name": "res_output_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_output", "role": "TDATA" }} , 
 	{ "name": "res_output_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_output", "role": "TVALID" }} , 
 	{ "name": "res_output_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_output", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "29", "30"],
		"CDFG" : "karastuba_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "582", "EstimateLatencyMax" : "612",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_karastuba_mul_templa_1_fu_169"}],
		"Port" : [
			{"Name" : "hs_input", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "hs_input_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_output", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_output_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.karastuba_mul_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lhs_digits_data_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rhs_digits_data_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_digits_data_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "24", "26", "28"],
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
					{"ID" : "28", "SubInstance" : "grp_CAT_I_I_I_O_fu_458", "Port" : "w_digits_data"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.lhs0_digits_data_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.lhs1_digits_data_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.rhs0_digits_data_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.rhs1_digits_data_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.lhs0_tmp_digits_data_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.lhs1_tmp_digits_data_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.rhs0_tmp_digits_data_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.rhs1_tmp_digits_data_U", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.z0_digits_data_U", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.z2_digits_data_U", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.cross_mul_digits_dat_U", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.add2_digits_data_U", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.z1_digits_data_U", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.grp_karastuba_mul_templa_fu_427", "Parent" : "5", "Child" : ["20", "21", "22"],
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
					{"ID" : "22", "SubInstance" : "grp_mul_I_O_fu_180", "Port" : "w_digits_data"}]}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.grp_karastuba_mul_templa_fu_427.add0_digits_data_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.grp_karastuba_mul_templa_fu_427.add1_digits_data_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.grp_karastuba_mul_templa_fu_427.grp_mul_I_O_fu_180", "Parent" : "19", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.grp_karastuba_mul_templa_fu_427.grp_mul_I_O_fu_180.karastuba_mul_mulbkb_U1", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.grp_mul_I_O_fu_436", "Parent" : "5", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.grp_mul_I_O_fu_436.karastuba_mul_mulbkb_U1", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.grp_mul_I_O_fu_447", "Parent" : "5", "Child" : ["27"],
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
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.grp_mul_I_O_fu_447.karastuba_mul_mulbkb_U1", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_karastuba_mul_templa_1_fu_169.grp_CAT_I_I_I_O_fu_458", "Parent" : "5",
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
			{"Name" : "w_digits_data", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_hs_input_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_output_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	karastuba_mul {
		hs_input {Type I LastRead 3 FirstWrite -1}
		res_output {Type O LastRead -1 FirstWrite 7}}
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
	{"Name" : "Latency", "Min" : "582", "Max" : "612"}
	, {"Name" : "Interval", "Min" : "583", "Max" : "613"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	hs_input { axis {  { hs_input_TDATA in_data 0 32 }  { hs_input_TVALID in_vld 0 1 }  { hs_input_TREADY in_acc 1 1 } } }
	res_output { axis {  { res_output_TDATA out_data 1 32 }  { res_output_TVALID out_vld 1 1 }  { res_output_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
