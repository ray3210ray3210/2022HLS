set moduleName Loop_1_proc1_Pipeline_loadA
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
set C_modelName {Loop_1_proc1_Pipeline_loadA}
set C_modelType { void 0 }
set C_modelArgList {
	{ Arows int 512 regular {fifo 0 volatile }  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15 int 32 regular {array 64 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Arows", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 73
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
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 sc_out sc_lv 6 signal 1 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0 sc_out sc_logic 1 signal 1 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_d0 sc_out sc_lv 32 signal 1 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 sc_out sc_lv 6 signal 2 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0 sc_out sc_logic 1 signal 2 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_d0 sc_out sc_lv 32 signal 2 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 sc_out sc_lv 6 signal 3 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0 sc_out sc_logic 1 signal 3 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0 sc_out sc_lv 32 signal 3 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 sc_out sc_lv 6 signal 4 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0 sc_out sc_logic 1 signal 4 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0 sc_out sc_lv 32 signal 4 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_address0 sc_out sc_lv 6 signal 5 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_we0 sc_out sc_logic 1 signal 5 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_d0 sc_out sc_lv 32 signal 5 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_address0 sc_out sc_lv 6 signal 6 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_we0 sc_out sc_logic 1 signal 6 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_d0 sc_out sc_lv 32 signal 6 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_address0 sc_out sc_lv 6 signal 7 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_we0 sc_out sc_logic 1 signal 7 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_d0 sc_out sc_lv 32 signal 7 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_address0 sc_out sc_lv 6 signal 8 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_we0 sc_out sc_logic 1 signal 8 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_d0 sc_out sc_lv 32 signal 8 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_address0 sc_out sc_lv 6 signal 9 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_we0 sc_out sc_logic 1 signal 9 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_d0 sc_out sc_lv 32 signal 9 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_address0 sc_out sc_lv 6 signal 10 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_we0 sc_out sc_logic 1 signal 10 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_d0 sc_out sc_lv 32 signal 10 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_address0 sc_out sc_lv 6 signal 11 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_we0 sc_out sc_logic 1 signal 11 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_d0 sc_out sc_lv 32 signal 11 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_address0 sc_out sc_lv 6 signal 12 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_we0 sc_out sc_logic 1 signal 12 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_d0 sc_out sc_lv 32 signal 12 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_address0 sc_out sc_lv 6 signal 13 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_we0 sc_out sc_logic 1 signal 13 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_d0 sc_out sc_lv 32 signal 13 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_address0 sc_out sc_lv 6 signal 14 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_we0 sc_out sc_logic 1 signal 14 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_d0 sc_out sc_lv 32 signal 14 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_address0 sc_out sc_lv 6 signal 15 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_we0 sc_out sc_logic 1 signal 15 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_d0 sc_out sc_lv 32 signal 15 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_address0 sc_out sc_lv 6 signal 16 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_we0 sc_out sc_logic 1 signal 16 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_d0 sc_out sc_lv 32 signal 16 } 
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
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "we0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "d0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "we0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "d0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "we0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "d0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "we0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "d0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4", "role": "we0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4", "role": "d0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5", "role": "we0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5", "role": "d0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6", "role": "we0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6", "role": "d0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7", "role": "we0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7", "role": "d0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8", "role": "we0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8", "role": "d0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9", "role": "we0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9", "role": "d0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10", "role": "we0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10", "role": "d0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11", "role": "we0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11", "role": "d0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12", "role": "we0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12", "role": "d0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13", "role": "we0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13", "role": "d0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14", "role": "we0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14", "role": "d0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15", "role": "we0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Loop_1_proc1_Pipeline_loadA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
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
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loadA", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_1_proc1_Pipeline_loadA {
		Arows {Type I LastRead 1 FirstWrite -1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A {Type O LastRead -1 FirstWrite 1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 {Type O LastRead -1 FirstWrite 1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 {Type O LastRead -1 FirstWrite 1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 {Type O LastRead -1 FirstWrite 1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4 {Type O LastRead -1 FirstWrite 1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5 {Type O LastRead -1 FirstWrite 1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6 {Type O LastRead -1 FirstWrite 1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7 {Type O LastRead -1 FirstWrite 1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8 {Type O LastRead -1 FirstWrite 1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9 {Type O LastRead -1 FirstWrite 1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10 {Type O LastRead -1 FirstWrite 1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11 {Type O LastRead -1 FirstWrite 1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12 {Type O LastRead -1 FirstWrite 1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13 {Type O LastRead -1 FirstWrite 1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14 {Type O LastRead -1 FirstWrite 1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Arows { ap_fifo {  { Arows_dout fifo_port_we 0 512 }  { Arows_empty_n fifo_status 0 1 }  { Arows_read fifo_data 1 1 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0 mem_we 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_d0 mem_din 1 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0 mem_we 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_d0 mem_din 1 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0 mem_we 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0 mem_din 1 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0 mem_we 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0 mem_din 1 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_we0 mem_we 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_d0 mem_din 1 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_we0 mem_we 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_d0 mem_din 1 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_we0 mem_we 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_d0 mem_din 1 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_we0 mem_we 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_d0 mem_din 1 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_we0 mem_we 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_d0 mem_din 1 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_we0 mem_we 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_d0 mem_din 1 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_we0 mem_we 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_d0 mem_din 1 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_we0 mem_we 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_d0 mem_din 1 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_we0 mem_we 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_d0 mem_din 1 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_we0 mem_we 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_d0 mem_din 1 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_we0 mem_we 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_d0 mem_din 1 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_we0 mem_we 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_d0 mem_din 1 32 } } }
}
