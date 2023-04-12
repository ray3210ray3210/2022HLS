// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module blockmatmul_Loop_writeoutput_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        ABpartial_i,
        ABpartial_o,
        ABpartial_o_ap_vld,
        AB_address0,
        AB_ce0,
        AB_q0,
        AB_address1,
        AB_ce1,
        AB_q1
);

parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [511:0] ABpartial_i;
output  [511:0] ABpartial_o;
output   ABpartial_o_ap_vld;
output  [3:0] AB_address0;
output   AB_ce0;
input  [31:0] AB_q0;
output  [3:0] AB_address1;
output   AB_ce1;
input  [31:0] AB_q1;

reg ap_idle;
reg[511:0] ABpartial_o;
reg ABpartial_o_ap_vld;
reg[3:0] AB_address0;
reg AB_ce0;
reg[3:0] AB_address1;
reg AB_ce1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln32_fu_146_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_subdone;
reg   [31:0] reg_130;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln32_reg_426;
wire    ap_block_pp0_stage2_11001;
reg    ap_block_pp0_stage0_11001;
wire   [3:0] tmp_1_fu_158_p3;
reg   [3:0] tmp_1_reg_430;
wire   [8:0] tmp_6_fu_182_p3;
reg   [8:0] tmp_6_reg_446;
wire   [415:0] zext_ln34_fu_190_p1;
reg   [415:0] zext_ln34_reg_453;
wire   [415:0] shl_ln34_fu_194_p2;
reg   [415:0] shl_ln34_reg_458;
wire   [511:0] zext_ln34_4_fu_297_p1;
reg   [511:0] zext_ln34_4_reg_474;
wire   [511:0] and_ln34_1_fu_313_p2;
reg   [511:0] and_ln34_1_reg_479;
wire   [511:0] or_ln34_2_fu_370_p2;
reg   [511:0] or_ln34_2_reg_484;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln34_9_fu_166_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln34_10_fu_177_p1;
wire   [63:0] zext_ln34_11_fu_210_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln34_12_fu_220_p1;
reg   [2:0] i_fu_72;
wire   [2:0] add_ln32_fu_152_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_1;
wire   [511:0] or_ln34_3_fu_412_p2;
reg   [511:0] ABpartial_o_preg;
reg    ap_block_pp0_stage0_01001;
wire   [1:0] empty_fu_142_p1;
wire   [3:0] or_ln34_fu_171_p2;
wire   [3:0] or_ln34_8_fu_205_p2;
wire   [3:0] or_ln34_9_fu_215_p2;
wire   [415:0] zext_ln34_1_fu_225_p1;
wire   [416:0] zext_ln34_8_fu_234_p1;
wire   [416:0] xor_ln34_fu_237_p2;
wire  signed [511:0] sext_ln34_fu_243_p1;
wire   [415:0] trunc_ln34_fu_252_p1;
wire   [415:0] xor_ln34_4_fu_247_p2;
wire   [415:0] and_ln34_4_fu_262_p2;
wire   [415:0] shl_ln34_1_fu_229_p2;
wire   [511:0] and_ln34_fu_256_p2;
wire   [95:0] tmp_fu_274_p4;
wire   [415:0] or_ln34_7_fu_268_p2;
wire   [8:0] or_ln34_4_fu_292_p2;
wire   [511:0] shl_ln34_4_fu_301_p2;
wire   [511:0] or_ln_fu_284_p3;
wire   [511:0] xor_ln34_1_fu_307_p2;
wire    ap_block_pp0_stage2;
wire   [511:0] zext_ln34_5_fu_319_p1;
wire   [511:0] shl_ln34_5_fu_323_p2;
wire   [8:0] or_ln34_5_fu_337_p2;
wire   [511:0] zext_ln34_6_fu_333_p1;
wire   [511:0] zext_ln34_2_fu_342_p1;
wire   [511:0] shl_ln34_2_fu_352_p2;
wire   [511:0] or_ln34_1_fu_328_p2;
wire   [511:0] xor_ln34_2_fu_358_p2;
wire   [511:0] shl_ln34_6_fu_346_p2;
wire   [511:0] and_ln34_2_fu_364_p2;
wire   [8:0] or_ln34_6_fu_380_p2;
wire   [511:0] zext_ln34_7_fu_376_p1;
wire   [511:0] zext_ln34_3_fu_385_p1;
wire   [511:0] shl_ln34_3_fu_395_p2;
wire   [511:0] xor_ln34_3_fu_401_p2;
wire   [511:0] shl_ln34_7_fu_389_p2;
wire   [511:0] and_ln34_3_fu_407_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_155;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ABpartial_o_preg = 512'd0;
end

blockmatmul_flow_control_loop_pipe flow_control_loop_pipe_U(
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
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ABpartial_o_preg <= 512'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ABpartial_o_preg <= or_ln34_3_fu_412_p2;
        end
    end
end

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
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_155)) begin
        if ((icmp_ln32_fu_146_p2 == 1'd0)) begin
            i_fu_72 <= add_ln32_fu_152_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_72 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_reg_426 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln34_1_reg_479 <= and_ln34_1_fu_313_p2;
        zext_ln34_4_reg_474[8 : 7] <= zext_ln34_4_fu_297_p1[8 : 7];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln32_reg_426 <= icmp_ln32_fu_146_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_reg_426 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        or_ln34_2_reg_484 <= or_ln34_2_fu_370_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln32_reg_426 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln32_reg_426 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_130 <= AB_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_146_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        shl_ln34_reg_458 <= shl_ln34_fu_194_p2;
        tmp_1_reg_430[3 : 2] <= tmp_1_fu_158_p3[3 : 2];
        tmp_6_reg_446[8 : 7] <= tmp_6_fu_182_p3[8 : 7];
        zext_ln34_reg_453[8 : 7] <= zext_ln34_fu_190_p1[8 : 7];
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            AB_address0 = zext_ln34_12_fu_220_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            AB_address0 = zext_ln34_10_fu_177_p1;
        end else begin
            AB_address0 = 'bx;
        end
    end else begin
        AB_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            AB_address1 = zext_ln34_11_fu_210_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            AB_address1 = zext_ln34_9_fu_166_p1;
        end else begin
            AB_address1 = 'bx;
        end
    end else begin
        AB_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        AB_ce0 = 1'b1;
    end else begin
        AB_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        AB_ce1 = 1'b1;
    end else begin
        AB_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ABpartial_o = or_ln34_3_fu_412_p2;
    end else begin
        ABpartial_o = ABpartial_o_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ABpartial_o_ap_vld = 1'b1;
    end else begin
        ABpartial_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln32_fu_146_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_72;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln32_fu_152_p2 = (ap_sig_allocacmp_i_1 + 3'd1);

assign and_ln34_1_fu_313_p2 = (xor_ln34_1_fu_307_p2 & or_ln_fu_284_p3);

assign and_ln34_2_fu_364_p2 = (xor_ln34_2_fu_358_p2 & or_ln34_1_fu_328_p2);

assign and_ln34_3_fu_407_p2 = (xor_ln34_3_fu_401_p2 & or_ln34_2_reg_484);

assign and_ln34_4_fu_262_p2 = (xor_ln34_4_fu_247_p2 & trunc_ln34_fu_252_p1);

assign and_ln34_fu_256_p2 = (sext_ln34_fu_243_p1 & ABpartial_i);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = (ap_done_reg == 1'b1);
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_155 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_fu_142_p1 = ap_sig_allocacmp_i_1[1:0];

assign icmp_ln32_fu_146_p2 = ((ap_sig_allocacmp_i_1 == 3'd4) ? 1'b1 : 1'b0);

assign or_ln34_1_fu_328_p2 = (shl_ln34_5_fu_323_p2 | and_ln34_1_reg_479);

assign or_ln34_2_fu_370_p2 = (shl_ln34_6_fu_346_p2 | and_ln34_2_fu_364_p2);

assign or_ln34_3_fu_412_p2 = (shl_ln34_7_fu_389_p2 | and_ln34_3_fu_407_p2);

assign or_ln34_4_fu_292_p2 = (tmp_6_reg_446 | 9'd32);

assign or_ln34_5_fu_337_p2 = (tmp_6_reg_446 | 9'd64);

assign or_ln34_6_fu_380_p2 = (tmp_6_reg_446 | 9'd96);

assign or_ln34_7_fu_268_p2 = (shl_ln34_1_fu_229_p2 | and_ln34_4_fu_262_p2);

assign or_ln34_8_fu_205_p2 = (tmp_1_reg_430 | 4'd2);

assign or_ln34_9_fu_215_p2 = (tmp_1_reg_430 | 4'd3);

assign or_ln34_fu_171_p2 = (tmp_1_fu_158_p3 | 4'd1);

assign or_ln_fu_284_p3 = {{tmp_fu_274_p4}, {or_ln34_7_fu_268_p2}};

assign sext_ln34_fu_243_p1 = $signed(xor_ln34_fu_237_p2);

assign shl_ln34_1_fu_229_p2 = zext_ln34_1_fu_225_p1 << zext_ln34_reg_453;

assign shl_ln34_2_fu_352_p2 = 512'd4294967295 << zext_ln34_2_fu_342_p1;

assign shl_ln34_3_fu_395_p2 = 512'd4294967295 << zext_ln34_3_fu_385_p1;

assign shl_ln34_4_fu_301_p2 = 512'd4294967295 << zext_ln34_4_fu_297_p1;

assign shl_ln34_5_fu_323_p2 = zext_ln34_5_fu_319_p1 << zext_ln34_4_reg_474;

assign shl_ln34_6_fu_346_p2 = zext_ln34_6_fu_333_p1 << zext_ln34_2_fu_342_p1;

assign shl_ln34_7_fu_389_p2 = zext_ln34_7_fu_376_p1 << zext_ln34_3_fu_385_p1;

assign shl_ln34_fu_194_p2 = 416'd4294967295 << zext_ln34_fu_190_p1;

assign tmp_1_fu_158_p3 = {{empty_fu_142_p1}, {2'd0}};

assign tmp_6_fu_182_p3 = {{empty_fu_142_p1}, {7'd0}};

assign tmp_fu_274_p4 = {{and_ln34_fu_256_p2[511:416]}};

assign trunc_ln34_fu_252_p1 = ABpartial_i[415:0];

assign xor_ln34_1_fu_307_p2 = (shl_ln34_4_fu_301_p2 ^ 512'd13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095);

assign xor_ln34_2_fu_358_p2 = (shl_ln34_2_fu_352_p2 ^ 512'd13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095);

assign xor_ln34_3_fu_401_p2 = (shl_ln34_3_fu_395_p2 ^ 512'd13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095);

assign xor_ln34_4_fu_247_p2 = (shl_ln34_reg_458 ^ 416'd169230328010303641331690318856389386196071598838855992136870091590247882556495704531248437872567112920983350278405979725889535);

assign xor_ln34_fu_237_p2 = (zext_ln34_8_fu_234_p1 ^ 417'd338460656020607282663380637712778772392143197677711984273740183180495765112991409062496875745134225841966700556811959451779071);

assign zext_ln34_10_fu_177_p1 = or_ln34_fu_171_p2;

assign zext_ln34_11_fu_210_p1 = or_ln34_8_fu_205_p2;

assign zext_ln34_12_fu_220_p1 = or_ln34_9_fu_215_p2;

assign zext_ln34_1_fu_225_p1 = AB_q1;

assign zext_ln34_2_fu_342_p1 = or_ln34_5_fu_337_p2;

assign zext_ln34_3_fu_385_p1 = or_ln34_6_fu_380_p2;

assign zext_ln34_4_fu_297_p1 = or_ln34_4_fu_292_p2;

assign zext_ln34_5_fu_319_p1 = reg_130;

assign zext_ln34_6_fu_333_p1 = AB_q1;

assign zext_ln34_7_fu_376_p1 = reg_130;

assign zext_ln34_8_fu_234_p1 = shl_ln34_reg_458;

assign zext_ln34_9_fu_166_p1 = tmp_1_fu_158_p3;

assign zext_ln34_fu_190_p1 = tmp_6_fu_182_p3;

always @ (posedge ap_clk) begin
    tmp_1_reg_430[1:0] <= 2'b00;
    tmp_6_reg_446[6:0] <= 7'b0000000;
    zext_ln34_reg_453[6:0] <= 7'b0000000;
    zext_ln34_reg_453[415:9] <= 407'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    zext_ln34_4_reg_474[6:0] <= 7'b0100000;
    zext_ln34_4_reg_474[511:9] <= 503'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
end

endmodule //blockmatmul_Loop_writeoutput_proc
