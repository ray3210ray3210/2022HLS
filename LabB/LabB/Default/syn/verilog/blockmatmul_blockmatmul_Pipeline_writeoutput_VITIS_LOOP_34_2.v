// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module blockmatmul_blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ABpartial_load,
        AB_address0,
        AB_ce0,
        AB_q0,
        p_out,
        p_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [511:0] ABpartial_load;
output  [3:0] AB_address0;
output   AB_ce0;
input  [31:0] AB_q0;
output  [511:0] p_out;
output   p_out_ap_vld;

reg ap_idle;
reg AB_ce0;
reg p_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln33_fu_119_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln33_reg_303;
wire   [1:0] trunc_ln35_fu_165_p1;
reg   [1:0] trunc_ln35_reg_307;
reg   [1:0] trunc_ln35_reg_307_pp0_iter1_reg;
wire   [1:0] trunc_ln35_1_fu_192_p1;
reg   [1:0] trunc_ln35_1_reg_317;
reg   [1:0] trunc_ln35_1_reg_317_pp0_iter1_reg;
reg   [31:0] AB_load_reg_322;
wire   [63:0] zext_ln35_3_fu_187_p1;
wire    ap_block_pp0_stage0;
reg   [2:0] j_fu_54;
wire   [2:0] add_ln34_fu_196_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_j_load;
reg   [511:0] empty_fu_58;
wire   [511:0] or_ln35_fu_259_p2;
reg   [2:0] i_fu_62;
wire   [2:0] select_ln33_1_fu_157_p3;
reg   [2:0] ap_sig_allocacmp_i_load;
reg   [4:0] indvar_flatten_fu_66;
wire   [4:0] add_ln33_1_fu_125_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten_load;
wire    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln34_fu_143_p2;
wire   [2:0] add_ln33_fu_137_p2;
wire   [2:0] select_ln33_fu_149_p3;
wire   [3:0] tmp_3_fu_169_p3;
wire   [3:0] zext_ln35_2_fu_177_p1;
wire   [3:0] add_ln35_fu_181_p2;
wire   [8:0] add_ln_fu_220_p4;
wire   [511:0] zext_ln35_fu_228_p1;
wire   [511:0] zext_ln35_1_fu_238_p1;
wire   [511:0] shl_ln35_fu_232_p2;
wire   [511:0] xor_ln35_fu_247_p2;
wire   [511:0] shl_ln35_1_fu_241_p2;
wire   [511:0] and_ln35_fu_253_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_fu_58 <= ABpartial_load;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            empty_fu_58 <= or_ln35_fu_259_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln33_fu_119_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_62 <= select_ln33_1_fu_157_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_62 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln33_fu_119_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_66 <= add_ln33_1_fu_125_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_66 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln33_fu_119_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_54 <= add_ln34_fu_196_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_54 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AB_load_reg_322 <= AB_q0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln33_reg_303 <= icmp_ln33_fu_119_p2;
        trunc_ln35_1_reg_317_pp0_iter1_reg <= trunc_ln35_1_reg_317;
        trunc_ln35_reg_307_pp0_iter1_reg <= trunc_ln35_reg_307;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln33_fu_119_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln35_1_reg_317 <= trunc_ln35_1_fu_192_p1;
        trunc_ln35_reg_307 <= trunc_ln35_fu_165_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AB_ce0 = 1'b1;
    end else begin
        AB_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln33_fu_119_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 3'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_62;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_66;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 3'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_54;
    end
end

always @ (*) begin
    if (((icmp_ln33_reg_303 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_out_ap_vld = 1'b1;
    end else begin
        p_out_ap_vld = 1'b0;
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

assign AB_address0 = zext_ln35_3_fu_187_p1;

assign add_ln33_1_fu_125_p2 = (ap_sig_allocacmp_indvar_flatten_load + 5'd1);

assign add_ln33_fu_137_p2 = (ap_sig_allocacmp_i_load + 3'd1);

assign add_ln34_fu_196_p2 = (select_ln33_fu_149_p3 + 3'd1);

assign add_ln35_fu_181_p2 = (tmp_3_fu_169_p3 + zext_ln35_2_fu_177_p1);

assign add_ln_fu_220_p4 = {{{trunc_ln35_reg_307_pp0_iter1_reg}, {trunc_ln35_1_reg_317_pp0_iter1_reg}}, {5'd0}};

assign and_ln35_fu_253_p2 = (xor_ln35_fu_247_p2 & empty_fu_58);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln33_fu_119_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln34_fu_143_p2 = ((ap_sig_allocacmp_j_load == 3'd4) ? 1'b1 : 1'b0);

assign or_ln35_fu_259_p2 = (shl_ln35_1_fu_241_p2 | and_ln35_fu_253_p2);

assign p_out = empty_fu_58;

assign select_ln33_1_fu_157_p3 = ((icmp_ln34_fu_143_p2[0:0] == 1'b1) ? add_ln33_fu_137_p2 : ap_sig_allocacmp_i_load);

assign select_ln33_fu_149_p3 = ((icmp_ln34_fu_143_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_j_load);

assign shl_ln35_1_fu_241_p2 = zext_ln35_1_fu_238_p1 << zext_ln35_fu_228_p1;

assign shl_ln35_fu_232_p2 = 512'd4294967295 << zext_ln35_fu_228_p1;

assign tmp_3_fu_169_p3 = {{trunc_ln35_fu_165_p1}, {2'd0}};

assign trunc_ln35_1_fu_192_p1 = select_ln33_fu_149_p3[1:0];

assign trunc_ln35_fu_165_p1 = select_ln33_1_fu_157_p3[1:0];

assign xor_ln35_fu_247_p2 = (shl_ln35_fu_232_p2 ^ 512'd13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095);

assign zext_ln35_1_fu_238_p1 = AB_load_reg_322;

assign zext_ln35_2_fu_177_p1 = select_ln33_fu_149_p3;

assign zext_ln35_3_fu_187_p1 = add_ln35_fu_181_p2;

assign zext_ln35_fu_228_p1 = add_ln_fu_220_p4;

endmodule //blockmatmul_blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2
