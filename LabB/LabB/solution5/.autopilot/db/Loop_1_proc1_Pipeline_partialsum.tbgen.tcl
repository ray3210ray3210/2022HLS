set moduleName Loop_1_proc1_Pipeline_partialsum
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
set C_modelName {Loop_1_proc1_Pipeline_partialsum}
set C_modelType { void 0 }
set C_modelArgList {
	{ AB_load_16 int 512 regular  }
	{ AB_load_15 int 512 regular  }
	{ AB_load_14 int 512 regular  }
	{ AB_load_13 int 512 regular  }
	{ AB_load_12 int 512 regular  }
	{ AB_load_11 int 512 regular  }
	{ AB_load_10 int 512 regular  }
	{ AB_load_9 int 512 regular  }
	{ AB_load_8 int 512 regular  }
	{ AB_load_7 int 512 regular  }
	{ AB_load_6 int 512 regular  }
	{ AB_load_5 int 512 regular  }
	{ AB_load_4 int 512 regular  }
	{ AB_load_3 int 512 regular  }
	{ AB_load_2 int 512 regular  }
	{ AB_load_1 int 512 regular  }
	{ Bcols int 512 regular {fifo 0 volatile }  }
	{ p_out int 512 regular {pointer 1}  }
	{ p_out1 int 512 regular {pointer 1}  }
	{ p_out2 int 512 regular {pointer 1}  }
	{ p_out3 int 512 regular {pointer 1}  }
	{ p_out4 int 512 regular {pointer 1}  }
	{ p_out5 int 512 regular {pointer 1}  }
	{ p_out6 int 512 regular {pointer 1}  }
	{ p_out7 int 512 regular {pointer 1}  }
	{ p_out8 int 512 regular {pointer 1}  }
	{ p_out9 int 512 regular {pointer 1}  }
	{ p_out10 int 512 regular {pointer 1}  }
	{ p_out11 int 512 regular {pointer 1}  }
	{ p_out12 int 512 regular {pointer 1}  }
	{ p_out13 int 512 regular {pointer 1}  }
	{ p_out14 int 512 regular {pointer 1}  }
	{ p_out15 int 512 regular {pointer 1}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15 int 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AB_load_16", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_15", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_14", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_13", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_12", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_11", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_10", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_9", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_8", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_7", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_6", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_5", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_4", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_3", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_2", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_load_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "Bcols", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out2", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out3", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out4", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out5", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out6", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out7", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out8", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out9", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out10", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out11", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out12", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out13", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out14", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out15", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Bcols_dout sc_in sc_lv 512 signal 16 } 
	{ Bcols_empty_n sc_in sc_logic 1 signal 16 } 
	{ Bcols_read sc_out sc_logic 1 signal 16 } 
	{ AB_load_16 sc_in sc_lv 512 signal 0 } 
	{ AB_load_15 sc_in sc_lv 512 signal 1 } 
	{ AB_load_14 sc_in sc_lv 512 signal 2 } 
	{ AB_load_13 sc_in sc_lv 512 signal 3 } 
	{ AB_load_12 sc_in sc_lv 512 signal 4 } 
	{ AB_load_11 sc_in sc_lv 512 signal 5 } 
	{ AB_load_10 sc_in sc_lv 512 signal 6 } 
	{ AB_load_9 sc_in sc_lv 512 signal 7 } 
	{ AB_load_8 sc_in sc_lv 512 signal 8 } 
	{ AB_load_7 sc_in sc_lv 512 signal 9 } 
	{ AB_load_6 sc_in sc_lv 512 signal 10 } 
	{ AB_load_5 sc_in sc_lv 512 signal 11 } 
	{ AB_load_4 sc_in sc_lv 512 signal 12 } 
	{ AB_load_3 sc_in sc_lv 512 signal 13 } 
	{ AB_load_2 sc_in sc_lv 512 signal 14 } 
	{ AB_load_1 sc_in sc_lv 512 signal 15 } 
	{ p_out sc_out sc_lv 512 signal 17 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ p_out1 sc_out sc_lv 512 signal 18 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ p_out2 sc_out sc_lv 512 signal 19 } 
	{ p_out2_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ p_out3 sc_out sc_lv 512 signal 20 } 
	{ p_out3_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ p_out4 sc_out sc_lv 512 signal 21 } 
	{ p_out4_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ p_out5 sc_out sc_lv 512 signal 22 } 
	{ p_out5_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ p_out6 sc_out sc_lv 512 signal 23 } 
	{ p_out6_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ p_out7 sc_out sc_lv 512 signal 24 } 
	{ p_out7_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ p_out8 sc_out sc_lv 512 signal 25 } 
	{ p_out8_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ p_out9 sc_out sc_lv 512 signal 26 } 
	{ p_out9_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ p_out10 sc_out sc_lv 512 signal 27 } 
	{ p_out10_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ p_out11 sc_out sc_lv 512 signal 28 } 
	{ p_out11_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ p_out12 sc_out sc_lv 512 signal 29 } 
	{ p_out12_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ p_out13 sc_out sc_lv 512 signal 30 } 
	{ p_out13_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ p_out14 sc_out sc_lv 512 signal 31 } 
	{ p_out14_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ p_out15 sc_out sc_lv 512 signal 32 } 
	{ p_out15_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 sc_out sc_lv 6 signal 33 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 sc_out sc_logic 1 signal 33 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_q0 sc_in sc_lv 32 signal 33 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 sc_out sc_lv 6 signal 34 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 sc_out sc_logic 1 signal 34 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_q0 sc_in sc_lv 32 signal 34 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 sc_out sc_lv 6 signal 35 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 sc_out sc_logic 1 signal 35 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_q0 sc_in sc_lv 32 signal 35 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 sc_out sc_lv 6 signal 36 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 sc_out sc_logic 1 signal 36 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_q0 sc_in sc_lv 32 signal 36 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_address0 sc_out sc_lv 6 signal 37 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0 sc_out sc_logic 1 signal 37 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_q0 sc_in sc_lv 32 signal 37 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_address0 sc_out sc_lv 6 signal 38 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0 sc_out sc_logic 1 signal 38 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_q0 sc_in sc_lv 32 signal 38 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_address0 sc_out sc_lv 6 signal 39 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0 sc_out sc_logic 1 signal 39 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_q0 sc_in sc_lv 32 signal 39 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_address0 sc_out sc_lv 6 signal 40 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0 sc_out sc_logic 1 signal 40 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_q0 sc_in sc_lv 32 signal 40 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_address0 sc_out sc_lv 6 signal 41 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0 sc_out sc_logic 1 signal 41 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_q0 sc_in sc_lv 32 signal 41 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_address0 sc_out sc_lv 6 signal 42 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0 sc_out sc_logic 1 signal 42 } 
	{ blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_q0 sc_in sc_lv 32 signal 42 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_address0 sc_out sc_lv 6 signal 43 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0 sc_out sc_logic 1 signal 43 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_q0 sc_in sc_lv 32 signal 43 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_address0 sc_out sc_lv 6 signal 44 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0 sc_out sc_logic 1 signal 44 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_q0 sc_in sc_lv 32 signal 44 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_address0 sc_out sc_lv 6 signal 45 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0 sc_out sc_logic 1 signal 45 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_q0 sc_in sc_lv 32 signal 45 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_address0 sc_out sc_lv 6 signal 46 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0 sc_out sc_logic 1 signal 46 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_q0 sc_in sc_lv 32 signal 46 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_address0 sc_out sc_lv 6 signal 47 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0 sc_out sc_logic 1 signal 47 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_q0 sc_in sc_lv 32 signal 47 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_address0 sc_out sc_lv 6 signal 48 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0 sc_out sc_logic 1 signal 48 } 
	{ p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_q0 sc_in sc_lv 32 signal 48 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Bcols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "Bcols", "role": "dout" }} , 
 	{ "name": "Bcols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols", "role": "empty_n" }} , 
 	{ "name": "Bcols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols", "role": "read" }} , 
 	{ "name": "AB_load_16", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_16", "role": "default" }} , 
 	{ "name": "AB_load_15", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_15", "role": "default" }} , 
 	{ "name": "AB_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_14", "role": "default" }} , 
 	{ "name": "AB_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_13", "role": "default" }} , 
 	{ "name": "AB_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_12", "role": "default" }} , 
 	{ "name": "AB_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_11", "role": "default" }} , 
 	{ "name": "AB_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_10", "role": "default" }} , 
 	{ "name": "AB_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_9", "role": "default" }} , 
 	{ "name": "AB_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_8", "role": "default" }} , 
 	{ "name": "AB_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_7", "role": "default" }} , 
 	{ "name": "AB_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_6", "role": "default" }} , 
 	{ "name": "AB_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_5", "role": "default" }} , 
 	{ "name": "AB_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_4", "role": "default" }} , 
 	{ "name": "AB_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_3", "role": "default" }} , 
 	{ "name": "AB_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_2", "role": "default" }} , 
 	{ "name": "AB_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_load_1", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }} , 
 	{ "name": "p_out2", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out2", "role": "default" }} , 
 	{ "name": "p_out2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out2", "role": "ap_vld" }} , 
 	{ "name": "p_out3", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out3", "role": "default" }} , 
 	{ "name": "p_out3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out3", "role": "ap_vld" }} , 
 	{ "name": "p_out4", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out4", "role": "default" }} , 
 	{ "name": "p_out4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out4", "role": "ap_vld" }} , 
 	{ "name": "p_out5", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out5", "role": "default" }} , 
 	{ "name": "p_out5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out5", "role": "ap_vld" }} , 
 	{ "name": "p_out6", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out6", "role": "default" }} , 
 	{ "name": "p_out6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out6", "role": "ap_vld" }} , 
 	{ "name": "p_out7", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out7", "role": "default" }} , 
 	{ "name": "p_out7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out7", "role": "ap_vld" }} , 
 	{ "name": "p_out8", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out8", "role": "default" }} , 
 	{ "name": "p_out8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out8", "role": "ap_vld" }} , 
 	{ "name": "p_out9", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out9", "role": "default" }} , 
 	{ "name": "p_out9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out9", "role": "ap_vld" }} , 
 	{ "name": "p_out10", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out10", "role": "default" }} , 
 	{ "name": "p_out10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out10", "role": "ap_vld" }} , 
 	{ "name": "p_out11", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out11", "role": "default" }} , 
 	{ "name": "p_out11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out11", "role": "ap_vld" }} , 
 	{ "name": "p_out12", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out12", "role": "default" }} , 
 	{ "name": "p_out12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out12", "role": "ap_vld" }} , 
 	{ "name": "p_out13", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out13", "role": "default" }} , 
 	{ "name": "p_out13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out13", "role": "ap_vld" }} , 
 	{ "name": "p_out14", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out14", "role": "default" }} , 
 	{ "name": "p_out14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out14", "role": "ap_vld" }} , 
 	{ "name": "p_out15", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_out15", "role": "default" }} , 
 	{ "name": "p_out15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out15", "role": "ap_vld" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "q0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "q0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "q0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "q0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4", "role": "q0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5", "role": "q0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6", "role": "q0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7", "role": "q0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8", "role": "q0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9", "role": "address0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9", "role": "ce0" }} , 
 	{ "name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9", "role": "q0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10", "role": "q0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11", "role": "q0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12", "role": "q0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13", "role": "q0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14", "role": "q0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15", "role": "address0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15", "role": "ce0" }} , 
 	{ "name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257"],
		"CDFG" : "Loop_1_proc1_Pipeline_partialsum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "AB_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bcols", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Bcols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "partialsum", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U19", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U20", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U21", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U22", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U23", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U24", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U25", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U26", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U27", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U28", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U29", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U30", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U31", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U32", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U33", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U34", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U35", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U36", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U37", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U38", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U39", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U40", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U41", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U42", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U43", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U44", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U45", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U46", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U47", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U48", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U49", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U50", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U51", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U52", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U53", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U54", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U55", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U56", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U57", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U58", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U59", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U60", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U61", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U62", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U63", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U64", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U65", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U66", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U67", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U68", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U69", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U70", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U71", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U72", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U73", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U74", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U75", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U76", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U77", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U78", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U79", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U80", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U81", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U82", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U83", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U84", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U85", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U86", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U87", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U88", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U89", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U90", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U91", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U92", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U93", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U94", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U95", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U96", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U97", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U98", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U99", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U100", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U101", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U102", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U103", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U104", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U105", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U106", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U107", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U108", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U109", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U110", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U111", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U112", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U113", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U114", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U115", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U116", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U117", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U118", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U119", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U120", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U121", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U122", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U123", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U124", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U125", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U126", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U127", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U128", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U129", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U130", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U131", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U132", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U133", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U134", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U135", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U136", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U137", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U138", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U139", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U140", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U141", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U142", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U143", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U144", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U145", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U146", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U147", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U148", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U149", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U150", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U151", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U152", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U153", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U154", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U155", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U156", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U157", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U158", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U159", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U160", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U161", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U162", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U163", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U164", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U165", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U166", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U167", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U168", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U169", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U170", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U171", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U172", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U173", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U174", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U175", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U176", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U177", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U178", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U179", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U180", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U181", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U182", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U183", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U184", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U185", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U186", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U187", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U188", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U189", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U190", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U191", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U192", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U193", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U194", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U195", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U196", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U197", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U198", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U199", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U200", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U201", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U202", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U203", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U204", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U205", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U206", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U207", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U208", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U209", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U210", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U211", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U212", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U213", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U214", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U215", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U216", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U217", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U218", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U219", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U220", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U221", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U222", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U223", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U224", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U225", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U226", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U227", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U228", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U229", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U230", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U231", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U232", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U233", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U234", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U235", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U236", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U237", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U238", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U239", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U240", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U241", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U242", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U243", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U244", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U245", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U246", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U247", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U248", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U249", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U250", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U251", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U252", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U253", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U254", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U255", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U256", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U257", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U258", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U259", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U260", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U261", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U262", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U263", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U264", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U265", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U266", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U267", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U268", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U269", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U270", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U271", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U272", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U273", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U274", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_1_proc1_Pipeline_partialsum {
		AB_load_16 {Type I LastRead 0 FirstWrite -1}
		AB_load_15 {Type I LastRead 0 FirstWrite -1}
		AB_load_14 {Type I LastRead 0 FirstWrite -1}
		AB_load_13 {Type I LastRead 0 FirstWrite -1}
		AB_load_12 {Type I LastRead 0 FirstWrite -1}
		AB_load_11 {Type I LastRead 0 FirstWrite -1}
		AB_load_10 {Type I LastRead 0 FirstWrite -1}
		AB_load_9 {Type I LastRead 0 FirstWrite -1}
		AB_load_8 {Type I LastRead 0 FirstWrite -1}
		AB_load_7 {Type I LastRead 0 FirstWrite -1}
		AB_load_6 {Type I LastRead 0 FirstWrite -1}
		AB_load_5 {Type I LastRead 0 FirstWrite -1}
		AB_load_4 {Type I LastRead 0 FirstWrite -1}
		AB_load_3 {Type I LastRead 0 FirstWrite -1}
		AB_load_2 {Type I LastRead 0 FirstWrite -1}
		AB_load_1 {Type I LastRead 0 FirstWrite -1}
		Bcols {Type I LastRead 1 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 3}
		p_out1 {Type O LastRead -1 FirstWrite 3}
		p_out2 {Type O LastRead -1 FirstWrite 3}
		p_out3 {Type O LastRead -1 FirstWrite 3}
		p_out4 {Type O LastRead -1 FirstWrite 3}
		p_out5 {Type O LastRead -1 FirstWrite 3}
		p_out6 {Type O LastRead -1 FirstWrite 3}
		p_out7 {Type O LastRead -1 FirstWrite 3}
		p_out8 {Type O LastRead -1 FirstWrite 3}
		p_out9 {Type O LastRead -1 FirstWrite 3}
		p_out10 {Type O LastRead -1 FirstWrite 3}
		p_out11 {Type O LastRead -1 FirstWrite 3}
		p_out12 {Type O LastRead -1 FirstWrite 3}
		p_out13 {Type O LastRead -1 FirstWrite 3}
		p_out14 {Type O LastRead -1 FirstWrite 3}
		p_out15 {Type O LastRead -1 FirstWrite 3}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A {Type I LastRead 0 FirstWrite -1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 {Type I LastRead 0 FirstWrite -1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 {Type I LastRead 0 FirstWrite -1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 {Type I LastRead 0 FirstWrite -1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4 {Type I LastRead 0 FirstWrite -1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5 {Type I LastRead 0 FirstWrite -1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6 {Type I LastRead 0 FirstWrite -1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7 {Type I LastRead 0 FirstWrite -1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8 {Type I LastRead 0 FirstWrite -1}
		blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9 {Type I LastRead 0 FirstWrite -1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10 {Type I LastRead 0 FirstWrite -1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11 {Type I LastRead 0 FirstWrite -1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12 {Type I LastRead 0 FirstWrite -1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13 {Type I LastRead 0 FirstWrite -1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14 {Type I LastRead 0 FirstWrite -1}
		p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "69", "Max" : "69"}
	, {"Name" : "Interval", "Min" : "69", "Max" : "69"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	AB_load_16 { ap_none {  { AB_load_16 in_data 0 512 } } }
	AB_load_15 { ap_none {  { AB_load_15 in_data 0 512 } } }
	AB_load_14 { ap_none {  { AB_load_14 in_data 0 512 } } }
	AB_load_13 { ap_none {  { AB_load_13 in_data 0 512 } } }
	AB_load_12 { ap_none {  { AB_load_12 in_data 0 512 } } }
	AB_load_11 { ap_none {  { AB_load_11 in_data 0 512 } } }
	AB_load_10 { ap_none {  { AB_load_10 in_data 0 512 } } }
	AB_load_9 { ap_none {  { AB_load_9 in_data 0 512 } } }
	AB_load_8 { ap_none {  { AB_load_8 in_data 0 512 } } }
	AB_load_7 { ap_none {  { AB_load_7 in_data 0 512 } } }
	AB_load_6 { ap_none {  { AB_load_6 in_data 0 512 } } }
	AB_load_5 { ap_none {  { AB_load_5 in_data 0 512 } } }
	AB_load_4 { ap_none {  { AB_load_4 in_data 0 512 } } }
	AB_load_3 { ap_none {  { AB_load_3 in_data 0 512 } } }
	AB_load_2 { ap_none {  { AB_load_2 in_data 0 512 } } }
	AB_load_1 { ap_none {  { AB_load_1 in_data 0 512 } } }
	Bcols { ap_fifo {  { Bcols_dout fifo_port_we 0 512 }  { Bcols_empty_n fifo_status 0 1 }  { Bcols_read fifo_data 1 1 } } }
	p_out { ap_vld {  { p_out out_data 1 512 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 512 }  { p_out1_ap_vld out_vld 1 1 } } }
	p_out2 { ap_vld {  { p_out2 out_data 1 512 }  { p_out2_ap_vld out_vld 1 1 } } }
	p_out3 { ap_vld {  { p_out3 out_data 1 512 }  { p_out3_ap_vld out_vld 1 1 } } }
	p_out4 { ap_vld {  { p_out4 out_data 1 512 }  { p_out4_ap_vld out_vld 1 1 } } }
	p_out5 { ap_vld {  { p_out5 out_data 1 512 }  { p_out5_ap_vld out_vld 1 1 } } }
	p_out6 { ap_vld {  { p_out6 out_data 1 512 }  { p_out6_ap_vld out_vld 1 1 } } }
	p_out7 { ap_vld {  { p_out7 out_data 1 512 }  { p_out7_ap_vld out_vld 1 1 } } }
	p_out8 { ap_vld {  { p_out8 out_data 1 512 }  { p_out8_ap_vld out_vld 1 1 } } }
	p_out9 { ap_vld {  { p_out9 out_data 1 512 }  { p_out9_ap_vld out_vld 1 1 } } }
	p_out10 { ap_vld {  { p_out10 out_data 1 512 }  { p_out10_ap_vld out_vld 1 1 } } }
	p_out11 { ap_vld {  { p_out11 out_data 1 512 }  { p_out11_ap_vld out_vld 1 1 } } }
	p_out12 { ap_vld {  { p_out12 out_data 1 512 }  { p_out12_ap_vld out_vld 1 1 } } }
	p_out13 { ap_vld {  { p_out13 out_data 1 512 }  { p_out13_ap_vld out_vld 1 1 } } }
	p_out14 { ap_vld {  { p_out14 out_data 1 512 }  { p_out14_ap_vld out_vld 1 1 } } }
	p_out15 { ap_vld {  { p_out15 out_data 1 512 }  { p_out15_ap_vld out_vld 1 1 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_q0 mem_dout 0 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_q0 mem_dout 0 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_q0 mem_dout 0 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_q0 mem_dout 0 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_q0 mem_dout 0 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_q0 mem_dout 0 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_q0 mem_dout 0 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_q0 mem_dout 0 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_q0 mem_dout 0 32 } } }
	blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9 { ap_memory {  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_address0 mem_address 1 6 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0 mem_ce 1 1 }  { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_q0 mem_dout 0 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_q0 mem_dout 0 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_q0 mem_dout 0 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_q0 mem_dout 0 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_q0 mem_dout 0 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_q0 mem_dout 0 32 } } }
	p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15 { ap_memory {  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_address0 mem_address 1 6 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0 mem_ce 1 1 }  { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_q0 mem_dout 0 32 } } }
}
