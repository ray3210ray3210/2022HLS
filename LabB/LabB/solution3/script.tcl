############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LabB
set_top blockmatmul
add_files LabB/BlockMatrix_design.cpp
add_files LabB/BlockMatrix_design.h
add_files -tb LabB/BlockMatrix_testbench.cpp
open_solution "solution3" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./LabB/solution3/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
