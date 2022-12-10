// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_conv1_HH_
#define _dut_conv1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_fadd_32ns_32ns_32_5_full_dsp.h"
#include "dut_fmul_32ns_32ns_32_4_max_dsp.h"
#include "dut_urem_11ns_9ns_11_15_seq.h"
#include "dut_urem_12ns_12ns_11_16_seq.h"
#include "dut_mux_8to1_sel14_128_1.h"
#include "dut_mul_mul_14ns_16ns_30_1.h"
#include "dut_mul_mul_11ns_13ns_24_1.h"
#include "dut_mul_mul_13ns_11ns_24_1.h"
#include "dut_conv1_conv2_weight.h"

namespace ap_rtl {

struct dut_conv1 : public sc_module {
    // Port declarations 70
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
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<12> > ap_var_for_const1;


    // Module declarations
    dut_conv1(sc_module_name name);
    SC_HAS_PROCESS(dut_conv1);

    ~dut_conv1();

    sc_trace_file* mVcdFile;

    dut_conv1_conv2_weight* conv2_weight_U;
    dut_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_fadd_32ns_32ns_32_5_full_dsp_U49;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U50;
    dut_urem_11ns_9ns_11_15_seq<1,15,11,9,11>* dut_urem_11ns_9ns_11_15_seq_U51;
    dut_urem_12ns_12ns_11_16_seq<1,16,12,12,11>* dut_urem_12ns_12ns_11_16_seq_U52;
    dut_urem_11ns_9ns_11_15_seq<1,15,11,9,11>* dut_urem_11ns_9ns_11_15_seq_U53;
    dut_mux_8to1_sel14_128_1<1,1,128,128,128,128,128,128,128,128,14,128>* dut_mux_8to1_sel14_128_1_U54;
    dut_mux_8to1_sel14_128_1<1,1,128,128,128,128,128,128,128,128,14,128>* dut_mux_8to1_sel14_128_1_U55;
    dut_mul_mul_14ns_16ns_30_1<1,1,14,16,30>* dut_mul_mul_14ns_16ns_30_1_U56;
    dut_mul_mul_11ns_13ns_24_1<1,1,11,13,24>* dut_mul_mul_11ns_13ns_24_1_U57;
    dut_mul_mul_13ns_11ns_24_1<1,1,13,11,24>* dut_mul_mul_13ns_11ns_24_1_U58;
    sc_signal< sc_lv<63> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_80;
    sc_signal< sc_lv<12> > conv2_weight_address0;
    sc_signal< sc_logic > conv2_weight_ce0;
    sc_signal< sc_lv<32> > conv2_weight_q0;
    sc_signal< sc_lv<5> > n_2_fu_501_p2;
    sc_signal< sc_lv<5> > n_2_reg_1219;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_211;
    sc_signal< sc_lv<8> > p_shl3_cast_fu_519_p1;
    sc_signal< sc_lv<8> > p_shl3_cast_reg_1224;
    sc_signal< sc_lv<1> > exitcond4_fu_495_p2;
    sc_signal< sc_lv<6> > p_shl4_cast1_fu_529_p1;
    sc_signal< sc_lv<6> > p_shl4_cast1_reg_1229;
    sc_signal< sc_lv<8> > tmp_19_fu_537_p2;
    sc_signal< sc_lv<8> > tmp_19_reg_1234;
    sc_signal< sc_lv<4> > x_2_fu_553_p2;
    sc_signal< sc_lv<4> > x_2_reg_1242;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_230;
    sc_signal< sc_lv<11> > p_shl5_fu_573_p3;
    sc_signal< sc_lv<11> > p_shl5_reg_1247;
    sc_signal< sc_lv<1> > exitcond5_fu_547_p2;
    sc_signal< sc_lv<9> > p_shl6_fu_581_p3;
    sc_signal< sc_lv<9> > p_shl6_reg_1252;
    sc_signal< sc_lv<12> > y_cast_fu_589_p1;
    sc_signal< sc_lv<12> > y_cast_reg_1257;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_246;
    sc_signal< sc_lv<4> > y_2_fu_603_p2;
    sc_signal< sc_lv<4> > y_2_reg_1265;
    sc_signal< sc_lv<11> > o_index_fu_618_p2;
    sc_signal< sc_lv<11> > o_index_reg_1270;
    sc_signal< sc_lv<1> > exitcond2_fu_597_p2;
    sc_signal< sc_lv<3> > m_3_fu_633_p2;
    sc_signal< sc_lv<3> > m_3_reg_1280;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_262;
    sc_signal< sc_lv<8> > tmp_22_fu_663_p2;
    sc_signal< sc_lv<8> > tmp_22_reg_1285;
    sc_signal< sc_lv<1> > exitcond6_fu_627_p2;
    sc_signal< sc_lv<13> > tmp_24_fu_678_p2;
    sc_signal< sc_lv<13> > tmp_24_reg_1290;
    sc_signal< sc_lv<1> > tmp_27_fu_684_p2;
    sc_signal< sc_lv<1> > tmp_27_reg_1295;
    sc_signal< sc_lv<11> > tmp_66_fu_694_p3;
    sc_signal< sc_lv<11> > tmp_66_reg_1304;
    sc_signal< sc_lv<12> > c_cast2_fu_711_p1;
    sc_signal< sc_lv<12> > c_cast2_reg_1310;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_284;
    sc_signal< sc_lv<3> > c_2_fu_721_p2;
    sc_signal< sc_lv<3> > c_2_reg_1318;
    sc_signal< sc_lv<13> > tmp8_fu_727_p2;
    sc_signal< sc_lv<13> > tmp8_reg_1323;
    sc_signal< sc_lv<1> > exitcond1_fu_715_p2;
    sc_signal< sc_lv<3> > r_2_fu_746_p2;
    sc_signal< sc_lv<3> > r_2_reg_1331;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_300;
    sc_signal< sc_lv<12> > i_index_fu_798_p2;
    sc_signal< sc_lv<12> > i_index_reg_1336;
    sc_signal< sc_lv<1> > exitcond_fu_740_p2;
    sc_signal< sc_lv<13> > w_index_fu_821_p2;
    sc_signal< sc_lv<13> > w_index_reg_1342;
    sc_signal< sc_lv<4> > tmp_29_reg_1347;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_316;
    sc_signal< sc_lv<3> > tmp_162_reg_1352;
    sc_signal< sc_lv<11> > tmp_160_fu_856_p1;
    sc_signal< sc_lv<11> > tmp_160_reg_1357;
    sc_signal< sc_logic > ap_sig_cseq_ST_st23_fsm_22;
    sc_signal< bool > ap_sig_327;
    sc_signal< sc_lv<5> > tmp_161_reg_1363;
    sc_signal< sc_logic > ap_sig_cseq_ST_st24_fsm_23;
    sc_signal< bool > ap_sig_336;
    sc_signal< sc_logic > ap_sig_cseq_ST_st37_fsm_36;
    sc_signal< bool > ap_sig_345;
    sc_signal< sc_lv<8> > tmp_173_fu_1004_p2;
    sc_signal< sc_lv<8> > tmp_173_reg_1408;
    sc_signal< sc_logic > ap_sig_cseq_ST_st38_fsm_37;
    sc_signal< bool > ap_sig_368;
    sc_signal< sc_lv<128> > tmp_176_fu_1014_p2;
    sc_signal< sc_lv<128> > tmp_176_reg_1413;
    sc_signal< sc_logic > ap_sig_cseq_ST_st39_fsm_38;
    sc_signal< bool > ap_sig_381;
    sc_signal< sc_lv<32> > grp_fu_490_p2;
    sc_signal< sc_lv<32> > tmp_30_reg_1433;
    sc_signal< sc_logic > ap_sig_cseq_ST_st42_fsm_41;
    sc_signal< bool > ap_sig_391;
    sc_signal< sc_lv<32> > grp_fu_485_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st47_fsm_46;
    sc_signal< bool > ap_sig_400;
    sc_signal< sc_lv<5> > tmp_148_reg_1443;
    sc_signal< sc_logic > ap_sig_cseq_ST_st48_fsm_47;
    sc_signal< bool > ap_sig_409;
    sc_signal< sc_lv<8> > output_0_addr_reg_1448;
    sc_signal< sc_logic > ap_sig_cseq_ST_st61_fsm_60;
    sc_signal< bool > ap_sig_418;
    sc_signal< sc_lv<8> > output_1_addr_reg_1453;
    sc_signal< sc_lv<8> > output_2_addr_reg_1458;
    sc_signal< sc_lv<8> > output_3_addr_reg_1463;
    sc_signal< sc_lv<8> > output_4_addr_reg_1468;
    sc_signal< sc_lv<8> > output_5_addr_reg_1473;
    sc_signal< sc_lv<8> > output_6_addr_reg_1478;
    sc_signal< sc_lv<8> > output_7_addr_reg_1483;
    sc_signal< sc_lv<5> > n_reg_382;
    sc_signal< sc_lv<4> > x_reg_393;
    sc_signal< sc_lv<4> > y_reg_405;
    sc_signal< sc_logic > ap_sig_cseq_ST_st63_fsm_62;
    sc_signal< bool > ap_sig_454;
    sc_signal< sc_lv<32> > sum_reg_416;
    sc_signal< sc_lv<3> > m_reg_428;
    sc_signal< sc_lv<32> > sum_1_reg_439;
    sc_signal< sc_lv<3> > c_reg_451;
    sc_signal< sc_lv<32> > sum_2_reg_462;
    sc_signal< sc_lv<3> > r_reg_474;
    sc_signal< sc_lv<64> > newIndex6_fu_878_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_1020_p1;
    sc_signal< sc_lv<64> > newIndex5_fu_1060_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st62_fsm_61;
    sc_signal< bool > ap_sig_481;
    sc_signal< sc_lv<11> > arrayNo5_fu_1072_p1;
    sc_signal< sc_lv<128> > tmp_159_fu_1180_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st43_fsm_42;
    sc_signal< bool > ap_sig_536;
    sc_signal< sc_lv<32> > grp_fu_490_p0;
    sc_signal< sc_lv<4> > tmp_146_fu_507_p1;
    sc_signal< sc_lv<7> > p_shl3_fu_511_p3;
    sc_signal< sc_lv<5> > tmp_147_fu_523_p2;
    sc_signal< sc_lv<8> > p_shl4_cast_fu_533_p1;
    sc_signal< sc_lv<6> > x_cast_fu_543_p1;
    sc_signal< sc_lv<6> > tmp1_fu_559_p2;
    sc_signal< sc_lv<8> > tmp1_cast_fu_564_p1;
    sc_signal< sc_lv<8> > tmp_fu_568_p2;
    sc_signal< sc_lv<9> > y_cast1_fu_593_p1;
    sc_signal< sc_lv<9> > tmp2_fu_609_p2;
    sc_signal< sc_lv<11> > tmp2_cast_fu_614_p1;
    sc_signal< sc_lv<7> > p_shl7_fu_639_p3;
    sc_signal< sc_lv<4> > p_shl8_fu_651_p3;
    sc_signal< sc_lv<8> > p_shl7_cast_fu_647_p1;
    sc_signal< sc_lv<8> > p_shl8_cast_fu_659_p1;
    sc_signal< sc_lv<8> > m_cast1_fu_623_p1;
    sc_signal< sc_lv<8> > tmp_23_fu_669_p2;
    sc_signal< sc_lv<8> > tmp_24_fu_678_p0;
    sc_signal< sc_lv<11> > tmp_28_fu_689_p2;
    sc_signal< sc_lv<11> > grp_fu_701_p0;
    sc_signal< sc_lv<9> > grp_fu_701_p1;
    sc_signal< sc_lv<13> > c_cast_fu_707_p1;
    sc_signal< sc_lv<4> > r_cast_fu_736_p1;
    sc_signal< sc_lv<4> > tmp6_fu_752_p2;
    sc_signal< sc_lv<8> > tmp6_cast_fu_758_p1;
    sc_signal< sc_lv<8> > tmp4_fu_762_p2;
    sc_signal< sc_lv<9> > p_shl1_fu_775_p3;
    sc_signal< sc_lv<12> > p_shl9_fu_767_p3;
    sc_signal< sc_lv<12> > p_shl1_cast_fu_783_p1;
    sc_signal< sc_lv<12> > tmp5_fu_787_p2;
    sc_signal< sc_lv<12> > tmp7_fu_793_p2;
    sc_signal< sc_lv<5> > p_shl_fu_803_p3;
    sc_signal< sc_lv<5> > r_cast1_fu_732_p1;
    sc_signal< sc_lv<5> > tmp9_fu_811_p2;
    sc_signal< sc_lv<13> > tmp9_cast_fu_817_p1;
    sc_signal< sc_lv<14> > tmp_70_fu_826_p1;
    sc_signal< sc_lv<30> > mul2_fu_1194_p2;
    sc_signal< sc_lv<11> > grp_fu_829_p2;
    sc_signal< sc_lv<11> > grp_fu_860_p0;
    sc_signal< sc_lv<9> > grp_fu_860_p1;
    sc_signal< sc_lv<24> > mul_fu_1202_p2;
    sc_signal< sc_lv<11> > grp_fu_860_p2;
    sc_signal< sc_lv<11> > arrayNo_fu_893_p1;
    sc_signal< sc_lv<14> > tmp_61_fu_900_p9;
    sc_signal< sc_lv<9> > tmp_72_fu_922_p3;
    sc_signal< sc_lv<9> > tmp_73_fu_929_p2;
    sc_signal< sc_lv<128> > tmp_61_fu_900_p10;
    sc_signal< sc_lv<8> > tmp_164_fu_941_p3;
    sc_signal< sc_lv<8> > tmp_165_fu_948_p1;
    sc_signal< sc_lv<1> > tmp_163_fu_935_p2;
    sc_signal< sc_lv<8> > tmp_167_fu_962_p2;
    sc_signal< sc_lv<8> > tmp_169_fu_974_p2;
    sc_signal< sc_lv<128> > tmp_166_fu_952_p4;
    sc_signal< sc_lv<8> > tmp_168_fu_968_p2;
    sc_signal< sc_lv<8> > tmp_170_fu_980_p3;
    sc_signal< sc_lv<8> > tmp_172_fu_996_p3;
    sc_signal< sc_lv<128> > tmp_171_fu_988_p3;
    sc_signal< sc_lv<128> > tmp_174_fu_1010_p1;
    sc_signal< sc_lv<32> > w_index_cast_fu_890_p1;
    sc_signal< sc_lv<128> > tmp_175_fu_1025_p1;
    sc_signal< sc_lv<128> > tmp_177_fu_1028_p2;
    sc_signal< sc_lv<128> > tmp_178_fu_1034_p2;
    sc_signal< sc_lv<32> > tmp_179_fu_1039_p1;
    sc_signal< sc_lv<24> > mul5_fu_1209_p2;
    sc_signal< sc_lv<11> > grp_fu_701_p2;
    sc_signal< sc_lv<14> > tmp_60_fu_1083_p9;
    sc_signal< sc_lv<32> > tmp_67_fu_1079_p1;
    sc_signal< sc_lv<64> > tmp_150_fu_1109_p3;
    sc_signal< sc_lv<128> > tmp_149_fu_1105_p1;
    sc_signal< sc_lv<128> > sf_fu_1117_p1;
    sc_signal< sc_lv<128> > tmp_154_fu_1142_p3;
    sc_signal< sc_lv<128> > tmp_153_fu_1135_p3;
    sc_signal< sc_lv<128> > tmp_152_fu_1128_p3;
    sc_signal< sc_lv<128> > p_not_fu_1155_p3;
    sc_signal< sc_lv<128> > tmp_60_fu_1083_p10;
    sc_signal< sc_lv<128> > tmp_155_fu_1149_p2;
    sc_signal< sc_lv<128> > tmp_151_fu_1121_p3;
    sc_signal< sc_lv<128> > tmp_156_fu_1162_p2;
    sc_signal< sc_lv<128> > tmp_157_fu_1168_p2;
    sc_signal< sc_lv<128> > tmp_158_fu_1174_p2;
    sc_signal< sc_lv<14> > mul2_fu_1194_p0;
    sc_signal< sc_lv<16> > mul2_fu_1194_p1;
    sc_signal< sc_lv<11> > mul_fu_1202_p0;
    sc_signal< sc_lv<13> > mul_fu_1202_p1;
    sc_signal< sc_lv<13> > mul5_fu_1209_p0;
    sc_signal< sc_lv<11> > mul5_fu_1209_p1;
    sc_signal< sc_logic > grp_fu_701_ap_start;
    sc_signal< sc_logic > grp_fu_701_ap_done;
    sc_signal< sc_logic > grp_fu_829_ap_start;
    sc_signal< sc_logic > grp_fu_829_ap_done;
    sc_signal< sc_logic > grp_fu_860_ap_start;
    sc_signal< sc_logic > grp_fu_860_ap_done;
    sc_signal< sc_lv<63> > ap_NS_fsm;
    sc_signal< sc_lv<30> > mul2_fu_1194_p00;
    sc_signal< sc_lv<24> > mul5_fu_1209_p10;
    sc_signal< sc_lv<24> > mul_fu_1202_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<63> ap_ST_st1_fsm_0;
    static const sc_lv<63> ap_ST_st2_fsm_1;
    static const sc_lv<63> ap_ST_st3_fsm_2;
    static const sc_lv<63> ap_ST_st4_fsm_3;
    static const sc_lv<63> ap_ST_st5_fsm_4;
    static const sc_lv<63> ap_ST_st6_fsm_5;
    static const sc_lv<63> ap_ST_st7_fsm_6;
    static const sc_lv<63> ap_ST_st8_fsm_7;
    static const sc_lv<63> ap_ST_st9_fsm_8;
    static const sc_lv<63> ap_ST_st10_fsm_9;
    static const sc_lv<63> ap_ST_st11_fsm_10;
    static const sc_lv<63> ap_ST_st12_fsm_11;
    static const sc_lv<63> ap_ST_st13_fsm_12;
    static const sc_lv<63> ap_ST_st14_fsm_13;
    static const sc_lv<63> ap_ST_st15_fsm_14;
    static const sc_lv<63> ap_ST_st16_fsm_15;
    static const sc_lv<63> ap_ST_st17_fsm_16;
    static const sc_lv<63> ap_ST_st18_fsm_17;
    static const sc_lv<63> ap_ST_st19_fsm_18;
    static const sc_lv<63> ap_ST_st20_fsm_19;
    static const sc_lv<63> ap_ST_st21_fsm_20;
    static const sc_lv<63> ap_ST_st22_fsm_21;
    static const sc_lv<63> ap_ST_st23_fsm_22;
    static const sc_lv<63> ap_ST_st24_fsm_23;
    static const sc_lv<63> ap_ST_st25_fsm_24;
    static const sc_lv<63> ap_ST_st26_fsm_25;
    static const sc_lv<63> ap_ST_st27_fsm_26;
    static const sc_lv<63> ap_ST_st28_fsm_27;
    static const sc_lv<63> ap_ST_st29_fsm_28;
    static const sc_lv<63> ap_ST_st30_fsm_29;
    static const sc_lv<63> ap_ST_st31_fsm_30;
    static const sc_lv<63> ap_ST_st32_fsm_31;
    static const sc_lv<63> ap_ST_st33_fsm_32;
    static const sc_lv<63> ap_ST_st34_fsm_33;
    static const sc_lv<63> ap_ST_st35_fsm_34;
    static const sc_lv<63> ap_ST_st36_fsm_35;
    static const sc_lv<63> ap_ST_st37_fsm_36;
    static const sc_lv<63> ap_ST_st38_fsm_37;
    static const sc_lv<63> ap_ST_st39_fsm_38;
    static const sc_lv<63> ap_ST_st40_fsm_39;
    static const sc_lv<63> ap_ST_st41_fsm_40;
    static const sc_lv<63> ap_ST_st42_fsm_41;
    static const sc_lv<63> ap_ST_st43_fsm_42;
    static const sc_lv<63> ap_ST_st44_fsm_43;
    static const sc_lv<63> ap_ST_st45_fsm_44;
    static const sc_lv<63> ap_ST_st46_fsm_45;
    static const sc_lv<63> ap_ST_st47_fsm_46;
    static const sc_lv<63> ap_ST_st48_fsm_47;
    static const sc_lv<63> ap_ST_st49_fsm_48;
    static const sc_lv<63> ap_ST_st50_fsm_49;
    static const sc_lv<63> ap_ST_st51_fsm_50;
    static const sc_lv<63> ap_ST_st52_fsm_51;
    static const sc_lv<63> ap_ST_st53_fsm_52;
    static const sc_lv<63> ap_ST_st54_fsm_53;
    static const sc_lv<63> ap_ST_st55_fsm_54;
    static const sc_lv<63> ap_ST_st56_fsm_55;
    static const sc_lv<63> ap_ST_st57_fsm_56;
    static const sc_lv<63> ap_ST_st58_fsm_57;
    static const sc_lv<63> ap_ST_st59_fsm_58;
    static const sc_lv<63> ap_ST_st60_fsm_59;
    static const sc_lv<63> ap_ST_st61_fsm_60;
    static const sc_lv<63> ap_ST_st62_fsm_61;
    static const sc_lv<63> ap_ST_st63_fsm_62;
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
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_3C;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_3D;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_2;
    static const sc_lv<11> ap_const_lv11_3;
    static const sc_lv<11> ap_const_lv11_4;
    static const sc_lv<11> ap_const_lv11_5;
    static const sc_lv<11> ap_const_lv11_6;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<13> ap_const_lv13_19;
    static const sc_lv<11> ap_const_lv11_498;
    static const sc_lv<11> ap_const_lv11_368;
    static const sc_lv<11> ap_const_lv11_93;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<12> ap_const_lv12_498;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<9> ap_const_lv9_1F;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<128> ap_const_lv128_lc_1;
    static const sc_lv<128> ap_const_lv128_lc_2;
    static const sc_lv<128> ap_const_lv128_lc_3;
    static const sc_lv<128> ap_const_lv128_lc_4;
    static const sc_lv<128> ap_const_lv128_lc_5;
    static const sc_lv<128> ap_const_lv128_lc_6;
    static const sc_lv<30> ap_const_lv30_6F75;
    static const sc_lv<24> ap_const_lv24_DEF;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_211();
    void thread_ap_sig_230();
    void thread_ap_sig_246();
    void thread_ap_sig_262();
    void thread_ap_sig_284();
    void thread_ap_sig_300();
    void thread_ap_sig_316();
    void thread_ap_sig_327();
    void thread_ap_sig_336();
    void thread_ap_sig_345();
    void thread_ap_sig_368();
    void thread_ap_sig_381();
    void thread_ap_sig_391();
    void thread_ap_sig_400();
    void thread_ap_sig_409();
    void thread_ap_sig_418();
    void thread_ap_sig_454();
    void thread_ap_sig_481();
    void thread_ap_sig_536();
    void thread_ap_sig_80();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st23_fsm_22();
    void thread_ap_sig_cseq_ST_st24_fsm_23();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st37_fsm_36();
    void thread_ap_sig_cseq_ST_st38_fsm_37();
    void thread_ap_sig_cseq_ST_st39_fsm_38();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st42_fsm_41();
    void thread_ap_sig_cseq_ST_st43_fsm_42();
    void thread_ap_sig_cseq_ST_st47_fsm_46();
    void thread_ap_sig_cseq_ST_st48_fsm_47();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st61_fsm_60();
    void thread_ap_sig_cseq_ST_st62_fsm_61();
    void thread_ap_sig_cseq_ST_st63_fsm_62();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_arrayNo5_fu_1072_p1();
    void thread_arrayNo_fu_893_p1();
    void thread_c_2_fu_721_p2();
    void thread_c_cast2_fu_711_p1();
    void thread_c_cast_fu_707_p1();
    void thread_conv2_weight_address0();
    void thread_conv2_weight_ce0();
    void thread_exitcond1_fu_715_p2();
    void thread_exitcond2_fu_597_p2();
    void thread_exitcond4_fu_495_p2();
    void thread_exitcond5_fu_547_p2();
    void thread_exitcond6_fu_627_p2();
    void thread_exitcond_fu_740_p2();
    void thread_grp_fu_490_p0();
    void thread_grp_fu_701_ap_start();
    void thread_grp_fu_701_p0();
    void thread_grp_fu_701_p1();
    void thread_grp_fu_829_ap_start();
    void thread_grp_fu_860_ap_start();
    void thread_grp_fu_860_p0();
    void thread_grp_fu_860_p1();
    void thread_i_index_fu_798_p2();
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
    void thread_m_3_fu_633_p2();
    void thread_m_cast1_fu_623_p1();
    void thread_mul2_fu_1194_p0();
    void thread_mul2_fu_1194_p00();
    void thread_mul2_fu_1194_p1();
    void thread_mul5_fu_1209_p0();
    void thread_mul5_fu_1209_p1();
    void thread_mul5_fu_1209_p10();
    void thread_mul_fu_1202_p0();
    void thread_mul_fu_1202_p00();
    void thread_mul_fu_1202_p1();
    void thread_n_2_fu_501_p2();
    void thread_newIndex5_fu_1060_p1();
    void thread_newIndex6_fu_878_p1();
    void thread_o_index_fu_618_p2();
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
    void thread_p_not_fu_1155_p3();
    void thread_p_shl1_cast_fu_783_p1();
    void thread_p_shl1_fu_775_p3();
    void thread_p_shl3_cast_fu_519_p1();
    void thread_p_shl3_fu_511_p3();
    void thread_p_shl4_cast1_fu_529_p1();
    void thread_p_shl4_cast_fu_533_p1();
    void thread_p_shl5_fu_573_p3();
    void thread_p_shl6_fu_581_p3();
    void thread_p_shl7_cast_fu_647_p1();
    void thread_p_shl7_fu_639_p3();
    void thread_p_shl8_cast_fu_659_p1();
    void thread_p_shl8_fu_651_p3();
    void thread_p_shl9_fu_767_p3();
    void thread_p_shl_fu_803_p3();
    void thread_r_2_fu_746_p2();
    void thread_r_cast1_fu_732_p1();
    void thread_r_cast_fu_736_p1();
    void thread_sf_fu_1117_p1();
    void thread_tmp1_cast_fu_564_p1();
    void thread_tmp1_fu_559_p2();
    void thread_tmp2_cast_fu_614_p1();
    void thread_tmp2_fu_609_p2();
    void thread_tmp4_fu_762_p2();
    void thread_tmp5_fu_787_p2();
    void thread_tmp6_cast_fu_758_p1();
    void thread_tmp6_fu_752_p2();
    void thread_tmp7_fu_793_p2();
    void thread_tmp8_fu_727_p2();
    void thread_tmp9_cast_fu_817_p1();
    void thread_tmp9_fu_811_p2();
    void thread_tmp_146_fu_507_p1();
    void thread_tmp_147_fu_523_p2();
    void thread_tmp_149_fu_1105_p1();
    void thread_tmp_150_fu_1109_p3();
    void thread_tmp_151_fu_1121_p3();
    void thread_tmp_152_fu_1128_p3();
    void thread_tmp_153_fu_1135_p3();
    void thread_tmp_154_fu_1142_p3();
    void thread_tmp_155_fu_1149_p2();
    void thread_tmp_156_fu_1162_p2();
    void thread_tmp_157_fu_1168_p2();
    void thread_tmp_158_fu_1174_p2();
    void thread_tmp_159_fu_1180_p2();
    void thread_tmp_160_fu_856_p1();
    void thread_tmp_163_fu_935_p2();
    void thread_tmp_164_fu_941_p3();
    void thread_tmp_165_fu_948_p1();
    void thread_tmp_166_fu_952_p4();
    void thread_tmp_167_fu_962_p2();
    void thread_tmp_168_fu_968_p2();
    void thread_tmp_169_fu_974_p2();
    void thread_tmp_170_fu_980_p3();
    void thread_tmp_171_fu_988_p3();
    void thread_tmp_172_fu_996_p3();
    void thread_tmp_173_fu_1004_p2();
    void thread_tmp_174_fu_1010_p1();
    void thread_tmp_175_fu_1025_p1();
    void thread_tmp_176_fu_1014_p2();
    void thread_tmp_177_fu_1028_p2();
    void thread_tmp_178_fu_1034_p2();
    void thread_tmp_179_fu_1039_p1();
    void thread_tmp_19_fu_537_p2();
    void thread_tmp_22_fu_663_p2();
    void thread_tmp_23_fu_669_p2();
    void thread_tmp_24_fu_678_p0();
    void thread_tmp_24_fu_678_p2();
    void thread_tmp_27_fu_684_p2();
    void thread_tmp_28_fu_689_p2();
    void thread_tmp_60_fu_1083_p9();
    void thread_tmp_61_fu_900_p9();
    void thread_tmp_66_fu_694_p3();
    void thread_tmp_67_fu_1079_p1();
    void thread_tmp_70_fu_826_p1();
    void thread_tmp_72_fu_922_p3();
    void thread_tmp_73_fu_929_p2();
    void thread_tmp_fu_568_p2();
    void thread_tmp_s_fu_1020_p1();
    void thread_w_index_cast_fu_890_p1();
    void thread_w_index_fu_821_p2();
    void thread_x_2_fu_553_p2();
    void thread_x_cast_fu_543_p1();
    void thread_y_2_fu_603_p2();
    void thread_y_cast1_fu_593_p1();
    void thread_y_cast_fu_589_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif