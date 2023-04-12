#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("Arows_dout", 512, hls_in, 0, "ap_fifo", "fifo_port_we", 1),
	Port_Property("Arows_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("Arows_read", 1, hls_out, 0, "ap_fifo", "fifo_data", 1),
	Port_Property("Bcols_dout", 512, hls_in, 1, "ap_fifo", "fifo_port_we", 64),
	Port_Property("Bcols_empty_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 64),
	Port_Property("Bcols_read", 1, hls_out, 1, "ap_fifo", "fifo_data", 64),
	Port_Property("ABpartial_address0", 8, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("ABpartial_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("ABpartial_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("ABpartial_d0", 32, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("it", 32, hls_in, 3, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "blockmatmul";
