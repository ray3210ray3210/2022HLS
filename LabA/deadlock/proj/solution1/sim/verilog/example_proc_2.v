// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module example_proc_2 (
        data_channel12_dout,
        data_channel12_empty_n,
        data_channel12_read,
        data_channel23_dout,
        data_channel23_empty_n,
        data_channel23_read,
        B1_din,
        B1_full_n,
        B1_write,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [31:0] data_channel12_dout;
input   data_channel12_empty_n;
output   data_channel12_read;
input  [31:0] data_channel23_dout;
input   data_channel23_empty_n;
output   data_channel23_read;
output  [31:0] B1_din;
input   B1_full_n;
output   B1_write;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    proc_2_1_U0_ap_start;
wire    proc_2_1_U0_ap_done;
wire    proc_2_1_U0_ap_continue;
wire    proc_2_1_U0_ap_idle;
wire    proc_2_1_U0_ap_ready;
wire    proc_2_1_U0_start_out;
wire    proc_2_1_U0_start_write;
wire    proc_2_1_U0_data_channel12_read;
wire    proc_2_1_U0_data_channel23_read;
wire   [31:0] proc_2_1_U0_data_channel121_din;
wire    proc_2_1_U0_data_channel121_write;
wire   [31:0] proc_2_1_U0_data_channel232_din;
wire    proc_2_1_U0_data_channel232_write;
wire    proc_2_2_U0_ap_start;
wire    proc_2_2_U0_ap_done;
wire    proc_2_2_U0_ap_continue;
wire    proc_2_2_U0_ap_idle;
wire    proc_2_2_U0_ap_ready;
wire    proc_2_2_U0_data_channel23_read;
wire    proc_2_2_U0_data_channel12_read;
wire   [31:0] proc_2_2_U0_B_din;
wire    proc_2_2_U0_B_write;
wire    data_channel1_full_n;
wire   [31:0] data_channel1_dout;
wire   [4:0] data_channel1_num_data_valid;
wire   [4:0] data_channel1_fifo_cap;
wire    data_channel1_empty_n;
wire    data_channel2_full_n;
wire   [31:0] data_channel2_dout;
wire   [1:0] data_channel2_num_data_valid;
wire   [1:0] data_channel2_fifo_cap;
wire    data_channel2_empty_n;
wire   [0:0] start_for_proc_2_2_U0_din;
wire    start_for_proc_2_2_U0_full_n;
wire   [0:0] start_for_proc_2_2_U0_dout;
wire    start_for_proc_2_2_U0_empty_n;

example_proc_2_1 proc_2_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(proc_2_1_U0_ap_start),
    .start_full_n(start_for_proc_2_2_U0_full_n),
    .ap_done(proc_2_1_U0_ap_done),
    .ap_continue(proc_2_1_U0_ap_continue),
    .ap_idle(proc_2_1_U0_ap_idle),
    .ap_ready(proc_2_1_U0_ap_ready),
    .start_out(proc_2_1_U0_start_out),
    .start_write(proc_2_1_U0_start_write),
    .data_channel12_dout(data_channel12_dout),
    .data_channel12_num_data_valid(5'd0),
    .data_channel12_fifo_cap(5'd0),
    .data_channel12_empty_n(data_channel12_empty_n),
    .data_channel12_read(proc_2_1_U0_data_channel12_read),
    .data_channel23_dout(data_channel23_dout),
    .data_channel23_num_data_valid(2'd0),
    .data_channel23_fifo_cap(2'd0),
    .data_channel23_empty_n(data_channel23_empty_n),
    .data_channel23_read(proc_2_1_U0_data_channel23_read),
    .data_channel121_din(proc_2_1_U0_data_channel121_din),
    .data_channel121_num_data_valid(data_channel1_num_data_valid),
    .data_channel121_fifo_cap(data_channel1_fifo_cap),
    .data_channel121_full_n(data_channel1_full_n),
    .data_channel121_write(proc_2_1_U0_data_channel121_write),
    .data_channel232_din(proc_2_1_U0_data_channel232_din),
    .data_channel232_num_data_valid(data_channel2_num_data_valid),
    .data_channel232_fifo_cap(data_channel2_fifo_cap),
    .data_channel232_full_n(data_channel2_full_n),
    .data_channel232_write(proc_2_1_U0_data_channel232_write)
);

example_proc_2_2 proc_2_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(proc_2_2_U0_ap_start),
    .ap_done(proc_2_2_U0_ap_done),
    .ap_continue(proc_2_2_U0_ap_continue),
    .ap_idle(proc_2_2_U0_ap_idle),
    .ap_ready(proc_2_2_U0_ap_ready),
    .data_channel23_dout(data_channel2_dout),
    .data_channel23_num_data_valid(data_channel2_num_data_valid),
    .data_channel23_fifo_cap(data_channel2_fifo_cap),
    .data_channel23_empty_n(data_channel2_empty_n),
    .data_channel23_read(proc_2_2_U0_data_channel23_read),
    .data_channel12_dout(data_channel1_dout),
    .data_channel12_num_data_valid(data_channel1_num_data_valid),
    .data_channel12_fifo_cap(data_channel1_fifo_cap),
    .data_channel12_empty_n(data_channel1_empty_n),
    .data_channel12_read(proc_2_2_U0_data_channel12_read),
    .B_din(proc_2_2_U0_B_din),
    .B_full_n(B1_full_n),
    .B_write(proc_2_2_U0_B_write)
);

example_fifo_w32_d10_S data_channel1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(proc_2_1_U0_data_channel121_din),
    .if_full_n(data_channel1_full_n),
    .if_write(proc_2_1_U0_data_channel121_write),
    .if_dout(data_channel1_dout),
    .if_num_data_valid(data_channel1_num_data_valid),
    .if_fifo_cap(data_channel1_fifo_cap),
    .if_empty_n(data_channel1_empty_n),
    .if_read(proc_2_2_U0_data_channel12_read)
);

example_fifo_w32_d2_S_x data_channel2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(proc_2_1_U0_data_channel232_din),
    .if_full_n(data_channel2_full_n),
    .if_write(proc_2_1_U0_data_channel232_write),
    .if_dout(data_channel2_dout),
    .if_num_data_valid(data_channel2_num_data_valid),
    .if_fifo_cap(data_channel2_fifo_cap),
    .if_empty_n(data_channel2_empty_n),
    .if_read(proc_2_2_U0_data_channel23_read)
);

example_start_for_proc_2_2_U0 start_for_proc_2_2_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_proc_2_2_U0_din),
    .if_full_n(start_for_proc_2_2_U0_full_n),
    .if_write(proc_2_1_U0_start_write),
    .if_dout(start_for_proc_2_2_U0_dout),
    .if_empty_n(start_for_proc_2_2_U0_empty_n),
    .if_read(proc_2_2_U0_ap_ready)
);

assign B1_din = proc_2_2_U0_B_din;

assign B1_write = proc_2_2_U0_B_write;

assign ap_done = proc_2_2_U0_ap_done;

assign ap_idle = (proc_2_2_U0_ap_idle & proc_2_1_U0_ap_idle);

assign ap_ready = proc_2_1_U0_ap_ready;

assign data_channel12_read = proc_2_1_U0_data_channel12_read;

assign data_channel23_read = proc_2_1_U0_data_channel23_read;

assign proc_2_1_U0_ap_continue = 1'b1;

assign proc_2_1_U0_ap_start = ap_start;

assign proc_2_2_U0_ap_continue = ap_continue;

assign proc_2_2_U0_ap_start = start_for_proc_2_2_U0_empty_n;

assign start_for_proc_2_2_U0_din = 1'b1;

endmodule //example_proc_2
