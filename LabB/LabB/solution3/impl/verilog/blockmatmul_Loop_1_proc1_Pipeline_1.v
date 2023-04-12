// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module blockmatmul_Loop_1_proc1_Pipeline_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        AB_address0,
        AB_ce0,
        AB_we0,
        AB_d0,
        AB_1_address0,
        AB_1_ce0,
        AB_1_we0,
        AB_1_d0,
        AB_2_address0,
        AB_2_ce0,
        AB_2_we0,
        AB_2_d0,
        AB_3_address0,
        AB_3_ce0,
        AB_3_we0,
        AB_3_d0,
        AB_4_address0,
        AB_4_ce0,
        AB_4_we0,
        AB_4_d0,
        AB_5_address0,
        AB_5_ce0,
        AB_5_we0,
        AB_5_d0,
        AB_6_address0,
        AB_6_ce0,
        AB_6_we0,
        AB_6_d0,
        AB_7_address0,
        AB_7_ce0,
        AB_7_we0,
        AB_7_d0,
        AB_8_address0,
        AB_8_ce0,
        AB_8_we0,
        AB_8_d0,
        AB_9_address0,
        AB_9_ce0,
        AB_9_we0,
        AB_9_d0,
        AB_10_address0,
        AB_10_ce0,
        AB_10_we0,
        AB_10_d0,
        AB_11_address0,
        AB_11_ce0,
        AB_11_we0,
        AB_11_d0,
        AB_12_address0,
        AB_12_ce0,
        AB_12_we0,
        AB_12_d0,
        AB_13_address0,
        AB_13_ce0,
        AB_13_we0,
        AB_13_d0,
        AB_14_address0,
        AB_14_ce0,
        AB_14_we0,
        AB_14_d0,
        AB_15_address0,
        AB_15_ce0,
        AB_15_we0,
        AB_15_d0
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] AB_address0;
output   AB_ce0;
output   AB_we0;
output  [31:0] AB_d0;
output  [3:0] AB_1_address0;
output   AB_1_ce0;
output   AB_1_we0;
output  [31:0] AB_1_d0;
output  [3:0] AB_2_address0;
output   AB_2_ce0;
output   AB_2_we0;
output  [31:0] AB_2_d0;
output  [3:0] AB_3_address0;
output   AB_3_ce0;
output   AB_3_we0;
output  [31:0] AB_3_d0;
output  [3:0] AB_4_address0;
output   AB_4_ce0;
output   AB_4_we0;
output  [31:0] AB_4_d0;
output  [3:0] AB_5_address0;
output   AB_5_ce0;
output   AB_5_we0;
output  [31:0] AB_5_d0;
output  [3:0] AB_6_address0;
output   AB_6_ce0;
output   AB_6_we0;
output  [31:0] AB_6_d0;
output  [3:0] AB_7_address0;
output   AB_7_ce0;
output   AB_7_we0;
output  [31:0] AB_7_d0;
output  [3:0] AB_8_address0;
output   AB_8_ce0;
output   AB_8_we0;
output  [31:0] AB_8_d0;
output  [3:0] AB_9_address0;
output   AB_9_ce0;
output   AB_9_we0;
output  [31:0] AB_9_d0;
output  [3:0] AB_10_address0;
output   AB_10_ce0;
output   AB_10_we0;
output  [31:0] AB_10_d0;
output  [3:0] AB_11_address0;
output   AB_11_ce0;
output   AB_11_we0;
output  [31:0] AB_11_d0;
output  [3:0] AB_12_address0;
output   AB_12_ce0;
output   AB_12_we0;
output  [31:0] AB_12_d0;
output  [3:0] AB_13_address0;
output   AB_13_ce0;
output   AB_13_we0;
output  [31:0] AB_13_d0;
output  [3:0] AB_14_address0;
output   AB_14_ce0;
output   AB_14_we0;
output  [31:0] AB_14_d0;
output  [3:0] AB_15_address0;
output   AB_15_ce0;
output   AB_15_we0;
output  [31:0] AB_15_d0;

reg ap_idle;
reg AB_ce0;
reg AB_we0;
reg AB_1_ce0;
reg AB_1_we0;
reg AB_2_ce0;
reg AB_2_we0;
reg AB_3_ce0;
reg AB_3_we0;
reg AB_4_ce0;
reg AB_4_we0;
reg AB_5_ce0;
reg AB_5_we0;
reg AB_6_ce0;
reg AB_6_we0;
reg AB_7_ce0;
reg AB_7_we0;
reg AB_8_ce0;
reg AB_8_we0;
reg AB_9_ce0;
reg AB_9_we0;
reg AB_10_ce0;
reg AB_10_we0;
reg AB_11_ce0;
reg AB_11_we0;
reg AB_12_ce0;
reg AB_12_we0;
reg AB_13_ce0;
reg AB_13_we0;
reg AB_14_ce0;
reg AB_14_we0;
reg AB_15_ce0;
reg AB_15_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] exitcond364_i_i_fu_326_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] p_cast53_fu_348_p1;
reg   [8:0] empty_fu_90;
wire   [8:0] empty_33_fu_332_p2;
wire    ap_loop_init;
reg   [8:0] ap_sig_allocacmp_p_load;
wire   [3:0] empty_34_fu_368_p1;
wire   [3:0] tmp_s_fu_338_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
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
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((exitcond364_i_i_fu_326_p2 == 1'd0)) begin
            empty_fu_90 <= empty_33_fu_332_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            empty_fu_90 <= 9'd0;
        end
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_10_ce0 = 1'b1;
    end else begin
        AB_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd10))) begin
        AB_10_we0 = 1'b1;
    end else begin
        AB_10_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_11_ce0 = 1'b1;
    end else begin
        AB_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd11))) begin
        AB_11_we0 = 1'b1;
    end else begin
        AB_11_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_12_ce0 = 1'b1;
    end else begin
        AB_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd12))) begin
        AB_12_we0 = 1'b1;
    end else begin
        AB_12_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_13_ce0 = 1'b1;
    end else begin
        AB_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd13))) begin
        AB_13_we0 = 1'b1;
    end else begin
        AB_13_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_14_ce0 = 1'b1;
    end else begin
        AB_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd14))) begin
        AB_14_we0 = 1'b1;
    end else begin
        AB_14_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_15_ce0 = 1'b1;
    end else begin
        AB_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd15))) begin
        AB_15_we0 = 1'b1;
    end else begin
        AB_15_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_1_ce0 = 1'b1;
    end else begin
        AB_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd1))) begin
        AB_1_we0 = 1'b1;
    end else begin
        AB_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_2_ce0 = 1'b1;
    end else begin
        AB_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd2))) begin
        AB_2_we0 = 1'b1;
    end else begin
        AB_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_3_ce0 = 1'b1;
    end else begin
        AB_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd3))) begin
        AB_3_we0 = 1'b1;
    end else begin
        AB_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_4_ce0 = 1'b1;
    end else begin
        AB_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd4))) begin
        AB_4_we0 = 1'b1;
    end else begin
        AB_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_5_ce0 = 1'b1;
    end else begin
        AB_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd5))) begin
        AB_5_we0 = 1'b1;
    end else begin
        AB_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_6_ce0 = 1'b1;
    end else begin
        AB_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd6))) begin
        AB_6_we0 = 1'b1;
    end else begin
        AB_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_7_ce0 = 1'b1;
    end else begin
        AB_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd7))) begin
        AB_7_we0 = 1'b1;
    end else begin
        AB_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_8_ce0 = 1'b1;
    end else begin
        AB_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd8))) begin
        AB_8_we0 = 1'b1;
    end else begin
        AB_8_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_9_ce0 = 1'b1;
    end else begin
        AB_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd9))) begin
        AB_9_we0 = 1'b1;
    end else begin
        AB_9_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        AB_ce0 = 1'b1;
    end else begin
        AB_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_34_fu_368_p1 == 4'd0))) begin
        AB_we0 = 1'b1;
    end else begin
        AB_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond364_i_i_fu_326_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_p_load = 9'd0;
    end else begin
        ap_sig_allocacmp_p_load = empty_fu_90;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign AB_10_address0 = p_cast53_fu_348_p1;

assign AB_10_d0 = 32'd0;

assign AB_11_address0 = p_cast53_fu_348_p1;

assign AB_11_d0 = 32'd0;

assign AB_12_address0 = p_cast53_fu_348_p1;

assign AB_12_d0 = 32'd0;

assign AB_13_address0 = p_cast53_fu_348_p1;

assign AB_13_d0 = 32'd0;

assign AB_14_address0 = p_cast53_fu_348_p1;

assign AB_14_d0 = 32'd0;

assign AB_15_address0 = p_cast53_fu_348_p1;

assign AB_15_d0 = 32'd0;

assign AB_1_address0 = p_cast53_fu_348_p1;

assign AB_1_d0 = 32'd0;

assign AB_2_address0 = p_cast53_fu_348_p1;

assign AB_2_d0 = 32'd0;

assign AB_3_address0 = p_cast53_fu_348_p1;

assign AB_3_d0 = 32'd0;

assign AB_4_address0 = p_cast53_fu_348_p1;

assign AB_4_d0 = 32'd0;

assign AB_5_address0 = p_cast53_fu_348_p1;

assign AB_5_d0 = 32'd0;

assign AB_6_address0 = p_cast53_fu_348_p1;

assign AB_6_d0 = 32'd0;

assign AB_7_address0 = p_cast53_fu_348_p1;

assign AB_7_d0 = 32'd0;

assign AB_8_address0 = p_cast53_fu_348_p1;

assign AB_8_d0 = 32'd0;

assign AB_9_address0 = p_cast53_fu_348_p1;

assign AB_9_d0 = 32'd0;

assign AB_address0 = p_cast53_fu_348_p1;

assign AB_d0 = 32'd0;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_33_fu_332_p2 = (ap_sig_allocacmp_p_load + 9'd1);

assign empty_34_fu_368_p1 = ap_sig_allocacmp_p_load[3:0];

assign exitcond364_i_i_fu_326_p2 = ((ap_sig_allocacmp_p_load == 9'd256) ? 1'b1 : 1'b0);

assign p_cast53_fu_348_p1 = tmp_s_fu_338_p4;

assign tmp_s_fu_338_p4 = {{ap_sig_allocacmp_p_load[7:4]}};

endmodule //blockmatmul_Loop_1_proc1_Pipeline_1