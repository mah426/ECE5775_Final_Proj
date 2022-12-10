-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut_conv1_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_r_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    input_r_ce0 : OUT STD_LOGIC;
    input_r_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of dut_conv1_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000001000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000010000000";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000100000000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (19 downto 0) := "00000000001000000000";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (19 downto 0) := "00000000010000000000";
    constant ap_ST_st12_fsm_11 : STD_LOGIC_VECTOR (19 downto 0) := "00000000100000000000";
    constant ap_ST_st13_fsm_12 : STD_LOGIC_VECTOR (19 downto 0) := "00000001000000000000";
    constant ap_ST_st14_fsm_13 : STD_LOGIC_VECTOR (19 downto 0) := "00000010000000000000";
    constant ap_ST_st15_fsm_14 : STD_LOGIC_VECTOR (19 downto 0) := "00000100000000000000";
    constant ap_ST_st16_fsm_15 : STD_LOGIC_VECTOR (19 downto 0) := "00001000000000000000";
    constant ap_ST_st17_fsm_16 : STD_LOGIC_VECTOR (19 downto 0) := "00010000000000000000";
    constant ap_ST_st18_fsm_17 : STD_LOGIC_VECTOR (19 downto 0) := "00100000000000000000";
    constant ap_ST_st19_fsm_18 : STD_LOGIC_VECTOR (19 downto 0) := "01000000000000000000";
    constant ap_ST_st20_fsm_19 : STD_LOGIC_VECTOR (19 downto 0) := "10000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv5_1C : STD_LOGIC_VECTOR (4 downto 0) := "11100";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv11_19 : STD_LOGIC_VECTOR (10 downto 0) := "00000011001";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_37 : BOOLEAN;
    signal conv1_weight_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal conv1_weight_ce0 : STD_LOGIC;
    signal conv1_weight_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal n_2_fu_235_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal n_2_reg_490 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_69 : BOOLEAN;
    signal tmp_12_fu_269_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_12_reg_495 : STD_LOGIC_VECTOR (8 downto 0);
    signal exitcond7_fu_229_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_13_fu_275_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_13_reg_500 : STD_LOGIC_VECTOR (5 downto 0);
    signal x_3_fu_291_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal x_3_reg_508 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_86 : BOOLEAN;
    signal tmp3_fu_322_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp3_reg_513 : STD_LOGIC_VECTOR (13 downto 0);
    signal exitcond9_fu_285_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal y_3_fu_338_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal y_3_reg_521 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_100 : BOOLEAN;
    signal o_index_cast_fu_349_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal o_index_cast_reg_526 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond2_fu_332_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal m_3_fu_363_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal m_3_reg_534 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_114 : BOOLEAN;
    signal tmp_19_fu_378_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_19_reg_539 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond8_fu_357_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_cast1_fu_392_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal c_cast1_reg_544 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_sig_cseq_ST_st6_fsm_5 : STD_LOGIC;
    signal ap_sig_128 : BOOLEAN;
    signal c_3_fu_402_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal c_3_reg_552 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp8_fu_408_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp8_reg_557 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond1_fu_396_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_2_fu_423_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal r_2_reg_565 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st7_fsm_6 : STD_LOGIC;
    signal ap_sig_144 : BOOLEAN;
    signal exitcond_fu_417_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st8_fsm_7 : STD_LOGIC;
    signal ap_sig_159 : BOOLEAN;
    signal grp_fu_219_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_reg_590 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st11_fsm_10 : STD_LOGIC;
    signal ap_sig_169 : BOOLEAN;
    signal grp_fu_212_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st16_fsm_15 : STD_LOGIC;
    signal ap_sig_178 : BOOLEAN;
    signal ap_sig_cseq_ST_st20_fsm_19 : STD_LOGIC;
    signal ap_sig_186 : BOOLEAN;
    signal n_reg_106 : STD_LOGIC_VECTOR (2 downto 0);
    signal x_reg_117 : STD_LOGIC_VECTOR (4 downto 0);
    signal y_reg_129 : STD_LOGIC_VECTOR (4 downto 0);
    signal sum_reg_141 : STD_LOGIC_VECTOR (31 downto 0);
    signal m_reg_154 : STD_LOGIC_VECTOR (1 downto 0);
    signal filter_sum_reg_166 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_reg_178 : STD_LOGIC_VECTOR (2 downto 0);
    signal filter_sum_1_reg_189 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_reg_201 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_16_fu_384_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_21_fu_477_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_22_fu_482_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_212_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_212_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st12_fsm_11 : STD_LOGIC;
    signal ap_sig_232 : BOOLEAN;
    signal p_shl2_fu_241_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl3_fu_253_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_shl2_cast_fu_249_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl3_cast_fu_265_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl3_cast1_fu_261_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal n_cast_fu_225_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal x_cast_fu_281_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_fu_297_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl5_fu_310_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl4_fu_302_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_shl5_cast_fu_318_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal y_cast_fu_328_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal o_index_fu_344_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal m_cast_fu_353_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_18_fu_369_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_19_fu_378_p0 : STD_LOGIC_VECTOR (5 downto 0);
    signal c_cast_fu_388_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal r_cast_fu_413_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp6_fu_429_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp7_fu_435_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl_fu_450_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp9_fu_458_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp9_cast_fu_464_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal w_index_fu_468_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_index_fu_445_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal w_index_cast_fu_473_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (19 downto 0);

    component dut_fadd_32ns_32ns_32_5_full_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component dut_fmul_32ns_32ns_32_4_max_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component dut_conv1_1_conv1_weight IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    conv1_weight_U : component dut_conv1_1_conv1_weight
    generic map (
        DataWidth => 32,
        AddressRange => 450,
        AddressWidth => 9)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => conv1_weight_address0,
        ce0 => conv1_weight_ce0,
        q0 => conv1_weight_q0);

    dut_fadd_32ns_32ns_32_5_full_dsp_U1 : component dut_fadd_32ns_32ns_32_5_full_dsp
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_212_p0,
        din1 => grp_fu_212_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_212_p2);

    dut_fmul_32ns_32ns_32_4_max_dsp_U2 : component dut_fmul_32ns_32ns_32_4_max_dsp
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => input_r_q0,
        din1 => conv1_weight_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_219_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    c_reg_178_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6) and not((ap_const_lv1_0 = exitcond_fu_417_p2)))) then 
                c_reg_178 <= c_3_reg_552;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = exitcond8_fu_357_p2))) then 
                c_reg_178 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    filter_sum_1_reg_189_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st16_fsm_15)) then 
                filter_sum_1_reg_189 <= grp_fu_212_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and (ap_const_lv1_0 = exitcond1_fu_396_p2))) then 
                filter_sum_1_reg_189 <= filter_sum_reg_166;
            end if; 
        end if;
    end process;

    filter_sum_reg_166_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6) and not((ap_const_lv1_0 = exitcond_fu_417_p2)))) then 
                filter_sum_reg_166 <= filter_sum_1_reg_189;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = exitcond8_fu_357_p2))) then 
                filter_sum_reg_166 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    m_reg_154_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st20_fsm_19)) then 
                m_reg_154 <= m_3_reg_534;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = exitcond2_fu_332_p2))) then 
                m_reg_154 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    n_reg_106_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = exitcond9_fu_285_p2)))) then 
                n_reg_106 <= n_2_reg_490;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                n_reg_106 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    r_reg_201_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st16_fsm_15)) then 
                r_reg_201 <= r_2_reg_565;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and (ap_const_lv1_0 = exitcond1_fu_396_p2))) then 
                r_reg_201 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    sum_reg_141_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st20_fsm_19)) then 
                sum_reg_141 <= grp_fu_212_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = exitcond2_fu_332_p2))) then 
                sum_reg_141 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    x_reg_117_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((ap_const_lv1_0 = exitcond2_fu_332_p2)))) then 
                x_reg_117 <= x_3_reg_508;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond7_fu_229_p2 = ap_const_lv1_0))) then 
                x_reg_117 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    y_reg_129_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((ap_const_lv1_0 = exitcond8_fu_357_p2)))) then 
                y_reg_129 <= y_3_reg_521;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond9_fu_285_p2))) then 
                y_reg_129 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then
                c_3_reg_552 <= c_3_fu_402_p2;
                    c_cast1_reg_544(2 downto 0) <= c_cast1_fu_392_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then
                m_3_reg_534 <= m_3_fu_363_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                n_2_reg_490 <= n_2_fu_235_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = exitcond2_fu_332_p2))) then
                o_index_cast_reg_526 <= o_index_cast_fu_349_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6)) then
                r_2_reg_565 <= r_2_fu_423_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond9_fu_285_p2))) then
                    tmp3_reg_513(13 downto 2) <= tmp3_fu_322_p2(13 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and (ap_const_lv1_0 = exitcond1_fu_396_p2))) then
                tmp8_reg_557 <= tmp8_fu_408_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond7_fu_229_p2 = ap_const_lv1_0))) then
                    tmp_12_reg_495(8 downto 2) <= tmp_12_fu_269_p2(8 downto 2);
                tmp_13_reg_500 <= tmp_13_fu_275_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = exitcond8_fu_357_p2))) then
                tmp_19_reg_539 <= tmp_19_fu_378_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_10)) then
                tmp_23_reg_590 <= grp_fu_219_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                x_3_reg_508 <= x_3_fu_291_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                y_3_reg_521 <= y_3_fu_338_p2;
            end if;
        end if;
    end process;
    tmp_12_reg_495(1 downto 0) <= "00";
    tmp3_reg_513(1 downto 0) <= "00";
    c_cast1_reg_544(11 downto 3) <= "000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond7_fu_229_p2, exitcond9_fu_285_p2, exitcond2_fu_332_p2, exitcond8_fu_357_p2, exitcond1_fu_396_p2, exitcond_fu_417_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond7_fu_229_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                if (not((ap_const_lv1_0 = exitcond9_fu_285_p2))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                end if;
            when ap_ST_st4_fsm_3 => 
                if (not((ap_const_lv1_0 = exitcond2_fu_332_p2))) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                end if;
            when ap_ST_st5_fsm_4 => 
                if (not((ap_const_lv1_0 = exitcond8_fu_357_p2))) then
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_st6_fsm_5;
                end if;
            when ap_ST_st6_fsm_5 => 
                if ((ap_const_lv1_0 = exitcond1_fu_396_p2)) then
                    ap_NS_fsm <= ap_ST_st7_fsm_6;
                else
                    ap_NS_fsm <= ap_ST_st17_fsm_16;
                end if;
            when ap_ST_st7_fsm_6 => 
                if (not((ap_const_lv1_0 = exitcond_fu_417_p2))) then
                    ap_NS_fsm <= ap_ST_st6_fsm_5;
                else
                    ap_NS_fsm <= ap_ST_st8_fsm_7;
                end if;
            when ap_ST_st8_fsm_7 => 
                ap_NS_fsm <= ap_ST_st9_fsm_8;
            when ap_ST_st9_fsm_8 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when ap_ST_st10_fsm_9 => 
                ap_NS_fsm <= ap_ST_st11_fsm_10;
            when ap_ST_st11_fsm_10 => 
                ap_NS_fsm <= ap_ST_st12_fsm_11;
            when ap_ST_st12_fsm_11 => 
                ap_NS_fsm <= ap_ST_st13_fsm_12;
            when ap_ST_st13_fsm_12 => 
                ap_NS_fsm <= ap_ST_st14_fsm_13;
            when ap_ST_st14_fsm_13 => 
                ap_NS_fsm <= ap_ST_st15_fsm_14;
            when ap_ST_st15_fsm_14 => 
                ap_NS_fsm <= ap_ST_st16_fsm_15;
            when ap_ST_st16_fsm_15 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st17_fsm_16 => 
                ap_NS_fsm <= ap_ST_st18_fsm_17;
            when ap_ST_st18_fsm_17 => 
                ap_NS_fsm <= ap_ST_st19_fsm_18;
            when ap_ST_st19_fsm_18 => 
                ap_NS_fsm <= ap_ST_st20_fsm_19;
            when ap_ST_st20_fsm_19 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;

    ap_done_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, ap_sig_cseq_ST_st2_fsm_1, exitcond7_fu_229_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond7_fu_229_p2 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond7_fu_229_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond7_fu_229_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_100_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_100 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_114_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_114 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    ap_sig_128_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_128 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    ap_sig_144_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_144 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    ap_sig_159_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_159 <= (ap_const_lv1_1 = ap_CS_fsm(7 downto 7));
    end process;


    ap_sig_169_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_169 <= (ap_const_lv1_1 = ap_CS_fsm(10 downto 10));
    end process;


    ap_sig_178_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_178 <= (ap_const_lv1_1 = ap_CS_fsm(15 downto 15));
    end process;


    ap_sig_186_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_186 <= (ap_const_lv1_1 = ap_CS_fsm(19 downto 19));
    end process;


    ap_sig_232_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_232 <= (ap_const_lv1_1 = ap_CS_fsm(11 downto 11));
    end process;


    ap_sig_37_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_37 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_69_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_69 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_86_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_86 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_cseq_ST_st11_fsm_10_assign_proc : process(ap_sig_169)
    begin
        if (ap_sig_169) then 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st12_fsm_11_assign_proc : process(ap_sig_232)
    begin
        if (ap_sig_232) then 
            ap_sig_cseq_ST_st12_fsm_11 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st12_fsm_11 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st16_fsm_15_assign_proc : process(ap_sig_178)
    begin
        if (ap_sig_178) then 
            ap_sig_cseq_ST_st16_fsm_15 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st16_fsm_15 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_37)
    begin
        if (ap_sig_37) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st20_fsm_19_assign_proc : process(ap_sig_186)
    begin
        if (ap_sig_186) then 
            ap_sig_cseq_ST_st20_fsm_19 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st20_fsm_19 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_69)
    begin
        if (ap_sig_69) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_86)
    begin
        if (ap_sig_86) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_100)
    begin
        if (ap_sig_100) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_114)
    begin
        if (ap_sig_114) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st6_fsm_5_assign_proc : process(ap_sig_128)
    begin
        if (ap_sig_128) then 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st7_fsm_6_assign_proc : process(ap_sig_144)
    begin
        if (ap_sig_144) then 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st8_fsm_7_assign_proc : process(ap_sig_159)
    begin
        if (ap_sig_159) then 
            ap_sig_cseq_ST_st8_fsm_7 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st8_fsm_7 <= ap_const_logic_0;
        end if; 
    end process;

    c_3_fu_402_p2 <= std_logic_vector(unsigned(c_reg_178) + unsigned(ap_const_lv3_1));
    c_cast1_fu_392_p1 <= std_logic_vector(resize(unsigned(c_reg_178),12));
    c_cast_fu_388_p1 <= std_logic_vector(resize(unsigned(c_reg_178),11));
    conv1_weight_address0 <= tmp_22_fu_482_p1(9 - 1 downto 0);

    conv1_weight_ce0_assign_proc : process(ap_sig_cseq_ST_st7_fsm_6)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6)) then 
            conv1_weight_ce0 <= ap_const_logic_1;
        else 
            conv1_weight_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_396_p2 <= "1" when (c_reg_178 = ap_const_lv3_5) else "0";
    exitcond2_fu_332_p2 <= "1" when (y_reg_129 = ap_const_lv5_1C) else "0";
    exitcond7_fu_229_p2 <= "1" when (n_reg_106 = ap_const_lv3_6) else "0";
    exitcond8_fu_357_p2 <= "1" when (m_reg_154 = ap_const_lv2_3) else "0";
    exitcond9_fu_285_p2 <= "1" when (x_reg_117 = ap_const_lv5_1C) else "0";
    exitcond_fu_417_p2 <= "1" when (r_reg_201 = ap_const_lv3_5) else "0";

    grp_fu_212_p0_assign_proc : process(ap_sig_cseq_ST_st6_fsm_5, sum_reg_141, filter_sum_1_reg_189, ap_sig_cseq_ST_st12_fsm_11)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11)) then 
            grp_fu_212_p0 <= filter_sum_1_reg_189;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
            grp_fu_212_p0 <= sum_reg_141;
        else 
            grp_fu_212_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_212_p1_assign_proc : process(ap_sig_cseq_ST_st6_fsm_5, tmp_23_reg_590, filter_sum_reg_166, ap_sig_cseq_ST_st12_fsm_11)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11)) then 
            grp_fu_212_p1 <= tmp_23_reg_590;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
            grp_fu_212_p1 <= filter_sum_reg_166;
        else 
            grp_fu_212_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    i_index_fu_445_p2 <= std_logic_vector(unsigned(tmp7_fu_435_p4) + unsigned(c_cast1_reg_544));
    input_r_address0 <= tmp_21_fu_477_p1(12 - 1 downto 0);

    input_r_ce0_assign_proc : process(ap_sig_cseq_ST_st7_fsm_6)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6)) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    m_3_fu_363_p2 <= std_logic_vector(unsigned(m_reg_154) + unsigned(ap_const_lv2_1));
    m_cast_fu_353_p1 <= std_logic_vector(resize(unsigned(m_reg_154),6));
    n_2_fu_235_p2 <= std_logic_vector(unsigned(n_reg_106) + unsigned(ap_const_lv3_1));
    n_cast_fu_225_p1 <= std_logic_vector(resize(unsigned(n_reg_106),6));
        o_index_cast_fu_349_p1 <= std_logic_vector(resize(signed(o_index_fu_344_p2),32));

    o_index_fu_344_p2 <= std_logic_vector(unsigned(y_cast_fu_328_p1) + unsigned(tmp3_reg_513));
    output_r_address0 <= tmp_16_fu_384_p1(13 - 1 downto 0);

    output_r_ce0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= sum_reg_141;

    output_r_we0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4, exitcond8_fu_357_p2)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((ap_const_lv1_0 = exitcond8_fu_357_p2))))) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl2_cast_fu_249_p1 <= std_logic_vector(resize(unsigned(p_shl2_fu_241_p3),9));
    p_shl2_fu_241_p3 <= (n_reg_106 & ap_const_lv5_0);
    p_shl3_cast1_fu_261_p1 <= std_logic_vector(resize(unsigned(p_shl3_fu_253_p3),6));
    p_shl3_cast_fu_265_p1 <= std_logic_vector(resize(unsigned(p_shl3_fu_253_p3),9));
    p_shl3_fu_253_p3 <= (n_reg_106 & ap_const_lv2_0);
    p_shl4_fu_302_p3 <= (tmp_fu_297_p2 & ap_const_lv5_0);
        p_shl5_cast_fu_318_p1 <= std_logic_vector(resize(signed(p_shl5_fu_310_p3),14));

    p_shl5_fu_310_p3 <= (tmp_fu_297_p2 & ap_const_lv2_0);
    p_shl_fu_450_p3 <= (r_reg_201 & ap_const_lv2_0);
    r_2_fu_423_p2 <= std_logic_vector(unsigned(r_reg_201) + unsigned(ap_const_lv3_1));
    r_cast_fu_413_p1 <= std_logic_vector(resize(unsigned(r_reg_201),5));
    tmp3_fu_322_p2 <= std_logic_vector(unsigned(p_shl4_fu_302_p3) - unsigned(p_shl5_cast_fu_318_p1));
    tmp6_fu_429_p2 <= std_logic_vector(unsigned(x_reg_117) + unsigned(r_cast_fu_413_p1));
    tmp7_fu_435_p4 <= ((m_reg_154 & tmp6_fu_429_p2) & y_reg_129);
    tmp8_fu_408_p2 <= std_logic_vector(unsigned(tmp_19_reg_539) + unsigned(c_cast_fu_388_p1));
    tmp9_cast_fu_464_p1 <= std_logic_vector(resize(unsigned(tmp9_fu_458_p2),11));
    tmp9_fu_458_p2 <= std_logic_vector(unsigned(p_shl_fu_450_p3) + unsigned(r_cast_fu_413_p1));
    tmp_12_fu_269_p2 <= std_logic_vector(unsigned(p_shl2_cast_fu_249_p1) - unsigned(p_shl3_cast_fu_265_p1));
    tmp_13_fu_275_p2 <= std_logic_vector(unsigned(p_shl3_cast1_fu_261_p1) - unsigned(n_cast_fu_225_p1));
    tmp_16_fu_384_p1 <= std_logic_vector(resize(unsigned(o_index_cast_reg_526),64));
    tmp_18_fu_369_p2 <= std_logic_vector(unsigned(m_cast_fu_353_p1) + unsigned(tmp_13_reg_500));
    tmp_19_fu_378_p0 <= tmp_18_fu_369_p2;
    tmp_19_fu_378_p2 <= std_logic_vector(resize(unsigned(std_logic_vector(signed(tmp_19_fu_378_p0) * signed('0' &ap_const_lv11_19))), 11));
    tmp_21_fu_477_p1 <= std_logic_vector(resize(unsigned(i_index_fu_445_p2),64));
    tmp_22_fu_482_p1 <= std_logic_vector(resize(unsigned(w_index_cast_fu_473_p1),64));
    tmp_fu_297_p2 <= std_logic_vector(unsigned(x_cast_fu_281_p1) + unsigned(tmp_12_reg_495));
        w_index_cast_fu_473_p1 <= std_logic_vector(resize(signed(w_index_fu_468_p2),32));

    w_index_fu_468_p2 <= std_logic_vector(unsigned(tmp9_cast_fu_464_p1) + unsigned(tmp8_reg_557));
    x_3_fu_291_p2 <= std_logic_vector(unsigned(x_reg_117) + unsigned(ap_const_lv5_1));
    x_cast_fu_281_p1 <= std_logic_vector(resize(unsigned(x_reg_117),9));
    y_3_fu_338_p2 <= std_logic_vector(unsigned(y_reg_129) + unsigned(ap_const_lv5_1));
    y_cast_fu_328_p1 <= std_logic_vector(resize(unsigned(y_reg_129),14));
end behav;
