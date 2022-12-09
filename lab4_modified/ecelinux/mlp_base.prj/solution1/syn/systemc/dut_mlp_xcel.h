// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_mlp_xcel_HH_
#define _dut_mlp_xcel_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_conv1.h"
#include "dut_conv1_1.h"
#include "dut_max_pool.h"
#include "dut_reshape.h"
#include "dut_fadd_32ns_32ns_32_5_full_dsp.h"
#include "dut_fmul_32ns_32ns_32_4_max_dsp.h"
#include "dut_fcmp_32ns_32ns_1_1.h"
#include "dut_mlp_xcel_fc1_weight.h"
#include "dut_mlp_xcel_fc1_bias.h"
#include "dut_mlp_xcel_fc2_weight.h"
#include "dut_mlp_xcel_fc2_bias.h"
#include "dut_mlp_xcel_fc3_weight.h"
#include "dut_mlp_xcel_mem_conv1.h"
#include "dut_mlp_xcel_mem_conv2.h"

namespace ap_rtl {

struct dut_mlp_xcel : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<12> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<32> > input_r_q0;
    sc_out< sc_lv<32> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    dut_mlp_xcel(sc_module_name name);
    SC_HAS_PROCESS(dut_mlp_xcel);

    ~dut_mlp_xcel();

    sc_trace_file* mVcdFile;

    dut_mlp_xcel_fc1_weight* fc1_weight_U;
    dut_mlp_xcel_fc1_bias* fc1_bias_U;
    dut_mlp_xcel_fc2_weight* fc2_weight_U;
    dut_mlp_xcel_fc2_bias* fc2_bias_U;
    dut_mlp_xcel_fc3_weight* fc3_weight_U;
    dut_mlp_xcel_mem_conv1* mem_conv1_U;
    dut_mlp_xcel_mem_conv2* mem_conv2_U;
    dut_conv1* grp_dut_conv1_fu_404;
    dut_conv1_1* grp_dut_conv1_1_fu_412;
    dut_max_pool* grp_dut_max_pool_fu_421;
    dut_reshape* grp_dut_reshape_fu_430;
    dut_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_fadd_32ns_32ns_32_5_full_dsp_U17;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U18;
    dut_fcmp_32ns_32ns_1_1<1,1,32,32,1>* dut_fcmp_32ns_32ns_1_1_U19;
    sc_signal< sc_lv<67> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_84;
    sc_signal< sc_lv<16> > fc1_weight_address0;
    sc_signal< sc_logic > fc1_weight_ce0;
    sc_signal< sc_lv<32> > fc1_weight_q0;
    sc_signal< sc_lv<7> > fc1_bias_address0;
    sc_signal< sc_logic > fc1_bias_ce0;
    sc_signal< sc_lv<32> > fc1_bias_q0;
    sc_signal< sc_lv<14> > fc2_weight_address0;
    sc_signal< sc_logic > fc2_weight_ce0;
    sc_signal< sc_lv<32> > fc2_weight_q0;
    sc_signal< sc_lv<7> > fc2_bias_address0;
    sc_signal< sc_logic > fc2_bias_ce0;
    sc_signal< sc_lv<32> > fc2_bias_q0;
    sc_signal< sc_lv<8> > fc3_weight_address0;
    sc_signal< sc_logic > fc3_weight_ce0;
    sc_signal< sc_lv<32> > fc3_weight_q0;
    sc_signal< sc_lv<32> > mem_conv1_q0;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_138;
    sc_signal< sc_logic > ap_sig_cseq_ST_st52_fsm_51;
    sc_signal< bool > ap_sig_145;
    sc_signal< sc_lv<32> > grp_fu_444_p2;
    sc_signal< sc_lv<32> > reg_463;
    sc_signal< sc_logic > ap_sig_cseq_ST_st17_fsm_16;
    sc_signal< bool > ap_sig_155;
    sc_signal< sc_logic > ap_sig_cseq_ST_st36_fsm_35;
    sc_signal< bool > ap_sig_162;
    sc_signal< sc_logic > ap_sig_cseq_ST_st55_fsm_54;
    sc_signal< bool > ap_sig_170;
    sc_signal< sc_lv<32> > grp_fu_436_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st22_fsm_21;
    sc_signal< bool > ap_sig_180;
    sc_signal< sc_logic > ap_sig_cseq_ST_st41_fsm_40;
    sc_signal< bool > ap_sig_187;
    sc_signal< sc_logic > ap_sig_cseq_ST_st60_fsm_59;
    sc_signal< bool > ap_sig_195;
    sc_signal< sc_lv<32> > reg_475;
    sc_signal< sc_logic > ap_sig_cseq_ST_st28_fsm_27;
    sc_signal< bool > ap_sig_204;
    sc_signal< sc_logic > ap_sig_cseq_ST_st47_fsm_46;
    sc_signal< bool > ap_sig_211;
    sc_signal< sc_logic > ap_sig_cseq_ST_st64_fsm_63;
    sc_signal< bool > ap_sig_219;
    sc_signal< sc_lv<32> > mem_conv2_q0;
    sc_signal< sc_lv<32> > reg_481;
    sc_signal< sc_logic > ap_sig_cseq_ST_st33_fsm_32;
    sc_signal< bool > ap_sig_229;
    sc_signal< sc_logic > ap_sig_cseq_ST_st66_fsm_65;
    sc_signal< bool > ap_sig_236;
    sc_signal< sc_lv<13> > i_1_fu_493_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_246;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_255;
    sc_signal< sc_logic > grp_dut_reshape_fu_430_ap_done;
    sc_signal< sc_lv<16> > next_mul_fu_505_p2;
    sc_signal< sc_lv<16> > next_mul_reg_914;
    sc_signal< sc_logic > ap_sig_cseq_ST_st12_fsm_11;
    sc_signal< bool > ap_sig_268;
    sc_signal< sc_lv<7> > n_fu_517_p2;
    sc_signal< sc_lv<7> > n_reg_922;
    sc_signal< sc_lv<9> > m_fu_533_p2;
    sc_signal< sc_lv<9> > m_reg_930;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_279;
    sc_signal< sc_lv<1> > exitcond3_fu_527_p2;
    sc_signal< sc_lv<64> > tmp_15_i_fu_555_p1;
    sc_signal< sc_lv<64> > tmp_15_i_reg_945;
    sc_signal< sc_lv<32> > fc1_bias_load_reg_960;
    sc_signal< sc_logic > ap_sig_cseq_ST_st23_fsm_22;
    sc_signal< bool > ap_sig_302;
    sc_signal< sc_lv<32> > biased_1_fu_602_p3;
    sc_signal< sc_lv<32> > biased_1_reg_965;
    sc_signal< sc_logic > ap_sig_cseq_ST_st29_fsm_28;
    sc_signal< bool > ap_sig_311;
    sc_signal< sc_lv<7> > n_1_fu_616_p2;
    sc_signal< sc_lv<7> > n_1_reg_973;
    sc_signal< sc_logic > ap_sig_cseq_ST_st31_fsm_30;
    sc_signal< bool > ap_sig_320;
    sc_signal< sc_lv<15> > tmp_i3_fu_646_p2;
    sc_signal< sc_lv<15> > tmp_i3_reg_978;
    sc_signal< sc_lv<1> > exitcond2_fu_610_p2;
    sc_signal< sc_lv<7> > m_1_fu_662_p2;
    sc_signal< sc_lv<7> > m_1_reg_986;
    sc_signal< sc_logic > ap_sig_cseq_ST_st32_fsm_31;
    sc_signal< bool > ap_sig_334;
    sc_signal< sc_lv<1> > exitcond5_fu_656_p2;
    sc_signal< sc_lv<64> > tmp_16_i1_fu_687_p1;
    sc_signal< sc_lv<64> > tmp_16_i1_reg_1001;
    sc_signal< sc_lv<32> > fc2_bias_load_reg_1016;
    sc_signal< sc_logic > ap_sig_cseq_ST_st42_fsm_41;
    sc_signal< bool > ap_sig_356;
    sc_signal< sc_lv<32> > biased_3_fu_734_p3;
    sc_signal< sc_lv<32> > biased_3_reg_1021;
    sc_signal< sc_logic > ap_sig_cseq_ST_st48_fsm_47;
    sc_signal< bool > ap_sig_365;
    sc_signal< sc_lv<8> > next_mul2_fu_742_p2;
    sc_signal< sc_lv<8> > next_mul2_reg_1026;
    sc_signal< sc_logic > ap_sig_cseq_ST_st50_fsm_49;
    sc_signal< bool > ap_sig_374;
    sc_signal< sc_lv<2> > n_2_fu_754_p2;
    sc_signal< sc_lv<2> > n_2_reg_1034;
    sc_signal< sc_lv<1> > exitcond4_fu_748_p2;
    sc_signal< sc_lv<7> > m_2_fu_770_p2;
    sc_signal< sc_lv<7> > m_2_reg_1047;
    sc_signal< sc_logic > ap_sig_cseq_ST_st51_fsm_50;
    sc_signal< bool > ap_sig_391;
    sc_signal< sc_lv<1> > exitcond6_fu_764_p2;
    sc_signal< sc_lv<32> > bias_load_phi_i_fu_796_p3;
    sc_signal< sc_lv<32> > mem_conv2_q1;
    sc_signal< sc_lv<32> > mem_conv2_load_1_reg_1072;
    sc_signal< sc_lv<13> > mem_conv1_address0;
    sc_signal< sc_logic > mem_conv1_ce0;
    sc_signal< sc_logic > mem_conv1_we0;
    sc_signal< sc_lv<32> > mem_conv1_d0;
    sc_signal< sc_lv<13> > mem_conv2_address0;
    sc_signal< sc_logic > mem_conv2_ce0;
    sc_signal< sc_logic > mem_conv2_we0;
    sc_signal< sc_lv<32> > mem_conv2_d0;
    sc_signal< sc_lv<13> > mem_conv2_address1;
    sc_signal< sc_logic > mem_conv2_ce1;
    sc_signal< sc_logic > mem_conv2_we1;
    sc_signal< sc_logic > grp_dut_conv1_fu_404_ap_start;
    sc_signal< sc_logic > grp_dut_conv1_fu_404_ap_done;
    sc_signal< sc_logic > grp_dut_conv1_fu_404_ap_idle;
    sc_signal< sc_logic > grp_dut_conv1_fu_404_ap_ready;
    sc_signal< sc_lv<13> > grp_dut_conv1_fu_404_input_r_address0;
    sc_signal< sc_logic > grp_dut_conv1_fu_404_input_r_ce0;
    sc_signal< sc_lv<13> > grp_dut_conv1_fu_404_output_r_address0;
    sc_signal< sc_logic > grp_dut_conv1_fu_404_output_r_ce0;
    sc_signal< sc_logic > grp_dut_conv1_fu_404_output_r_we0;
    sc_signal< sc_lv<32> > grp_dut_conv1_fu_404_output_r_d0;
    sc_signal< sc_logic > grp_dut_conv1_1_fu_412_ap_start;
    sc_signal< sc_logic > grp_dut_conv1_1_fu_412_ap_done;
    sc_signal< sc_logic > grp_dut_conv1_1_fu_412_ap_idle;
    sc_signal< sc_logic > grp_dut_conv1_1_fu_412_ap_ready;
    sc_signal< sc_lv<12> > grp_dut_conv1_1_fu_412_input_r_address0;
    sc_signal< sc_logic > grp_dut_conv1_1_fu_412_input_r_ce0;
    sc_signal< sc_lv<13> > grp_dut_conv1_1_fu_412_output_r_address0;
    sc_signal< sc_logic > grp_dut_conv1_1_fu_412_output_r_ce0;
    sc_signal< sc_logic > grp_dut_conv1_1_fu_412_output_r_we0;
    sc_signal< sc_lv<32> > grp_dut_conv1_1_fu_412_output_r_d0;
    sc_signal< sc_logic > grp_dut_max_pool_fu_421_ap_start;
    sc_signal< sc_logic > grp_dut_max_pool_fu_421_ap_done;
    sc_signal< sc_logic > grp_dut_max_pool_fu_421_ap_idle;
    sc_signal< sc_logic > grp_dut_max_pool_fu_421_ap_ready;
    sc_signal< sc_lv<13> > grp_dut_max_pool_fu_421_input_r_address0;
    sc_signal< sc_logic > grp_dut_max_pool_fu_421_input_r_ce0;
    sc_signal< sc_lv<13> > grp_dut_max_pool_fu_421_output_r_address0;
    sc_signal< sc_logic > grp_dut_max_pool_fu_421_output_r_ce0;
    sc_signal< sc_logic > grp_dut_max_pool_fu_421_output_r_we0;
    sc_signal< sc_lv<32> > grp_dut_max_pool_fu_421_output_r_d0;
    sc_signal< sc_lv<6> > grp_dut_max_pool_fu_421_I;
    sc_signal< sc_logic > grp_dut_reshape_fu_430_ap_start;
    sc_signal< sc_logic > grp_dut_reshape_fu_430_ap_idle;
    sc_signal< sc_logic > grp_dut_reshape_fu_430_ap_ready;
    sc_signal< sc_lv<13> > grp_dut_reshape_fu_430_input_r_address0;
    sc_signal< sc_logic > grp_dut_reshape_fu_430_input_r_ce0;
    sc_signal< sc_lv<13> > grp_dut_reshape_fu_430_output_r_address0;
    sc_signal< sc_logic > grp_dut_reshape_fu_430_output_r_ce0;
    sc_signal< sc_logic > grp_dut_reshape_fu_430_output_r_we0;
    sc_signal< sc_lv<32> > grp_dut_reshape_fu_430_output_r_d0;
    sc_signal< sc_lv<13> > i_reg_264;
    sc_signal< sc_lv<1> > exitcond_fu_487_p2;
    sc_signal< sc_lv<7> > n_i_reg_275;
    sc_signal< sc_logic > ap_sig_cseq_ST_st30_fsm_29;
    sc_signal< bool > ap_sig_498;
    sc_signal< sc_lv<16> > phi_mul_reg_287;
    sc_signal< sc_lv<32> > sum_i_reg_299;
    sc_signal< sc_lv<1> > exitcond1_fu_511_p2;
    sc_signal< sc_lv<9> > m_i_reg_311;
    sc_signal< sc_lv<7> > n_i1_reg_322;
    sc_signal< sc_logic > ap_sig_cseq_ST_st49_fsm_48;
    sc_signal< bool > ap_sig_518;
    sc_signal< sc_lv<32> > sum_i4_reg_334;
    sc_signal< sc_lv<7> > m_i5_reg_346;
    sc_signal< sc_lv<2> > n_i2_reg_357;
    sc_signal< sc_logic > ap_sig_cseq_ST_st65_fsm_64;
    sc_signal< bool > ap_sig_533;
    sc_signal< sc_lv<8> > phi_mul1_reg_369;
    sc_signal< sc_lv<32> > sum_i1_phi_fu_385_p4;
    sc_signal< sc_lv<32> > sum_i1_reg_381;
    sc_signal< sc_lv<7> > m_i1_reg_393;
    sc_signal< sc_logic > ap_reg_grp_dut_conv1_fu_404_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_553;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_560;
    sc_signal< sc_logic > ap_reg_grp_dut_conv1_1_fu_412_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_579;
    sc_signal< sc_logic > ap_reg_grp_dut_max_pool_fu_421_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_596;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_603;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_611;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_618;
    sc_signal< sc_logic > ap_reg_grp_dut_reshape_fu_430_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_630;
    sc_signal< sc_lv<64> > tmp_s_fu_499_p1;
    sc_signal< sc_lv<64> > tmp_12_i_fu_545_p1;
    sc_signal< sc_lv<64> > tmp_13_i_fu_550_p1;
    sc_signal< sc_lv<64> > tmp_13_i8_fu_677_p1;
    sc_signal< sc_lv<64> > tmp_14_i1_fu_682_p1;
    sc_signal< sc_lv<64> > tmp_13_i1_fu_782_p1;
    sc_signal< sc_lv<64> > tmp_14_i2_fu_787_p1;
    sc_signal< sc_lv<64> > tmp_16_i2_fu_805_p1;
    sc_signal< sc_lv<32> > grp_fu_436_p0;
    sc_signal< sc_lv<32> > grp_fu_436_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st18_fsm_17;
    sc_signal< bool > ap_sig_664;
    sc_signal< sc_logic > ap_sig_cseq_ST_st24_fsm_23;
    sc_signal< bool > ap_sig_671;
    sc_signal< sc_logic > ap_sig_cseq_ST_st37_fsm_36;
    sc_signal< bool > ap_sig_679;
    sc_signal< sc_logic > ap_sig_cseq_ST_st43_fsm_42;
    sc_signal< bool > ap_sig_686;
    sc_signal< sc_logic > ap_sig_cseq_ST_st56_fsm_55;
    sc_signal< bool > ap_sig_694;
    sc_signal< sc_lv<32> > grp_fu_444_p0;
    sc_signal< sc_lv<32> > grp_fu_444_p1;
    sc_signal< sc_lv<32> > grp_fu_453_p0;
    sc_signal< sc_lv<32> > grp_fu_453_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st67_fsm_66;
    sc_signal< bool > ap_sig_708;
    sc_signal< sc_lv<16> > m_i_cast_fu_523_p1;
    sc_signal< sc_lv<16> > w_index_fu_539_p2;
    sc_signal< sc_lv<32> > biased_to_int_fu_560_p1;
    sc_signal< sc_lv<8> > tmp_fu_564_p4;
    sc_signal< sc_lv<23> > tmp_13_fu_574_p1;
    sc_signal< sc_lv<1> > notrhs_fu_584_p2;
    sc_signal< sc_lv<1> > notlhs_fu_578_p2;
    sc_signal< sc_lv<1> > tmp_2_fu_590_p2;
    sc_signal< sc_lv<1> > grp_fu_453_p2;
    sc_signal< sc_lv<1> > tmp_4_fu_596_p2;
    sc_signal< sc_lv<14> > p_shl_i_fu_622_p3;
    sc_signal< sc_lv<10> > p_shl1_i_fu_634_p3;
    sc_signal< sc_lv<15> > p_shl_i_cast_fu_630_p1;
    sc_signal< sc_lv<15> > p_shl1_i_cast_fu_642_p1;
    sc_signal< sc_lv<15> > m_i5_cast5_fu_652_p1;
    sc_signal< sc_lv<15> > w_index_1_fu_668_p2;
    sc_signal< sc_lv<32> > w_index_1_cast_fu_673_p1;
    sc_signal< sc_lv<32> > biased_2_to_int_fu_692_p1;
    sc_signal< sc_lv<8> > tmp_14_fu_696_p4;
    sc_signal< sc_lv<23> > tmp_15_fu_706_p1;
    sc_signal< sc_lv<1> > notrhs3_fu_716_p2;
    sc_signal< sc_lv<1> > notlhs3_fu_710_p2;
    sc_signal< sc_lv<1> > tmp_16_fu_722_p2;
    sc_signal< sc_lv<1> > tmp_18_fu_728_p2;
    sc_signal< sc_lv<8> > m_i1_cast_fu_760_p1;
    sc_signal< sc_lv<8> > w_index_2_fu_776_p2;
    sc_signal< sc_lv<1> > tmp_19_fu_792_p1;
    sc_signal< sc_lv<32> > mem_conv2_load_to_int_fu_810_p1;
    sc_signal< sc_lv<32> > mem_conv2_load_1_to_int_fu_828_p1;
    sc_signal< sc_lv<8> > tmp_5_fu_814_p4;
    sc_signal< sc_lv<23> > tmp_1_fu_824_p1;
    sc_signal< sc_lv<1> > notrhs1_fu_851_p2;
    sc_signal< sc_lv<1> > notlhs1_fu_845_p2;
    sc_signal< sc_lv<8> > tmp_7_fu_831_p4;
    sc_signal< sc_lv<23> > tmp_6_fu_841_p1;
    sc_signal< sc_lv<1> > notrhs2_fu_869_p2;
    sc_signal< sc_lv<1> > notlhs2_fu_863_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_857_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_875_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_881_p2;
    sc_signal< sc_lv<1> > tmp_12_fu_887_p2;
    sc_signal< sc_lv<5> > grp_fu_453_opcode;
    sc_signal< sc_lv<67> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<67> ap_ST_st1_fsm_0;
    static const sc_lv<67> ap_ST_st2_fsm_1;
    static const sc_lv<67> ap_ST_st3_fsm_2;
    static const sc_lv<67> ap_ST_st4_fsm_3;
    static const sc_lv<67> ap_ST_st5_fsm_4;
    static const sc_lv<67> ap_ST_st6_fsm_5;
    static const sc_lv<67> ap_ST_st7_fsm_6;
    static const sc_lv<67> ap_ST_st8_fsm_7;
    static const sc_lv<67> ap_ST_st9_fsm_8;
    static const sc_lv<67> ap_ST_st10_fsm_9;
    static const sc_lv<67> ap_ST_st11_fsm_10;
    static const sc_lv<67> ap_ST_st12_fsm_11;
    static const sc_lv<67> ap_ST_st13_fsm_12;
    static const sc_lv<67> ap_ST_st14_fsm_13;
    static const sc_lv<67> ap_ST_st15_fsm_14;
    static const sc_lv<67> ap_ST_st16_fsm_15;
    static const sc_lv<67> ap_ST_st17_fsm_16;
    static const sc_lv<67> ap_ST_st18_fsm_17;
    static const sc_lv<67> ap_ST_st19_fsm_18;
    static const sc_lv<67> ap_ST_st20_fsm_19;
    static const sc_lv<67> ap_ST_st21_fsm_20;
    static const sc_lv<67> ap_ST_st22_fsm_21;
    static const sc_lv<67> ap_ST_st23_fsm_22;
    static const sc_lv<67> ap_ST_st24_fsm_23;
    static const sc_lv<67> ap_ST_st25_fsm_24;
    static const sc_lv<67> ap_ST_st26_fsm_25;
    static const sc_lv<67> ap_ST_st27_fsm_26;
    static const sc_lv<67> ap_ST_st28_fsm_27;
    static const sc_lv<67> ap_ST_st29_fsm_28;
    static const sc_lv<67> ap_ST_st30_fsm_29;
    static const sc_lv<67> ap_ST_st31_fsm_30;
    static const sc_lv<67> ap_ST_st32_fsm_31;
    static const sc_lv<67> ap_ST_st33_fsm_32;
    static const sc_lv<67> ap_ST_st34_fsm_33;
    static const sc_lv<67> ap_ST_st35_fsm_34;
    static const sc_lv<67> ap_ST_st36_fsm_35;
    static const sc_lv<67> ap_ST_st37_fsm_36;
    static const sc_lv<67> ap_ST_st38_fsm_37;
    static const sc_lv<67> ap_ST_st39_fsm_38;
    static const sc_lv<67> ap_ST_st40_fsm_39;
    static const sc_lv<67> ap_ST_st41_fsm_40;
    static const sc_lv<67> ap_ST_st42_fsm_41;
    static const sc_lv<67> ap_ST_st43_fsm_42;
    static const sc_lv<67> ap_ST_st44_fsm_43;
    static const sc_lv<67> ap_ST_st45_fsm_44;
    static const sc_lv<67> ap_ST_st46_fsm_45;
    static const sc_lv<67> ap_ST_st47_fsm_46;
    static const sc_lv<67> ap_ST_st48_fsm_47;
    static const sc_lv<67> ap_ST_st49_fsm_48;
    static const sc_lv<67> ap_ST_st50_fsm_49;
    static const sc_lv<67> ap_ST_st51_fsm_50;
    static const sc_lv<67> ap_ST_st52_fsm_51;
    static const sc_lv<67> ap_ST_st53_fsm_52;
    static const sc_lv<67> ap_ST_st54_fsm_53;
    static const sc_lv<67> ap_ST_st55_fsm_54;
    static const sc_lv<67> ap_ST_st56_fsm_55;
    static const sc_lv<67> ap_ST_st57_fsm_56;
    static const sc_lv<67> ap_ST_st58_fsm_57;
    static const sc_lv<67> ap_ST_st59_fsm_58;
    static const sc_lv<67> ap_ST_st60_fsm_59;
    static const sc_lv<67> ap_ST_st61_fsm_60;
    static const sc_lv<67> ap_ST_st62_fsm_61;
    static const sc_lv<67> ap_ST_st63_fsm_62;
    static const sc_lv<67> ap_ST_st64_fsm_63;
    static const sc_lv<67> ap_ST_st65_fsm_64;
    static const sc_lv<67> ap_ST_st66_fsm_65;
    static const sc_lv<67> ap_ST_st67_fsm_66;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_36;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_3B;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_41;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<6> ap_const_lv6_1C;
    static const sc_lv<6> ap_const_lv6_A;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_42;
    static const sc_lv<13> ap_const_lv13_1260;
    static const sc_lv<13> ap_const_lv13_1;
    static const sc_lv<16> ap_const_lv16_190;
    static const sc_lv<7> ap_const_lv7_78;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<9> ap_const_lv9_190;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<7> ap_const_lv7_54;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<8> ap_const_lv8_54;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_3E759240;
    static const sc_lv<32> ap_const_lv32_BE833E74;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_4;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_138();
    void thread_ap_sig_145();
    void thread_ap_sig_155();
    void thread_ap_sig_162();
    void thread_ap_sig_170();
    void thread_ap_sig_180();
    void thread_ap_sig_187();
    void thread_ap_sig_195();
    void thread_ap_sig_204();
    void thread_ap_sig_211();
    void thread_ap_sig_219();
    void thread_ap_sig_229();
    void thread_ap_sig_236();
    void thread_ap_sig_246();
    void thread_ap_sig_255();
    void thread_ap_sig_268();
    void thread_ap_sig_279();
    void thread_ap_sig_302();
    void thread_ap_sig_311();
    void thread_ap_sig_320();
    void thread_ap_sig_334();
    void thread_ap_sig_356();
    void thread_ap_sig_365();
    void thread_ap_sig_374();
    void thread_ap_sig_391();
    void thread_ap_sig_498();
    void thread_ap_sig_518();
    void thread_ap_sig_533();
    void thread_ap_sig_553();
    void thread_ap_sig_560();
    void thread_ap_sig_579();
    void thread_ap_sig_596();
    void thread_ap_sig_603();
    void thread_ap_sig_611();
    void thread_ap_sig_618();
    void thread_ap_sig_630();
    void thread_ap_sig_664();
    void thread_ap_sig_671();
    void thread_ap_sig_679();
    void thread_ap_sig_686();
    void thread_ap_sig_694();
    void thread_ap_sig_708();
    void thread_ap_sig_84();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st12_fsm_11();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st17_fsm_16();
    void thread_ap_sig_cseq_ST_st18_fsm_17();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st22_fsm_21();
    void thread_ap_sig_cseq_ST_st23_fsm_22();
    void thread_ap_sig_cseq_ST_st24_fsm_23();
    void thread_ap_sig_cseq_ST_st28_fsm_27();
    void thread_ap_sig_cseq_ST_st29_fsm_28();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st30_fsm_29();
    void thread_ap_sig_cseq_ST_st31_fsm_30();
    void thread_ap_sig_cseq_ST_st32_fsm_31();
    void thread_ap_sig_cseq_ST_st33_fsm_32();
    void thread_ap_sig_cseq_ST_st36_fsm_35();
    void thread_ap_sig_cseq_ST_st37_fsm_36();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st41_fsm_40();
    void thread_ap_sig_cseq_ST_st42_fsm_41();
    void thread_ap_sig_cseq_ST_st43_fsm_42();
    void thread_ap_sig_cseq_ST_st47_fsm_46();
    void thread_ap_sig_cseq_ST_st48_fsm_47();
    void thread_ap_sig_cseq_ST_st49_fsm_48();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st50_fsm_49();
    void thread_ap_sig_cseq_ST_st51_fsm_50();
    void thread_ap_sig_cseq_ST_st52_fsm_51();
    void thread_ap_sig_cseq_ST_st55_fsm_54();
    void thread_ap_sig_cseq_ST_st56_fsm_55();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st60_fsm_59();
    void thread_ap_sig_cseq_ST_st64_fsm_63();
    void thread_ap_sig_cseq_ST_st65_fsm_64();
    void thread_ap_sig_cseq_ST_st66_fsm_65();
    void thread_ap_sig_cseq_ST_st67_fsm_66();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_bias_load_phi_i_fu_796_p3();
    void thread_biased_1_fu_602_p3();
    void thread_biased_2_to_int_fu_692_p1();
    void thread_biased_3_fu_734_p3();
    void thread_biased_to_int_fu_560_p1();
    void thread_exitcond1_fu_511_p2();
    void thread_exitcond2_fu_610_p2();
    void thread_exitcond3_fu_527_p2();
    void thread_exitcond4_fu_748_p2();
    void thread_exitcond5_fu_656_p2();
    void thread_exitcond6_fu_764_p2();
    void thread_exitcond_fu_487_p2();
    void thread_fc1_bias_address0();
    void thread_fc1_bias_ce0();
    void thread_fc1_weight_address0();
    void thread_fc1_weight_ce0();
    void thread_fc2_bias_address0();
    void thread_fc2_bias_ce0();
    void thread_fc2_weight_address0();
    void thread_fc2_weight_ce0();
    void thread_fc3_weight_address0();
    void thread_fc3_weight_ce0();
    void thread_grp_dut_conv1_1_fu_412_ap_start();
    void thread_grp_dut_conv1_fu_404_ap_start();
    void thread_grp_dut_max_pool_fu_421_I();
    void thread_grp_dut_max_pool_fu_421_ap_start();
    void thread_grp_dut_reshape_fu_430_ap_start();
    void thread_grp_fu_436_p0();
    void thread_grp_fu_436_p1();
    void thread_grp_fu_444_p0();
    void thread_grp_fu_444_p1();
    void thread_grp_fu_453_opcode();
    void thread_grp_fu_453_p0();
    void thread_grp_fu_453_p1();
    void thread_i_1_fu_493_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_m_1_fu_662_p2();
    void thread_m_2_fu_770_p2();
    void thread_m_fu_533_p2();
    void thread_m_i1_cast_fu_760_p1();
    void thread_m_i5_cast5_fu_652_p1();
    void thread_m_i_cast_fu_523_p1();
    void thread_mem_conv1_address0();
    void thread_mem_conv1_ce0();
    void thread_mem_conv1_d0();
    void thread_mem_conv1_we0();
    void thread_mem_conv2_address0();
    void thread_mem_conv2_address1();
    void thread_mem_conv2_ce0();
    void thread_mem_conv2_ce1();
    void thread_mem_conv2_d0();
    void thread_mem_conv2_load_1_to_int_fu_828_p1();
    void thread_mem_conv2_load_to_int_fu_810_p1();
    void thread_mem_conv2_we0();
    void thread_mem_conv2_we1();
    void thread_n_1_fu_616_p2();
    void thread_n_2_fu_754_p2();
    void thread_n_fu_517_p2();
    void thread_next_mul2_fu_742_p2();
    void thread_next_mul_fu_505_p2();
    void thread_notlhs1_fu_845_p2();
    void thread_notlhs2_fu_863_p2();
    void thread_notlhs3_fu_710_p2();
    void thread_notlhs_fu_578_p2();
    void thread_notrhs1_fu_851_p2();
    void thread_notrhs2_fu_869_p2();
    void thread_notrhs3_fu_716_p2();
    void thread_notrhs_fu_584_p2();
    void thread_p_shl1_i_cast_fu_642_p1();
    void thread_p_shl1_i_fu_634_p3();
    void thread_p_shl_i_cast_fu_630_p1();
    void thread_p_shl_i_fu_622_p3();
    void thread_sum_i1_phi_fu_385_p4();
    void thread_tmp_10_fu_881_p2();
    void thread_tmp_12_fu_887_p2();
    void thread_tmp_12_i_fu_545_p1();
    void thread_tmp_13_fu_574_p1();
    void thread_tmp_13_i1_fu_782_p1();
    void thread_tmp_13_i8_fu_677_p1();
    void thread_tmp_13_i_fu_550_p1();
    void thread_tmp_14_fu_696_p4();
    void thread_tmp_14_i1_fu_682_p1();
    void thread_tmp_14_i2_fu_787_p1();
    void thread_tmp_15_fu_706_p1();
    void thread_tmp_15_i_fu_555_p1();
    void thread_tmp_16_fu_722_p2();
    void thread_tmp_16_i1_fu_687_p1();
    void thread_tmp_16_i2_fu_805_p1();
    void thread_tmp_18_fu_728_p2();
    void thread_tmp_19_fu_792_p1();
    void thread_tmp_1_fu_824_p1();
    void thread_tmp_2_fu_590_p2();
    void thread_tmp_4_fu_596_p2();
    void thread_tmp_5_fu_814_p4();
    void thread_tmp_6_fu_841_p1();
    void thread_tmp_7_fu_831_p4();
    void thread_tmp_8_fu_875_p2();
    void thread_tmp_9_fu_857_p2();
    void thread_tmp_fu_564_p4();
    void thread_tmp_i3_fu_646_p2();
    void thread_tmp_s_fu_499_p1();
    void thread_w_index_1_cast_fu_673_p1();
    void thread_w_index_1_fu_668_p2();
    void thread_w_index_2_fu_776_p2();
    void thread_w_index_fu_539_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
