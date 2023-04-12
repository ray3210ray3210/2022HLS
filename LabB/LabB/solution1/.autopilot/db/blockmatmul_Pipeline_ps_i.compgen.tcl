# This script segment is generated automatically by AutoPilot

set name blockmatmul_mul_32s_32s_32_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name AB \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB \
    op interface \
    ports { AB_address0 { O 8 vector } AB_ce0 { O 1 bit } AB_we0 { O 1 bit } AB_d0 { O 32 vector } AB_q0 { I 32 vector } AB_address1 { O 8 vector } AB_ce1 { O 1 bit } AB_we1 { O 1 bit } AB_d1 { O 32 vector } AB_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name A \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A \
    op interface \
    ports { A_address0 { O 10 vector } A_ce0 { O 1 bit } A_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name zext_ln23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln23 \
    op interface \
    ports { zext_ln23 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name tmp_a_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_0 \
    op interface \
    ports { tmp_a_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name tmp_a_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_1 \
    op interface \
    ports { tmp_a_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name tmp_a_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_2 \
    op interface \
    ports { tmp_a_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name tmp_a_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_3 \
    op interface \
    ports { tmp_a_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name tmp_a_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_4 \
    op interface \
    ports { tmp_a_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name tmp_a_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_5 \
    op interface \
    ports { tmp_a_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name tmp_a_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_6 \
    op interface \
    ports { tmp_a_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name tmp_a_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_7 \
    op interface \
    ports { tmp_a_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name tmp_a_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_8 \
    op interface \
    ports { tmp_a_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name tmp_a_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_9 \
    op interface \
    ports { tmp_a_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name tmp_a_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_10 \
    op interface \
    ports { tmp_a_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name tmp_a_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_11 \
    op interface \
    ports { tmp_a_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name tmp_a_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_12 \
    op interface \
    ports { tmp_a_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name tmp_a_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_13 \
    op interface \
    ports { tmp_a_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name tmp_a_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_14 \
    op interface \
    ports { tmp_a_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name tmp_a_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_a_15 \
    op interface \
    ports { tmp_a_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName blockmatmul_flow_control_loop_pipe_sequential_init_U
set CompName blockmatmul_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix blockmatmul_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


