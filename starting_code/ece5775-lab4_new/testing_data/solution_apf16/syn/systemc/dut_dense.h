// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_dense_HH_
#define _dut_dense_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_fadd_32ns_32ns_32_5_full_dsp.h"
#include "dut_fmul_32ns_32ns_32_4_max_dsp.h"
#include "dut_sitofp_32ns_32_6.h"
#include "dut_fcmp_32ns_32ns_1_1.h"
#include "dut_dense_w_fc2.h"
#include "dut_dense_b_fc2.h"

namespace ap_rtl {

struct dut_dense : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<9> > input_0_address0;
    sc_out< sc_logic > input_0_ce0;
    sc_in< sc_lv<1> > input_0_q0;
    sc_out< sc_lv<9> > output_0_address0;
    sc_out< sc_logic > output_0_ce0;
    sc_out< sc_logic > output_0_we0;
    sc_out< sc_lv<1> > output_0_d0;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<5> > ap_var_for_const1;


    // Module declarations
    dut_dense(sc_module_name name);
    SC_HAS_PROCESS(dut_dense);

    ~dut_dense();

    sc_trace_file* mVcdFile;

    dut_dense_w_fc2* w_fc2_U;
    dut_dense_b_fc2* b_fc2_U;
    dut_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_fadd_32ns_32ns_32_5_full_dsp_U200;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U201;
    dut_sitofp_32ns_32_6<1,6,32,32>* dut_sitofp_32ns_32_6_U202;
    dut_fcmp_32ns_32ns_1_1<1,1,32,32,1>* dut_fcmp_32ns_32ns_1_1_U203;
    sc_signal< sc_lv<34> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_51;
    sc_signal< sc_lv<12> > w_fc2_address0;
    sc_signal< sc_logic > w_fc2_ce0;
    sc_signal< sc_lv<1> > w_fc2_q0;
    sc_signal< sc_lv<4> > b_fc2_address0;
    sc_signal< sc_logic > b_fc2_ce0;
    sc_signal< sc_lv<32> > b_fc2_q0;
    sc_signal< sc_lv<32> > grp_fu_165_p2;
    sc_signal< sc_lv<32> > reg_180;
    sc_signal< sc_logic > ap_sig_cseq_ST_st18_fsm_17;
    sc_signal< bool > ap_sig_90;
    sc_signal< sc_logic > ap_sig_cseq_ST_st27_fsm_26;
    sc_signal< bool > ap_sig_97;
    sc_signal< sc_lv<32> > grp_fu_159_p2;
    sc_signal< sc_lv<32> > reg_185;
    sc_signal< sc_logic > ap_sig_cseq_ST_st23_fsm_22;
    sc_signal< bool > ap_sig_107;
    sc_signal< sc_logic > ap_sig_cseq_ST_st32_fsm_31;
    sc_signal< bool > ap_sig_114;
    sc_signal< sc_lv<10> > n_cast6_fu_191_p1;
    sc_signal< sc_lv<10> > n_cast6_reg_383;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_124;
    sc_signal< sc_lv<4> > n_1_fu_201_p2;
    sc_signal< sc_lv<4> > n_1_reg_391;
    sc_signal< sc_lv<9> > m_3_fu_213_p2;
    sc_signal< sc_lv<9> > m_3_reg_399;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_135;
    sc_signal< sc_lv<1> > exitcond_fu_207_p2;
    sc_signal< sc_lv<1> > tmp_19_fu_276_p2;
    sc_signal< sc_lv<1> > tmp_19_reg_414;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_152;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_161;
    sc_signal< sc_lv<32> > grp_fu_172_p1;
    sc_signal< sc_lv<32> > tmp_21_reg_424;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_170;
    sc_signal< sc_logic > ap_sig_cseq_ST_st15_fsm_14;
    sc_signal< bool > ap_sig_178;
    sc_signal< sc_lv<64> > tmp_17_fu_286_p1;
    sc_signal< sc_lv<64> > tmp_17_reg_434;
    sc_signal< sc_logic > ap_sig_cseq_ST_st26_fsm_25;
    sc_signal< bool > ap_sig_187;
    sc_signal< sc_lv<32> > b_fc2_load_reg_444;
    sc_signal< sc_lv<1> > tmp_26_fu_175_p2;
    sc_signal< sc_lv<1> > tmp_26_reg_449;
    sc_signal< sc_logic > ap_sig_cseq_ST_st33_fsm_32;
    sc_signal< bool > ap_sig_199;
    sc_signal< sc_lv<32> > biased_max_fu_375_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st34_fsm_33;
    sc_signal< bool > ap_sig_208;
    sc_signal< sc_lv<32> > max_reg_112;
    sc_signal< sc_lv<4> > n_reg_124;
    sc_signal< sc_lv<32> > one_out_reg_136;
    sc_signal< sc_lv<1> > exitcond2_fu_195_p2;
    sc_signal< sc_lv<9> > m_reg_148;
    sc_signal< sc_lv<64> > newIndex9_fu_260_p1;
    sc_signal< sc_lv<64> > tmp_18_fu_265_p1;
    sc_signal< sc_lv<1> > tmp_27_fu_369_p2;
    sc_signal< sc_lv<32> > grp_fu_159_p0;
    sc_signal< sc_lv<32> > grp_fu_159_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_240;
    sc_signal< sc_logic > ap_sig_cseq_ST_st19_fsm_18;
    sc_signal< bool > ap_sig_247;
    sc_signal< sc_logic > ap_sig_cseq_ST_st28_fsm_27;
    sc_signal< bool > ap_sig_254;
    sc_signal< sc_lv<32> > grp_fu_165_p0;
    sc_signal< sc_lv<32> > grp_fu_165_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st24_fsm_23;
    sc_signal< bool > ap_sig_266;
    sc_signal< sc_lv<32> > grp_fu_172_p0;
    sc_signal< sc_lv<8> > tmp_32_fu_219_p1;
    sc_signal< sc_lv<11> > p_shl_fu_223_p3;
    sc_signal< sc_lv<9> > tmp_33_fu_235_p2;
    sc_signal< sc_lv<10> > p_shl1_cast_fu_241_p1;
    sc_signal< sc_lv<10> > tmp1_fu_245_p2;
    sc_signal< sc_lv<12> > p_shl_cast_fu_231_p1;
    sc_signal< sc_lv<12> > tmp1_cast_fu_250_p1;
    sc_signal< sc_lv<12> > w_index_fu_254_p2;
    sc_signal< sc_lv<1> > tmp2_fu_270_p2;
    sc_signal< sc_lv<32> > biased_to_int_fu_291_p1;
    sc_signal< sc_lv<32> > max_to_int_fu_309_p1;
    sc_signal< sc_lv<8> > tmp_fu_295_p4;
    sc_signal< sc_lv<23> > tmp_30_fu_305_p1;
    sc_signal< sc_lv<1> > notrhs_fu_333_p2;
    sc_signal< sc_lv<1> > notlhs_fu_327_p2;
    sc_signal< sc_lv<8> > tmp_22_fu_313_p4;
    sc_signal< sc_lv<23> > tmp_31_fu_323_p1;
    sc_signal< sc_lv<1> > notrhs8_fu_351_p2;
    sc_signal< sc_lv<1> > notlhs7_fu_345_p2;
    sc_signal< sc_lv<1> > tmp_23_fu_339_p2;
    sc_signal< sc_lv<1> > tmp_24_fu_357_p2;
    sc_signal< sc_lv<1> > tmp_25_fu_363_p2;
    sc_signal< sc_lv<34> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<34> ap_ST_st1_fsm_0;
    static const sc_lv<34> ap_ST_st2_fsm_1;
    static const sc_lv<34> ap_ST_st3_fsm_2;
    static const sc_lv<34> ap_ST_st4_fsm_3;
    static const sc_lv<34> ap_ST_st5_fsm_4;
    static const sc_lv<34> ap_ST_st6_fsm_5;
    static const sc_lv<34> ap_ST_st7_fsm_6;
    static const sc_lv<34> ap_ST_st8_fsm_7;
    static const sc_lv<34> ap_ST_st9_fsm_8;
    static const sc_lv<34> ap_ST_st10_fsm_9;
    static const sc_lv<34> ap_ST_st11_fsm_10;
    static const sc_lv<34> ap_ST_st12_fsm_11;
    static const sc_lv<34> ap_ST_st13_fsm_12;
    static const sc_lv<34> ap_ST_st14_fsm_13;
    static const sc_lv<34> ap_ST_st15_fsm_14;
    static const sc_lv<34> ap_ST_st16_fsm_15;
    static const sc_lv<34> ap_ST_st17_fsm_16;
    static const sc_lv<34> ap_ST_st18_fsm_17;
    static const sc_lv<34> ap_ST_st19_fsm_18;
    static const sc_lv<34> ap_ST_st20_fsm_19;
    static const sc_lv<34> ap_ST_st21_fsm_20;
    static const sc_lv<34> ap_ST_st22_fsm_21;
    static const sc_lv<34> ap_ST_st23_fsm_22;
    static const sc_lv<34> ap_ST_st24_fsm_23;
    static const sc_lv<34> ap_ST_st25_fsm_24;
    static const sc_lv<34> ap_ST_st26_fsm_25;
    static const sc_lv<34> ap_ST_st27_fsm_26;
    static const sc_lv<34> ap_ST_st28_fsm_27;
    static const sc_lv<34> ap_ST_st29_fsm_28;
    static const sc_lv<34> ap_ST_st30_fsm_29;
    static const sc_lv<34> ap_ST_st31_fsm_30;
    static const sc_lv<34> ap_ST_st32_fsm_31;
    static const sc_lv<34> ap_ST_st33_fsm_32;
    static const sc_lv<34> ap_ST_st34_fsm_33;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_C2C80000;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_C3800000;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_40000000;
    static const sc_lv<32> ap_const_lv32_3DB504F3;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_2;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_107();
    void thread_ap_sig_114();
    void thread_ap_sig_124();
    void thread_ap_sig_135();
    void thread_ap_sig_152();
    void thread_ap_sig_161();
    void thread_ap_sig_170();
    void thread_ap_sig_178();
    void thread_ap_sig_187();
    void thread_ap_sig_199();
    void thread_ap_sig_208();
    void thread_ap_sig_240();
    void thread_ap_sig_247();
    void thread_ap_sig_254();
    void thread_ap_sig_266();
    void thread_ap_sig_51();
    void thread_ap_sig_90();
    void thread_ap_sig_97();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st15_fsm_14();
    void thread_ap_sig_cseq_ST_st18_fsm_17();
    void thread_ap_sig_cseq_ST_st19_fsm_18();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st23_fsm_22();
    void thread_ap_sig_cseq_ST_st24_fsm_23();
    void thread_ap_sig_cseq_ST_st26_fsm_25();
    void thread_ap_sig_cseq_ST_st27_fsm_26();
    void thread_ap_sig_cseq_ST_st28_fsm_27();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st32_fsm_31();
    void thread_ap_sig_cseq_ST_st33_fsm_32();
    void thread_ap_sig_cseq_ST_st34_fsm_33();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_b_fc2_address0();
    void thread_b_fc2_ce0();
    void thread_biased_max_fu_375_p3();
    void thread_biased_to_int_fu_291_p1();
    void thread_exitcond2_fu_195_p2();
    void thread_exitcond_fu_207_p2();
    void thread_grp_fu_159_p0();
    void thread_grp_fu_159_p1();
    void thread_grp_fu_165_p0();
    void thread_grp_fu_165_p1();
    void thread_grp_fu_172_p0();
    void thread_input_0_address0();
    void thread_input_0_ce0();
    void thread_m_3_fu_213_p2();
    void thread_max_to_int_fu_309_p1();
    void thread_n_1_fu_201_p2();
    void thread_n_cast6_fu_191_p1();
    void thread_newIndex9_fu_260_p1();
    void thread_notlhs7_fu_345_p2();
    void thread_notlhs_fu_327_p2();
    void thread_notrhs8_fu_351_p2();
    void thread_notrhs_fu_333_p2();
    void thread_output_0_address0();
    void thread_output_0_ce0();
    void thread_output_0_d0();
    void thread_output_0_we0();
    void thread_p_shl1_cast_fu_241_p1();
    void thread_p_shl_cast_fu_231_p1();
    void thread_p_shl_fu_223_p3();
    void thread_tmp1_cast_fu_250_p1();
    void thread_tmp1_fu_245_p2();
    void thread_tmp2_fu_270_p2();
    void thread_tmp_17_fu_286_p1();
    void thread_tmp_18_fu_265_p1();
    void thread_tmp_19_fu_276_p2();
    void thread_tmp_22_fu_313_p4();
    void thread_tmp_23_fu_339_p2();
    void thread_tmp_24_fu_357_p2();
    void thread_tmp_25_fu_363_p2();
    void thread_tmp_27_fu_369_p2();
    void thread_tmp_30_fu_305_p1();
    void thread_tmp_31_fu_323_p1();
    void thread_tmp_32_fu_219_p1();
    void thread_tmp_33_fu_235_p2();
    void thread_tmp_fu_295_p4();
    void thread_w_fc2_address0();
    void thread_w_fc2_ce0();
    void thread_w_index_fu_254_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
