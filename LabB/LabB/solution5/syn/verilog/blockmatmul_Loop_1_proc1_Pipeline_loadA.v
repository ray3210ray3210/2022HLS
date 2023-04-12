// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module blockmatmul_Loop_1_proc1_Pipeline_loadA (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Arows_dout,
        Arows_empty_n,
        Arows_read,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_d0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_d0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_address0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_we0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_d0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_address0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_we0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_d0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_address0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_we0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_d0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_address0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_we0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_d0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_address0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_we0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_d0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_address0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_we0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_d0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_address0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_we0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_d0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_address0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_we0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_d0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_address0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_we0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_d0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_address0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_we0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_d0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_address0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_we0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_d0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_address0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_we0,
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [511:0] Arows_dout;
input   Arows_empty_n;
output   Arows_read;
output  [5:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_d0;
output  [5:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_d0;
output  [5:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0;
output  [5:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0;
output  [5:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_d0;
output  [5:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_d0;
output  [5:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_d0;
output  [5:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_d0;
output  [5:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_d0;
output  [5:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_d0;
output  [5:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_address0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_we0;
output  [31:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_d0;
output  [5:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_address0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_we0;
output  [31:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_d0;
output  [5:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_address0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_we0;
output  [31:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_d0;
output  [5:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_address0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_we0;
output  [31:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_d0;
output  [5:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_address0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_we0;
output  [31:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_d0;
output  [5:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_address0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0;
output   p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_we0;
output  [31:0] p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_d0;

reg ap_idle;
reg Arows_read;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_we0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_we0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_we0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_we0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_we0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_we0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0;
reg p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln14_fu_356_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    Arows_blk_n;
wire    ap_block_pp0_stage0;
reg   [6:0] i_2_reg_569;
reg    ap_block_pp0_stage0_11001;
wire   [63:0] i_cast_fu_373_p1;
reg   [6:0] i_fu_130;
wire   [6:0] add_ln14_fu_362_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

blockmatmul_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln14_fu_356_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_130 <= add_ln14_fu_362_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_130 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_reg_569 <= ap_sig_allocacmp_i_2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Arows_blk_n = Arows_empty_n;
    end else begin
        Arows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Arows_read = 1'b1;
    end else begin
        Arows_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln14_fu_356_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_130;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_we0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_we0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_we0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_we0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_we0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_we0 = 1'b1;
    end else begin
        p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln14_fu_362_p2 = (ap_sig_allocacmp_i_2 + 7'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((1'b0 == Arows_empty_n) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b0 == Arows_empty_n) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (1'b0 == Arows_empty_n);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 = i_cast_fu_373_p1;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_d0 = {{Arows_dout[63:32]}};

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 = i_cast_fu_373_p1;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0 = {{Arows_dout[95:64]}};

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 = i_cast_fu_373_p1;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0 = {{Arows_dout[127:96]}};

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_address0 = i_cast_fu_373_p1;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_d0 = {{Arows_dout[159:128]}};

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_address0 = i_cast_fu_373_p1;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_d0 = {{Arows_dout[191:160]}};

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_address0 = i_cast_fu_373_p1;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_d0 = {{Arows_dout[223:192]}};

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_address0 = i_cast_fu_373_p1;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_d0 = {{Arows_dout[255:224]}};

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_address0 = i_cast_fu_373_p1;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_d0 = {{Arows_dout[287:256]}};

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_address0 = i_cast_fu_373_p1;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_d0 = {{Arows_dout[319:288]}};

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 = i_cast_fu_373_p1;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_d0 = Arows_dout[31:0];

assign i_cast_fu_373_p1 = i_2_reg_569;

assign icmp_ln14_fu_356_p2 = ((ap_sig_allocacmp_i_2 == 7'd64) ? 1'b1 : 1'b0);

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_address0 = i_cast_fu_373_p1;

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_d0 = {{Arows_dout[351:320]}};

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_address0 = i_cast_fu_373_p1;

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_d0 = {{Arows_dout[383:352]}};

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_address0 = i_cast_fu_373_p1;

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_d0 = {{Arows_dout[415:384]}};

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_address0 = i_cast_fu_373_p1;

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_d0 = {{Arows_dout[447:416]}};

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_address0 = i_cast_fu_373_p1;

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_d0 = {{Arows_dout[479:448]}};

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_address0 = i_cast_fu_373_p1;

assign p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_d0 = {{Arows_dout[511:480]}};

endmodule //blockmatmul_Loop_1_proc1_Pipeline_loadA
