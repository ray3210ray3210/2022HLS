set moduleName Loop_1_proc1
set isTopModule 0
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
set C_modelName {Loop_1_proc1}
set C_modelType { void 0 }
set C_modelArgList {
	{ AB int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_1 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_2 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_3 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_4 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_5 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_6 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_7 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_8 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_9 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_10 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_11 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_12 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_13 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_14 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ AB_15 int 32 regular {array 16 { 0 1 } 1 1 }  }
	{ it int 32 regular  }
	{ Arows int 512 regular {fifo 0 volatile }  }
	{ Bcols int 512 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AB", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "AB_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "it", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Arows", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "Bcols", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 126
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ AB_address0 sc_out sc_lv 4 signal 0 } 
	{ AB_ce0 sc_out sc_logic 1 signal 0 } 
	{ AB_we0 sc_out sc_logic 1 signal 0 } 
	{ AB_d0 sc_out sc_lv 32 signal 0 } 
	{ AB_address1 sc_out sc_lv 4 signal 0 } 
	{ AB_ce1 sc_out sc_logic 1 signal 0 } 
	{ AB_q1 sc_in sc_lv 32 signal 0 } 
	{ AB_1_address0 sc_out sc_lv 4 signal 1 } 
	{ AB_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ AB_1_we0 sc_out sc_logic 1 signal 1 } 
	{ AB_1_d0 sc_out sc_lv 32 signal 1 } 
	{ AB_1_address1 sc_out sc_lv 4 signal 1 } 
	{ AB_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ AB_1_q1 sc_in sc_lv 32 signal 1 } 
	{ AB_2_address0 sc_out sc_lv 4 signal 2 } 
	{ AB_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ AB_2_we0 sc_out sc_logic 1 signal 2 } 
	{ AB_2_d0 sc_out sc_lv 32 signal 2 } 
	{ AB_2_address1 sc_out sc_lv 4 signal 2 } 
	{ AB_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ AB_2_q1 sc_in sc_lv 32 signal 2 } 
	{ AB_3_address0 sc_out sc_lv 4 signal 3 } 
	{ AB_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ AB_3_we0 sc_out sc_logic 1 signal 3 } 
	{ AB_3_d0 sc_out sc_lv 32 signal 3 } 
	{ AB_3_address1 sc_out sc_lv 4 signal 3 } 
	{ AB_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ AB_3_q1 sc_in sc_lv 32 signal 3 } 
	{ AB_4_address0 sc_out sc_lv 4 signal 4 } 
	{ AB_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ AB_4_we0 sc_out sc_logic 1 signal 4 } 
	{ AB_4_d0 sc_out sc_lv 32 signal 4 } 
	{ AB_4_address1 sc_out sc_lv 4 signal 4 } 
	{ AB_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ AB_4_q1 sc_in sc_lv 32 signal 4 } 
	{ AB_5_address0 sc_out sc_lv 4 signal 5 } 
	{ AB_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ AB_5_we0 sc_out sc_logic 1 signal 5 } 
	{ AB_5_d0 sc_out sc_lv 32 signal 5 } 
	{ AB_5_address1 sc_out sc_lv 4 signal 5 } 
	{ AB_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ AB_5_q1 sc_in sc_lv 32 signal 5 } 
	{ AB_6_address0 sc_out sc_lv 4 signal 6 } 
	{ AB_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ AB_6_we0 sc_out sc_logic 1 signal 6 } 
	{ AB_6_d0 sc_out sc_lv 32 signal 6 } 
	{ AB_6_address1 sc_out sc_lv 4 signal 6 } 
	{ AB_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ AB_6_q1 sc_in sc_lv 32 signal 6 } 
	{ AB_7_address0 sc_out sc_lv 4 signal 7 } 
	{ AB_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ AB_7_we0 sc_out sc_logic 1 signal 7 } 
	{ AB_7_d0 sc_out sc_lv 32 signal 7 } 
	{ AB_7_address1 sc_out sc_lv 4 signal 7 } 
	{ AB_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ AB_7_q1 sc_in sc_lv 32 signal 7 } 
	{ AB_8_address0 sc_out sc_lv 4 signal 8 } 
	{ AB_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ AB_8_we0 sc_out sc_logic 1 signal 8 } 
	{ AB_8_d0 sc_out sc_lv 32 signal 8 } 
	{ AB_8_address1 sc_out sc_lv 4 signal 8 } 
	{ AB_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ AB_8_q1 sc_in sc_lv 32 signal 8 } 
	{ AB_9_address0 sc_out sc_lv 4 signal 9 } 
	{ AB_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ AB_9_we0 sc_out sc_logic 1 signal 9 } 
	{ AB_9_d0 sc_out sc_lv 32 signal 9 } 
	{ AB_9_address1 sc_out sc_lv 4 signal 9 } 
	{ AB_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ AB_9_q1 sc_in sc_lv 32 signal 9 } 
	{ AB_10_address0 sc_out sc_lv 4 signal 10 } 
	{ AB_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ AB_10_we0 sc_out sc_logic 1 signal 10 } 
	{ AB_10_d0 sc_out sc_lv 32 signal 10 } 
	{ AB_10_address1 sc_out sc_lv 4 signal 10 } 
	{ AB_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ AB_10_q1 sc_in sc_lv 32 signal 10 } 
	{ AB_11_address0 sc_out sc_lv 4 signal 11 } 
	{ AB_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ AB_11_we0 sc_out sc_logic 1 signal 11 } 
	{ AB_11_d0 sc_out sc_lv 32 signal 11 } 
	{ AB_11_address1 sc_out sc_lv 4 signal 11 } 
	{ AB_11_ce1 sc_out sc_logic 1 signal 11 } 
	{ AB_11_q1 sc_in sc_lv 32 signal 11 } 
	{ AB_12_address0 sc_out sc_lv 4 signal 12 } 
	{ AB_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ AB_12_we0 sc_out sc_logic 1 signal 12 } 
	{ AB_12_d0 sc_out sc_lv 32 signal 12 } 
	{ AB_12_address1 sc_out sc_lv 4 signal 12 } 
	{ AB_12_ce1 sc_out sc_logic 1 signal 12 } 
	{ AB_12_q1 sc_in sc_lv 32 signal 12 } 
	{ AB_13_address0 sc_out sc_lv 4 signal 13 } 
	{ AB_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ AB_13_we0 sc_out sc_logic 1 signal 13 } 
	{ AB_13_d0 sc_out sc_lv 32 signal 13 } 
	{ AB_13_address1 sc_out sc_lv 4 signal 13 } 
	{ AB_13_ce1 sc_out sc_logic 1 signal 13 } 
	{ AB_13_q1 sc_in sc_lv 32 signal 13 } 
	{ AB_14_address0 sc_out sc_lv 4 signal 14 } 
	{ AB_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ AB_14_we0 sc_out sc_logic 1 signal 14 } 
	{ AB_14_d0 sc_out sc_lv 32 signal 14 } 
	{ AB_14_address1 sc_out sc_lv 4 signal 14 } 
	{ AB_14_ce1 sc_out sc_logic 1 signal 14 } 
	{ AB_14_q1 sc_in sc_lv 32 signal 14 } 
	{ AB_15_address0 sc_out sc_lv 4 signal 15 } 
	{ AB_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ AB_15_we0 sc_out sc_logic 1 signal 15 } 
	{ AB_15_d0 sc_out sc_lv 32 signal 15 } 
	{ AB_15_address1 sc_out sc_lv 4 signal 15 } 
	{ AB_15_ce1 sc_out sc_logic 1 signal 15 } 
	{ AB_15_q1 sc_in sc_lv 32 signal 15 } 
	{ it sc_in sc_lv 32 signal 16 } 
	{ Arows_dout sc_in sc_lv 512 signal 17 } 
	{ Arows_empty_n sc_in sc_logic 1 signal 17 } 
	{ Arows_read sc_out sc_logic 1 signal 17 } 
	{ Bcols_dout sc_in sc_lv 512 signal 18 } 
	{ Bcols_empty_n sc_in sc_logic 1 signal 18 } 
	{ Bcols_read sc_out sc_logic 1 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "AB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB", "role": "address0" }} , 
 	{ "name": "AB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "ce0" }} , 
 	{ "name": "AB_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "we0" }} , 
 	{ "name": "AB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB", "role": "d0" }} , 
 	{ "name": "AB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB", "role": "address1" }} , 
 	{ "name": "AB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "ce1" }} , 
 	{ "name": "AB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB", "role": "q1" }} , 
 	{ "name": "AB_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_1", "role": "address0" }} , 
 	{ "name": "AB_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_1", "role": "ce0" }} , 
 	{ "name": "AB_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_1", "role": "we0" }} , 
 	{ "name": "AB_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_1", "role": "d0" }} , 
 	{ "name": "AB_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_1", "role": "address1" }} , 
 	{ "name": "AB_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_1", "role": "ce1" }} , 
 	{ "name": "AB_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_1", "role": "q1" }} , 
 	{ "name": "AB_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_2", "role": "address0" }} , 
 	{ "name": "AB_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_2", "role": "ce0" }} , 
 	{ "name": "AB_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_2", "role": "we0" }} , 
 	{ "name": "AB_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_2", "role": "d0" }} , 
 	{ "name": "AB_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_2", "role": "address1" }} , 
 	{ "name": "AB_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_2", "role": "ce1" }} , 
 	{ "name": "AB_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_2", "role": "q1" }} , 
 	{ "name": "AB_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_3", "role": "address0" }} , 
 	{ "name": "AB_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_3", "role": "ce0" }} , 
 	{ "name": "AB_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_3", "role": "we0" }} , 
 	{ "name": "AB_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_3", "role": "d0" }} , 
 	{ "name": "AB_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_3", "role": "address1" }} , 
 	{ "name": "AB_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_3", "role": "ce1" }} , 
 	{ "name": "AB_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_3", "role": "q1" }} , 
 	{ "name": "AB_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_4", "role": "address0" }} , 
 	{ "name": "AB_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_4", "role": "ce0" }} , 
 	{ "name": "AB_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_4", "role": "we0" }} , 
 	{ "name": "AB_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_4", "role": "d0" }} , 
 	{ "name": "AB_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_4", "role": "address1" }} , 
 	{ "name": "AB_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_4", "role": "ce1" }} , 
 	{ "name": "AB_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_4", "role": "q1" }} , 
 	{ "name": "AB_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_5", "role": "address0" }} , 
 	{ "name": "AB_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_5", "role": "ce0" }} , 
 	{ "name": "AB_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_5", "role": "we0" }} , 
 	{ "name": "AB_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_5", "role": "d0" }} , 
 	{ "name": "AB_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_5", "role": "address1" }} , 
 	{ "name": "AB_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_5", "role": "ce1" }} , 
 	{ "name": "AB_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_5", "role": "q1" }} , 
 	{ "name": "AB_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_6", "role": "address0" }} , 
 	{ "name": "AB_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_6", "role": "ce0" }} , 
 	{ "name": "AB_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_6", "role": "we0" }} , 
 	{ "name": "AB_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_6", "role": "d0" }} , 
 	{ "name": "AB_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_6", "role": "address1" }} , 
 	{ "name": "AB_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_6", "role": "ce1" }} , 
 	{ "name": "AB_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_6", "role": "q1" }} , 
 	{ "name": "AB_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_7", "role": "address0" }} , 
 	{ "name": "AB_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_7", "role": "ce0" }} , 
 	{ "name": "AB_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_7", "role": "we0" }} , 
 	{ "name": "AB_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_7", "role": "d0" }} , 
 	{ "name": "AB_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_7", "role": "address1" }} , 
 	{ "name": "AB_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_7", "role": "ce1" }} , 
 	{ "name": "AB_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_7", "role": "q1" }} , 
 	{ "name": "AB_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_8", "role": "address0" }} , 
 	{ "name": "AB_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_8", "role": "ce0" }} , 
 	{ "name": "AB_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_8", "role": "we0" }} , 
 	{ "name": "AB_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_8", "role": "d0" }} , 
 	{ "name": "AB_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_8", "role": "address1" }} , 
 	{ "name": "AB_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_8", "role": "ce1" }} , 
 	{ "name": "AB_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_8", "role": "q1" }} , 
 	{ "name": "AB_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_9", "role": "address0" }} , 
 	{ "name": "AB_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_9", "role": "ce0" }} , 
 	{ "name": "AB_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_9", "role": "we0" }} , 
 	{ "name": "AB_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_9", "role": "d0" }} , 
 	{ "name": "AB_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_9", "role": "address1" }} , 
 	{ "name": "AB_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_9", "role": "ce1" }} , 
 	{ "name": "AB_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_9", "role": "q1" }} , 
 	{ "name": "AB_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_10", "role": "address0" }} , 
 	{ "name": "AB_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_10", "role": "ce0" }} , 
 	{ "name": "AB_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_10", "role": "we0" }} , 
 	{ "name": "AB_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_10", "role": "d0" }} , 
 	{ "name": "AB_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_10", "role": "address1" }} , 
 	{ "name": "AB_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_10", "role": "ce1" }} , 
 	{ "name": "AB_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_10", "role": "q1" }} , 
 	{ "name": "AB_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_11", "role": "address0" }} , 
 	{ "name": "AB_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_11", "role": "ce0" }} , 
 	{ "name": "AB_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_11", "role": "we0" }} , 
 	{ "name": "AB_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_11", "role": "d0" }} , 
 	{ "name": "AB_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_11", "role": "address1" }} , 
 	{ "name": "AB_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_11", "role": "ce1" }} , 
 	{ "name": "AB_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_11", "role": "q1" }} , 
 	{ "name": "AB_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_12", "role": "address0" }} , 
 	{ "name": "AB_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_12", "role": "ce0" }} , 
 	{ "name": "AB_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_12", "role": "we0" }} , 
 	{ "name": "AB_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_12", "role": "d0" }} , 
 	{ "name": "AB_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_12", "role": "address1" }} , 
 	{ "name": "AB_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_12", "role": "ce1" }} , 
 	{ "name": "AB_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_12", "role": "q1" }} , 
 	{ "name": "AB_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_13", "role": "address0" }} , 
 	{ "name": "AB_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_13", "role": "ce0" }} , 
 	{ "name": "AB_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_13", "role": "we0" }} , 
 	{ "name": "AB_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_13", "role": "d0" }} , 
 	{ "name": "AB_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_13", "role": "address1" }} , 
 	{ "name": "AB_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_13", "role": "ce1" }} , 
 	{ "name": "AB_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_13", "role": "q1" }} , 
 	{ "name": "AB_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_14", "role": "address0" }} , 
 	{ "name": "AB_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_14", "role": "ce0" }} , 
 	{ "name": "AB_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_14", "role": "we0" }} , 
 	{ "name": "AB_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_14", "role": "d0" }} , 
 	{ "name": "AB_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_14", "role": "address1" }} , 
 	{ "name": "AB_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_14", "role": "ce1" }} , 
 	{ "name": "AB_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_14", "role": "q1" }} , 
 	{ "name": "AB_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_15", "role": "address0" }} , 
 	{ "name": "AB_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_15", "role": "ce0" }} , 
 	{ "name": "AB_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_15", "role": "we0" }} , 
 	{ "name": "AB_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_15", "role": "d0" }} , 
 	{ "name": "AB_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_15", "role": "address1" }} , 
 	{ "name": "AB_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_15", "role": "ce1" }} , 
 	{ "name": "AB_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_15", "role": "q1" }} , 
 	{ "name": "it", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "it", "role": "default" }} , 
 	{ "name": "Arows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "Arows", "role": "dout" }} , 
 	{ "name": "Arows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows", "role": "empty_n" }} , 
 	{ "name": "Arows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows", "role": "read" }} , 
 	{ "name": "Bcols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "Bcols", "role": "dout" }} , 
 	{ "name": "Bcols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols", "role": "empty_n" }} , 
 	{ "name": "Bcols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6"],
		"CDFG" : "Loop_1_proc1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1797", "EstimateLatencyMax" : "2318",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "AB", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_1", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_2", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_3", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_4", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_5", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_6", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_6", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_7", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_7", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_8", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_8", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_8", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_9", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_9", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_9", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_10", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_10", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_10", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_11", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_11", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_11", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_12", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_12", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_12", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_13", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_13", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_13", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_14", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_14", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_14", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "AB_15", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Loop_1_proc1_Pipeline_1_fu_158", "Port" : "AB_15", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "AB_15", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "it", "Type" : "None", "Direction" : "I"},
			{"Name" : "Arows", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Loop_1_proc1_Pipeline_loadA_fu_194", "Port" : "Arows", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "Bcols", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Bcols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Loop_1_proc1_Pipeline_loadA_fu_194", "Port" : "A", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "6", "SubInstance" : "grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Port" : "A", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "partialsum", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_1_fu_158", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "Loop_1_proc1_Pipeline_1",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_1_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_loadA_fu_194", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Loop_1_proc1_Pipeline_loadA",
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_loadA_fu_194.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
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
			{"Name" : "AB_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "AB", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tempB_a", "Type" : "None", "Direction" : "I"},
			{"Name" : "tempB_a_1", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "tmp_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln145_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln145_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ps_i", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U19", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U20", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U21", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U22", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U23", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U24", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U25", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U26", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U27", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U28", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U29", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U30", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U31", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U32", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U33", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.mul_32s_32s_32_2_1_U34", "Parent" : "6"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_1_proc1_Pipeline_ps_i_fu_202.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"}]}


set ArgLastReadFirstWriteLatency {
	Loop_1_proc1 {
		AB {Type IO LastRead 3 FirstWrite 0}
		AB_1 {Type IO LastRead 3 FirstWrite 0}
		AB_2 {Type IO LastRead 3 FirstWrite 0}
		AB_3 {Type IO LastRead 3 FirstWrite 0}
		AB_4 {Type IO LastRead 3 FirstWrite 0}
		AB_5 {Type IO LastRead 3 FirstWrite 0}
		AB_6 {Type IO LastRead 3 FirstWrite 0}
		AB_7 {Type IO LastRead 3 FirstWrite 0}
		AB_8 {Type IO LastRead 3 FirstWrite 0}
		AB_9 {Type IO LastRead 3 FirstWrite 0}
		AB_10 {Type IO LastRead 3 FirstWrite 0}
		AB_11 {Type IO LastRead 3 FirstWrite 0}
		AB_12 {Type IO LastRead 3 FirstWrite 0}
		AB_13 {Type IO LastRead 3 FirstWrite 0}
		AB_14 {Type IO LastRead 3 FirstWrite 0}
		AB_15 {Type IO LastRead 3 FirstWrite 0}
		it {Type I LastRead 1 FirstWrite -1}
		Arows {Type I LastRead 1 FirstWrite -1}
		Bcols {Type I LastRead 5 FirstWrite -1}
		A {Type IO LastRead -1 FirstWrite -1}}
	Loop_1_proc1_Pipeline_1 {
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
		AB_15 {Type O LastRead -1 FirstWrite 0}}
	Loop_1_proc1_Pipeline_loadA {
		Arows {Type I LastRead 1 FirstWrite -1}
		A {Type O LastRead -1 FirstWrite 1}}
	Loop_1_proc1_Pipeline_ps_i {
		zext_ln23 {Type I LastRead 0 FirstWrite -1}
		AB_15 {Type IO LastRead 3 FirstWrite 4}
		AB_14 {Type IO LastRead 3 FirstWrite 4}
		AB_13 {Type IO LastRead 3 FirstWrite 4}
		AB_12 {Type IO LastRead 3 FirstWrite 4}
		AB_11 {Type IO LastRead 3 FirstWrite 4}
		AB_10 {Type IO LastRead 3 FirstWrite 4}
		AB_9 {Type IO LastRead 3 FirstWrite 4}
		AB_8 {Type IO LastRead 3 FirstWrite 4}
		AB_7 {Type IO LastRead 3 FirstWrite 4}
		AB_6 {Type IO LastRead 3 FirstWrite 4}
		AB_5 {Type IO LastRead 3 FirstWrite 4}
		AB_4 {Type IO LastRead 3 FirstWrite 4}
		AB_3 {Type IO LastRead 3 FirstWrite 4}
		AB_2 {Type IO LastRead 3 FirstWrite 4}
		AB_1 {Type IO LastRead 3 FirstWrite 4}
		AB {Type IO LastRead 3 FirstWrite 4}
		tempB_a {Type I LastRead 0 FirstWrite -1}
		tempB_a_1 {Type I LastRead 0 FirstWrite -1}
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
		tmp_25 {Type I LastRead 0 FirstWrite -1}
		trunc_ln145_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln145_3 {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1797", "Max" : "2318"}
	, {"Name" : "Interval", "Min" : "1797", "Max" : "2318"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	AB { ap_memory {  { AB_address0 mem_address 1 4 }  { AB_ce0 mem_ce 1 1 }  { AB_we0 mem_we 1 1 }  { AB_d0 mem_din 1 32 }  { AB_address1 MemPortADDR2 1 4 }  { AB_ce1 MemPortCE2 1 1 }  { AB_q1 MemPortDOUT2 0 32 } } }
	AB_1 { ap_memory {  { AB_1_address0 mem_address 1 4 }  { AB_1_ce0 mem_ce 1 1 }  { AB_1_we0 mem_we 1 1 }  { AB_1_d0 mem_din 1 32 }  { AB_1_address1 MemPortADDR2 1 4 }  { AB_1_ce1 MemPortCE2 1 1 }  { AB_1_q1 MemPortDOUT2 0 32 } } }
	AB_2 { ap_memory {  { AB_2_address0 mem_address 1 4 }  { AB_2_ce0 mem_ce 1 1 }  { AB_2_we0 mem_we 1 1 }  { AB_2_d0 mem_din 1 32 }  { AB_2_address1 MemPortADDR2 1 4 }  { AB_2_ce1 MemPortCE2 1 1 }  { AB_2_q1 MemPortDOUT2 0 32 } } }
	AB_3 { ap_memory {  { AB_3_address0 mem_address 1 4 }  { AB_3_ce0 mem_ce 1 1 }  { AB_3_we0 mem_we 1 1 }  { AB_3_d0 mem_din 1 32 }  { AB_3_address1 MemPortADDR2 1 4 }  { AB_3_ce1 MemPortCE2 1 1 }  { AB_3_q1 MemPortDOUT2 0 32 } } }
	AB_4 { ap_memory {  { AB_4_address0 mem_address 1 4 }  { AB_4_ce0 mem_ce 1 1 }  { AB_4_we0 mem_we 1 1 }  { AB_4_d0 mem_din 1 32 }  { AB_4_address1 MemPortADDR2 1 4 }  { AB_4_ce1 MemPortCE2 1 1 }  { AB_4_q1 MemPortDOUT2 0 32 } } }
	AB_5 { ap_memory {  { AB_5_address0 mem_address 1 4 }  { AB_5_ce0 mem_ce 1 1 }  { AB_5_we0 mem_we 1 1 }  { AB_5_d0 mem_din 1 32 }  { AB_5_address1 MemPortADDR2 1 4 }  { AB_5_ce1 MemPortCE2 1 1 }  { AB_5_q1 MemPortDOUT2 0 32 } } }
	AB_6 { ap_memory {  { AB_6_address0 mem_address 1 4 }  { AB_6_ce0 mem_ce 1 1 }  { AB_6_we0 mem_we 1 1 }  { AB_6_d0 mem_din 1 32 }  { AB_6_address1 MemPortADDR2 1 4 }  { AB_6_ce1 MemPortCE2 1 1 }  { AB_6_q1 MemPortDOUT2 0 32 } } }
	AB_7 { ap_memory {  { AB_7_address0 mem_address 1 4 }  { AB_7_ce0 mem_ce 1 1 }  { AB_7_we0 mem_we 1 1 }  { AB_7_d0 mem_din 1 32 }  { AB_7_address1 MemPortADDR2 1 4 }  { AB_7_ce1 MemPortCE2 1 1 }  { AB_7_q1 MemPortDOUT2 0 32 } } }
	AB_8 { ap_memory {  { AB_8_address0 mem_address 1 4 }  { AB_8_ce0 mem_ce 1 1 }  { AB_8_we0 mem_we 1 1 }  { AB_8_d0 mem_din 1 32 }  { AB_8_address1 MemPortADDR2 1 4 }  { AB_8_ce1 MemPortCE2 1 1 }  { AB_8_q1 MemPortDOUT2 0 32 } } }
	AB_9 { ap_memory {  { AB_9_address0 mem_address 1 4 }  { AB_9_ce0 mem_ce 1 1 }  { AB_9_we0 mem_we 1 1 }  { AB_9_d0 mem_din 1 32 }  { AB_9_address1 MemPortADDR2 1 4 }  { AB_9_ce1 MemPortCE2 1 1 }  { AB_9_q1 MemPortDOUT2 0 32 } } }
	AB_10 { ap_memory {  { AB_10_address0 mem_address 1 4 }  { AB_10_ce0 mem_ce 1 1 }  { AB_10_we0 mem_we 1 1 }  { AB_10_d0 mem_din 1 32 }  { AB_10_address1 MemPortADDR2 1 4 }  { AB_10_ce1 MemPortCE2 1 1 }  { AB_10_q1 MemPortDOUT2 0 32 } } }
	AB_11 { ap_memory {  { AB_11_address0 mem_address 1 4 }  { AB_11_ce0 mem_ce 1 1 }  { AB_11_we0 mem_we 1 1 }  { AB_11_d0 mem_din 1 32 }  { AB_11_address1 MemPortADDR2 1 4 }  { AB_11_ce1 MemPortCE2 1 1 }  { AB_11_q1 MemPortDOUT2 0 32 } } }
	AB_12 { ap_memory {  { AB_12_address0 mem_address 1 4 }  { AB_12_ce0 mem_ce 1 1 }  { AB_12_we0 mem_we 1 1 }  { AB_12_d0 mem_din 1 32 }  { AB_12_address1 MemPortADDR2 1 4 }  { AB_12_ce1 MemPortCE2 1 1 }  { AB_12_q1 MemPortDOUT2 0 32 } } }
	AB_13 { ap_memory {  { AB_13_address0 mem_address 1 4 }  { AB_13_ce0 mem_ce 1 1 }  { AB_13_we0 mem_we 1 1 }  { AB_13_d0 mem_din 1 32 }  { AB_13_address1 MemPortADDR2 1 4 }  { AB_13_ce1 MemPortCE2 1 1 }  { AB_13_q1 MemPortDOUT2 0 32 } } }
	AB_14 { ap_memory {  { AB_14_address0 mem_address 1 4 }  { AB_14_ce0 mem_ce 1 1 }  { AB_14_we0 mem_we 1 1 }  { AB_14_d0 mem_din 1 32 }  { AB_14_address1 MemPortADDR2 1 4 }  { AB_14_ce1 MemPortCE2 1 1 }  { AB_14_q1 MemPortDOUT2 0 32 } } }
	AB_15 { ap_memory {  { AB_15_address0 mem_address 1 4 }  { AB_15_ce0 mem_ce 1 1 }  { AB_15_we0 mem_we 1 1 }  { AB_15_d0 mem_din 1 32 }  { AB_15_address1 MemPortADDR2 1 4 }  { AB_15_ce1 MemPortCE2 1 1 }  { AB_15_q1 MemPortDOUT2 0 32 } } }
	it { ap_none {  { it in_data 0 32 } } }
	Arows { ap_fifo {  { Arows_dout fifo_port_we 0 512 }  { Arows_empty_n fifo_status 0 1 }  { Arows_read fifo_data 1 1 } } }
	Bcols { ap_fifo {  { Bcols_dout fifo_port_we 0 512 }  { Bcols_empty_n fifo_status 0 1 }  { Bcols_read fifo_data 1 1 } } }
}
