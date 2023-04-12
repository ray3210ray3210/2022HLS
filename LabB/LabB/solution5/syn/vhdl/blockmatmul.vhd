-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity blockmatmul is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    Arows_dout : IN STD_LOGIC_VECTOR (511 downto 0);
    Arows_empty_n : IN STD_LOGIC;
    Arows_read : OUT STD_LOGIC;
    Bcols_dout : IN STD_LOGIC_VECTOR (511 downto 0);
    Bcols_empty_n : IN STD_LOGIC;
    Bcols_read : OUT STD_LOGIC;
    ABpartial_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ABpartial_ce0 : OUT STD_LOGIC;
    ABpartial_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ABpartial_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    ABpartial_we0 : OUT STD_LOGIC;
    ABpartial_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ABpartial_ce1 : OUT STD_LOGIC;
    ABpartial_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ABpartial_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    ABpartial_we1 : OUT STD_LOGIC;
    it : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of blockmatmul is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "blockmatmul_blockmatmul,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=6.912000,HLS_SYN_LAT=380,HLS_SYN_TPT=381,HLS_SYN_MEM=74,HLS_SYN_DSP=0,HLS_SYN_FF=68447,HLS_SYN_LUT=24844,HLS_VERSION=2022_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv512_lc_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";

    signal AB_i_q0 : STD_LOGIC_VECTOR (511 downto 0);
    signal AB_i_q1 : STD_LOGIC_VECTOR (511 downto 0);
    signal AB_t_we0 : STD_LOGIC_VECTOR (63 downto 0);
    signal AB_t_q0 : STD_LOGIC_VECTOR (511 downto 0);
    signal AB_t_q1 : STD_LOGIC_VECTOR (511 downto 0);
    signal Loop_1_proc1_U0_ap_start : STD_LOGIC;
    signal Loop_1_proc1_U0_ap_done : STD_LOGIC;
    signal Loop_1_proc1_U0_ap_continue : STD_LOGIC;
    signal Loop_1_proc1_U0_ap_idle : STD_LOGIC;
    signal Loop_1_proc1_U0_ap_ready : STD_LOGIC;
    signal Loop_1_proc1_U0_AB_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_1_proc1_U0_AB_ce0 : STD_LOGIC;
    signal Loop_1_proc1_U0_AB_we0 : STD_LOGIC_VECTOR (63 downto 0);
    signal Loop_1_proc1_U0_AB_d0 : STD_LOGIC_VECTOR (511 downto 0);
    signal Loop_1_proc1_U0_AB_address1 : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_1_proc1_U0_AB_ce1 : STD_LOGIC;
    signal Loop_1_proc1_U0_AB_we1 : STD_LOGIC_VECTOR (63 downto 0);
    signal Loop_1_proc1_U0_AB_d1 : STD_LOGIC_VECTOR (511 downto 0);
    signal Loop_1_proc1_U0_Arows_read : STD_LOGIC;
    signal Loop_1_proc1_U0_Bcols_read : STD_LOGIC;
    signal Loop_writeoutput_proc_U0_ap_start : STD_LOGIC;
    signal Loop_writeoutput_proc_U0_ap_done : STD_LOGIC;
    signal Loop_writeoutput_proc_U0_ap_continue : STD_LOGIC;
    signal Loop_writeoutput_proc_U0_ap_idle : STD_LOGIC;
    signal Loop_writeoutput_proc_U0_ap_ready : STD_LOGIC;
    signal Loop_writeoutput_proc_U0_AB_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_writeoutput_proc_U0_AB_ce0 : STD_LOGIC;
    signal Loop_writeoutput_proc_U0_ABpartial_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal Loop_writeoutput_proc_U0_ABpartial_ce0 : STD_LOGIC;
    signal Loop_writeoutput_proc_U0_ABpartial_we0 : STD_LOGIC;
    signal Loop_writeoutput_proc_U0_ABpartial_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_writeoutput_proc_U0_ABpartial_address1 : STD_LOGIC_VECTOR (7 downto 0);
    signal Loop_writeoutput_proc_U0_ABpartial_ce1 : STD_LOGIC;
    signal Loop_writeoutput_proc_U0_ABpartial_we1 : STD_LOGIC;
    signal Loop_writeoutput_proc_U0_ABpartial_d1 : STD_LOGIC_VECTOR (31 downto 0);
    signal AB_i_full_n : STD_LOGIC;
    signal AB_t_empty_n : STD_LOGIC;

    component blockmatmul_Loop_1_proc1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        AB_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        AB_ce0 : OUT STD_LOGIC;
        AB_we0 : OUT STD_LOGIC_VECTOR (63 downto 0);
        AB_d0 : OUT STD_LOGIC_VECTOR (511 downto 0);
        AB_q0 : IN STD_LOGIC_VECTOR (511 downto 0);
        AB_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
        AB_ce1 : OUT STD_LOGIC;
        AB_we1 : OUT STD_LOGIC_VECTOR (63 downto 0);
        AB_d1 : OUT STD_LOGIC_VECTOR (511 downto 0);
        AB_q1 : IN STD_LOGIC_VECTOR (511 downto 0);
        it : IN STD_LOGIC_VECTOR (31 downto 0);
        Arows_dout : IN STD_LOGIC_VECTOR (511 downto 0);
        Arows_empty_n : IN STD_LOGIC;
        Arows_read : OUT STD_LOGIC;
        Bcols_dout : IN STD_LOGIC_VECTOR (511 downto 0);
        Bcols_empty_n : IN STD_LOGIC;
        Bcols_read : OUT STD_LOGIC );
    end component;


    component blockmatmul_Loop_writeoutput_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        AB_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        AB_ce0 : OUT STD_LOGIC;
        AB_q0 : IN STD_LOGIC_VECTOR (511 downto 0);
        ABpartial_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ABpartial_ce0 : OUT STD_LOGIC;
        ABpartial_we0 : OUT STD_LOGIC;
        ABpartial_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ABpartial_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ABpartial_ce1 : OUT STD_LOGIC;
        ABpartial_we1 : OUT STD_LOGIC;
        ABpartial_d1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component blockmatmul_AB_RAM_AUTO_1R1W IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        i_address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        i_ce0 : IN STD_LOGIC;
        i_we0 : IN STD_LOGIC_VECTOR (63 downto 0);
        i_d0 : IN STD_LOGIC_VECTOR (511 downto 0);
        i_q0 : OUT STD_LOGIC_VECTOR (511 downto 0);
        i_address1 : IN STD_LOGIC_VECTOR (3 downto 0);
        i_ce1 : IN STD_LOGIC;
        i_we1 : IN STD_LOGIC_VECTOR (63 downto 0);
        i_d1 : IN STD_LOGIC_VECTOR (511 downto 0);
        i_q1 : OUT STD_LOGIC_VECTOR (511 downto 0);
        t_address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        t_ce0 : IN STD_LOGIC;
        t_we0 : IN STD_LOGIC_VECTOR (63 downto 0);
        t_d0 : IN STD_LOGIC_VECTOR (511 downto 0);
        t_q0 : OUT STD_LOGIC_VECTOR (511 downto 0);
        t_address1 : IN STD_LOGIC_VECTOR (3 downto 0);
        t_ce1 : IN STD_LOGIC;
        t_we1 : IN STD_LOGIC_VECTOR (63 downto 0);
        t_d1 : IN STD_LOGIC_VECTOR (511 downto 0);
        t_q1 : OUT STD_LOGIC_VECTOR (511 downto 0);
        i_ce : IN STD_LOGIC;
        t_ce : IN STD_LOGIC;
        i_full_n : OUT STD_LOGIC;
        i_write : IN STD_LOGIC;
        t_empty_n : OUT STD_LOGIC;
        t_read : IN STD_LOGIC );
    end component;



begin
    AB_U : component blockmatmul_AB_RAM_AUTO_1R1W
    generic map (
        DataWidth => 512,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        i_address0 => Loop_1_proc1_U0_AB_address0,
        i_ce0 => Loop_1_proc1_U0_AB_ce0,
        i_we0 => Loop_1_proc1_U0_AB_we0,
        i_d0 => Loop_1_proc1_U0_AB_d0,
        i_q0 => AB_i_q0,
        i_address1 => Loop_1_proc1_U0_AB_address1,
        i_ce1 => Loop_1_proc1_U0_AB_ce1,
        i_we1 => Loop_1_proc1_U0_AB_we1,
        i_d1 => Loop_1_proc1_U0_AB_d1,
        i_q1 => AB_i_q1,
        t_address0 => Loop_writeoutput_proc_U0_AB_address0,
        t_ce0 => Loop_writeoutput_proc_U0_AB_ce0,
        t_we0 => AB_t_we0,
        t_d0 => ap_const_lv512_lc_1,
        t_q0 => AB_t_q0,
        t_address1 => ap_const_lv4_0,
        t_ce1 => ap_const_logic_0,
        t_we1 => ap_const_lv64_0,
        t_d1 => ap_const_lv512_lc_1,
        t_q1 => AB_t_q1,
        i_ce => ap_const_logic_1,
        t_ce => ap_const_logic_1,
        i_full_n => AB_i_full_n,
        i_write => Loop_1_proc1_U0_ap_done,
        t_empty_n => AB_t_empty_n,
        t_read => Loop_writeoutput_proc_U0_ap_ready);

    Loop_1_proc1_U0 : component blockmatmul_Loop_1_proc1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => Loop_1_proc1_U0_ap_start,
        ap_done => Loop_1_proc1_U0_ap_done,
        ap_continue => Loop_1_proc1_U0_ap_continue,
        ap_idle => Loop_1_proc1_U0_ap_idle,
        ap_ready => Loop_1_proc1_U0_ap_ready,
        AB_address0 => Loop_1_proc1_U0_AB_address0,
        AB_ce0 => Loop_1_proc1_U0_AB_ce0,
        AB_we0 => Loop_1_proc1_U0_AB_we0,
        AB_d0 => Loop_1_proc1_U0_AB_d0,
        AB_q0 => AB_i_q0,
        AB_address1 => Loop_1_proc1_U0_AB_address1,
        AB_ce1 => Loop_1_proc1_U0_AB_ce1,
        AB_we1 => Loop_1_proc1_U0_AB_we1,
        AB_d1 => Loop_1_proc1_U0_AB_d1,
        AB_q1 => AB_i_q1,
        it => it,
        Arows_dout => Arows_dout,
        Arows_empty_n => Arows_empty_n,
        Arows_read => Loop_1_proc1_U0_Arows_read,
        Bcols_dout => Bcols_dout,
        Bcols_empty_n => Bcols_empty_n,
        Bcols_read => Loop_1_proc1_U0_Bcols_read);

    Loop_writeoutput_proc_U0 : component blockmatmul_Loop_writeoutput_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => Loop_writeoutput_proc_U0_ap_start,
        ap_done => Loop_writeoutput_proc_U0_ap_done,
        ap_continue => Loop_writeoutput_proc_U0_ap_continue,
        ap_idle => Loop_writeoutput_proc_U0_ap_idle,
        ap_ready => Loop_writeoutput_proc_U0_ap_ready,
        AB_address0 => Loop_writeoutput_proc_U0_AB_address0,
        AB_ce0 => Loop_writeoutput_proc_U0_AB_ce0,
        AB_q0 => AB_t_q0,
        ABpartial_address0 => Loop_writeoutput_proc_U0_ABpartial_address0,
        ABpartial_ce0 => Loop_writeoutput_proc_U0_ABpartial_ce0,
        ABpartial_we0 => Loop_writeoutput_proc_U0_ABpartial_we0,
        ABpartial_d0 => Loop_writeoutput_proc_U0_ABpartial_d0,
        ABpartial_address1 => Loop_writeoutput_proc_U0_ABpartial_address1,
        ABpartial_ce1 => Loop_writeoutput_proc_U0_ABpartial_ce1,
        ABpartial_we1 => Loop_writeoutput_proc_U0_ABpartial_we1,
        ABpartial_d1 => Loop_writeoutput_proc_U0_ABpartial_d1);




    AB_t_we0 <= (0=>ap_const_logic_0, others=>'-');
    ABpartial_address0 <= Loop_writeoutput_proc_U0_ABpartial_address0;
    ABpartial_address1 <= Loop_writeoutput_proc_U0_ABpartial_address1;
    ABpartial_ce0 <= Loop_writeoutput_proc_U0_ABpartial_ce0;
    ABpartial_ce1 <= Loop_writeoutput_proc_U0_ABpartial_ce1;
    ABpartial_d0 <= Loop_writeoutput_proc_U0_ABpartial_d0;
    ABpartial_d1 <= Loop_writeoutput_proc_U0_ABpartial_d1;
    ABpartial_we0 <= Loop_writeoutput_proc_U0_ABpartial_we0;
    ABpartial_we1 <= Loop_writeoutput_proc_U0_ABpartial_we1;
    Arows_read <= Loop_1_proc1_U0_Arows_read;
    Bcols_read <= Loop_1_proc1_U0_Bcols_read;
    Loop_1_proc1_U0_ap_continue <= AB_i_full_n;
    Loop_1_proc1_U0_ap_start <= ap_start;
    Loop_writeoutput_proc_U0_ap_continue <= ap_const_logic_1;
    Loop_writeoutput_proc_U0_ap_start <= AB_t_empty_n;
    ap_done <= Loop_writeoutput_proc_U0_ap_done;
    ap_idle <= ((ap_const_logic_1 xor AB_t_empty_n) and Loop_writeoutput_proc_U0_ap_idle and Loop_1_proc1_U0_ap_idle);
    ap_ready <= Loop_1_proc1_U0_ap_ready;
end behav;