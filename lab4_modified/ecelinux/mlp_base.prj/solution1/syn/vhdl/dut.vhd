-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    strm_in_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    strm_in_V_empty_n : IN STD_LOGIC;
    strm_in_V_read : OUT STD_LOGIC;
    strm_out_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    strm_out_V_full_n : IN STD_LOGIC;
    strm_out_V_write : OUT STD_LOGIC );
end;


architecture behav of dut is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "dut,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.789400,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=220,HLS_SYN_DSP=17,HLS_SYN_FF=2447,HLS_SYN_LUT=3993}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv12_C00 : STD_LOGIC_VECTOR (11 downto 0) := "110000000000";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_25 : BOOLEAN;
    signal strm_in_V_blk_n : STD_LOGIC;
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_46 : BOOLEAN;
    signal exitcond_fu_132_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal strm_out_V_blk_n : STD_LOGIC;
    signal ap_sig_cseq_ST_st10_fsm_9 : STD_LOGIC;
    signal ap_sig_58 : BOOLEAN;
    signal i_1_fu_138_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_sig_64 : BOOLEAN;
    signal grp_dut_mlp_xcel_fu_110_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal p_0_reg_161 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_74 : BOOLEAN;
    signal grp_dut_mlp_xcel_fu_110_ap_done : STD_LOGIC;
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_87 : BOOLEAN;
    signal grp_fu_129_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal output_reg_171 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st9_fsm_8 : STD_LOGIC;
    signal ap_sig_96 : BOOLEAN;
    signal input_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal input_ce0 : STD_LOGIC;
    signal input_we0 : STD_LOGIC;
    signal input_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_dut_mlp_xcel_fu_110_ap_start : STD_LOGIC;
    signal grp_dut_mlp_xcel_fu_110_ap_idle : STD_LOGIC;
    signal grp_dut_mlp_xcel_fu_110_ap_ready : STD_LOGIC;
    signal grp_dut_mlp_xcel_fu_110_input_r_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_dut_mlp_xcel_fu_110_input_r_ce0 : STD_LOGIC;
    signal i_reg_99 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_reg_grp_dut_mlp_xcel_fu_110_ap_start : STD_LOGIC := '0';
    signal tmp_s_fu_144_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_129_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);

    component dut_mlp_xcel IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        input_r_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        input_r_ce0 : OUT STD_LOGIC;
        input_r_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component dut_uitofp_32ns_32_6 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component dut_mlp_xcel_mem_conv1 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (12 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    input_U : component dut_mlp_xcel_mem_conv1
    generic map (
        DataWidth => 32,
        AddressRange => 4704,
        AddressWidth => 13)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => input_address0,
        ce0 => input_ce0,
        we0 => input_we0,
        d0 => strm_in_V_dout,
        q0 => input_q0);

    grp_dut_mlp_xcel_fu_110 : component dut_mlp_xcel
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_dut_mlp_xcel_fu_110_ap_start,
        ap_done => grp_dut_mlp_xcel_fu_110_ap_done,
        ap_idle => grp_dut_mlp_xcel_fu_110_ap_idle,
        ap_ready => grp_dut_mlp_xcel_fu_110_ap_ready,
        input_r_address0 => grp_dut_mlp_xcel_fu_110_input_r_address0,
        input_r_ce0 => grp_dut_mlp_xcel_fu_110_input_r_ce0,
        input_r_q0 => input_q0,
        ap_return => grp_dut_mlp_xcel_fu_110_ap_return);

    dut_uitofp_32ns_32_6_U27 : component dut_uitofp_32ns_32_6
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_129_p0,
        ce => ap_const_logic_1,
        dout => grp_fu_129_p1);





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


    ap_reg_grp_dut_mlp_xcel_fu_110_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_grp_dut_mlp_xcel_fu_110_ap_start <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not(ap_sig_64) and not((exitcond_fu_132_p2 = ap_const_lv1_0)))) then 
                    ap_reg_grp_dut_mlp_xcel_fu_110_ap_start <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = grp_dut_mlp_xcel_fu_110_ap_ready)) then 
                    ap_reg_grp_dut_mlp_xcel_fu_110_ap_start <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_99_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond_fu_132_p2 = ap_const_lv1_0) and not(ap_sig_64))) then 
                i_reg_99 <= i_1_fu_138_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_99 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8)) then
                output_reg_171 <= grp_fu_129_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_logic_0 = grp_dut_mlp_xcel_fu_110_ap_done)))) then
                p_0_reg_161 <= grp_dut_mlp_xcel_fu_110_ap_return;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, strm_out_V_full_n, exitcond_fu_132_p2, ap_sig_64, grp_dut_mlp_xcel_fu_110_ap_done)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (((exitcond_fu_132_p2 = ap_const_lv1_0) and not(ap_sig_64))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                elsif ((not(ap_sig_64) and not((exitcond_fu_132_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when ap_ST_st3_fsm_2 => 
                if (not((ap_const_logic_0 = grp_dut_mlp_xcel_fu_110_ap_done))) then
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
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
                if (not((strm_out_V_full_n = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st10_fsm_9;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;

    ap_done_assign_proc : process(strm_out_V_full_n, ap_sig_cseq_ST_st10_fsm_9)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9) and not((strm_out_V_full_n = ap_const_logic_0)))) then 
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


    ap_ready_assign_proc : process(strm_out_V_full_n, ap_sig_cseq_ST_st10_fsm_9)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9) and not((strm_out_V_full_n = ap_const_logic_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_25_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_25 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_46_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_46 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_58_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_58 <= (ap_const_lv1_1 = ap_CS_fsm(9 downto 9));
    end process;


    ap_sig_64_assign_proc : process(strm_in_V_empty_n, exitcond_fu_132_p2)
    begin
                ap_sig_64 <= ((exitcond_fu_132_p2 = ap_const_lv1_0) and (strm_in_V_empty_n = ap_const_logic_0));
    end process;


    ap_sig_74_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_74 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_87_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_87 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_96_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_96 <= (ap_const_lv1_1 = ap_CS_fsm(8 downto 8));
    end process;


    ap_sig_cseq_ST_st10_fsm_9_assign_proc : process(ap_sig_58)
    begin
        if (ap_sig_58) then 
            ap_sig_cseq_ST_st10_fsm_9 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st10_fsm_9 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_25)
    begin
        if (ap_sig_25) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_46)
    begin
        if (ap_sig_46) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_74)
    begin
        if (ap_sig_74) then 
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


    ap_sig_cseq_ST_st9_fsm_8_assign_proc : process(ap_sig_96)
    begin
        if (ap_sig_96) then 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_132_p2 <= "1" when (i_reg_99 = ap_const_lv12_C00) else "0";
    grp_dut_mlp_xcel_fu_110_ap_start <= ap_reg_grp_dut_mlp_xcel_fu_110_ap_start;
    grp_fu_129_p0 <= std_logic_vector(resize(unsigned(p_0_reg_161),32));
    i_1_fu_138_p2 <= std_logic_vector(unsigned(i_reg_99) + unsigned(ap_const_lv12_1));

    input_address0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond_fu_132_p2, ap_sig_cseq_ST_st3_fsm_2, grp_dut_mlp_xcel_fu_110_input_r_address0, tmp_s_fu_144_p1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond_fu_132_p2 = ap_const_lv1_0))) then 
            input_address0 <= tmp_s_fu_144_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            input_address0 <= grp_dut_mlp_xcel_fu_110_input_r_address0;
        else 
            input_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    input_ce0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond_fu_132_p2, ap_sig_64, ap_sig_cseq_ST_st3_fsm_2, grp_dut_mlp_xcel_fu_110_input_r_ce0)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond_fu_132_p2 = ap_const_lv1_0) and not(ap_sig_64))) then 
            input_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            input_ce0 <= grp_dut_mlp_xcel_fu_110_input_r_ce0;
        else 
            input_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    input_we0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond_fu_132_p2, ap_sig_64)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond_fu_132_p2 = ap_const_lv1_0) and not(ap_sig_64)))) then 
            input_we0 <= ap_const_logic_1;
        else 
            input_we0 <= ap_const_logic_0;
        end if; 
    end process;


    strm_in_V_blk_n_assign_proc : process(strm_in_V_empty_n, ap_sig_cseq_ST_st2_fsm_1, exitcond_fu_132_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond_fu_132_p2 = ap_const_lv1_0))) then 
            strm_in_V_blk_n <= strm_in_V_empty_n;
        else 
            strm_in_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    strm_in_V_read_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond_fu_132_p2, ap_sig_64)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond_fu_132_p2 = ap_const_lv1_0) and not(ap_sig_64))) then 
            strm_in_V_read <= ap_const_logic_1;
        else 
            strm_in_V_read <= ap_const_logic_0;
        end if; 
    end process;


    strm_out_V_blk_n_assign_proc : process(strm_out_V_full_n, ap_sig_cseq_ST_st10_fsm_9)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9)) then 
            strm_out_V_blk_n <= strm_out_V_full_n;
        else 
            strm_out_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    strm_out_V_din <= output_reg_171;

    strm_out_V_write_assign_proc : process(strm_out_V_full_n, ap_sig_cseq_ST_st10_fsm_9)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9) and not((strm_out_V_full_n = ap_const_logic_0)))) then 
            strm_out_V_write <= ap_const_logic_1;
        else 
            strm_out_V_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_s_fu_144_p1 <= std_logic_vector(resize(unsigned(i_reg_99),64));
end behav;
