############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name blockmatmul "blockmatmul"
set_directive_dataflow "blockmatmul"
set_directive_array_reshape -type complete -dim 2 "blockmatmul" AB
set_directive_pipeline -II 1 "blockmatmul/partialsum"
