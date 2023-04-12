// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="blockmatmul_blockmatmul,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=6.912000,HLS_SYN_LAT=90,HLS_SYN_TPT=91,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=6960,HLS_SYN_LUT=25887,HLS_VERSION=2022_1}" *)

module blockmatmul (
        ap_clk,
        ap_rst,
        Arows_dout,
        Arows_empty_n,
        Arows_read,
        Bcols_dout,
        Bcols_empty_n,
        Bcols_read,
        ABpartial_i,
        ABpartial_o,
        it,
        ap_start,
        ABpartial_o_ap_vld,
        ap_done,
        ap_ready,
        ap_idle
);


input   ap_clk;
input   ap_rst;
input  [127:0] Arows_dout;
input   Arows_empty_n;
output   Arows_read;
input  [127:0] Bcols_dout;
input   Bcols_empty_n;
output   Bcols_read;
input  [511:0] ABpartial_i;
output  [511:0] ABpartial_o;
input  [31:0] it;
input   ap_start;
output   ABpartial_o_ap_vld;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire   [31:0] AB_i_q0;
wire   [31:0] AB_i_q1;
wire   [31:0] AB_t_q0;
wire   [31:0] AB_t_q1;
wire    Loop_1_proc1_U0_ap_start;
wire    Loop_1_proc1_U0_ap_done;
wire    Loop_1_proc1_U0_ap_continue;
wire    Loop_1_proc1_U0_ap_idle;
wire    Loop_1_proc1_U0_ap_ready;
wire   [3:0] Loop_1_proc1_U0_AB_address0;
wire    Loop_1_proc1_U0_AB_ce0;
wire    Loop_1_proc1_U0_AB_we0;
wire   [31:0] Loop_1_proc1_U0_AB_d0;
wire   [3:0] Loop_1_proc1_U0_AB_address1;
wire    Loop_1_proc1_U0_AB_ce1;
wire    Loop_1_proc1_U0_AB_we1;
wire   [31:0] Loop_1_proc1_U0_AB_d1;
wire    Loop_1_proc1_U0_Arows_read;
wire    Loop_1_proc1_U0_Bcols_read;
wire    Loop_writeoutput_proc_U0_ap_start;
wire    Loop_writeoutput_proc_U0_ap_done;
wire    Loop_writeoutput_proc_U0_ap_continue;
wire    Loop_writeoutput_proc_U0_ap_idle;
wire    Loop_writeoutput_proc_U0_ap_ready;
wire   [511:0] Loop_writeoutput_proc_U0_ABpartial_o;
wire    Loop_writeoutput_proc_U0_ABpartial_o_ap_vld;
wire   [3:0] Loop_writeoutput_proc_U0_AB_address0;
wire    Loop_writeoutput_proc_U0_AB_ce0;
wire   [3:0] Loop_writeoutput_proc_U0_AB_address1;
wire    Loop_writeoutput_proc_U0_AB_ce1;
wire    AB_i_full_n;
wire    AB_t_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_Loop_1_proc1_U0_ap_ready;
wire    ap_sync_Loop_1_proc1_U0_ap_ready;
reg    ap_sync_reg_Loop_writeoutput_proc_U0_ap_ready;
wire    ap_sync_Loop_writeoutput_proc_U0_ap_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_Loop_1_proc1_U0_ap_ready = 1'b0;
#0 ap_sync_reg_Loop_writeoutput_proc_U0_ap_ready = 1'b0;
end

blockmatmul_AB_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
AB_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(Loop_1_proc1_U0_AB_address0),
    .i_ce0(Loop_1_proc1_U0_AB_ce0),
    .i_we0(Loop_1_proc1_U0_AB_we0),
    .i_d0(Loop_1_proc1_U0_AB_d0),
    .i_q0(AB_i_q0),
    .i_address1(Loop_1_proc1_U0_AB_address1),
    .i_ce1(Loop_1_proc1_U0_AB_ce1),
    .i_we1(Loop_1_proc1_U0_AB_we1),
    .i_d1(Loop_1_proc1_U0_AB_d1),
    .i_q1(AB_i_q1),
    .t_address0(Loop_writeoutput_proc_U0_AB_address0),
    .t_ce0(Loop_writeoutput_proc_U0_AB_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(AB_t_q0),
    .t_address1(Loop_writeoutput_proc_U0_AB_address1),
    .t_ce1(Loop_writeoutput_proc_U0_AB_ce1),
    .t_we1(1'b0),
    .t_d1(32'd0),
    .t_q1(AB_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(AB_i_full_n),
    .i_write(Loop_1_proc1_U0_ap_done),
    .t_empty_n(AB_t_empty_n),
    .t_read(Loop_writeoutput_proc_U0_ap_ready)
);

blockmatmul_Loop_1_proc1 Loop_1_proc1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_1_proc1_U0_ap_start),
    .ap_done(Loop_1_proc1_U0_ap_done),
    .ap_continue(Loop_1_proc1_U0_ap_continue),
    .ap_idle(Loop_1_proc1_U0_ap_idle),
    .ap_ready(Loop_1_proc1_U0_ap_ready),
    .AB_address0(Loop_1_proc1_U0_AB_address0),
    .AB_ce0(Loop_1_proc1_U0_AB_ce0),
    .AB_we0(Loop_1_proc1_U0_AB_we0),
    .AB_d0(Loop_1_proc1_U0_AB_d0),
    .AB_q0(AB_i_q0),
    .AB_address1(Loop_1_proc1_U0_AB_address1),
    .AB_ce1(Loop_1_proc1_U0_AB_ce1),
    .AB_we1(Loop_1_proc1_U0_AB_we1),
    .AB_d1(Loop_1_proc1_U0_AB_d1),
    .AB_q1(AB_i_q1),
    .it(it),
    .Arows_dout(Arows_dout),
    .Arows_empty_n(Arows_empty_n),
    .Arows_read(Loop_1_proc1_U0_Arows_read),
    .Bcols_dout(Bcols_dout),
    .Bcols_empty_n(Bcols_empty_n),
    .Bcols_read(Loop_1_proc1_U0_Bcols_read)
);

blockmatmul_Loop_writeoutput_proc Loop_writeoutput_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_writeoutput_proc_U0_ap_start),
    .ap_done(Loop_writeoutput_proc_U0_ap_done),
    .ap_continue(Loop_writeoutput_proc_U0_ap_continue),
    .ap_idle(Loop_writeoutput_proc_U0_ap_idle),
    .ap_ready(Loop_writeoutput_proc_U0_ap_ready),
    .ABpartial_i(ABpartial_i),
    .ABpartial_o(Loop_writeoutput_proc_U0_ABpartial_o),
    .ABpartial_o_ap_vld(Loop_writeoutput_proc_U0_ABpartial_o_ap_vld),
    .AB_address0(Loop_writeoutput_proc_U0_AB_address0),
    .AB_ce0(Loop_writeoutput_proc_U0_AB_ce0),
    .AB_q0(AB_t_q0),
    .AB_address1(Loop_writeoutput_proc_U0_AB_address1),
    .AB_ce1(Loop_writeoutput_proc_U0_AB_ce1),
    .AB_q1(AB_t_q1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_Loop_1_proc1_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Loop_1_proc1_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Loop_1_proc1_U0_ap_ready <= ap_sync_Loop_1_proc1_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_Loop_writeoutput_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Loop_writeoutput_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Loop_writeoutput_proc_U0_ap_ready <= ap_sync_Loop_writeoutput_proc_U0_ap_ready;
        end
    end
end

assign ABpartial_o = Loop_writeoutput_proc_U0_ABpartial_o;

assign ABpartial_o_ap_vld = Loop_writeoutput_proc_U0_ABpartial_o_ap_vld;

assign Arows_read = Loop_1_proc1_U0_Arows_read;

assign Bcols_read = Loop_1_proc1_U0_Bcols_read;

assign Loop_1_proc1_U0_ap_continue = AB_i_full_n;

assign Loop_1_proc1_U0_ap_start = ((ap_sync_reg_Loop_1_proc1_U0_ap_ready ^ 1'b1) & ap_start);

assign Loop_writeoutput_proc_U0_ap_continue = 1'b1;

assign Loop_writeoutput_proc_U0_ap_start = ((ap_sync_reg_Loop_writeoutput_proc_U0_ap_ready ^ 1'b1) & ap_start & AB_t_empty_n);

assign ap_done = Loop_writeoutput_proc_U0_ap_done;

assign ap_idle = ((1'b1 ^ AB_t_empty_n) & Loop_writeoutput_proc_U0_ap_idle & Loop_1_proc1_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_Loop_1_proc1_U0_ap_ready = (ap_sync_reg_Loop_1_proc1_U0_ap_ready | Loop_1_proc1_U0_ap_ready);

assign ap_sync_Loop_writeoutput_proc_U0_ap_ready = (ap_sync_reg_Loop_writeoutput_proc_U0_ap_ready | Loop_writeoutput_proc_U0_ap_ready);

assign ap_sync_ready = (ap_sync_Loop_writeoutput_proc_U0_ap_ready & ap_sync_Loop_1_proc1_U0_ap_ready);

endmodule //blockmatmul