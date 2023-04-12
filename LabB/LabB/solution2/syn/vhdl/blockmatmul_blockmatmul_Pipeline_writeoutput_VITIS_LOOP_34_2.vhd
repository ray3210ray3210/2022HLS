-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity blockmatmul_blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    AB_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_ce0 : OUT STD_LOGIC;
    AB_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_1_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_1_ce0 : OUT STD_LOGIC;
    AB_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_2_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_2_ce0 : OUT STD_LOGIC;
    AB_2_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_3_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_3_ce0 : OUT STD_LOGIC;
    AB_3_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_4_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_4_ce0 : OUT STD_LOGIC;
    AB_4_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_5_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_5_ce0 : OUT STD_LOGIC;
    AB_5_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_6_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_6_ce0 : OUT STD_LOGIC;
    AB_6_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_7_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_7_ce0 : OUT STD_LOGIC;
    AB_7_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_8_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_8_ce0 : OUT STD_LOGIC;
    AB_8_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_9_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_9_ce0 : OUT STD_LOGIC;
    AB_9_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_10_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_10_ce0 : OUT STD_LOGIC;
    AB_10_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_11_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_11_ce0 : OUT STD_LOGIC;
    AB_11_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_12_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_12_ce0 : OUT STD_LOGIC;
    AB_12_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_13_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_13_ce0 : OUT STD_LOGIC;
    AB_13_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_14_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_14_ce0 : OUT STD_LOGIC;
    AB_14_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    AB_15_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    AB_15_ce0 : OUT STD_LOGIC;
    AB_15_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    ABpartial_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ABpartial_ce0 : OUT STD_LOGIC;
    ABpartial_we0 : OUT STD_LOGIC;
    ABpartial_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of blockmatmul_blockmatmul_Pipeline_writeoutput_VITIS_LOOP_34_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln33_fu_331_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln33_fu_361_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln33_reg_520 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln35_fu_377_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln35_reg_526 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln35_fu_448_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln35_reg_611 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_1_fu_454_p18 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_reg_616 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln33_fu_397_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln35_1_fu_491_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_80 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln34_fu_417_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (4 downto 0);
    signal i_fu_84 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln33_1_fu_369_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (4 downto 0);
    signal indvar_flatten_fu_88 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln33_1_fu_337_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln34_fu_355_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln33_fu_349_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln33_fu_381_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln33_1_fu_385_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln33_3_fu_389_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_s_fu_438_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln35_fu_445_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component blockmatmul_mux_165_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        din9_WIDTH : INTEGER;
        din10_WIDTH : INTEGER;
        din11_WIDTH : INTEGER;
        din12_WIDTH : INTEGER;
        din13_WIDTH : INTEGER;
        din14_WIDTH : INTEGER;
        din15_WIDTH : INTEGER;
        din16_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (31 downto 0);
        din5 : IN STD_LOGIC_VECTOR (31 downto 0);
        din6 : IN STD_LOGIC_VECTOR (31 downto 0);
        din7 : IN STD_LOGIC_VECTOR (31 downto 0);
        din8 : IN STD_LOGIC_VECTOR (31 downto 0);
        din9 : IN STD_LOGIC_VECTOR (31 downto 0);
        din10 : IN STD_LOGIC_VECTOR (31 downto 0);
        din11 : IN STD_LOGIC_VECTOR (31 downto 0);
        din12 : IN STD_LOGIC_VECTOR (31 downto 0);
        din13 : IN STD_LOGIC_VECTOR (31 downto 0);
        din14 : IN STD_LOGIC_VECTOR (31 downto 0);
        din15 : IN STD_LOGIC_VECTOR (31 downto 0);
        din16 : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component blockmatmul_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_165_32_1_1_U70 : component blockmatmul_mux_165_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 32,
        din6_WIDTH => 32,
        din7_WIDTH => 32,
        din8_WIDTH => 32,
        din9_WIDTH => 32,
        din10_WIDTH => 32,
        din11_WIDTH => 32,
        din12_WIDTH => 32,
        din13_WIDTH => 32,
        din14_WIDTH => 32,
        din15_WIDTH => 32,
        din16_WIDTH => 5,
        dout_WIDTH => 32)
    port map (
        din0 => AB_q0,
        din1 => AB_1_q0,
        din2 => AB_2_q0,
        din3 => AB_3_q0,
        din4 => AB_4_q0,
        din5 => AB_5_q0,
        din6 => AB_6_q0,
        din7 => AB_7_q0,
        din8 => AB_8_q0,
        din9 => AB_9_q0,
        din10 => AB_10_q0,
        din11 => AB_11_q0,
        din12 => AB_12_q0,
        din13 => AB_13_q0,
        din14 => AB_14_q0,
        din15 => AB_15_q0,
        din16 => select_ln33_reg_520,
        dout => tmp_1_fu_454_p18);

    flow_control_loop_pipe_sequential_init_U : component blockmatmul_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln33_fu_331_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_84 <= select_ln33_1_fu_369_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_84 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln33_fu_331_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten_fu_88 <= add_ln33_1_fu_337_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_88 <= ap_const_lv9_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln33_fu_331_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_80 <= add_ln34_fu_417_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_80 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln35_reg_611 <= add_ln35_fu_448_p2;
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                tmp_1_reg_616 <= tmp_1_fu_454_p18;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln33_fu_331_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln33_reg_520 <= select_ln33_fu_361_p3;
                trunc_ln35_reg_526 <= trunc_ln35_fu_377_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    AB_10_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_10_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_10_ce0 <= ap_const_logic_1;
        else 
            AB_10_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_11_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_11_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_11_ce0 <= ap_const_logic_1;
        else 
            AB_11_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_12_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_12_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_12_ce0 <= ap_const_logic_1;
        else 
            AB_12_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_13_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_13_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_13_ce0 <= ap_const_logic_1;
        else 
            AB_13_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_14_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_14_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_14_ce0 <= ap_const_logic_1;
        else 
            AB_14_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_15_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_15_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_15_ce0 <= ap_const_logic_1;
        else 
            AB_15_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_1_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_1_ce0 <= ap_const_logic_1;
        else 
            AB_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_2_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_2_ce0 <= ap_const_logic_1;
        else 
            AB_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_3_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_3_ce0 <= ap_const_logic_1;
        else 
            AB_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_4_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_4_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_4_ce0 <= ap_const_logic_1;
        else 
            AB_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_5_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_5_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_5_ce0 <= ap_const_logic_1;
        else 
            AB_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_6_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_6_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_6_ce0 <= ap_const_logic_1;
        else 
            AB_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_7_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_7_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_7_ce0 <= ap_const_logic_1;
        else 
            AB_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_8_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_8_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_8_ce0 <= ap_const_logic_1;
        else 
            AB_8_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_9_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_9_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_9_ce0 <= ap_const_logic_1;
        else 
            AB_9_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    AB_address0 <= zext_ln33_fu_397_p1(4 - 1 downto 0);

    AB_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AB_ce0 <= ap_const_logic_1;
        else 
            AB_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ABpartial_address0 <= zext_ln35_1_fu_491_p1(8 - 1 downto 0);

    ABpartial_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ABpartial_ce0 <= ap_const_logic_1;
        else 
            ABpartial_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ABpartial_d0 <= tmp_1_reg_616;

    ABpartial_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ABpartial_we0 <= ap_const_logic_1;
        else 
            ABpartial_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln33_1_fu_337_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv9_1));
    add_ln33_fu_349_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_load) + unsigned(ap_const_lv5_1));
    add_ln34_fu_417_p2 <= std_logic_vector(unsigned(select_ln33_fu_361_p3) + unsigned(ap_const_lv5_1));
    add_ln35_fu_448_p2 <= std_logic_vector(unsigned(tmp_s_fu_438_p3) + unsigned(zext_ln35_fu_445_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln33_fu_331_p2)
    begin
        if (((icmp_ln33_fu_331_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_fu_84)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_i_load <= i_fu_84;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_88)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_88;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_fu_80, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_j_load <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_j_load <= j_fu_80;
        end if; 
    end process;

    icmp_ln33_fu_331_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv9_100) else "0";
    icmp_ln34_fu_355_p2 <= "1" when (ap_sig_allocacmp_j_load = ap_const_lv5_10) else "0";
    select_ln33_1_fu_369_p3 <= 
        add_ln33_fu_349_p2 when (icmp_ln34_fu_355_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
    select_ln33_3_fu_389_p3 <= 
        trunc_ln33_fu_381_p1 when (icmp_ln34_fu_355_p2(0) = '1') else 
        trunc_ln33_1_fu_385_p1;
    select_ln33_fu_361_p3 <= 
        ap_const_lv5_0 when (icmp_ln34_fu_355_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
    tmp_s_fu_438_p3 <= (trunc_ln35_reg_526 & ap_const_lv4_0);
    trunc_ln33_1_fu_385_p1 <= ap_sig_allocacmp_i_load(4 - 1 downto 0);
    trunc_ln33_fu_381_p1 <= add_ln33_fu_349_p2(4 - 1 downto 0);
    trunc_ln35_fu_377_p1 <= select_ln33_1_fu_369_p3(4 - 1 downto 0);
    zext_ln33_fu_397_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln33_3_fu_389_p3),64));
    zext_ln35_1_fu_491_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln35_reg_611),64));
    zext_ln35_fu_445_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln33_reg_520),8));
end behav;
