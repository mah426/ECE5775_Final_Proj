// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_max_pool_HH_
#define _dut_max_pool_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_fcmp_32ns_32ns_1_1.h"
#include "dut_urem_12ns_12ns_11_16_seq.h"
#include "dut_urem_14ns_12ns_11_18_seq.h"
#include "dut_urem_11ns_9ns_11_15_seq.h"
#include "dut_mux_8to1_sel14_128_1.h"
#include "dut_mul_mul_13ns_11ns_24_1.h"
#include "dut_mul_mul_14ns_12ns_26_1.h"
#include "dut_mul_mul_11ns_13ns_24_1.h"
#include "dut_mul_mul_14ns_16ns_30_1.h"

namespace ap_rtl {

struct dut_max_pool : public sc_module {
    // Port declarations 72
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > input_0_address0;
    sc_out< sc_logic > input_0_ce0;
    sc_in< sc_lv<128> > input_0_q0;
    sc_out< sc_lv<8> > input_1_address0;
    sc_out< sc_logic > input_1_ce0;
    sc_in< sc_lv<128> > input_1_q0;
    sc_out< sc_lv<8> > input_2_address0;
    sc_out< sc_logic > input_2_ce0;
    sc_in< sc_lv<128> > input_2_q0;
    sc_out< sc_lv<8> > input_3_address0;
    sc_out< sc_logic > input_3_ce0;
    sc_in< sc_lv<128> > input_3_q0;
    sc_out< sc_lv<8> > input_4_address0;
    sc_out< sc_logic > input_4_ce0;
    sc_in< sc_lv<128> > input_4_q0;
    sc_out< sc_lv<8> > input_5_address0;
    sc_out< sc_logic > input_5_ce0;
    sc_in< sc_lv<128> > input_5_q0;
    sc_out< sc_lv<8> > input_6_address0;
    sc_out< sc_logic > input_6_ce0;
    sc_in< sc_lv<128> > input_6_q0;
    sc_out< sc_lv<8> > input_7_address0;
    sc_out< sc_logic > input_7_ce0;
    sc_in< sc_lv<128> > input_7_q0;
    sc_out< sc_lv<8> > output_0_address0;
    sc_out< sc_logic > output_0_ce0;
    sc_out< sc_logic > output_0_we0;
    sc_out< sc_lv<128> > output_0_d0;
    sc_in< sc_lv<128> > output_0_q0;
    sc_out< sc_lv<8> > output_1_address0;
    sc_out< sc_logic > output_1_ce0;
    sc_out< sc_logic > output_1_we0;
    sc_out< sc_lv<128> > output_1_d0;
    sc_in< sc_lv<128> > output_1_q0;
    sc_out< sc_lv<8> > output_2_address0;
    sc_out< sc_logic > output_2_ce0;
    sc_out< sc_logic > output_2_we0;
    sc_out< sc_lv<128> > output_2_d0;
    sc_in< sc_lv<128> > output_2_q0;
    sc_out< sc_lv<8> > output_3_address0;
    sc_out< sc_logic > output_3_ce0;
    sc_out< sc_logic > output_3_we0;
    sc_out< sc_lv<128> > output_3_d0;
    sc_in< sc_lv<128> > output_3_q0;
    sc_out< sc_lv<8> > output_4_address0;
    sc_out< sc_logic > output_4_ce0;
    sc_out< sc_logic > output_4_we0;
    sc_out< sc_lv<128> > output_4_d0;
    sc_in< sc_lv<128> > output_4_q0;
    sc_out< sc_lv<8> > output_5_address0;
    sc_out< sc_logic > output_5_ce0;
    sc_out< sc_logic > output_5_we0;
    sc_out< sc_lv<128> > output_5_d0;
    sc_in< sc_lv<128> > output_5_q0;
    sc_out< sc_lv<8> > output_6_address0;
    sc_out< sc_logic > output_6_ce0;
    sc_out< sc_logic > output_6_we0;
    sc_out< sc_lv<128> > output_6_d0;
    sc_in< sc_lv<128> > output_6_q0;
    sc_out< sc_lv<8> > output_7_address0;
    sc_out< sc_logic > output_7_ce0;
    sc_out< sc_logic > output_7_we0;
    sc_out< sc_lv<128> > output_7_d0;
    sc_in< sc_lv<128> > output_7_q0;
    sc_in< sc_lv<6> > M;
    sc_in< sc_lv<6> > I;
    sc_signal< sc_logic > ap_var_for_const2;
    sc_signal< sc_lv<12> > ap_var_for_const1;
    sc_signal< sc_lv<5> > ap_var_for_const0;


    // Module declarations
    dut_max_pool(sc_module_name name);
    SC_HAS_PROCESS(dut_max_pool);

    ~dut_max_pool();

    sc_trace_file* mVcdFile;

    dut_fcmp_32ns_32ns_1_1<1,1,32,32,1>* dut_fcmp_32ns_32ns_1_1_U20;
    dut_urem_12ns_12ns_11_16_seq<1,16,12,12,11>* dut_urem_12ns_12ns_11_16_seq_U21;
    dut_urem_14ns_12ns_11_18_seq<1,18,14,12,11>* dut_urem_14ns_12ns_11_18_seq_U22;
    dut_urem_11ns_9ns_11_15_seq<1,15,11,9,11>* dut_urem_11ns_9ns_11_15_seq_U23;
    dut_mux_8to1_sel14_128_1<1,1,128,128,128,128,128,128,128,128,14,128>* dut_mux_8to1_sel14_128_1_U24;
    dut_urem_11ns_9ns_11_15_seq<1,15,11,9,11>* dut_urem_11ns_9ns_11_15_seq_U25;
    dut_mux_8to1_sel14_128_1<1,1,128,128,128,128,128,128,128,128,14,128>* dut_mux_8to1_sel14_128_1_U26;
    dut_mul_mul_13ns_11ns_24_1<1,1,13,11,24>* dut_mul_mul_13ns_11ns_24_1_U27;
    dut_mul_mul_14ns_12ns_26_1<1,1,14,12,26>* dut_mul_mul_14ns_12ns_26_1_U28;
    dut_mul_mul_11ns_13ns_24_1<1,1,11,13,24>* dut_mul_mul_11ns_13ns_24_1_U29;
    dut_mul_mul_14ns_16ns_30_1<1,1,14,16,30>* dut_mul_mul_14ns_16ns_30_1_U30;
    sc_signal< sc_lv<75> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_92;
    sc_signal< sc_lv<4> > O_fu_475_p4;
    sc_signal< sc_lv<4> > O_reg_1222;
    sc_signal< sc_lv<12> > O_cast10_cast1_fu_485_p1;
    sc_signal< sc_lv<12> > O_cast10_cast1_reg_1228;
    sc_signal< sc_lv<8> > O_cast10_cast_fu_489_p1;
    sc_signal< sc_lv<8> > O_cast10_cast_reg_1233;
    sc_signal< sc_lv<9> > I_cast2_fu_493_p1;
    sc_signal< sc_lv<9> > I_cast2_reg_1238;
    sc_signal< sc_lv<14> > I_cast_fu_497_p1;
    sc_signal< sc_lv<14> > I_cast_reg_1243;
    sc_signal< sc_lv<9> > next_mul_fu_501_p2;
    sc_signal< sc_lv<9> > next_mul_reg_1248;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_233;
    sc_signal< sc_lv<5> > m_1_fu_519_p2;
    sc_signal< sc_lv<5> > m_1_reg_1256;
    sc_signal< sc_lv<8> > tmp_2_fu_525_p2;
    sc_signal< sc_lv<8> > tmp_2_reg_1261;
    sc_signal< sc_lv<1> > tmp_1_fu_514_p2;
    sc_signal< sc_lv<12> > x_cast7_fu_530_p1;
    sc_signal< sc_lv<12> > x_cast7_reg_1266;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_251;
    sc_signal< sc_lv<4> > x_1_fu_539_p2;
    sc_signal< sc_lv<4> > x_1_reg_1274;
    sc_signal< sc_lv<14> > tmp_5_cast_fu_553_p1;
    sc_signal< sc_lv<14> > tmp_5_cast_reg_1279;
    sc_signal< sc_lv<1> > exitcond3_fu_534_p2;
    sc_signal< sc_lv<4> > y_1_fu_566_p2;
    sc_signal< sc_lv<4> > y_1_reg_1287;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_267;
    sc_signal< sc_lv<12> > tmp3_fu_581_p2;
    sc_signal< sc_lv<12> > tmp3_reg_1292;
    sc_signal< sc_lv<1> > exitcond2_fu_561_p2;
    sc_signal< sc_lv<12> > o_index_fu_586_p2;
    sc_signal< sc_lv<12> > o_index_reg_1297;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_281;
    sc_signal< sc_lv<9> > tmp_8_cast_fu_598_p1;
    sc_signal< sc_lv<9> > tmp_8_cast_reg_1303;
    sc_signal< sc_lv<14> > c_cast5_fu_602_p1;
    sc_signal< sc_lv<14> > c_cast5_reg_1308;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_292;
    sc_signal< sc_lv<2> > c_1_fu_612_p2;
    sc_signal< sc_lv<2> > c_1_reg_1316;
    sc_signal< sc_lv<2> > tmp_11_reg_1321;
    sc_signal< sc_lv<1> > exitcond1_fu_606_p2;
    sc_signal< sc_lv<2> > r_1_fu_645_p2;
    sc_signal< sc_lv<2> > r_1_reg_1329;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_309;
    sc_signal< sc_lv<9> > tmp4_fu_657_p2;
    sc_signal< sc_lv<9> > tmp4_reg_1334;
    sc_signal< sc_lv<1> > exitcond_fu_639_p2;
    sc_signal< sc_lv<14> > tmp5_fu_665_p2;
    sc_signal< sc_lv<14> > tmp5_reg_1339;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_323;
    sc_signal< sc_lv<14> > i_index_fu_674_p2;
    sc_signal< sc_lv<14> > i_index_reg_1344;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_332;
    sc_signal< sc_lv<4> > tmp_18_reg_1350;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_341;
    sc_signal< sc_lv<3> > tmp_52_reg_1355;
    sc_signal< sc_lv<11> > grp_fu_679_p2;
    sc_signal< sc_lv<11> > tmp_16_reg_1360;
    sc_signal< sc_logic > ap_sig_cseq_ST_st26_fsm_25;
    sc_signal< bool > ap_sig_352;
    sc_signal< sc_lv<11> > tmp_50_fu_706_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st27_fsm_26;
    sc_signal< bool > ap_sig_361;
    sc_signal< sc_lv<5> > tmp_51_reg_1370;
    sc_signal< sc_logic > ap_sig_cseq_ST_st41_fsm_40;
    sc_signal< bool > ap_sig_372;
    sc_signal< sc_lv<8> > tmp_63_fu_851_p2;
    sc_signal< sc_lv<8> > tmp_63_reg_1415;
    sc_signal< sc_logic > ap_sig_cseq_ST_st42_fsm_41;
    sc_signal< bool > ap_sig_395;
    sc_signal< sc_lv<128> > tmp_66_fu_861_p2;
    sc_signal< sc_lv<128> > tmp_66_reg_1420;
    sc_signal< sc_lv<32> > tmp_22_fu_885_p1;
    sc_signal< sc_lv<32> > tmp_22_reg_1425;
    sc_signal< sc_logic > ap_sig_cseq_ST_st43_fsm_42;
    sc_signal< bool > ap_sig_406;
    sc_signal< sc_lv<1> > notlhs_fu_904_p2;
    sc_signal< sc_lv<1> > notlhs_reg_1430;
    sc_signal< sc_lv<1> > notrhs_fu_910_p2;
    sc_signal< sc_lv<1> > notrhs_reg_1435;
    sc_signal< sc_lv<1> > tmp_30_fu_470_p2;
    sc_signal< sc_lv<1> > tmp_30_reg_1440;
    sc_signal< sc_lv<32> > max_2_fu_967_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st44_fsm_43;
    sc_signal< bool > ap_sig_421;
    sc_signal< sc_lv<11> > tmp_3_fu_974_p1;
    sc_signal< sc_lv<11> > tmp_3_reg_1450;
    sc_signal< sc_logic > ap_sig_cseq_ST_st59_fsm_58;
    sc_signal< bool > ap_sig_430;
    sc_signal< sc_lv<5> > tmp_14_reg_1456;
    sc_signal< sc_logic > ap_sig_cseq_ST_st60_fsm_59;
    sc_signal< bool > ap_sig_439;
    sc_signal< sc_lv<8> > output_0_addr_reg_1461;
    sc_signal< sc_logic > ap_sig_cseq_ST_st73_fsm_72;
    sc_signal< bool > ap_sig_448;
    sc_signal< sc_lv<8> > output_1_addr_reg_1466;
    sc_signal< sc_lv<8> > output_2_addr_reg_1471;
    sc_signal< sc_lv<8> > output_3_addr_reg_1476;
    sc_signal< sc_lv<8> > output_4_addr_reg_1481;
    sc_signal< sc_lv<8> > output_5_addr_reg_1486;
    sc_signal< sc_lv<8> > output_6_addr_reg_1491;
    sc_signal< sc_lv<8> > output_7_addr_reg_1496;
    sc_signal< sc_lv<7> > tmp_12_fu_1008_p3;
    sc_signal< sc_lv<7> > tmp_12_reg_1501;
    sc_signal< sc_lv<7> > tmp_13_fu_1015_p2;
    sc_signal< sc_lv<7> > tmp_13_reg_1506;
    sc_signal< sc_lv<1> > tmp_21_fu_1021_p2;
    sc_signal< sc_lv<1> > tmp_21_reg_1511;
    sc_signal< sc_lv<5> > m_reg_378;
    sc_signal< sc_lv<9> > phi_mul_reg_389;
    sc_signal< sc_lv<4> > x_reg_401;
    sc_signal< sc_lv<4> > y_reg_412;
    sc_signal< sc_logic > ap_sig_cseq_ST_st75_fsm_74;
    sc_signal< bool > ap_sig_490;
    sc_signal< sc_lv<32> > max_reg_424;
    sc_signal< sc_lv<2> > c_reg_436;
    sc_signal< sc_lv<32> > max_1_reg_447;
    sc_signal< sc_lv<2> > r_reg_459;
    sc_signal< sc_lv<64> > newIndex3_fu_728_p1;
    sc_signal< sc_lv<64> > newIndex2_fu_996_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st74_fsm_73;
    sc_signal< bool > ap_sig_513;
    sc_signal< sc_lv<11> > arrayNo1_fu_1027_p1;
    sc_signal< sc_lv<128> > tmp_49_fu_1174_p2;
    sc_signal< sc_lv<32> > tmp_30_fu_470_p0;
    sc_signal< sc_lv<6> > m_cast_fu_510_p1;
    sc_signal< sc_lv<4> > tmp_2_fu_525_p0;
    sc_signal< sc_lv<5> > tmp_2_fu_525_p1;
    sc_signal< sc_lv<5> > tmp_5_fu_545_p3;
    sc_signal< sc_lv<8> > y_cast6_fu_557_p1;
    sc_signal< sc_lv<8> > tmp_fu_572_p2;
    sc_signal< sc_lv<4> > tmp3_fu_581_p0;
    sc_signal< sc_lv<8> > tmp3_fu_581_p1;
    sc_signal< sc_lv<5> > tmp_8_fu_590_p3;
    sc_signal< sc_lv<26> > mul1_fu_1195_p2;
    sc_signal< sc_lv<9> > r_cast4_fu_635_p1;
    sc_signal< sc_lv<9> > tmp1_fu_651_p2;
    sc_signal< sc_lv<6> > tmp5_fu_665_p0;
    sc_signal< sc_lv<9> > tmp5_fu_665_p1;
    sc_signal< sc_lv<14> > tmp2_fu_670_p2;
    sc_signal< sc_lv<14> > grp_fu_679_p0;
    sc_signal< sc_lv<12> > grp_fu_679_p1;
    sc_signal< sc_lv<30> > mul5_fu_1209_p2;
    sc_signal< sc_lv<24> > mul_fu_1202_p2;
    sc_signal< sc_lv<9> > grp_fu_722_p1;
    sc_signal< sc_lv<11> > grp_fu_722_p2;
    sc_signal< sc_lv<11> > arrayNo_fu_740_p1;
    sc_signal< sc_lv<14> > tmp_17_fu_747_p9;
    sc_signal< sc_lv<9> > tmp_19_fu_769_p3;
    sc_signal< sc_lv<9> > tmp_20_fu_776_p2;
    sc_signal< sc_lv<128> > tmp_17_fu_747_p10;
    sc_signal< sc_lv<8> > tmp_54_fu_788_p3;
    sc_signal< sc_lv<8> > tmp_55_fu_795_p1;
    sc_signal< sc_lv<1> > tmp_53_fu_782_p2;
    sc_signal< sc_lv<8> > tmp_57_fu_809_p2;
    sc_signal< sc_lv<8> > tmp_59_fu_821_p2;
    sc_signal< sc_lv<128> > tmp_56_fu_799_p4;
    sc_signal< sc_lv<8> > tmp_58_fu_815_p2;
    sc_signal< sc_lv<8> > tmp_60_fu_827_p3;
    sc_signal< sc_lv<8> > tmp_62_fu_843_p3;
    sc_signal< sc_lv<128> > tmp_61_fu_835_p3;
    sc_signal< sc_lv<128> > tmp_64_fu_857_p1;
    sc_signal< sc_lv<128> > tmp_65_fu_867_p1;
    sc_signal< sc_lv<128> > tmp_67_fu_870_p2;
    sc_signal< sc_lv<128> > tmp_68_fu_876_p2;
    sc_signal< sc_lv<32> > tmp_69_fu_881_p1;
    sc_signal< sc_lv<8> > tmp_23_fu_890_p4;
    sc_signal< sc_lv<23> > tmp_70_fu_900_p1;
    sc_signal< sc_lv<32> > max_1_to_int_fu_916_p1;
    sc_signal< sc_lv<8> > tmp_25_fu_920_p4;
    sc_signal< sc_lv<23> > tmp_71_fu_930_p1;
    sc_signal< sc_lv<1> > notrhs5_fu_944_p2;
    sc_signal< sc_lv<1> > notlhs4_fu_938_p2;
    sc_signal< sc_lv<1> > tmp_27_fu_934_p2;
    sc_signal< sc_lv<1> > tmp_28_fu_950_p2;
    sc_signal< sc_lv<1> > tmp_29_fu_956_p2;
    sc_signal< sc_lv<1> > tmp_31_fu_962_p2;
    sc_signal< sc_lv<11> > grp_fu_618_p2;
    sc_signal< sc_lv<11> > grp_fu_978_p0;
    sc_signal< sc_lv<9> > grp_fu_978_p1;
    sc_signal< sc_lv<24> > mul8_fu_1188_p2;
    sc_signal< sc_lv<11> > grp_fu_978_p2;
    sc_signal< sc_lv<14> > tmp_10_fu_1038_p9;
    sc_signal< sc_lv<32> > tmp_4_fu_1034_p1;
    sc_signal< sc_lv<8> > tmp_24_fu_1060_p1;
    sc_signal< sc_lv<8> > tmp_26_fu_1063_p1;
    sc_signal< sc_lv<8> > tmp_33_fu_1070_p2;
    sc_signal< sc_lv<8> > tmp_34_fu_1076_p3;
    sc_signal< sc_lv<8> > tmp_36_fu_1090_p3;
    sc_signal< sc_lv<8> > tmp_35_fu_1083_p3;
    sc_signal< sc_lv<8> > tmp_37_fu_1097_p2;
    sc_signal< sc_lv<128> > tmp_32_fu_1066_p1;
    sc_signal< sc_lv<128> > tmp_38_fu_1103_p1;
    sc_signal< sc_lv<128> > tmp_41_fu_1115_p2;
    sc_signal< sc_lv<128> > tmp_42_fu_1121_p4;
    sc_signal< sc_lv<128> > tmp_39_fu_1107_p1;
    sc_signal< sc_lv<128> > tmp_40_fu_1111_p1;
    sc_signal< sc_lv<128> > tmp_44_fu_1138_p2;
    sc_signal< sc_lv<128> > tmp_45_fu_1144_p2;
    sc_signal< sc_lv<128> > p_demorgan_fu_1150_p2;
    sc_signal< sc_lv<128> > tmp_10_fu_1038_p10;
    sc_signal< sc_lv<128> > tmp_46_fu_1156_p2;
    sc_signal< sc_lv<128> > tmp_43_fu_1131_p3;
    sc_signal< sc_lv<128> > tmp_47_fu_1162_p2;
    sc_signal< sc_lv<128> > tmp_48_fu_1168_p2;
    sc_signal< sc_lv<13> > mul8_fu_1188_p0;
    sc_signal< sc_lv<11> > mul8_fu_1188_p1;
    sc_signal< sc_lv<14> > mul1_fu_1195_p0;
    sc_signal< sc_lv<12> > mul1_fu_1195_p1;
    sc_signal< sc_lv<11> > mul_fu_1202_p0;
    sc_signal< sc_lv<13> > mul_fu_1202_p1;
    sc_signal< sc_lv<14> > mul5_fu_1209_p0;
    sc_signal< sc_lv<16> > mul5_fu_1209_p1;
    sc_signal< sc_logic > grp_fu_618_ap_start;
    sc_signal< sc_logic > grp_fu_618_ap_done;
    sc_signal< sc_logic > grp_fu_679_ap_start;
    sc_signal< sc_logic > grp_fu_679_ap_done;
    sc_signal< sc_logic > grp_fu_722_ap_start;
    sc_signal< sc_logic > grp_fu_722_ap_done;
    sc_signal< sc_logic > grp_fu_978_ap_start;
    sc_signal< sc_logic > grp_fu_978_ap_done;
    sc_signal< sc_lv<75> > ap_NS_fsm;
    sc_signal< sc_lv<26> > mul1_fu_1195_p10;
    sc_signal< sc_lv<30> > mul5_fu_1209_p00;
    sc_signal< sc_lv<24> > mul8_fu_1188_p10;
    sc_signal< sc_lv<24> > mul_fu_1202_p00;
    sc_signal< sc_lv<12> > tmp3_fu_581_p10;
    sc_signal< sc_lv<14> > tmp5_fu_665_p10;
    sc_signal< sc_lv<8> > tmp_2_fu_525_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<75> ap_ST_st1_fsm_0;
    static const sc_lv<75> ap_ST_st2_fsm_1;
    static const sc_lv<75> ap_ST_st3_fsm_2;
    static const sc_lv<75> ap_ST_st4_fsm_3;
    static const sc_lv<75> ap_ST_st5_fsm_4;
    static const sc_lv<75> ap_ST_st6_fsm_5;
    static const sc_lv<75> ap_ST_st7_fsm_6;
    static const sc_lv<75> ap_ST_st8_fsm_7;
    static const sc_lv<75> ap_ST_st9_fsm_8;
    static const sc_lv<75> ap_ST_st10_fsm_9;
    static const sc_lv<75> ap_ST_st11_fsm_10;
    static const sc_lv<75> ap_ST_st12_fsm_11;
    static const sc_lv<75> ap_ST_st13_fsm_12;
    static const sc_lv<75> ap_ST_st14_fsm_13;
    static const sc_lv<75> ap_ST_st15_fsm_14;
    static const sc_lv<75> ap_ST_st16_fsm_15;
    static const sc_lv<75> ap_ST_st17_fsm_16;
    static const sc_lv<75> ap_ST_st18_fsm_17;
    static const sc_lv<75> ap_ST_st19_fsm_18;
    static const sc_lv<75> ap_ST_st20_fsm_19;
    static const sc_lv<75> ap_ST_st21_fsm_20;
    static const sc_lv<75> ap_ST_st22_fsm_21;
    static const sc_lv<75> ap_ST_st23_fsm_22;
    static const sc_lv<75> ap_ST_st24_fsm_23;
    static const sc_lv<75> ap_ST_st25_fsm_24;
    static const sc_lv<75> ap_ST_st26_fsm_25;
    static const sc_lv<75> ap_ST_st27_fsm_26;
    static const sc_lv<75> ap_ST_st28_fsm_27;
    static const sc_lv<75> ap_ST_st29_fsm_28;
    static const sc_lv<75> ap_ST_st30_fsm_29;
    static const sc_lv<75> ap_ST_st31_fsm_30;
    static const sc_lv<75> ap_ST_st32_fsm_31;
    static const sc_lv<75> ap_ST_st33_fsm_32;
    static const sc_lv<75> ap_ST_st34_fsm_33;
    static const sc_lv<75> ap_ST_st35_fsm_34;
    static const sc_lv<75> ap_ST_st36_fsm_35;
    static const sc_lv<75> ap_ST_st37_fsm_36;
    static const sc_lv<75> ap_ST_st38_fsm_37;
    static const sc_lv<75> ap_ST_st39_fsm_38;
    static const sc_lv<75> ap_ST_st40_fsm_39;
    static const sc_lv<75> ap_ST_st41_fsm_40;
    static const sc_lv<75> ap_ST_st42_fsm_41;
    static const sc_lv<75> ap_ST_st43_fsm_42;
    static const sc_lv<75> ap_ST_st44_fsm_43;
    static const sc_lv<75> ap_ST_st45_fsm_44;
    static const sc_lv<75> ap_ST_st46_fsm_45;
    static const sc_lv<75> ap_ST_st47_fsm_46;
    static const sc_lv<75> ap_ST_st48_fsm_47;
    static const sc_lv<75> ap_ST_st49_fsm_48;
    static const sc_lv<75> ap_ST_st50_fsm_49;
    static const sc_lv<75> ap_ST_st51_fsm_50;
    static const sc_lv<75> ap_ST_st52_fsm_51;
    static const sc_lv<75> ap_ST_st53_fsm_52;
    static const sc_lv<75> ap_ST_st54_fsm_53;
    static const sc_lv<75> ap_ST_st55_fsm_54;
    static const sc_lv<75> ap_ST_st56_fsm_55;
    static const sc_lv<75> ap_ST_st57_fsm_56;
    static const sc_lv<75> ap_ST_st58_fsm_57;
    static const sc_lv<75> ap_ST_st59_fsm_58;
    static const sc_lv<75> ap_ST_st60_fsm_59;
    static const sc_lv<75> ap_ST_st61_fsm_60;
    static const sc_lv<75> ap_ST_st62_fsm_61;
    static const sc_lv<75> ap_ST_st63_fsm_62;
    static const sc_lv<75> ap_ST_st64_fsm_63;
    static const sc_lv<75> ap_ST_st65_fsm_64;
    static const sc_lv<75> ap_ST_st66_fsm_65;
    static const sc_lv<75> ap_ST_st67_fsm_66;
    static const sc_lv<75> ap_ST_st68_fsm_67;
    static const sc_lv<75> ap_ST_st69_fsm_68;
    static const sc_lv<75> ap_ST_st70_fsm_69;
    static const sc_lv<75> ap_ST_st71_fsm_70;
    static const sc_lv<75> ap_ST_st72_fsm_71;
    static const sc_lv<75> ap_ST_st73_fsm_72;
    static const sc_lv<75> ap_ST_st74_fsm_73;
    static const sc_lv<75> ap_ST_st75_fsm_74;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_3A;
    static const sc_lv<32> ap_const_lv32_3B;
    static const sc_lv<32> ap_const_lv32_48;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_4A;
    static const sc_lv<32> ap_const_lv32_800000;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_49;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_2;
    static const sc_lv<11> ap_const_lv11_3;
    static const sc_lv<11> ap_const_lv11_4;
    static const sc_lv<11> ap_const_lv11_5;
    static const sc_lv<11> ap_const_lv11_6;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<12> ap_const_lv12_498;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<14> ap_const_lv14_498;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<11> ap_const_lv11_93;
    static const sc_lv<9> ap_const_lv9_1F;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<128> ap_const_lv128_lc_1;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<7> ap_const_lv7_1F;
    static const sc_lv<24> ap_const_lv24_DEF;
    static const sc_lv<26> ap_const_lv26_1BDE;
    static const sc_lv<30> ap_const_lv30_6F75;
    static const sc_lv<5> ap_const_lv5_2;
    // Thread declarations
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_I_cast2_fu_493_p1();
    void thread_I_cast_fu_497_p1();
    void thread_O_cast10_cast1_fu_485_p1();
    void thread_O_cast10_cast_fu_489_p1();
    void thread_O_fu_475_p4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_233();
    void thread_ap_sig_251();
    void thread_ap_sig_267();
    void thread_ap_sig_281();
    void thread_ap_sig_292();
    void thread_ap_sig_309();
    void thread_ap_sig_323();
    void thread_ap_sig_332();
    void thread_ap_sig_341();
    void thread_ap_sig_352();
    void thread_ap_sig_361();
    void thread_ap_sig_372();
    void thread_ap_sig_395();
    void thread_ap_sig_406();
    void thread_ap_sig_421();
    void thread_ap_sig_430();
    void thread_ap_sig_439();
    void thread_ap_sig_448();
    void thread_ap_sig_490();
    void thread_ap_sig_513();
    void thread_ap_sig_92();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st26_fsm_25();
    void thread_ap_sig_cseq_ST_st27_fsm_26();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st41_fsm_40();
    void thread_ap_sig_cseq_ST_st42_fsm_41();
    void thread_ap_sig_cseq_ST_st43_fsm_42();
    void thread_ap_sig_cseq_ST_st44_fsm_43();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st59_fsm_58();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st60_fsm_59();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st73_fsm_72();
    void thread_ap_sig_cseq_ST_st74_fsm_73();
    void thread_ap_sig_cseq_ST_st75_fsm_74();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_arrayNo1_fu_1027_p1();
    void thread_arrayNo_fu_740_p1();
    void thread_c_1_fu_612_p2();
    void thread_c_cast5_fu_602_p1();
    void thread_exitcond1_fu_606_p2();
    void thread_exitcond2_fu_561_p2();
    void thread_exitcond3_fu_534_p2();
    void thread_exitcond_fu_639_p2();
    void thread_grp_fu_618_ap_start();
    void thread_grp_fu_679_ap_start();
    void thread_grp_fu_679_p0();
    void thread_grp_fu_679_p1();
    void thread_grp_fu_722_ap_start();
    void thread_grp_fu_722_p1();
    void thread_grp_fu_978_ap_start();
    void thread_grp_fu_978_p0();
    void thread_grp_fu_978_p1();
    void thread_i_index_fu_674_p2();
    void thread_input_0_address0();
    void thread_input_0_ce0();
    void thread_input_1_address0();
    void thread_input_1_ce0();
    void thread_input_2_address0();
    void thread_input_2_ce0();
    void thread_input_3_address0();
    void thread_input_3_ce0();
    void thread_input_4_address0();
    void thread_input_4_ce0();
    void thread_input_5_address0();
    void thread_input_5_ce0();
    void thread_input_6_address0();
    void thread_input_6_ce0();
    void thread_input_7_address0();
    void thread_input_7_ce0();
    void thread_m_1_fu_519_p2();
    void thread_m_cast_fu_510_p1();
    void thread_max_1_to_int_fu_916_p1();
    void thread_max_2_fu_967_p3();
    void thread_mul1_fu_1195_p0();
    void thread_mul1_fu_1195_p1();
    void thread_mul1_fu_1195_p10();
    void thread_mul5_fu_1209_p0();
    void thread_mul5_fu_1209_p00();
    void thread_mul5_fu_1209_p1();
    void thread_mul8_fu_1188_p0();
    void thread_mul8_fu_1188_p1();
    void thread_mul8_fu_1188_p10();
    void thread_mul_fu_1202_p0();
    void thread_mul_fu_1202_p00();
    void thread_mul_fu_1202_p1();
    void thread_newIndex2_fu_996_p1();
    void thread_newIndex3_fu_728_p1();
    void thread_next_mul_fu_501_p2();
    void thread_notlhs4_fu_938_p2();
    void thread_notlhs_fu_904_p2();
    void thread_notrhs5_fu_944_p2();
    void thread_notrhs_fu_910_p2();
    void thread_o_index_fu_586_p2();
    void thread_output_0_address0();
    void thread_output_0_ce0();
    void thread_output_0_d0();
    void thread_output_0_we0();
    void thread_output_1_address0();
    void thread_output_1_ce0();
    void thread_output_1_d0();
    void thread_output_1_we0();
    void thread_output_2_address0();
    void thread_output_2_ce0();
    void thread_output_2_d0();
    void thread_output_2_we0();
    void thread_output_3_address0();
    void thread_output_3_ce0();
    void thread_output_3_d0();
    void thread_output_3_we0();
    void thread_output_4_address0();
    void thread_output_4_ce0();
    void thread_output_4_d0();
    void thread_output_4_we0();
    void thread_output_5_address0();
    void thread_output_5_ce0();
    void thread_output_5_d0();
    void thread_output_5_we0();
    void thread_output_6_address0();
    void thread_output_6_ce0();
    void thread_output_6_d0();
    void thread_output_6_we0();
    void thread_output_7_address0();
    void thread_output_7_ce0();
    void thread_output_7_d0();
    void thread_output_7_we0();
    void thread_p_demorgan_fu_1150_p2();
    void thread_r_1_fu_645_p2();
    void thread_r_cast4_fu_635_p1();
    void thread_tmp1_fu_651_p2();
    void thread_tmp2_fu_670_p2();
    void thread_tmp3_fu_581_p0();
    void thread_tmp3_fu_581_p1();
    void thread_tmp3_fu_581_p10();
    void thread_tmp3_fu_581_p2();
    void thread_tmp4_fu_657_p2();
    void thread_tmp5_fu_665_p0();
    void thread_tmp5_fu_665_p1();
    void thread_tmp5_fu_665_p10();
    void thread_tmp5_fu_665_p2();
    void thread_tmp_10_fu_1038_p9();
    void thread_tmp_12_fu_1008_p3();
    void thread_tmp_13_fu_1015_p2();
    void thread_tmp_17_fu_747_p9();
    void thread_tmp_19_fu_769_p3();
    void thread_tmp_1_fu_514_p2();
    void thread_tmp_20_fu_776_p2();
    void thread_tmp_21_fu_1021_p2();
    void thread_tmp_22_fu_885_p1();
    void thread_tmp_23_fu_890_p4();
    void thread_tmp_24_fu_1060_p1();
    void thread_tmp_25_fu_920_p4();
    void thread_tmp_26_fu_1063_p1();
    void thread_tmp_27_fu_934_p2();
    void thread_tmp_28_fu_950_p2();
    void thread_tmp_29_fu_956_p2();
    void thread_tmp_2_fu_525_p0();
    void thread_tmp_2_fu_525_p1();
    void thread_tmp_2_fu_525_p10();
    void thread_tmp_2_fu_525_p2();
    void thread_tmp_30_fu_470_p0();
    void thread_tmp_31_fu_962_p2();
    void thread_tmp_32_fu_1066_p1();
    void thread_tmp_33_fu_1070_p2();
    void thread_tmp_34_fu_1076_p3();
    void thread_tmp_35_fu_1083_p3();
    void thread_tmp_36_fu_1090_p3();
    void thread_tmp_37_fu_1097_p2();
    void thread_tmp_38_fu_1103_p1();
    void thread_tmp_39_fu_1107_p1();
    void thread_tmp_3_fu_974_p1();
    void thread_tmp_40_fu_1111_p1();
    void thread_tmp_41_fu_1115_p2();
    void thread_tmp_42_fu_1121_p4();
    void thread_tmp_43_fu_1131_p3();
    void thread_tmp_44_fu_1138_p2();
    void thread_tmp_45_fu_1144_p2();
    void thread_tmp_46_fu_1156_p2();
    void thread_tmp_47_fu_1162_p2();
    void thread_tmp_48_fu_1168_p2();
    void thread_tmp_49_fu_1174_p2();
    void thread_tmp_4_fu_1034_p1();
    void thread_tmp_50_fu_706_p1();
    void thread_tmp_53_fu_782_p2();
    void thread_tmp_54_fu_788_p3();
    void thread_tmp_55_fu_795_p1();
    void thread_tmp_56_fu_799_p4();
    void thread_tmp_57_fu_809_p2();
    void thread_tmp_58_fu_815_p2();
    void thread_tmp_59_fu_821_p2();
    void thread_tmp_5_cast_fu_553_p1();
    void thread_tmp_5_fu_545_p3();
    void thread_tmp_60_fu_827_p3();
    void thread_tmp_61_fu_835_p3();
    void thread_tmp_62_fu_843_p3();
    void thread_tmp_63_fu_851_p2();
    void thread_tmp_64_fu_857_p1();
    void thread_tmp_65_fu_867_p1();
    void thread_tmp_66_fu_861_p2();
    void thread_tmp_67_fu_870_p2();
    void thread_tmp_68_fu_876_p2();
    void thread_tmp_69_fu_881_p1();
    void thread_tmp_70_fu_900_p1();
    void thread_tmp_71_fu_930_p1();
    void thread_tmp_8_cast_fu_598_p1();
    void thread_tmp_8_fu_590_p3();
    void thread_tmp_fu_572_p2();
    void thread_x_1_fu_539_p2();
    void thread_x_cast7_fu_530_p1();
    void thread_y_1_fu_566_p2();
    void thread_y_cast6_fu_557_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif