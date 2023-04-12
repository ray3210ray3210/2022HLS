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
    id 309 \
    name blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A \
    op interface \
    ports { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 { O 6 vector } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 { O 1 bit } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 310 \
    name blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 \
    op interface \
    ports { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 { O 6 vector } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 { O 1 bit } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 311 \
    name blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 \
    op interface \
    ports { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 { O 6 vector } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 { O 1 bit } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 312 \
    name blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 \
    op interface \
    ports { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 { O 6 vector } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 { O 1 bit } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 313 \
    name blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4 \
    op interface \
    ports { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_address0 { O 6 vector } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_ce0 { O 1 bit } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 314 \
    name blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5 \
    op interface \
    ports { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_address0 { O 6 vector } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_ce0 { O 1 bit } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 315 \
    name blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6 \
    op interface \
    ports { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_address0 { O 6 vector } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_ce0 { O 1 bit } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 316 \
    name blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7 \
    op interface \
    ports { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_address0 { O 6 vector } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_ce0 { O 1 bit } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 317 \
    name blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8 \
    op interface \
    ports { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_address0 { O 6 vector } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_ce0 { O 1 bit } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 318 \
    name blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9 \
    op interface \
    ports { blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_address0 { O 6 vector } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_ce0 { O 1 bit } blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 319 \
    name p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10 \
    op interface \
    ports { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_address0 { O 6 vector } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_ce0 { O 1 bit } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 320 \
    name p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11 \
    op interface \
    ports { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_address0 { O 6 vector } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_ce0 { O 1 bit } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 321 \
    name p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12 \
    op interface \
    ports { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_address0 { O 6 vector } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_ce0 { O 1 bit } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 322 \
    name p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13 \
    op interface \
    ports { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_address0 { O 6 vector } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_ce0 { O 1 bit } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 323 \
    name p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14 \
    op interface \
    ports { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_address0 { O 6 vector } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_ce0 { O 1 bit } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 324 \
    name p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15 \
    op interface \
    ports { p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_address0 { O 6 vector } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_ce0 { O 1 bit } p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ11blockmatmulRN3hls6streamI8blockvecLi0EEES3_R8blockmatiE1A_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name AB_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_16 \
    op interface \
    ports { AB_load_16 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name AB_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_15 \
    op interface \
    ports { AB_load_15 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name AB_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_14 \
    op interface \
    ports { AB_load_14 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name AB_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_13 \
    op interface \
    ports { AB_load_13 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name AB_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_12 \
    op interface \
    ports { AB_load_12 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name AB_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_11 \
    op interface \
    ports { AB_load_11 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name AB_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_10 \
    op interface \
    ports { AB_load_10 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name AB_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_9 \
    op interface \
    ports { AB_load_9 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name AB_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_8 \
    op interface \
    ports { AB_load_8 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name AB_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_7 \
    op interface \
    ports { AB_load_7 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name AB_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_6 \
    op interface \
    ports { AB_load_6 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name AB_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_5 \
    op interface \
    ports { AB_load_5 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name AB_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_4 \
    op interface \
    ports { AB_load_4 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name AB_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_3 \
    op interface \
    ports { AB_load_3 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name AB_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_2 \
    op interface \
    ports { AB_load_2 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name AB_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_load_1 \
    op interface \
    ports { AB_load_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
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
    id 293 \
    name p_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out { O 512 vector } p_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name p_out1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out1 \
    op interface \
    ports { p_out1 { O 512 vector } p_out1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name p_out2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out2 \
    op interface \
    ports { p_out2 { O 512 vector } p_out2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name p_out3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out3 \
    op interface \
    ports { p_out3 { O 512 vector } p_out3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name p_out4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out4 \
    op interface \
    ports { p_out4 { O 512 vector } p_out4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name p_out5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out5 \
    op interface \
    ports { p_out5 { O 512 vector } p_out5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name p_out6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out6 \
    op interface \
    ports { p_out6 { O 512 vector } p_out6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name p_out7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out7 \
    op interface \
    ports { p_out7 { O 512 vector } p_out7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name p_out8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out8 \
    op interface \
    ports { p_out8 { O 512 vector } p_out8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name p_out9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out9 \
    op interface \
    ports { p_out9 { O 512 vector } p_out9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name p_out10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out10 \
    op interface \
    ports { p_out10 { O 512 vector } p_out10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name p_out11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out11 \
    op interface \
    ports { p_out11 { O 512 vector } p_out11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name p_out12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out12 \
    op interface \
    ports { p_out12 { O 512 vector } p_out12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name p_out13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out13 \
    op interface \
    ports { p_out13 { O 512 vector } p_out13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name p_out14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out14 \
    op interface \
    ports { p_out14 { O 512 vector } p_out14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name p_out15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out15 \
    op interface \
    ports { p_out15 { O 512 vector } p_out15_ap_vld { O 1 bit } } \
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


