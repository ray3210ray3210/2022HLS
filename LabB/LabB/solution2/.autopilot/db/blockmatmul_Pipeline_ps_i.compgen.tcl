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
    id 37 \
    name AB_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_15 \
    op interface \
    ports { AB_15_address0 { O 4 vector } AB_15_ce0 { O 1 bit } AB_15_we0 { O 1 bit } AB_15_d0 { O 32 vector } AB_15_address1 { O 4 vector } AB_15_ce1 { O 1 bit } AB_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name AB_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_14 \
    op interface \
    ports { AB_14_address0 { O 4 vector } AB_14_ce0 { O 1 bit } AB_14_we0 { O 1 bit } AB_14_d0 { O 32 vector } AB_14_address1 { O 4 vector } AB_14_ce1 { O 1 bit } AB_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name AB_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_13 \
    op interface \
    ports { AB_13_address0 { O 4 vector } AB_13_ce0 { O 1 bit } AB_13_we0 { O 1 bit } AB_13_d0 { O 32 vector } AB_13_address1 { O 4 vector } AB_13_ce1 { O 1 bit } AB_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name AB_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_12 \
    op interface \
    ports { AB_12_address0 { O 4 vector } AB_12_ce0 { O 1 bit } AB_12_we0 { O 1 bit } AB_12_d0 { O 32 vector } AB_12_address1 { O 4 vector } AB_12_ce1 { O 1 bit } AB_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name AB_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_11 \
    op interface \
    ports { AB_11_address0 { O 4 vector } AB_11_ce0 { O 1 bit } AB_11_we0 { O 1 bit } AB_11_d0 { O 32 vector } AB_11_address1 { O 4 vector } AB_11_ce1 { O 1 bit } AB_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name AB_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_10 \
    op interface \
    ports { AB_10_address0 { O 4 vector } AB_10_ce0 { O 1 bit } AB_10_we0 { O 1 bit } AB_10_d0 { O 32 vector } AB_10_address1 { O 4 vector } AB_10_ce1 { O 1 bit } AB_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name AB_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_9 \
    op interface \
    ports { AB_9_address0 { O 4 vector } AB_9_ce0 { O 1 bit } AB_9_we0 { O 1 bit } AB_9_d0 { O 32 vector } AB_9_address1 { O 4 vector } AB_9_ce1 { O 1 bit } AB_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name AB_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_8 \
    op interface \
    ports { AB_8_address0 { O 4 vector } AB_8_ce0 { O 1 bit } AB_8_we0 { O 1 bit } AB_8_d0 { O 32 vector } AB_8_address1 { O 4 vector } AB_8_ce1 { O 1 bit } AB_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name AB_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_7 \
    op interface \
    ports { AB_7_address0 { O 4 vector } AB_7_ce0 { O 1 bit } AB_7_we0 { O 1 bit } AB_7_d0 { O 32 vector } AB_7_address1 { O 4 vector } AB_7_ce1 { O 1 bit } AB_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name AB_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_6 \
    op interface \
    ports { AB_6_address0 { O 4 vector } AB_6_ce0 { O 1 bit } AB_6_we0 { O 1 bit } AB_6_d0 { O 32 vector } AB_6_address1 { O 4 vector } AB_6_ce1 { O 1 bit } AB_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name AB_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_5 \
    op interface \
    ports { AB_5_address0 { O 4 vector } AB_5_ce0 { O 1 bit } AB_5_we0 { O 1 bit } AB_5_d0 { O 32 vector } AB_5_address1 { O 4 vector } AB_5_ce1 { O 1 bit } AB_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name AB_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_4 \
    op interface \
    ports { AB_4_address0 { O 4 vector } AB_4_ce0 { O 1 bit } AB_4_we0 { O 1 bit } AB_4_d0 { O 32 vector } AB_4_address1 { O 4 vector } AB_4_ce1 { O 1 bit } AB_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name AB_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_3 \
    op interface \
    ports { AB_3_address0 { O 4 vector } AB_3_ce0 { O 1 bit } AB_3_we0 { O 1 bit } AB_3_d0 { O 32 vector } AB_3_address1 { O 4 vector } AB_3_ce1 { O 1 bit } AB_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name AB_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_2 \
    op interface \
    ports { AB_2_address0 { O 4 vector } AB_2_ce0 { O 1 bit } AB_2_we0 { O 1 bit } AB_2_d0 { O 32 vector } AB_2_address1 { O 4 vector } AB_2_ce1 { O 1 bit } AB_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name AB_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB_1 \
    op interface \
    ports { AB_1_address0 { O 4 vector } AB_1_ce0 { O 1 bit } AB_1_we0 { O 1 bit } AB_1_d0 { O 32 vector } AB_1_address1 { O 4 vector } AB_1_ce1 { O 1 bit } AB_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name AB \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename AB \
    op interface \
    ports { AB_address0 { O 4 vector } AB_ce0 { O 1 bit } AB_we0 { O 1 bit } AB_d0 { O 32 vector } AB_address1 { O 4 vector } AB_ce1 { O 1 bit } AB_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
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
    id 36 \
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
    id 53 \
    name tempB_a \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tempB_a \
    op interface \
    ports { tempB_a { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name tempB_a_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tempB_a_1 \
    op interface \
    ports { tempB_a_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name tmp_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_14 \
    op interface \
    ports { tmp_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name tmp_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_29 \
    op interface \
    ports { tmp_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name tmp_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_30 \
    op interface \
    ports { tmp_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name tmp_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_31 \
    op interface \
    ports { tmp_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name tmp_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_18 \
    op interface \
    ports { tmp_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name tmp_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_19 \
    op interface \
    ports { tmp_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name tmp_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_20 \
    op interface \
    ports { tmp_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name tmp_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_21 \
    op interface \
    ports { tmp_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name tmp_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_22 \
    op interface \
    ports { tmp_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name tmp_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_23 \
    op interface \
    ports { tmp_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name tmp_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_24 \
    op interface \
    ports { tmp_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name tmp_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_32 \
    op interface \
    ports { tmp_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name trunc_ln145_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln145_2 \
    op interface \
    ports { trunc_ln145_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name trunc_ln145_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln145_3 \
    op interface \
    ports { trunc_ln145_3 { I 32 vector } } \
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


