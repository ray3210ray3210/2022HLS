// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module blockmatmul_Loop_1_proc1_Pipeline_VITIS_LOOP_15_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        zext_ln13,
        tmp_a_address0,
        tmp_a_ce0,
        tmp_a_q0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0,
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0,
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
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [2:0] zext_ln13;
output  [1:0] tmp_a_address0;
output   tmp_a_ce0;
input  [31:0] tmp_a_q0;
output  [2:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0;
output  [2:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_d0;
output  [2:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_d0;
output  [2:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0;
output   blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0;
output  [31:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0;

reg ap_idle;
reg tmp_a_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0;
reg blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln15_fu_135_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [2:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_addr_reg_168;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_addr_reg_173;
reg   [2:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_addr_reg_178;
reg   [2:0] blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_addr_reg_183;
wire   [1:0] trunc_ln17_fu_152_p1;
reg   [1:0] trunc_ln17_reg_196;
wire   [63:0] zext_ln13_cast_fu_119_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln15_fu_147_p1;
reg   [2:0] j_fu_44;
wire   [2:0] add_ln15_fu_141_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_j_1;
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
        if (((icmp_ln15_fu_135_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_44 <= add_ln15_fu_141_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_44 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_addr_reg_173 <= zext_ln13_cast_fu_119_p1;
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_addr_reg_168 <= zext_ln13_cast_fu_119_p1;
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_addr_reg_183 <= zext_ln13_cast_fu_119_p1;
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_addr_reg_178 <= zext_ln13_cast_fu_119_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_135_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln17_reg_196 <= trunc_ln17_fu_152_p1;
    end
end

always @ (*) begin
    if (((icmp_ln15_fu_135_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
        ap_sig_allocacmp_j_1 = 3'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_44;
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
    if (((trunc_ln17_reg_196 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((trunc_ln17_reg_196 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((trunc_ln17_reg_196 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0 = 1'b0;
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
    if (((trunc_ln17_reg_196 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0 = 1'b1;
    end else begin
        blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_a_ce0 = 1'b1;
    end else begin
        tmp_a_ce0 = 1'b0;
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

assign add_ln15_fu_141_p2 = (ap_sig_allocacmp_j_1 + 3'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 = blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_addr_reg_173;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_d0 = tmp_a_q0;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 = blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_addr_reg_168;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0 = tmp_a_q0;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 = blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_addr_reg_183;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0 = tmp_a_q0;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 = blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_addr_reg_178;

assign blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_d0 = tmp_a_q0;

assign icmp_ln15_fu_135_p2 = ((ap_sig_allocacmp_j_1 == 3'd4) ? 1'b1 : 1'b0);

assign tmp_a_address0 = zext_ln15_fu_147_p1;

assign trunc_ln17_fu_152_p1 = ap_sig_allocacmp_j_1[1:0];

assign zext_ln13_cast_fu_119_p1 = zext_ln13;

assign zext_ln15_fu_147_p1 = ap_sig_allocacmp_j_1;

endmodule //blockmatmul_Loop_1_proc1_Pipeline_VITIS_LOOP_15_1
