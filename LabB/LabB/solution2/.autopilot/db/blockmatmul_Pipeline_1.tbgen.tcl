set moduleName blockmatmul_Pipeline_1
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
set C_modelName {blockmatmul_Pipeline_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ AB int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_1 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_3 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_4 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_5 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_6 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_7 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_8 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_9 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_10 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_11 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_12 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_13 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_14 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ AB_15 int 32 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AB", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ AB_address0 sc_out sc_lv 4 signal 0 } 
	{ AB_ce0 sc_out sc_logic 1 signal 0 } 
	{ AB_we0 sc_out sc_logic 1 signal 0 } 
	{ AB_d0 sc_out sc_lv 32 signal 0 } 
	{ AB_1_address0 sc_out sc_lv 4 signal 1 } 
	{ AB_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ AB_1_we0 sc_out sc_logic 1 signal 1 } 
	{ AB_1_d0 sc_out sc_lv 32 signal 1 } 
	{ AB_2_address0 sc_out sc_lv 4 signal 2 } 
	{ AB_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ AB_2_we0 sc_out sc_logic 1 signal 2 } 
	{ AB_2_d0 sc_out sc_lv 32 signal 2 } 
	{ AB_3_address0 sc_out sc_lv 4 signal 3 } 
	{ AB_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ AB_3_we0 sc_out sc_logic 1 signal 3 } 
	{ AB_3_d0 sc_out sc_lv 32 signal 3 } 
	{ AB_4_address0 sc_out sc_lv 4 signal 4 } 
	{ AB_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ AB_4_we0 sc_out sc_logic 1 signal 4 } 
	{ AB_4_d0 sc_out sc_lv 32 signal 4 } 
	{ AB_5_address0 sc_out sc_lv 4 signal 5 } 
	{ AB_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ AB_5_we0 sc_out sc_logic 1 signal 5 } 
	{ AB_5_d0 sc_out sc_lv 32 signal 5 } 
	{ AB_6_address0 sc_out sc_lv 4 signal 6 } 
	{ AB_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ AB_6_we0 sc_out sc_logic 1 signal 6 } 
	{ AB_6_d0 sc_out sc_lv 32 signal 6 } 
	{ AB_7_address0 sc_out sc_lv 4 signal 7 } 
	{ AB_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ AB_7_we0 sc_out sc_logic 1 signal 7 } 
	{ AB_7_d0 sc_out sc_lv 32 signal 7 } 
	{ AB_8_address0 sc_out sc_lv 4 signal 8 } 
	{ AB_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ AB_8_we0 sc_out sc_logic 1 signal 8 } 
	{ AB_8_d0 sc_out sc_lv 32 signal 8 } 
	{ AB_9_address0 sc_out sc_lv 4 signal 9 } 
	{ AB_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ AB_9_we0 sc_out sc_logic 1 signal 9 } 
	{ AB_9_d0 sc_out sc_lv 32 signal 9 } 
	{ AB_10_address0 sc_out sc_lv 4 signal 10 } 
	{ AB_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ AB_10_we0 sc_out sc_logic 1 signal 10 } 
	{ AB_10_d0 sc_out sc_lv 32 signal 10 } 
	{ AB_11_address0 sc_out sc_lv 4 signal 11 } 
	{ AB_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ AB_11_we0 sc_out sc_logic 1 signal 11 } 
	{ AB_11_d0 sc_out sc_lv 32 signal 11 } 
	{ AB_12_address0 sc_out sc_lv 4 signal 12 } 
	{ AB_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ AB_12_we0 sc_out sc_logic 1 signal 12 } 
	{ AB_12_d0 sc_out sc_lv 32 signal 12 } 
	{ AB_13_address0 sc_out sc_lv 4 signal 13 } 
	{ AB_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ AB_13_we0 sc_out sc_logic 1 signal 13 } 
	{ AB_13_d0 sc_out sc_lv 32 signal 13 } 
	{ AB_14_address0 sc_out sc_lv 4 signal 14 } 
	{ AB_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ AB_14_we0 sc_out sc_logic 1 signal 14 } 
	{ AB_14_d0 sc_out sc_lv 32 signal 14 } 
	{ AB_15_address0 sc_out sc_lv 4 signal 15 } 
	{ AB_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ AB_15_we0 sc_out sc_logic 1 signal 15 } 
	{ AB_15_d0 sc_out sc_lv 32 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "AB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB", "role": "address0" }} , 
 	{ "name": "AB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "ce0" }} , 
 	{ "name": "AB_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "we0" }} , 
 	{ "name": "AB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB", "role": "d0" }} , 
 	{ "name": "AB_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_1", "role": "address0" }} , 
 	{ "name": "AB_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_1", "role": "ce0" }} , 
 	{ "name": "AB_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_1", "role": "we0" }} , 
 	{ "name": "AB_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_1", "role": "d0" }} , 
 	{ "name": "AB_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_2", "role": "address0" }} , 
 	{ "name": "AB_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_2", "role": "ce0" }} , 
 	{ "name": "AB_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_2", "role": "we0" }} , 
 	{ "name": "AB_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_2", "role": "d0" }} , 
 	{ "name": "AB_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_3", "role": "address0" }} , 
 	{ "name": "AB_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_3", "role": "ce0" }} , 
 	{ "name": "AB_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_3", "role": "we0" }} , 
 	{ "name": "AB_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_3", "role": "d0" }} , 
 	{ "name": "AB_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_4", "role": "address0" }} , 
 	{ "name": "AB_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_4", "role": "ce0" }} , 
 	{ "name": "AB_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_4", "role": "we0" }} , 
 	{ "name": "AB_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_4", "role": "d0" }} , 
 	{ "name": "AB_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_5", "role": "address0" }} , 
 	{ "name": "AB_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_5", "role": "ce0" }} , 
 	{ "name": "AB_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_5", "role": "we0" }} , 
 	{ "name": "AB_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_5", "role": "d0" }} , 
 	{ "name": "AB_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_6", "role": "address0" }} , 
 	{ "name": "AB_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_6", "role": "ce0" }} , 
 	{ "name": "AB_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_6", "role": "we0" }} , 
 	{ "name": "AB_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_6", "role": "d0" }} , 
 	{ "name": "AB_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_7", "role": "address0" }} , 
 	{ "name": "AB_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_7", "role": "ce0" }} , 
 	{ "name": "AB_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_7", "role": "we0" }} , 
 	{ "name": "AB_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_7", "role": "d0" }} , 
 	{ "name": "AB_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_8", "role": "address0" }} , 
 	{ "name": "AB_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_8", "role": "ce0" }} , 
 	{ "name": "AB_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_8", "role": "we0" }} , 
 	{ "name": "AB_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_8", "role": "d0" }} , 
 	{ "name": "AB_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_9", "role": "address0" }} , 
 	{ "name": "AB_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_9", "role": "ce0" }} , 
 	{ "name": "AB_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_9", "role": "we0" }} , 
 	{ "name": "AB_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_9", "role": "d0" }} , 
 	{ "name": "AB_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_10", "role": "address0" }} , 
 	{ "name": "AB_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_10", "role": "ce0" }} , 
 	{ "name": "AB_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_10", "role": "we0" }} , 
 	{ "name": "AB_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_10", "role": "d0" }} , 
 	{ "name": "AB_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_11", "role": "address0" }} , 
 	{ "name": "AB_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_11", "role": "ce0" }} , 
 	{ "name": "AB_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_11", "role": "we0" }} , 
 	{ "name": "AB_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_11", "role": "d0" }} , 
 	{ "name": "AB_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_12", "role": "address0" }} , 
 	{ "name": "AB_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_12", "role": "ce0" }} , 
 	{ "name": "AB_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_12", "role": "we0" }} , 
 	{ "name": "AB_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_12", "role": "d0" }} , 
 	{ "name": "AB_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_13", "role": "address0" }} , 
 	{ "name": "AB_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_13", "role": "ce0" }} , 
 	{ "name": "AB_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_13", "role": "we0" }} , 
 	{ "name": "AB_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_13", "role": "d0" }} , 
 	{ "name": "AB_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_14", "role": "address0" }} , 
 	{ "name": "AB_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_14", "role": "ce0" }} , 
 	{ "name": "AB_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_14", "role": "we0" }} , 
 	{ "name": "AB_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_14", "role": "d0" }} , 
 	{ "name": "AB_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_15", "role": "address0" }} , 
 	{ "name": "AB_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_15", "role": "ce0" }} , 
 	{ "name": "AB_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_15", "role": "we0" }} , 
 	{ "name": "AB_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_15", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "AB", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	blockmatmul_Pipeline_1 {
		AB {Type O LastRead -1 FirstWrite 0}
		AB_1 {Type O LastRead -1 FirstWrite 0}
		AB_2 {Type O LastRead -1 FirstWrite 0}
		AB_3 {Type O LastRead -1 FirstWrite 0}
		AB_4 {Type O LastRead -1 FirstWrite 0}
		AB_5 {Type O LastRead -1 FirstWrite 0}
		AB_6 {Type O LastRead -1 FirstWrite 0}
		AB_7 {Type O LastRead -1 FirstWrite 0}
		AB_8 {Type O LastRead -1 FirstWrite 0}
		AB_9 {Type O LastRead -1 FirstWrite 0}
		AB_10 {Type O LastRead -1 FirstWrite 0}
		AB_11 {Type O LastRead -1 FirstWrite 0}
		AB_12 {Type O LastRead -1 FirstWrite 0}
		AB_13 {Type O LastRead -1 FirstWrite 0}
		AB_14 {Type O LastRead -1 FirstWrite 0}
		AB_15 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	AB { ap_memory {  { AB_address0 mem_address 1 4 }  { AB_ce0 mem_ce 1 1 }  { AB_we0 mem_we 1 1 }  { AB_d0 mem_din 1 32 } } }
	AB_1 { ap_memory {  { AB_1_address0 mem_address 1 4 }  { AB_1_ce0 mem_ce 1 1 }  { AB_1_we0 mem_we 1 1 }  { AB_1_d0 mem_din 1 32 } } }
	AB_2 { ap_memory {  { AB_2_address0 mem_address 1 4 }  { AB_2_ce0 mem_ce 1 1 }  { AB_2_we0 mem_we 1 1 }  { AB_2_d0 mem_din 1 32 } } }
	AB_3 { ap_memory {  { AB_3_address0 mem_address 1 4 }  { AB_3_ce0 mem_ce 1 1 }  { AB_3_we0 mem_we 1 1 }  { AB_3_d0 mem_din 1 32 } } }
	AB_4 { ap_memory {  { AB_4_address0 mem_address 1 4 }  { AB_4_ce0 mem_ce 1 1 }  { AB_4_we0 mem_we 1 1 }  { AB_4_d0 mem_din 1 32 } } }
	AB_5 { ap_memory {  { AB_5_address0 mem_address 1 4 }  { AB_5_ce0 mem_ce 1 1 }  { AB_5_we0 mem_we 1 1 }  { AB_5_d0 mem_din 1 32 } } }
	AB_6 { ap_memory {  { AB_6_address0 mem_address 1 4 }  { AB_6_ce0 mem_ce 1 1 }  { AB_6_we0 mem_we 1 1 }  { AB_6_d0 mem_din 1 32 } } }
	AB_7 { ap_memory {  { AB_7_address0 mem_address 1 4 }  { AB_7_ce0 mem_ce 1 1 }  { AB_7_we0 mem_we 1 1 }  { AB_7_d0 mem_din 1 32 } } }
	AB_8 { ap_memory {  { AB_8_address0 mem_address 1 4 }  { AB_8_ce0 mem_ce 1 1 }  { AB_8_we0 mem_we 1 1 }  { AB_8_d0 mem_din 1 32 } } }
	AB_9 { ap_memory {  { AB_9_address0 mem_address 1 4 }  { AB_9_ce0 mem_ce 1 1 }  { AB_9_we0 mem_we 1 1 }  { AB_9_d0 mem_din 1 32 } } }
	AB_10 { ap_memory {  { AB_10_address0 mem_address 1 4 }  { AB_10_ce0 mem_ce 1 1 }  { AB_10_we0 mem_we 1 1 }  { AB_10_d0 mem_din 1 32 } } }
	AB_11 { ap_memory {  { AB_11_address0 mem_address 1 4 }  { AB_11_ce0 mem_ce 1 1 }  { AB_11_we0 mem_we 1 1 }  { AB_11_d0 mem_din 1 32 } } }
	AB_12 { ap_memory {  { AB_12_address0 mem_address 1 4 }  { AB_12_ce0 mem_ce 1 1 }  { AB_12_we0 mem_we 1 1 }  { AB_12_d0 mem_din 1 32 } } }
	AB_13 { ap_memory {  { AB_13_address0 mem_address 1 4 }  { AB_13_ce0 mem_ce 1 1 }  { AB_13_we0 mem_we 1 1 }  { AB_13_d0 mem_din 1 32 } } }
	AB_14 { ap_memory {  { AB_14_address0 mem_address 1 4 }  { AB_14_ce0 mem_ce 1 1 }  { AB_14_we0 mem_we 1 1 }  { AB_14_d0 mem_din 1 32 } } }
	AB_15 { ap_memory {  { AB_15_address0 mem_address 1 4 }  { AB_15_ce0 mem_ce 1 1 }  { AB_15_we0 mem_we 1 1 }  { AB_15_d0 mem_din 1 32 } } }
}
