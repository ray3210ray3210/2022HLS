set SynModuleInfo {
  {SRCNAME blockmatmul_Pipeline_1 MODELNAME blockmatmul_Pipeline_1 RTLNAME blockmatmul_blockmatmul_Pipeline_1
    SUBMODULES {
      {MODELNAME blockmatmul_flow_control_loop_pipe_sequential_init RTLNAME blockmatmul_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME blockmatmul_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME blockmatmul_Pipeline_loadA MODELNAME blockmatmul_Pipeline_loadA RTLNAME blockmatmul_blockmatmul_Pipeline_loadA}
  {SRCNAME blockmatmul_Pipeline_ps_i MODELNAME blockmatmul_Pipeline_ps_i RTLNAME blockmatmul_blockmatmul_Pipeline_ps_i
    SUBMODULES {
      {MODELNAME blockmatmul_mul_32s_32s_32_2_1 RTLNAME blockmatmul_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2 MODELNAME blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2 RTLNAME blockmatmul_blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2}
  {SRCNAME blockmatmul MODELNAME blockmatmul RTLNAME blockmatmul IS_TOP 1
    SUBMODULES {
      {MODELNAME blockmatmul_A_RAM_AUTO_1R1W RTLNAME blockmatmul_A_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME blockmatmul_AB_RAM_AUTO_1R1W RTLNAME blockmatmul_AB_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
