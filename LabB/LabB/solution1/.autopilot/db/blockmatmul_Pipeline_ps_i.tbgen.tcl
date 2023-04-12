set moduleName blockmatmul_Pipeline_ps_i
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {blockmatmul_Pipeline_ps_i}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln23 int 6 regular  }
	{ AB int 32 regular {array 256 { 2 2 } 1 1 }  }
	{ tmp_a_0 int 32 regular  }
	{ tmp_a_1 int 32 regular  }
	{ tmp_a_2 int 32 regular  }
	{ tmp_a_3 int 32 regular  }
	{ tmp_a_4 int 32 regular  }
	{ tmp_a_5 int 32 regular  }
	{ tmp_a_6 int 32 regular  }
	{ tmp_a_7 int 32 regular  }
	{ tmp_a_8 int 32 regular  }
	{ tmp_a_9 int 32 regular  }
	{ tmp_a_10 int 32 regular  }
	{ tmp_a_11 int 32 regular  }
	{ tmp_a_12 int 32 regular  }
	{ tmp_a_13 int 32 regular  }
	{ tmp_a_14 int 32 regular  }
	{ tmp_a_15 int 32 regular  }
	{ A int 32 regular {array 1024 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln23", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "AB", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp_a_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_a_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln23 sc_in sc_lv 6 signal 0 } 
	{ AB_address0 sc_out sc_lv 8 signal 1 } 
	{ AB_ce0 sc_out sc_logic 1 signal 1 } 
	{ AB_we0 sc_out sc_logic 1 signal 1 } 
	{ AB_d0 sc_out sc_lv 32 signal 1 } 
	{ AB_q0 sc_in sc_lv 32 signal 1 } 
	{ AB_address1 sc_out sc_lv 8 signal 1 } 
	{ AB_ce1 sc_out sc_logic 1 signal 1 } 
	{ AB_we1 sc_out sc_logic 1 signal 1 } 
	{ AB_d1 sc_out sc_lv 32 signal 1 } 
	{ AB_q1 sc_in sc_lv 32 signal 1 } 
	{ tmp_a_0 sc_in sc_lv 32 signal 2 } 
	{ tmp_a_1 sc_in sc_lv 32 signal 3 } 
	{ tmp_a_2 sc_in sc_lv 32 signal 4 } 
	{ tmp_a_3 sc_in sc_lv 32 signal 5 } 
	{ tmp_a_4 sc_in sc_lv 32 signal 6 } 
	{ tmp_a_5 sc_in sc_lv 32 signal 7 } 
	{ tmp_a_6 sc_in sc_lv 32 signal 8 } 
	{ tmp_a_7 sc_in sc_lv 32 signal 9 } 
	{ tmp_a_8 sc_in sc_lv 32 signal 10 } 
	{ tmp_a_9 sc_in sc_lv 32 signal 11 } 
	{ tmp_a_10 sc_in sc_lv 32 signal 12 } 
	{ tmp_a_11 sc_in sc_lv 32 signal 13 } 
	{ tmp_a_12 sc_in sc_lv 32 signal 14 } 
	{ tmp_a_13 sc_in sc_lv 32 signal 15 } 
	{ tmp_a_14 sc_in sc_lv 32 signal 16 } 
	{ tmp_a_15 sc_in sc_lv 32 signal 17 } 
	{ A_address0 sc_out sc_lv 10 signal 18 } 
	{ A_ce0 sc_out sc_logic 1 signal 18 } 
	{ A_q0 sc_in sc_lv 32 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln23", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln23", "role": "default" }} , 
 	{ "name": "AB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AB", "role": "address0" }} , 
 	{ "name": "AB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "ce0" }} , 
 	{ "name": "AB_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "we0" }} , 
 	{ "name": "AB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB", "role": "d0" }} , 
 	{ "name": "AB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB", "role": "q0" }} , 
 	{ "name": "AB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AB", "role": "address1" }} , 
 	{ "name": "AB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "ce1" }} , 
 	{ "name": "AB_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "we1" }} , 
 	{ "name": "AB_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB", "role": "d1" }} , 
 	{ "name": "AB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB", "role": "q1" }} , 
 	{ "name": "tmp_a_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_0", "role": "default" }} , 
 	{ "name": "tmp_a_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_1", "role": "default" }} , 
 	{ "name": "tmp_a_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_2", "role": "default" }} , 
 	{ "name": "tmp_a_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_3", "role": "default" }} , 
 	{ "name": "tmp_a_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_4", "role": "default" }} , 
 	{ "name": "tmp_a_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_5", "role": "default" }} , 
 	{ "name": "tmp_a_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_6", "role": "default" }} , 
 	{ "name": "tmp_a_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_7", "role": "default" }} , 
 	{ "name": "tmp_a_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_8", "role": "default" }} , 
 	{ "name": "tmp_a_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_9", "role": "default" }} , 
 	{ "name": "tmp_a_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_10", "role": "default" }} , 
 	{ "name": "tmp_a_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_11", "role": "default" }} , 
 	{ "name": "tmp_a_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_12", "role": "default" }} , 
 	{ "name": "tmp_a_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_13", "role": "default" }} , 
 	{ "name": "tmp_a_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_14", "role": "default" }} , 
 	{ "name": "tmp_a_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_a_15", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "blockmatmul_Pipeline_ps_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "273", "EstimateLatencyMax" : "273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln23", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_a_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_a_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ps_i", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U4", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U5", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U6", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U7", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U8", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U9", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U10", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U11", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U12", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U13", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U14", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U15", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U16", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U17", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U18", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U19", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	blockmatmul_Pipeline_ps_i {
		zext_ln23 {Type I LastRead 0 FirstWrite -1}
		AB {Type IO LastRead 24 FirstWrite 8}
		tmp_a_0 {Type I LastRead 0 FirstWrite -1}
		tmp_a_1 {Type I LastRead 0 FirstWrite -1}
		tmp_a_2 {Type I LastRead 0 FirstWrite -1}
		tmp_a_3 {Type I LastRead 0 FirstWrite -1}
		tmp_a_4 {Type I LastRead 0 FirstWrite -1}
		tmp_a_5 {Type I LastRead 0 FirstWrite -1}
		tmp_a_6 {Type I LastRead 0 FirstWrite -1}
		tmp_a_7 {Type I LastRead 0 FirstWrite -1}
		tmp_a_8 {Type I LastRead 0 FirstWrite -1}
		tmp_a_9 {Type I LastRead 0 FirstWrite -1}
		tmp_a_10 {Type I LastRead 0 FirstWrite -1}
		tmp_a_11 {Type I LastRead 0 FirstWrite -1}
		tmp_a_12 {Type I LastRead 0 FirstWrite -1}
		tmp_a_13 {Type I LastRead 0 FirstWrite -1}
		tmp_a_14 {Type I LastRead 0 FirstWrite -1}
		tmp_a_15 {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "273", "Max" : "273"}
	, {"Name" : "Interval", "Min" : "273", "Max" : "273"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln23 { ap_none {  { zext_ln23 in_data 0 6 } } }
	AB { ap_memory {  { AB_address0 mem_address 1 8 }  { AB_ce0 mem_ce 1 1 }  { AB_we0 mem_we 1 1 }  { AB_d0 mem_din 1 32 }  { AB_q0 in_data 0 32 }  { AB_address1 MemPortADDR2 1 8 }  { AB_ce1 MemPortCE2 1 1 }  { AB_we1 MemPortWE2 1 1 }  { AB_d1 MemPortDIN2 1 32 }  { AB_q1 in_data 0 32 } } }
	tmp_a_0 { ap_none {  { tmp_a_0 in_data 0 32 } } }
	tmp_a_1 { ap_none {  { tmp_a_1 in_data 0 32 } } }
	tmp_a_2 { ap_none {  { tmp_a_2 in_data 0 32 } } }
	tmp_a_3 { ap_none {  { tmp_a_3 in_data 0 32 } } }
	tmp_a_4 { ap_none {  { tmp_a_4 in_data 0 32 } } }
	tmp_a_5 { ap_none {  { tmp_a_5 in_data 0 32 } } }
	tmp_a_6 { ap_none {  { tmp_a_6 in_data 0 32 } } }
	tmp_a_7 { ap_none {  { tmp_a_7 in_data 0 32 } } }
	tmp_a_8 { ap_none {  { tmp_a_8 in_data 0 32 } } }
	tmp_a_9 { ap_none {  { tmp_a_9 in_data 0 32 } } }
	tmp_a_10 { ap_none {  { tmp_a_10 in_data 0 32 } } }
	tmp_a_11 { ap_none {  { tmp_a_11 in_data 0 32 } } }
	tmp_a_12 { ap_none {  { tmp_a_12 in_data 0 32 } } }
	tmp_a_13 { ap_none {  { tmp_a_13 in_data 0 32 } } }
	tmp_a_14 { ap_none {  { tmp_a_14 in_data 0 32 } } }
	tmp_a_15 { ap_none {  { tmp_a_15 in_data 0 32 } } }
	A { ap_memory {  { A_address0 mem_address 1 10 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 } } }
}
