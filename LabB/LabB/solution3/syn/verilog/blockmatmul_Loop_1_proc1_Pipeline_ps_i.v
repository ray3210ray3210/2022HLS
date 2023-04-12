// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module blockmatmul_Loop_1_proc1_Pipeline_ps_i (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        zext_ln23,
        AB_15_address0,
        AB_15_ce0,
        AB_15_we0,
        AB_15_d0,
        AB_15_address1,
        AB_15_ce1,
        AB_15_q1,
        AB_14_address0,
        AB_14_ce0,
        AB_14_we0,
        AB_14_d0,
        AB_14_address1,
        AB_14_ce1,
        AB_14_q1,
        AB_13_address0,
        AB_13_ce0,
        AB_13_we0,
        AB_13_d0,
        AB_13_address1,
        AB_13_ce1,
        AB_13_q1,
        AB_12_address0,
        AB_12_ce0,
        AB_12_we0,
        AB_12_d0,
        AB_12_address1,
        AB_12_ce1,
        AB_12_q1,
        AB_11_address0,
        AB_11_ce0,
        AB_11_we0,
        AB_11_d0,
        AB_11_address1,
        AB_11_ce1,
        AB_11_q1,
        AB_10_address0,
        AB_10_ce0,
        AB_10_we0,
        AB_10_d0,
        AB_10_address1,
        AB_10_ce1,
        AB_10_q1,
        AB_9_address0,
        AB_9_ce0,
        AB_9_we0,
        AB_9_d0,
        AB_9_address1,
        AB_9_ce1,
        AB_9_q1,
        AB_8_address0,
        AB_8_ce0,
        AB_8_we0,
        AB_8_d0,
        AB_8_address1,
        AB_8_ce1,
        AB_8_q1,
        AB_7_address0,
        AB_7_ce0,
        AB_7_we0,
        AB_7_d0,
        AB_7_address1,
        AB_7_ce1,
        AB_7_q1,
        AB_6_address0,
        AB_6_ce0,
        AB_6_we0,
        AB_6_d0,
        AB_6_address1,
        AB_6_ce1,
        AB_6_q1,
        AB_5_address0,
        AB_5_ce0,
        AB_5_we0,
        AB_5_d0,
        AB_5_address1,
        AB_5_ce1,
        AB_5_q1,
        AB_4_address0,
        AB_4_ce0,
        AB_4_we0,
        AB_4_d0,
        AB_4_address1,
        AB_4_ce1,
        AB_4_q1,
        AB_3_address0,
        AB_3_ce0,
        AB_3_we0,
        AB_3_d0,
        AB_3_address1,
        AB_3_ce1,
        AB_3_q1,
        AB_2_address0,
        AB_2_ce0,
        AB_2_we0,
        AB_2_d0,
        AB_2_address1,
        AB_2_ce1,
        AB_2_q1,
        AB_1_address0,
        AB_1_ce0,
        AB_1_we0,
        AB_1_d0,
        AB_1_address1,
        AB_1_ce1,
        AB_1_q1,
        AB_address0,
        AB_ce0,
        AB_we0,
        AB_d0,
        AB_address1,
        AB_ce1,
        AB_q1,
        tempB_a,
        tempB_a_1,
        tmp_14,
        tmp_15,
        tmp_16,
        tmp_17,
        tmp_18,
        tmp_19,
        tmp_20,
        tmp_21,
        tmp_22,
        tmp_23,
        tmp_24,
        tmp_25,
        trunc_ln145_2,
        trunc_ln145_3,
        A_address0,
        A_ce0,
        A_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] zext_ln23;
output  [3:0] AB_15_address0;
output   AB_15_ce0;
output   AB_15_we0;
output  [31:0] AB_15_d0;
output  [3:0] AB_15_address1;
output   AB_15_ce1;
input  [31:0] AB_15_q1;
output  [3:0] AB_14_address0;
output   AB_14_ce0;
output   AB_14_we0;
output  [31:0] AB_14_d0;
output  [3:0] AB_14_address1;
output   AB_14_ce1;
input  [31:0] AB_14_q1;
output  [3:0] AB_13_address0;
output   AB_13_ce0;
output   AB_13_we0;
output  [31:0] AB_13_d0;
output  [3:0] AB_13_address1;
output   AB_13_ce1;
input  [31:0] AB_13_q1;
output  [3:0] AB_12_address0;
output   AB_12_ce0;
output   AB_12_we0;
output  [31:0] AB_12_d0;
output  [3:0] AB_12_address1;
output   AB_12_ce1;
input  [31:0] AB_12_q1;
output  [3:0] AB_11_address0;
output   AB_11_ce0;
output   AB_11_we0;
output  [31:0] AB_11_d0;
output  [3:0] AB_11_address1;
output   AB_11_ce1;
input  [31:0] AB_11_q1;
output  [3:0] AB_10_address0;
output   AB_10_ce0;
output   AB_10_we0;
output  [31:0] AB_10_d0;
output  [3:0] AB_10_address1;
output   AB_10_ce1;
input  [31:0] AB_10_q1;
output  [3:0] AB_9_address0;
output   AB_9_ce0;
output   AB_9_we0;
output  [31:0] AB_9_d0;
output  [3:0] AB_9_address1;
output   AB_9_ce1;
input  [31:0] AB_9_q1;
output  [3:0] AB_8_address0;
output   AB_8_ce0;
output   AB_8_we0;
output  [31:0] AB_8_d0;
output  [3:0] AB_8_address1;
output   AB_8_ce1;
input  [31:0] AB_8_q1;
output  [3:0] AB_7_address0;
output   AB_7_ce0;
output   AB_7_we0;
output  [31:0] AB_7_d0;
output  [3:0] AB_7_address1;
output   AB_7_ce1;
input  [31:0] AB_7_q1;
output  [3:0] AB_6_address0;
output   AB_6_ce0;
output   AB_6_we0;
output  [31:0] AB_6_d0;
output  [3:0] AB_6_address1;
output   AB_6_ce1;
input  [31:0] AB_6_q1;
output  [3:0] AB_5_address0;
output   AB_5_ce0;
output   AB_5_we0;
output  [31:0] AB_5_d0;
output  [3:0] AB_5_address1;
output   AB_5_ce1;
input  [31:0] AB_5_q1;
output  [3:0] AB_4_address0;
output   AB_4_ce0;
output   AB_4_we0;
output  [31:0] AB_4_d0;
output  [3:0] AB_4_address1;
output   AB_4_ce1;
input  [31:0] AB_4_q1;
output  [3:0] AB_3_address0;
output   AB_3_ce0;
output   AB_3_we0;
output  [31:0] AB_3_d0;
output  [3:0] AB_3_address1;
output   AB_3_ce1;
input  [31:0] AB_3_q1;
output  [3:0] AB_2_address0;
output   AB_2_ce0;
output   AB_2_we0;
output  [31:0] AB_2_d0;
output  [3:0] AB_2_address1;
output   AB_2_ce1;
input  [31:0] AB_2_q1;
output  [3:0] AB_1_address0;
output   AB_1_ce0;
output   AB_1_we0;
output  [31:0] AB_1_d0;
output  [3:0] AB_1_address1;
output   AB_1_ce1;
input  [31:0] AB_1_q1;
output  [3:0] AB_address0;
output   AB_ce0;
output   AB_we0;
output  [31:0] AB_d0;
output  [3:0] AB_address1;
output   AB_ce1;
input  [31:0] AB_q1;
input  [31:0] tempB_a;
input  [31:0] tempB_a_1;
input  [31:0] tmp_14;
input  [31:0] tmp_15;
input  [31:0] tmp_16;
input  [31:0] tmp_17;
input  [31:0] tmp_18;
input  [31:0] tmp_19;
input  [31:0] tmp_20;
input  [31:0] tmp_21;
input  [31:0] tmp_22;
input  [31:0] tmp_23;
input  [31:0] tmp_24;
input  [31:0] tmp_25;
input  [31:0] trunc_ln145_2;
input  [31:0] trunc_ln145_3;
output  [9:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;

reg ap_idle;
reg AB_15_ce0;
reg AB_15_we0;
reg AB_15_ce1;
reg AB_14_ce0;
reg AB_14_we0;
reg AB_14_ce1;
reg AB_13_ce0;
reg AB_13_we0;
reg AB_13_ce1;
reg AB_12_ce0;
reg AB_12_we0;
reg AB_12_ce1;
reg AB_11_ce0;
reg AB_11_we0;
reg AB_11_ce1;
reg AB_10_ce0;
reg AB_10_we0;
reg AB_10_ce1;
reg AB_9_ce0;
reg AB_9_we0;
reg AB_9_ce1;
reg AB_8_ce0;
reg AB_8_we0;
reg AB_8_ce1;
reg AB_7_ce0;
reg AB_7_we0;
reg AB_7_ce1;
reg AB_6_ce0;
reg AB_6_we0;
reg AB_6_ce1;
reg AB_5_ce0;
reg AB_5_we0;
reg AB_5_ce1;
reg AB_4_ce0;
reg AB_4_we0;
reg AB_4_ce1;
reg AB_3_ce0;
reg AB_3_we0;
reg AB_3_ce1;
reg AB_2_ce0;
reg AB_2_we0;
reg AB_2_ce1;
reg AB_1_ce0;
reg AB_1_we0;
reg AB_1_ce1;
reg AB_ce0;
reg AB_we0;
reg AB_ce1;
reg A_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln26_fu_501_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] i_1_reg_797;
reg   [4:0] i_1_reg_797_pp0_iter1_reg;
reg   [4:0] i_1_reg_797_pp0_iter2_reg;
reg  signed [31:0] A_load_reg_811;
reg   [3:0] AB_addr_reg_831;
wire   [31:0] grp_fu_531_p2;
reg   [31:0] mul_ln28_reg_837;
reg   [3:0] AB_1_addr_reg_842;
wire   [31:0] grp_fu_535_p2;
reg   [31:0] mul_ln28_1_reg_848;
reg   [3:0] AB_2_addr_reg_853;
wire   [31:0] grp_fu_539_p2;
reg   [31:0] mul_ln28_2_reg_859;
reg   [3:0] AB_3_addr_reg_864;
wire   [31:0] grp_fu_543_p2;
reg   [31:0] mul_ln28_3_reg_870;
reg   [3:0] AB_4_addr_reg_875;
wire   [31:0] grp_fu_547_p2;
reg   [31:0] mul_ln28_4_reg_881;
reg   [3:0] AB_5_addr_reg_886;
wire   [31:0] grp_fu_551_p2;
reg   [31:0] mul_ln28_5_reg_892;
reg   [3:0] AB_6_addr_reg_897;
wire   [31:0] grp_fu_555_p2;
reg   [31:0] mul_ln28_6_reg_903;
reg   [3:0] AB_7_addr_reg_908;
wire   [31:0] grp_fu_559_p2;
reg   [31:0] mul_ln28_7_reg_914;
reg   [3:0] AB_8_addr_reg_919;
wire   [31:0] grp_fu_563_p2;
reg   [31:0] mul_ln28_8_reg_925;
reg   [3:0] AB_9_addr_reg_930;
wire   [31:0] grp_fu_567_p2;
reg   [31:0] mul_ln28_9_reg_936;
reg   [3:0] AB_10_addr_reg_941;
wire   [31:0] grp_fu_571_p2;
reg   [31:0] mul_ln28_10_reg_947;
reg   [3:0] AB_11_addr_reg_952;
wire   [31:0] grp_fu_575_p2;
reg   [31:0] mul_ln28_11_reg_958;
reg   [3:0] AB_12_addr_reg_963;
wire   [31:0] grp_fu_579_p2;
reg   [31:0] mul_ln28_12_reg_969;
reg   [3:0] AB_13_addr_reg_974;
wire   [31:0] grp_fu_583_p2;
reg   [31:0] mul_ln28_13_reg_980;
reg   [3:0] AB_14_addr_reg_985;
wire   [31:0] grp_fu_587_p2;
reg   [31:0] mul_ln28_14_reg_991;
reg   [3:0] AB_15_addr_reg_996;
wire   [31:0] grp_fu_591_p2;
reg   [31:0] mul_ln28_15_reg_1002;
wire   [63:0] p_cast_fu_521_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln26_fu_595_p1;
reg   [4:0] i_fu_98;
wire   [4:0] add_ln26_fu_507_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_1;
wire   [3:0] trunc_ln26_fu_497_p1;
wire   [9:0] tmp_fu_513_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
end

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U19(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tempB_a),
    .ce(1'b1),
    .dout(grp_fu_531_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U20(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tempB_a_1),
    .ce(1'b1),
    .dout(grp_fu_535_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U21(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_14),
    .ce(1'b1),
    .dout(grp_fu_539_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U22(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_15),
    .ce(1'b1),
    .dout(grp_fu_543_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U23(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_16),
    .ce(1'b1),
    .dout(grp_fu_547_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U24(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_17),
    .ce(1'b1),
    .dout(grp_fu_551_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U25(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_18),
    .ce(1'b1),
    .dout(grp_fu_555_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U26(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_19),
    .ce(1'b1),
    .dout(grp_fu_559_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U27(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_20),
    .ce(1'b1),
    .dout(grp_fu_563_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U28(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_21),
    .ce(1'b1),
    .dout(grp_fu_567_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U29(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_22),
    .ce(1'b1),
    .dout(grp_fu_571_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U30(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_23),
    .ce(1'b1),
    .dout(grp_fu_575_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U31(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_24),
    .ce(1'b1),
    .dout(grp_fu_579_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U32(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(tmp_25),
    .ce(1'b1),
    .dout(grp_fu_583_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U33(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(trunc_ln145_2),
    .ce(1'b1),
    .dout(grp_fu_587_p2)
);

blockmatmul_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U34(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_load_reg_811),
    .din1(trunc_ln145_3),
    .ce(1'b1),
    .dout(grp_fu_591_p2)
);

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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_501_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_98 <= add_ln26_fu_507_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_98 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        AB_10_addr_reg_941 <= zext_ln26_fu_595_p1;
        AB_11_addr_reg_952 <= zext_ln26_fu_595_p1;
        AB_12_addr_reg_963 <= zext_ln26_fu_595_p1;
        AB_13_addr_reg_974 <= zext_ln26_fu_595_p1;
        AB_14_addr_reg_985 <= zext_ln26_fu_595_p1;
        AB_15_addr_reg_996 <= zext_ln26_fu_595_p1;
        AB_1_addr_reg_842 <= zext_ln26_fu_595_p1;
        AB_2_addr_reg_853 <= zext_ln26_fu_595_p1;
        AB_3_addr_reg_864 <= zext_ln26_fu_595_p1;
        AB_4_addr_reg_875 <= zext_ln26_fu_595_p1;
        AB_5_addr_reg_886 <= zext_ln26_fu_595_p1;
        AB_6_addr_reg_897 <= zext_ln26_fu_595_p1;
        AB_7_addr_reg_908 <= zext_ln26_fu_595_p1;
        AB_8_addr_reg_919 <= zext_ln26_fu_595_p1;
        AB_9_addr_reg_930 <= zext_ln26_fu_595_p1;
        AB_addr_reg_831 <= zext_ln26_fu_595_p1;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        i_1_reg_797_pp0_iter2_reg <= i_1_reg_797_pp0_iter1_reg;
        mul_ln28_10_reg_947 <= grp_fu_571_p2;
        mul_ln28_11_reg_958 <= grp_fu_575_p2;
        mul_ln28_12_reg_969 <= grp_fu_579_p2;
        mul_ln28_13_reg_980 <= grp_fu_583_p2;
        mul_ln28_14_reg_991 <= grp_fu_587_p2;
        mul_ln28_15_reg_1002 <= grp_fu_591_p2;
        mul_ln28_1_reg_848 <= grp_fu_535_p2;
        mul_ln28_2_reg_859 <= grp_fu_539_p2;
        mul_ln28_3_reg_870 <= grp_fu_543_p2;
        mul_ln28_4_reg_881 <= grp_fu_547_p2;
        mul_ln28_5_reg_892 <= grp_fu_551_p2;
        mul_ln28_6_reg_903 <= grp_fu_555_p2;
        mul_ln28_7_reg_914 <= grp_fu_559_p2;
        mul_ln28_8_reg_925 <= grp_fu_563_p2;
        mul_ln28_9_reg_936 <= grp_fu_567_p2;
        mul_ln28_reg_837 <= grp_fu_531_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_load_reg_811 <= A_q0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_1_reg_797 <= ap_sig_allocacmp_i_1;
        i_1_reg_797_pp0_iter1_reg <= i_1_reg_797;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_10_ce0 = 1'b1;
    end else begin
        AB_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_10_ce1 = 1'b1;
    end else begin
        AB_10_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_10_we0 = 1'b1;
    end else begin
        AB_10_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_11_ce0 = 1'b1;
    end else begin
        AB_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_11_ce1 = 1'b1;
    end else begin
        AB_11_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_11_we0 = 1'b1;
    end else begin
        AB_11_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_12_ce0 = 1'b1;
    end else begin
        AB_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_12_ce1 = 1'b1;
    end else begin
        AB_12_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_12_we0 = 1'b1;
    end else begin
        AB_12_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_13_ce0 = 1'b1;
    end else begin
        AB_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_13_ce1 = 1'b1;
    end else begin
        AB_13_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_13_we0 = 1'b1;
    end else begin
        AB_13_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_14_ce0 = 1'b1;
    end else begin
        AB_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_14_ce1 = 1'b1;
    end else begin
        AB_14_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_14_we0 = 1'b1;
    end else begin
        AB_14_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_15_ce0 = 1'b1;
    end else begin
        AB_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_15_ce1 = 1'b1;
    end else begin
        AB_15_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_15_we0 = 1'b1;
    end else begin
        AB_15_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_1_ce0 = 1'b1;
    end else begin
        AB_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_1_ce1 = 1'b1;
    end else begin
        AB_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_1_we0 = 1'b1;
    end else begin
        AB_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_2_ce0 = 1'b1;
    end else begin
        AB_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_2_ce1 = 1'b1;
    end else begin
        AB_2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_2_we0 = 1'b1;
    end else begin
        AB_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_3_ce0 = 1'b1;
    end else begin
        AB_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_3_ce1 = 1'b1;
    end else begin
        AB_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_3_we0 = 1'b1;
    end else begin
        AB_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_4_ce0 = 1'b1;
    end else begin
        AB_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_4_ce1 = 1'b1;
    end else begin
        AB_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_4_we0 = 1'b1;
    end else begin
        AB_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_5_ce0 = 1'b1;
    end else begin
        AB_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_5_ce1 = 1'b1;
    end else begin
        AB_5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_5_we0 = 1'b1;
    end else begin
        AB_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_6_ce0 = 1'b1;
    end else begin
        AB_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_6_ce1 = 1'b1;
    end else begin
        AB_6_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_6_we0 = 1'b1;
    end else begin
        AB_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_7_ce0 = 1'b1;
    end else begin
        AB_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_7_ce1 = 1'b1;
    end else begin
        AB_7_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_7_we0 = 1'b1;
    end else begin
        AB_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_8_ce0 = 1'b1;
    end else begin
        AB_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_8_ce1 = 1'b1;
    end else begin
        AB_8_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_8_we0 = 1'b1;
    end else begin
        AB_8_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_9_ce0 = 1'b1;
    end else begin
        AB_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_9_ce1 = 1'b1;
    end else begin
        AB_9_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_9_we0 = 1'b1;
    end else begin
        AB_9_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_ce0 = 1'b1;
    end else begin
        AB_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AB_ce1 = 1'b1;
    end else begin
        AB_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        AB_we0 = 1'b1;
    end else begin
        AB_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln26_fu_501_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 5'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_98;
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

assign AB_10_address0 = AB_10_addr_reg_941;

assign AB_10_address1 = zext_ln26_fu_595_p1;

assign AB_10_d0 = (AB_10_q1 + mul_ln28_10_reg_947);

assign AB_11_address0 = AB_11_addr_reg_952;

assign AB_11_address1 = zext_ln26_fu_595_p1;

assign AB_11_d0 = (AB_11_q1 + mul_ln28_11_reg_958);

assign AB_12_address0 = AB_12_addr_reg_963;

assign AB_12_address1 = zext_ln26_fu_595_p1;

assign AB_12_d0 = (AB_12_q1 + mul_ln28_12_reg_969);

assign AB_13_address0 = AB_13_addr_reg_974;

assign AB_13_address1 = zext_ln26_fu_595_p1;

assign AB_13_d0 = (AB_13_q1 + mul_ln28_13_reg_980);

assign AB_14_address0 = AB_14_addr_reg_985;

assign AB_14_address1 = zext_ln26_fu_595_p1;

assign AB_14_d0 = (AB_14_q1 + mul_ln28_14_reg_991);

assign AB_15_address0 = AB_15_addr_reg_996;

assign AB_15_address1 = zext_ln26_fu_595_p1;

assign AB_15_d0 = (AB_15_q1 + mul_ln28_15_reg_1002);

assign AB_1_address0 = AB_1_addr_reg_842;

assign AB_1_address1 = zext_ln26_fu_595_p1;

assign AB_1_d0 = (AB_1_q1 + mul_ln28_1_reg_848);

assign AB_2_address0 = AB_2_addr_reg_853;

assign AB_2_address1 = zext_ln26_fu_595_p1;

assign AB_2_d0 = (AB_2_q1 + mul_ln28_2_reg_859);

assign AB_3_address0 = AB_3_addr_reg_864;

assign AB_3_address1 = zext_ln26_fu_595_p1;

assign AB_3_d0 = (AB_3_q1 + mul_ln28_3_reg_870);

assign AB_4_address0 = AB_4_addr_reg_875;

assign AB_4_address1 = zext_ln26_fu_595_p1;

assign AB_4_d0 = (AB_4_q1 + mul_ln28_4_reg_881);

assign AB_5_address0 = AB_5_addr_reg_886;

assign AB_5_address1 = zext_ln26_fu_595_p1;

assign AB_5_d0 = (AB_5_q1 + mul_ln28_5_reg_892);

assign AB_6_address0 = AB_6_addr_reg_897;

assign AB_6_address1 = zext_ln26_fu_595_p1;

assign AB_6_d0 = (AB_6_q1 + mul_ln28_6_reg_903);

assign AB_7_address0 = AB_7_addr_reg_908;

assign AB_7_address1 = zext_ln26_fu_595_p1;

assign AB_7_d0 = (AB_7_q1 + mul_ln28_7_reg_914);

assign AB_8_address0 = AB_8_addr_reg_919;

assign AB_8_address1 = zext_ln26_fu_595_p1;

assign AB_8_d0 = (AB_8_q1 + mul_ln28_8_reg_925);

assign AB_9_address0 = AB_9_addr_reg_930;

assign AB_9_address1 = zext_ln26_fu_595_p1;

assign AB_9_d0 = (AB_9_q1 + mul_ln28_9_reg_936);

assign AB_address0 = AB_addr_reg_831;

assign AB_address1 = zext_ln26_fu_595_p1;

assign AB_d0 = (AB_q1 + mul_ln28_reg_837);

assign A_address0 = p_cast_fu_521_p1;

assign add_ln26_fu_507_p2 = (ap_sig_allocacmp_i_1 + 5'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln26_fu_501_p2 = ((ap_sig_allocacmp_i_1 == 5'd16) ? 1'b1 : 1'b0);

assign p_cast_fu_521_p1 = tmp_fu_513_p3;

assign tmp_fu_513_p3 = {{trunc_ln26_fu_497_p1}, {zext_ln23}};

assign trunc_ln26_fu_497_p1 = ap_sig_allocacmp_i_1[3:0];

assign zext_ln26_fu_595_p1 = i_1_reg_797_pp0_iter2_reg;

endmodule //blockmatmul_Loop_1_proc1_Pipeline_ps_i