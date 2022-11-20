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
    a_V_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    a_V_ce0 : OUT STD_LOGIC;
    a_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    b_V_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    b_V_ce0 : OUT STD_LOGIC;
    b_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    out_V_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    out_V_ce0 : OUT STD_LOGIC;
    out_V_we0 : OUT STD_LOGIC;
    out_V_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of matmult is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "matmult,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.520000,HLS_SYN_LAT=8020201,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=4,HLS_SYN_FF=226,HLS_SYN_LUT=219}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (10 downto 0) := "00000001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (10 downto 0) := "00000010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (10 downto 0) := "00001000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (10 downto 0) := "00010000000";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (10 downto 0) := "00100000000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (10 downto 0) := "01000000000";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv14_64 : STD_LOGIC_VECTOR (13 downto 0) := "00000001100100";
    constant ap_const_lv7_64 : STD_LOGIC_VECTOR (6 downto 0) := "1100100";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_26 : BOOLEAN;
    signal next_mul2_fu_146_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal next_mul2_reg_244 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_59 : BOOLEAN;
    signal i_1_fu_158_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal i_1_reg_252 : STD_LOGIC_VECTOR (6 downto 0);
    signal j_1_fu_170_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal j_1_reg_260 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_70 : BOOLEAN;
    signal tmp_2_cast_fu_176_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_2_cast_reg_265 : STD_LOGIC_VECTOR (13 downto 0);
    signal exitcond2_fu_164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_V_addr_reg_270 : STD_LOGIC_VECTOR (13 downto 0);
    signal k_1_fu_197_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal k_1_reg_278 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_87 : BOOLEAN;
    signal exitcond_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal next_mul_fu_218_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal next_mul_reg_288 : STD_LOGIC_VECTOR (13 downto 0);
    signal a_V_load_reg_298 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_104 : BOOLEAN;
    signal b_V_load_reg_303 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_238_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st11_fsm_10 : STD_LOGIC;
    signal ap_sig_114 : BOOLEAN;
    signal i_reg_77 : STD_LOGIC_VECTOR (6 downto 0);
    signal phi_mul1_reg_88 : STD_LOGIC_VECTOR (13 downto 0);
    signal j_reg_100 : STD_LOGIC_VECTOR (6 downto 0);
    signal exitcond1_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_V_load_reg_111 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_reg_124 : STD_LOGIC_VECTOR (6 downto 0);
    signal phi_mul_reg_135 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_7_cast_fu_186_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_cast_fu_213_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_10_cast_fu_229_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_180_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_4_cast_fu_203_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_8_fu_207_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_s_fu_224_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_sig_cseq_ST_st6_fsm_5 : STD_LOGIC;
    signal ap_sig_185 : BOOLEAN;
    signal grp_fu_234_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (10 downto 0);

    component matmult_mul_32s_32s_32_6 IS
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



begin
    matmult_mul_32s_32s_32_6_U1 : component matmult_mul_32s_32s_32_6
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => b_V_load_reg_303,
        din1 => a_V_load_reg_298,
        ce => ap_const_logic_1,
        dout => grp_fu_234_p2);





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


    i_reg_77_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((exitcond2_fu_164_p2 = ap_const_lv1_0)))) then 
                i_reg_77 <= i_1_reg_252;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_77 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    j_reg_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((ap_const_lv1_0 = exitcond_fu_191_p2)))) then 
                j_reg_100 <= j_1_reg_260;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (ap_const_lv1_0 = exitcond1_fu_152_p2))) then 
                j_reg_100 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    k_reg_124_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_10)) then 
                k_reg_124 <= k_1_reg_278;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (exitcond2_fu_164_p2 = ap_const_lv1_0))) then 
                k_reg_124 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    out_V_load_reg_111_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_10)) then 
                out_V_load_reg_111 <= tmp_5_fu_238_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (exitcond2_fu_164_p2 = ap_const_lv1_0))) then 
                out_V_load_reg_111 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    phi_mul1_reg_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((exitcond2_fu_164_p2 = ap_const_lv1_0)))) then 
                phi_mul1_reg_88 <= next_mul2_reg_244;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                phi_mul1_reg_88 <= ap_const_lv14_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_135_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_10)) then 
                phi_mul_reg_135 <= next_mul_reg_288;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (exitcond2_fu_164_p2 = ap_const_lv1_0))) then 
                phi_mul_reg_135 <= ap_const_lv14_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then
                a_V_load_reg_298 <= a_V_q0;
                b_V_load_reg_303 <= b_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_1_reg_252 <= i_1_fu_158_p2;
                next_mul2_reg_244 <= next_mul2_fu_146_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                j_1_reg_260 <= j_1_fu_170_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                k_1_reg_278 <= k_1_fu_197_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = exitcond_fu_191_p2))) then
                next_mul_reg_288 <= next_mul_fu_218_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (exitcond2_fu_164_p2 = ap_const_lv1_0))) then
                out_V_addr_reg_270 <= tmp_7_cast_fu_186_p1(14 - 1 downto 0);
                    tmp_2_cast_reg_265(6 downto 0) <= tmp_2_cast_fu_176_p1(6 downto 0);
            end if;
        end if;
    end process;
    tmp_2_cast_reg_265(13 downto 7) <= "0000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond2_fu_164_p2, exitcond_fu_191_p2, exitcond1_fu_152_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((ap_const_lv1_0 = exitcond1_fu_152_p2))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                if (not((exitcond2_fu_164_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                end if;
            when ap_ST_st4_fsm_3 => 
                if (not((ap_const_lv1_0 = exitcond_fu_191_p2))) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                end if;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st7_fsm_6 => 
                ap_NS_fsm <= ap_ST_st8_fsm_7;
            when ap_ST_st8_fsm_7 => 
                ap_NS_fsm <= ap_ST_st9_fsm_8;
            when ap_ST_st9_fsm_8 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when ap_ST_st10_fsm_9 => 
                ap_NS_fsm <= ap_ST_st11_fsm_10;
            when ap_ST_st11_fsm_10 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXX";
        end case;
    end process;
    a_V_address0 <= tmp_8_cast_fu_213_p1(14 - 1 downto 0);

    a_V_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            a_V_ce0 <= ap_const_logic_1;
        else 
            a_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond1_fu_152_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = exitcond1_fu_152_p2)))) then 
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


    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond1_fu_152_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = exitcond1_fu_152_p2)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_104_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_104 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    ap_sig_114_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_114 <= (ap_const_lv1_1 = ap_CS_fsm(10 downto 10));
    end process;


    ap_sig_185_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_185 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    ap_sig_26_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_26 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_59_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_59 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_70_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_70 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_87_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_87 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_cseq_ST_st11_fsm_10_assign_proc : process(ap_sig_114)
    begin
        if (ap_sig_114) then 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_26)
    begin
        if (ap_sig_26) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_59)
    begin
        if (ap_sig_59) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_70)
    begin
        if (ap_sig_70) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_87)
    begin
        if (ap_sig_87) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_104)
    begin
        if (ap_sig_104) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st6_fsm_5_assign_proc : process(ap_sig_185)
    begin
        if (ap_sig_185) then 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;

    b_V_address0 <= tmp_10_cast_fu_229_p1(14 - 1 downto 0);

    b_V_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            b_V_ce0 <= ap_const_logic_1;
        else 
            b_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_152_p2 <= "1" when (i_reg_77 = ap_const_lv7_64) else "0";
    exitcond2_fu_164_p2 <= "1" when (j_reg_100 = ap_const_lv7_64) else "0";
    exitcond_fu_191_p2 <= "1" when (k_reg_124 = ap_const_lv7_64) else "0";
    i_1_fu_158_p2 <= std_logic_vector(unsigned(i_reg_77) + unsigned(ap_const_lv7_1));
    j_1_fu_170_p2 <= std_logic_vector(unsigned(j_reg_100) + unsigned(ap_const_lv7_1));
    k_1_fu_197_p2 <= std_logic_vector(unsigned(k_reg_124) + unsigned(ap_const_lv7_1));
    next_mul2_fu_146_p2 <= std_logic_vector(unsigned(phi_mul1_reg_88) + unsigned(ap_const_lv14_64));
    next_mul_fu_218_p2 <= std_logic_vector(unsigned(phi_mul_reg_135) + unsigned(ap_const_lv14_64));
    out_V_address0 <= out_V_addr_reg_270;

    out_V_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            out_V_ce0 <= ap_const_logic_1;
        else 
            out_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_V_d0 <= out_V_load_reg_111;

    out_V_we0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3))) then 
            out_V_we0 <= ap_const_logic_1;
        else 
            out_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_10_cast_fu_229_p1 <= std_logic_vector(resize(unsigned(tmp_s_fu_224_p2),64));
    tmp_2_cast_fu_176_p1 <= std_logic_vector(resize(unsigned(j_reg_100),14));
    tmp_4_cast_fu_203_p1 <= std_logic_vector(resize(unsigned(k_reg_124),14));
    tmp_5_fu_238_p2 <= std_logic_vector(unsigned(grp_fu_234_p2) + unsigned(out_V_load_reg_111));
    tmp_7_cast_fu_186_p1 <= std_logic_vector(resize(unsigned(tmp_7_fu_180_p2),64));
    tmp_7_fu_180_p2 <= std_logic_vector(unsigned(phi_mul1_reg_88) + unsigned(tmp_2_cast_fu_176_p1));
    tmp_8_cast_fu_213_p1 <= std_logic_vector(resize(unsigned(tmp_8_fu_207_p2),64));
    tmp_8_fu_207_p2 <= std_logic_vector(unsigned(phi_mul1_reg_88) + unsigned(tmp_4_cast_fu_203_p1));
    tmp_s_fu_224_p2 <= std_logic_vector(unsigned(phi_mul_reg_135) + unsigned(tmp_2_cast_reg_265));
end behav;
