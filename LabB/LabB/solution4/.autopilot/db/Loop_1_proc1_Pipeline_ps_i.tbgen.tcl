set moduleName Loop_1_proc1_Pipeline_ps_i
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
set C_modelName {Loop_1_proc1_Pipeline_ps_i}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln23 int 6 regular  }
	{ AB int 512 regular {array 16 { 0 1 } 1 1 }  }
	{ tempB_a int 32 regular  }
	{ tempB_a_1 int 32 regular  }
	{ tmp_13 int 32 regular  }
	{ tmp_14 int 32 regular  }
	{ tmp_15 int 32 regular  }
	{ tmp_16 int 32 regular  }
	{ tmp_17 int 32 regular  }
	{ tmp_18 int 32 regular  }
	{ tmp_19 int 32 regular  }
	{ tmp_20 int 32 regular  }
	{ tmp_21 int 32 regular  }
	{ tmp_22 int 32 regular  }
	{ tmp_23 int 32 regular  }
	{ tmp_24 int 32 regular  }
	{ trunc_ln145_2 int 32 regular  }
	{ trunc_ln145_3 int 32 regular  }
	{ A int 32 regular {array 1024 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln23", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "AB", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "tempB_a", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tempB_a_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln145_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln145_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln23 sc_in sc_lv 6 signal 0 } 
	{ AB_address0 sc_out sc_lv 4 signal 1 } 
	{ AB_ce0 sc_out sc_logic 1 signal 1 } 
	{ AB_we0 sc_out sc_lv 64 signal 1 } 
	{ AB_d0 sc_out sc_lv 512 signal 1 } 
	{ AB_address1 sc_out sc_lv 4 signal 1 } 
	{ AB_ce1 sc_out sc_logic 1 signal 1 } 
	{ AB_q1 sc_in sc_lv 512 signal 1 } 
	{ tempB_a sc_in sc_lv 32 signal 2 } 
	{ tempB_a_1 sc_in sc_lv 32 signal 3 } 
	{ tmp_13 sc_in sc_lv 32 signal 4 } 
	{ tmp_14 sc_in sc_lv 32 signal 5 } 
	{ tmp_15 sc_in sc_lv 32 signal 6 } 
	{ tmp_16 sc_in sc_lv 32 signal 7 } 
	{ tmp_17 sc_in sc_lv 32 signal 8 } 
	{ tmp_18 sc_in sc_lv 32 signal 9 } 
	{ tmp_19 sc_in sc_lv 32 signal 10 } 
	{ tmp_20 sc_in sc_lv 32 signal 11 } 
	{ tmp_21 sc_in sc_lv 32 signal 12 } 
	{ tmp_22 sc_in sc_lv 32 signal 13 } 
	{ tmp_23 sc_in sc_lv 32 signal 14 } 
	{ tmp_24 sc_in sc_lv 32 signal 15 } 
	{ trunc_ln145_2 sc_in sc_lv 32 signal 16 } 
	{ trunc_ln145_3 sc_in sc_lv 32 signal 17 } 
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
 	{ "name": "AB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB", "role": "address0" }} , 
 	{ "name": "AB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "ce0" }} , 
 	{ "name": "AB_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "AB", "role": "we0" }} , 
 	{ "name": "AB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB", "role": "d0" }} , 
 	{ "name": "AB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB", "role": "address1" }} , 
 	{ "name": "AB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "ce1" }} , 
 	{ "name": "AB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB", "role": "q1" }} , 
 	{ "name": "tempB_a", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tempB_a", "role": "default" }} , 
 	{ "name": "tempB_a_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tempB_a_1", "role": "default" }} , 
 	{ "name": "tmp_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_13", "role": "default" }} , 
 	{ "name": "tmp_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_14", "role": "default" }} , 
 	{ "name": "tmp_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_15", "role": "default" }} , 
 	{ "name": "tmp_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_16", "role": "default" }} , 
 	{ "name": "tmp_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_17", "role": "default" }} , 
 	{ "name": "tmp_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_18", "role": "default" }} , 
 	{ "name": "tmp_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_19", "role": "default" }} , 
 	{ "name": "tmp_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_20", "role": "default" }} , 
 	{ "name": "tmp_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_21", "role": "default" }} , 
 	{ "name": "tmp_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_22", "role": "default" }} , 
 	{ "name": "tmp_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_23", "role": "default" }} , 
 	{ "name": "tmp_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_24", "role": "default" }} , 
 	{ "name": "trunc_ln145_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln145_2", "role": "default" }} , 
 	{ "name": "trunc_ln145_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln145_3", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "Loop_1_proc1_Pipeline_ps_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
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
			{"Name" : "tempB_a", "Type" : "None", "Direction" : "I"},
			{"Name" : "tempB_a_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln145_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln145_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ps_i", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
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
	Loop_1_proc1_Pipeline_ps_i {
		zext_ln23 {Type I LastRead 0 FirstWrite -1}
		AB {Type IO LastRead 2 FirstWrite 4}
		tempB_a {Type I LastRead 0 FirstWrite -1}
		tempB_a_1 {Type I LastRead 0 FirstWrite -1}
		tmp_13 {Type I LastRead 0 FirstWrite -1}
		tmp_14 {Type I LastRead 0 FirstWrite -1}
		tmp_15 {Type I LastRead 0 FirstWrite -1}
		tmp_16 {Type I LastRead 0 FirstWrite -1}
		tmp_17 {Type I LastRead 0 FirstWrite -1}
		tmp_18 {Type I LastRead 0 FirstWrite -1}
		tmp_19 {Type I LastRead 0 FirstWrite -1}
		tmp_20 {Type I LastRead 0 FirstWrite -1}
		tmp_21 {Type I LastRead 0 FirstWrite -1}
		tmp_22 {Type I LastRead 0 FirstWrite -1}
		tmp_23 {Type I LastRead 0 FirstWrite -1}
		tmp_24 {Type I LastRead 0 FirstWrite -1}
		trunc_ln145_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln145_3 {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "21"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln23 { ap_none {  { zext_ln23 in_data 0 6 } } }
	AB { ap_memory {  { AB_address0 mem_address 1 4 }  { AB_ce0 mem_ce 1 1 }  { AB_we0 mem_we 1 64 }  { AB_d0 mem_din 1 512 }  { AB_address1 MemPortADDR2 1 4 }  { AB_ce1 MemPortCE2 1 1 }  { AB_q1 in_data 0 512 } } }
	tempB_a { ap_none {  { tempB_a in_data 0 32 } } }
	tempB_a_1 { ap_none {  { tempB_a_1 in_data 0 32 } } }
	tmp_13 { ap_none {  { tmp_13 in_data 0 32 } } }
	tmp_14 { ap_none {  { tmp_14 in_data 0 32 } } }
	tmp_15 { ap_none {  { tmp_15 in_data 0 32 } } }
	tmp_16 { ap_none {  { tmp_16 in_data 0 32 } } }
	tmp_17 { ap_none {  { tmp_17 in_data 0 32 } } }
	tmp_18 { ap_none {  { tmp_18 in_data 0 32 } } }
	tmp_19 { ap_none {  { tmp_19 in_data 0 32 } } }
	tmp_20 { ap_none {  { tmp_20 in_data 0 32 } } }
	tmp_21 { ap_none {  { tmp_21 in_data 0 32 } } }
	tmp_22 { ap_none {  { tmp_22 in_data 0 32 } } }
	tmp_23 { ap_none {  { tmp_23 in_data 0 32 } } }
	tmp_24 { ap_none {  { tmp_24 in_data 0 32 } } }
	trunc_ln145_2 { ap_none {  { trunc_ln145_2 in_data 0 32 } } }
	trunc_ln145_3 { ap_none {  { trunc_ln145_3 in_data 0 32 } } }
	A { ap_memory {  { A_address0 mem_address 1 10 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 } } }
}
