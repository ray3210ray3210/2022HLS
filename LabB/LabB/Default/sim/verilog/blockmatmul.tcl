
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinoutgroup]
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/ABpartial_o_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/ABpartial_o -into $return_group -radix hex
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/ABpartial_i -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(fifo) -into $cinputgroup]
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/it -into $return_group -radix hex
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/Bcols_read -into $return_group -color #ffff00 -radix hex
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/Bcols_empty_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/Bcols_dout -into $return_group -radix hex
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/Arows_read -into $return_group -color #ffff00 -radix hex
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/Arows_empty_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/Arows_dout -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/ap_start -into $blocksiggroup
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/ap_done -into $blocksiggroup
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/ap_ready -into $blocksiggroup
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/ap_idle -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_blockmatmul_top/AESL_inst_blockmatmul/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_blockmatmul_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_blockmatmul_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_blockmatmul_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_blockmatmul_top/LENGTH_Arows -into $tb_portdepth_group -radix hex
add_wave /apatb_blockmatmul_top/LENGTH_Bcols -into $tb_portdepth_group -radix hex
add_wave /apatb_blockmatmul_top/LENGTH_ABpartial -into $tb_portdepth_group -radix hex
add_wave /apatb_blockmatmul_top/LENGTH_it -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcinoutgroup]
add_wave /apatb_blockmatmul_top/ABpartial_o_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_blockmatmul_top/ABpartial_o -into $tb_return_group -radix hex
add_wave /apatb_blockmatmul_top/ABpartial_i -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(fifo) -into $tbcinputgroup]
add_wave /apatb_blockmatmul_top/it -into $tb_return_group -radix hex
add_wave /apatb_blockmatmul_top/Bcols_read -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_blockmatmul_top/Bcols_empty_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_blockmatmul_top/Bcols_dout -into $tb_return_group -radix hex
add_wave /apatb_blockmatmul_top/Arows_read -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_blockmatmul_top/Arows_empty_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_blockmatmul_top/Arows_dout -into $tb_return_group -radix hex
save_wave_config blockmatmul.wcfg
run all
quit

