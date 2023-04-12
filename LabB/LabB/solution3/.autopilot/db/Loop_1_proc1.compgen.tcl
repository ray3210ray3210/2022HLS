# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 70
set hasByteEnable 0
set MemName blockmatmul_Loop_1_proc1_A_RAM_AUTO_1R1W
set CoreName ap_simcore_mem
set PortList { 2 0 }
set DataWd 32
set AddrRange 1024
set AddrWd 10
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
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
    id 71 \
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
    id 72 \
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
    id 73 \
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
    id 74 \
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
    id 75 \
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
    id 76 \
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
    id 77 \
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
    id 78 \
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
    id 79 \
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
    id 80 \
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
    id 81 \
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
    id 82 \
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
    id 83 \
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
    id 84 \
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
    id 85 \
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
    id 86 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name it \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_it \
    op interface \
    ports { it { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name Arows \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Arows \
    op interface \
    ports { Arows_dout { I 512 vector } Arows_empty_n { I 1 bit } Arows_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name Bcols \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bcols \
    op interface \
    ports { Bcols_dout { I 512 vector } Bcols_empty_n { I 1 bit } Bcols_read { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


