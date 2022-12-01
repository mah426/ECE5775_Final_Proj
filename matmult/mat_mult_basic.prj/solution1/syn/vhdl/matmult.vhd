-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matmult is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    b_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    b_ce0 : OUT STD_LOGIC;
    b_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    out_r_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    out_r_ce0 : OUT STD_LOGIC;
    out_r_we0 : OUT STD_LOGIC;
    out_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of matmult is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "matmult,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.412000,HLS_SYN_LAT=11060401,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=5,HLS_SYN_FF=634,HLS_SYN_LUT=948}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (17 downto 0) := "000000000001000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (17 downto 0) := "000000000010000000";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (17 downto 0) := "000000000100000000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (17 downto 0) := "000000001000000000";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (17 downto 0) := "000000010000000000";
    constant ap_ST_st12_fsm_11 : STD_LOGIC_VECTOR (17 downto 0) := "000000100000000000";
    constant ap_ST_st13_fsm_12 : STD_LOGIC_VECTOR (17 downto 0) := "000001000000000000";
    constant ap_ST_st14_fsm_13 : STD_LOGIC_VECTOR (17 downto 0) := "000010000000000000";
    constant ap_ST_st15_fsm_14 : STD_LOGIC_VECTOR (17 downto 0) := "000100000000000000";
    constant ap_ST_st16_fsm_15 : STD_LOGIC_VECTOR (17 downto 0) := "001000000000000000";
    constant ap_ST_st17_fsm_16 : STD_LOGIC_VECTOR (17 downto 0) := "010000000000000000";
    constant ap_ST_st18_fsm_17 : STD_LOGIC_VECTOR (17 downto 0) := "100000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv14_64 : STD_LOGIC_VECTOR (13 downto 0) := "00000001100100";
    constant ap_const_lv7_64 : STD_LOGIC_VECTOR (6 downto 0) := "1100100";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_33 : BOOLEAN;
    signal next_mul2_fu_188_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal next_mul2_reg_319 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_66 : BOOLEAN;
    signal i_1_fu_200_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal i_1_reg_327 : STD_LOGIC_VECTOR (6 downto 0);
    signal j_1_fu_212_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_77 : BOOLEAN;
    signal next_mul_fu_223_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal next_mul_reg_340 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_86 : BOOLEAN;
    signal k_1_fu_235_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal k_1_reg_348 : STD_LOGIC_VECTOR (6 downto 0);
    signal exitcond2_fu_229_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal a_load_reg_358 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_102 : BOOLEAN;
    signal j_3_fu_262_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal j_3_reg_366 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_cseq_ST_st6_fsm_5 : STD_LOGIC;
    signal ap_sig_111 : BOOLEAN;
    signal exitcond1_fu_256_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st7_fsm_6 : STD_LOGIC;
    signal ap_sig_124 : BOOLEAN;
    signal out_vec_addr_2_reg_381 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_cseq_ST_st9_fsm_8 : STD_LOGIC;
    signal ap_sig_133 : BOOLEAN;
    signal grp_fu_183_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_9_reg_386 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st10_fsm_9 : STD_LOGIC;
    signal ap_sig_142 : BOOLEAN;
    signal out_vec_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal out_vec_load_1_reg_391 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_179_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_reg_396 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st15_fsm_14 : STD_LOGIC;
    signal ap_sig_153 : BOOLEAN;
    signal j_2_fu_294_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal j_2_reg_404 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_cseq_ST_st17_fsm_16 : STD_LOGIC;
    signal ap_sig_162 : BOOLEAN;
    signal tmp_7_fu_309_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_7_reg_409 : STD_LOGIC_VECTOR (13 downto 0);
    signal exitcond_fu_288_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_vec_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal out_vec_ce0 : STD_LOGIC;
    signal out_vec_we0 : STD_LOGIC;
    signal out_vec_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_99 : STD_LOGIC_VECTOR (6 downto 0);
    signal phi_mul1_reg_110 : STD_LOGIC_VECTOR (13 downto 0);
    signal j_reg_122 : STD_LOGIC_VECTOR (6 downto 0);
    signal exitcond3_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond4_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_reg_133 : STD_LOGIC_VECTOR (6 downto 0);
    signal phi_mul_reg_144 : STD_LOGIC_VECTOR (13 downto 0);
    signal j1_reg_156 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_cseq_ST_st16_fsm_15 : STD_LOGIC;
    signal ap_sig_214 : BOOLEAN;
    signal j2_reg_168 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_cseq_ST_st18_fsm_17 : STD_LOGIC;
    signal ap_sig_223 : BOOLEAN;
    signal tmp_1_fu_218_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_cast_fu_251_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_10_cast_fu_278_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_fu_283_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_fu_300_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_cast_fu_315_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_st11_fsm_10 : STD_LOGIC;
    signal ap_sig_247 : BOOLEAN;
    signal tmp_3_cast_fu_241_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_4_fu_245_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_8_cast_fu_268_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_2_fu_272_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_5_cast_fu_305_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (17 downto 0);

    component matmult_fadd_32ns_32ns_32_5_full_dsp IS
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


    component matmult_fmul_32ns_32ns_32_4_max_dsp IS
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


    component matmult_out_vec IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (6 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    out_vec_U : component matmult_out_vec
    generic map (
        DataWidth => 32,
        AddressRange => 100,
        AddressWidth => 7)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => out_vec_address0,
        ce0 => out_vec_ce0,
        we0 => out_vec_we0,
        d0 => out_vec_d0,
        q0 => out_vec_q0);

    matmult_fadd_32ns_32ns_32_5_full_dsp_U1 : component matmult_fadd_32ns_32ns_32_5_full_dsp
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => out_vec_load_1_reg_391,
        din1 => tmp_9_reg_386,
        ce => ap_const_logic_1,
        dout => grp_fu_179_p2);

    matmult_fmul_32ns_32ns_32_4_max_dsp_U2 : component matmult_fmul_32ns_32ns_32_4_max_dsp
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => a_load_reg_358,
        din1 => b_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_183_p2);





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


    i_reg_99_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st17_fsm_16) and not((ap_const_lv1_0 = exitcond_fu_288_p2)))) then 
                i_reg_99 <= i_1_reg_327;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_99 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    j1_reg_156_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
                j1_reg_156 <= ap_const_lv7_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st16_fsm_15)) then 
                j1_reg_156 <= j_3_reg_366;
            end if; 
        end if;
    end process;

    j2_reg_168_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((exitcond2_fu_229_p2 = ap_const_lv1_0)))) then 
                j2_reg_168 <= ap_const_lv7_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st18_fsm_17)) then 
                j2_reg_168 <= j_2_reg_404;
            end if; 
        end if;
    end process;

    j_reg_122_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (ap_const_lv1_0 = exitcond4_fu_194_p2))) then 
                j_reg_122 <= ap_const_lv7_0;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond3_fu_206_p2))) then 
                j_reg_122 <= j_1_fu_212_p2;
            end if; 
        end if;
    end process;

    k_reg_133_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and not((ap_const_lv1_0 = exitcond1_fu_256_p2)))) then 
                k_reg_133 <= k_1_reg_348;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = exitcond3_fu_206_p2)))) then 
                k_reg_133 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    phi_mul1_reg_110_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st17_fsm_16) and not((ap_const_lv1_0 = exitcond_fu_288_p2)))) then 
                phi_mul1_reg_110 <= next_mul2_reg_319;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                phi_mul1_reg_110 <= ap_const_lv14_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_144_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and not((ap_const_lv1_0 = exitcond1_fu_256_p2)))) then 
                phi_mul_reg_144 <= next_mul_reg_340;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = exitcond3_fu_206_p2)))) then 
                phi_mul_reg_144 <= ap_const_lv14_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then
                a_load_reg_358 <= a_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_1_reg_327 <= i_1_fu_200_p2;
                next_mul2_reg_319 <= next_mul2_fu_188_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st17_fsm_16)) then
                j_2_reg_404 <= j_2_fu_294_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then
                j_3_reg_366 <= j_3_fu_262_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                k_1_reg_348 <= k_1_fu_235_p2;
                next_mul_reg_340 <= next_mul_fu_223_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8)) then
                out_vec_addr_2_reg_381 <= tmp_8_fu_283_p1(7 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9)) then
                out_vec_load_1_reg_391 <= out_vec_q0;
                tmp_9_reg_386 <= grp_fu_183_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st17_fsm_16) and (ap_const_lv1_0 = exitcond_fu_288_p2))) then
                tmp_7_reg_409 <= tmp_7_fu_309_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st15_fsm_14)) then
                tmp_s_reg_396 <= grp_fu_179_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond2_fu_229_p2, exitcond1_fu_256_p2, exitcond_fu_288_p2, exitcond3_fu_206_p2, exitcond4_fu_194_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((ap_const_lv1_0 = exitcond4_fu_194_p2))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                if ((ap_const_lv1_0 = exitcond3_fu_206_p2)) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                end if;
            when ap_ST_st4_fsm_3 => 
                if (not((exitcond2_fu_229_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st17_fsm_16;
                else
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                end if;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st6_fsm_5 => 
                if ((ap_const_lv1_0 = exitcond1_fu_256_p2)) then
                    ap_NS_fsm <= ap_ST_st7_fsm_6;
                else
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                end if;
            when ap_ST_st7_fsm_6 => 
                ap_NS_fsm <= ap_ST_st8_fsm_7;
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
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st17_fsm_16 => 
                if ((ap_const_lv1_0 = exitcond_fu_288_p2)) then
                    ap_NS_fsm <= ap_ST_st18_fsm_17;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when ap_ST_st18_fsm_17 => 
                ap_NS_fsm <= ap_ST_st17_fsm_16;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    a_address0 <= tmp_4_cast_fu_251_p1(14 - 1 downto 0);

    a_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond4_fu_194_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = exitcond4_fu_194_p2)))) then 
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


    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond4_fu_194_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = exitcond4_fu_194_p2)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_102_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_102 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    ap_sig_111_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_111 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    ap_sig_124_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_124 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    ap_sig_133_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_133 <= (ap_const_lv1_1 = ap_CS_fsm(8 downto 8));
    end process;


    ap_sig_142_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_142 <= (ap_const_lv1_1 = ap_CS_fsm(9 downto 9));
    end process;


    ap_sig_153_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_153 <= (ap_const_lv1_1 = ap_CS_fsm(14 downto 14));
    end process;


    ap_sig_162_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_162 <= (ap_const_lv1_1 = ap_CS_fsm(16 downto 16));
    end process;


    ap_sig_214_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_214 <= (ap_const_lv1_1 = ap_CS_fsm(15 downto 15));
    end process;


    ap_sig_223_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_223 <= (ap_const_lv1_1 = ap_CS_fsm(17 downto 17));
    end process;


    ap_sig_247_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_247 <= (ap_const_lv1_1 = ap_CS_fsm(10 downto 10));
    end process;


    ap_sig_33_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_33 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_66_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_66 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_77_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_77 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_86_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_86 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_cseq_ST_st10_fsm_9_assign_proc : process(ap_sig_142)
    begin
        if (ap_sig_142) then 
            ap_sig_cseq_ST_st10_fsm_9 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st10_fsm_9 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st11_fsm_10_assign_proc : process(ap_sig_247)
    begin
        if (ap_sig_247) then 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st15_fsm_14_assign_proc : process(ap_sig_153)
    begin
        if (ap_sig_153) then 
            ap_sig_cseq_ST_st15_fsm_14 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st15_fsm_14 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st16_fsm_15_assign_proc : process(ap_sig_214)
    begin
        if (ap_sig_214) then 
            ap_sig_cseq_ST_st16_fsm_15 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st16_fsm_15 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st17_fsm_16_assign_proc : process(ap_sig_162)
    begin
        if (ap_sig_162) then 
            ap_sig_cseq_ST_st17_fsm_16 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st17_fsm_16 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st18_fsm_17_assign_proc : process(ap_sig_223)
    begin
        if (ap_sig_223) then 
            ap_sig_cseq_ST_st18_fsm_17 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st18_fsm_17 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_33)
    begin
        if (ap_sig_33) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_66)
    begin
        if (ap_sig_66) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_77)
    begin
        if (ap_sig_77) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_86)
    begin
        if (ap_sig_86) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_102)
    begin
        if (ap_sig_102) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st6_fsm_5_assign_proc : process(ap_sig_111)
    begin
        if (ap_sig_111) then 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st7_fsm_6_assign_proc : process(ap_sig_124)
    begin
        if (ap_sig_124) then 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st9_fsm_8_assign_proc : process(ap_sig_133)
    begin
        if (ap_sig_133) then 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_0;
        end if; 
    end process;

    b_address0 <= tmp_10_cast_fu_278_p1(14 - 1 downto 0);

    b_ce0_assign_proc : process(ap_sig_cseq_ST_st6_fsm_5)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
            b_ce0 <= ap_const_logic_1;
        else 
            b_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_256_p2 <= "1" when (j1_reg_156 = ap_const_lv7_64) else "0";
    exitcond2_fu_229_p2 <= "1" when (k_reg_133 = ap_const_lv7_64) else "0";
    exitcond3_fu_206_p2 <= "1" when (j_reg_122 = ap_const_lv7_64) else "0";
    exitcond4_fu_194_p2 <= "1" when (i_reg_99 = ap_const_lv7_64) else "0";
    exitcond_fu_288_p2 <= "1" when (j2_reg_168 = ap_const_lv7_64) else "0";
    i_1_fu_200_p2 <= std_logic_vector(unsigned(i_reg_99) + unsigned(ap_const_lv7_1));
    j_1_fu_212_p2 <= std_logic_vector(unsigned(j_reg_122) + unsigned(ap_const_lv7_1));
    j_2_fu_294_p2 <= std_logic_vector(unsigned(j2_reg_168) + unsigned(ap_const_lv7_1));
    j_3_fu_262_p2 <= std_logic_vector(unsigned(j1_reg_156) + unsigned(ap_const_lv7_1));
    k_1_fu_235_p2 <= std_logic_vector(unsigned(k_reg_133) + unsigned(ap_const_lv7_1));
    next_mul2_fu_188_p2 <= std_logic_vector(unsigned(phi_mul1_reg_110) + unsigned(ap_const_lv14_64));
    next_mul_fu_223_p2 <= std_logic_vector(unsigned(phi_mul_reg_144) + unsigned(ap_const_lv14_64));
    out_r_address0 <= tmp_7_cast_fu_315_p1(14 - 1 downto 0);

    out_r_ce0_assign_proc : process(ap_sig_cseq_ST_st18_fsm_17)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st18_fsm_17)) then 
            out_r_ce0 <= ap_const_logic_1;
        else 
            out_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_r_d0 <= out_vec_q0;

    out_r_we0_assign_proc : process(ap_sig_cseq_ST_st18_fsm_17)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st18_fsm_17))) then 
            out_r_we0 <= ap_const_logic_1;
        else 
            out_r_we0 <= ap_const_logic_0;
        end if; 
    end process;


    out_vec_address0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2, out_vec_addr_2_reg_381, ap_sig_cseq_ST_st9_fsm_8, ap_sig_cseq_ST_st17_fsm_16, ap_sig_cseq_ST_st16_fsm_15, tmp_1_fu_218_p1, tmp_8_fu_283_p1, tmp_5_fu_300_p1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st16_fsm_15)) then 
            out_vec_address0 <= out_vec_addr_2_reg_381;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            out_vec_address0 <= tmp_1_fu_218_p1(7 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st17_fsm_16)) then 
            out_vec_address0 <= tmp_5_fu_300_p1(7 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8)) then 
            out_vec_address0 <= tmp_8_fu_283_p1(7 - 1 downto 0);
        else 
            out_vec_address0 <= "XXXXXXX";
        end if; 
    end process;


    out_vec_ce0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2, ap_sig_cseq_ST_st9_fsm_8, ap_sig_cseq_ST_st17_fsm_16, ap_sig_cseq_ST_st16_fsm_15)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) or (ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8) or (ap_const_logic_1 = ap_sig_cseq_ST_st17_fsm_16) or (ap_const_logic_1 = ap_sig_cseq_ST_st16_fsm_15))) then 
            out_vec_ce0 <= ap_const_logic_1;
        else 
            out_vec_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    out_vec_d0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2, tmp_s_reg_396, ap_sig_cseq_ST_st16_fsm_15)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st16_fsm_15)) then 
            out_vec_d0 <= tmp_s_reg_396;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            out_vec_d0 <= ap_const_lv32_0;
        else 
            out_vec_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    out_vec_we0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2, exitcond3_fu_206_p2, ap_sig_cseq_ST_st16_fsm_15)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond3_fu_206_p2)) or (ap_const_logic_1 = ap_sig_cseq_ST_st16_fsm_15))) then 
            out_vec_we0 <= ap_const_logic_1;
        else 
            out_vec_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_10_cast_fu_278_p1 <= std_logic_vector(resize(unsigned(tmp_2_fu_272_p2),64));
    tmp_1_fu_218_p1 <= std_logic_vector(resize(unsigned(j_reg_122),64));
    tmp_2_fu_272_p2 <= std_logic_vector(unsigned(phi_mul_reg_144) + unsigned(tmp_8_cast_fu_268_p1));
    tmp_3_cast_fu_241_p1 <= std_logic_vector(resize(unsigned(k_reg_133),14));
    tmp_4_cast_fu_251_p1 <= std_logic_vector(resize(unsigned(tmp_4_fu_245_p2),64));
    tmp_4_fu_245_p2 <= std_logic_vector(unsigned(phi_mul1_reg_110) + unsigned(tmp_3_cast_fu_241_p1));
    tmp_5_cast_fu_305_p1 <= std_logic_vector(resize(unsigned(j2_reg_168),14));
    tmp_5_fu_300_p1 <= std_logic_vector(resize(unsigned(j2_reg_168),64));
    tmp_7_cast_fu_315_p1 <= std_logic_vector(resize(unsigned(tmp_7_reg_409),64));
    tmp_7_fu_309_p2 <= std_logic_vector(unsigned(phi_mul1_reg_110) + unsigned(tmp_5_cast_fu_305_p1));
    tmp_8_cast_fu_268_p1 <= std_logic_vector(resize(unsigned(j1_reg_156),14));
    tmp_8_fu_283_p1 <= std_logic_vector(resize(unsigned(j1_reg_156),64));
end behav;