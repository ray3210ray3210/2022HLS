set moduleName blockmatmul
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {blockmatmul}
set C_modelType { void 0 }
set C_modelArgList {
	{ Arows int 512 regular {fifo 0 volatile }  }
	{ Bcols int 512 regular {fifo 0 volatile }  }
	{ ABpartial int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ it int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Arows", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "Bcols", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "ABpartial", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "it", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Arows_dout sc_in sc_lv 512 signal 0 } 
	{ Arows_empty_n sc_in sc_logic 1 signal 0 } 
	{ Arows_read sc_out sc_logic 1 signal 0 } 
	{ Bcols_dout sc_in sc_lv 512 signal 1 } 
	{ Bcols_empty_n sc_in sc_logic 1 signal 1 } 
	{ Bcols_read sc_out sc_logic 1 signal 1 } 
	{ ABpartial_address0 sc_out sc_lv 8 signal 2 } 
	{ ABpartial_ce0 sc_out sc_logic 1 signal 2 } 
	{ ABpartial_we0 sc_out sc_logic 1 signal 2 } 
	{ ABpartial_d0 sc_out sc_lv 32 signal 2 } 
	{ it sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Arows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "Arows", "role": "dout" }} , 
 	{ "name": "Arows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows", "role": "empty_n" }} , 
 	{ "name": "Arows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows", "role": "read" }} , 
 	{ "name": "Bcols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "Bcols", "role": "dout" }} , 
 	{ "name": "Bcols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols", "role": "empty_n" }} , 
 	{ "name": "Bcols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols", "role": "read" }} , 
 	{ "name": "ABpartial_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ABpartial", "role": "address0" }} , 
 	{ "name": "ABpartial_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ABpartial", "role": "ce0" }} , 
 	{ "name": "ABpartial_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ABpartial", "role": "we0" }} , 
 	{ "name": "ABpartial_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ABpartial", "role": "d0" }} , 
 	{ "name": "it", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "it", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "9"],
		"CDFG" : "blockmatmul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18185", "EstimateLatencyMax" : "18706",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Arows", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_blockmatmul_Pipeline_loadA_fu_152", "Port" : "Arows", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "Bcols", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Bcols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ABpartial", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2_fu_160", "Port" : "ABpartial", "Inst_start_state" : "5", "Inst_end_state" : "8"}]},
			{"Name" : "it", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_blockmatmul_Pipeline_ps_i_fu_167", "Port" : "A", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_blockmatmul_Pipeline_loadA_fu_152", "Port" : "A", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "partialsum", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AB_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_1_fu_146", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "blockmatmul_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "AB", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_1_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_loadA_fu_152", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "blockmatmul_Pipeline_loadA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "520", "EstimateLatencyMax" : "520",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Arows", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Arows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loadA", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_loadA_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2_fu_160", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ABpartial", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "writeoutput_VITIS_LOOP_34_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2_fu_160.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U4", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U5", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U6", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U7", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U8", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U9", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U10", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U11", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U12", "Parent" : "9"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U13", "Parent" : "9"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U14", "Parent" : "9"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U15", "Parent" : "9"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U16", "Parent" : "9"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U17", "Parent" : "9"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U18", "Parent" : "9"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.mul_32s_32s_32_2_1_U19", "Parent" : "9"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockmatmul_Pipeline_ps_i_fu_167.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	blockmatmul {
		Arows {Type I LastRead 1 FirstWrite -1}
		Bcols {Type I LastRead 5 FirstWrite -1}
		ABpartial {Type O LastRead -1 FirstWrite 2}
		it {Type I LastRead 1 FirstWrite -1}
		A {Type IO LastRead -1 FirstWrite -1}}
	blockmatmul_Pipeline_1 {
		AB {Type O LastRead -1 FirstWrite 0}}
	blockmatmul_Pipeline_loadA {
		Arows {Type I LastRead 1 FirstWrite -1}
		A {Type O LastRead -1 FirstWrite 1}}
	blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2 {
		ABpartial {Type O LastRead -1 FirstWrite 2}
		AB {Type I LastRead 1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "18185", "Max" : "18706"}
	, {"Name" : "Interval", "Min" : "18186", "Max" : "18707"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Arows { ap_fifo {  { Arows_dout fifo_port_we 0 512 }  { Arows_empty_n fifo_status 0 1 }  { Arows_read fifo_data 1 1 } } }
	Bcols { ap_fifo {  { Bcols_dout fifo_port_we 0 512 }  { Bcols_empty_n fifo_status 0 1 }  { Bcols_read fifo_data 1 1 } } }
	ABpartial { ap_memory {  { ABpartial_address0 mem_address 1 8 }  { ABpartial_ce0 mem_ce 1 1 }  { ABpartial_we0 mem_we 1 1 }  { ABpartial_d0 mem_din 1 32 } } }
	it { ap_none {  { it in_data 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	Arows { fifo_read 1 has_conditional }
	Bcols { fifo_read 64 no_conditional }
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
