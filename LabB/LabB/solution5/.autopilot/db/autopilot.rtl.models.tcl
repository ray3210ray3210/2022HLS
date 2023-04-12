set SynModuleInfo {
  {SRCNAME Loop_1_proc1_Pipeline_1 MODELNAME Loop_1_proc1_Pipeline_1 RTLNAME blockmatmul_Loop_1_proc1_Pipeline_1
    SUBMODULES {
      {MODELNAME blockmatmul_flow_control_loop_pipe_sequential_init RTLNAME blockmatmul_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME blockmatmul_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Loop_1_proc1_Pipeline_loadA MODELNAME Loop_1_proc1_Pipeline_loadA RTLNAME blockmatmul_Loop_1_proc1_Pipeline_loadA}
  {SRCNAME Loop_1_proc1_Pipeline_partialsum MODELNAME Loop_1_proc1_Pipeline_partialsum RTLNAME blockmatmul_Loop_1_proc1_Pipeline_partialsum
    SUBMODULES {
      {MODELNAME blockmatmul_mul_32s_32s_32_2_1 RTLNAME blockmatmul_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Loop_1_proc1 MODELNAME Loop_1_proc1 RTLNAME blockmatmul_Loop_1_proc1
    SUBMODULES {
      {MODELNAME blockmatmul_Loop_1_proc1_blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_Rbkb RTLNAME blockmatmul_Loop_1_proc1_blockmatmul_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_Rbkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Loop_writeoutput_proc MODELNAME Loop_writeoutput_proc RTLNAME blockmatmul_Loop_writeoutput_proc
    SUBMODULES {
      {MODELNAME blockmatmul_flow_control_loop_pipe RTLNAME blockmatmul_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME blockmatmul_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME blockmatmul MODELNAME blockmatmul RTLNAME blockmatmul IS_TOP 1
    SUBMODULES {
      {MODELNAME blockmatmul_AB_RAM_AUTO_1R1W_memcore RTLNAME blockmatmul_AB_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME blockmatmul_AB_RAM_AUTO_1R1W RTLNAME blockmatmul_AB_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
    }
  }
}
