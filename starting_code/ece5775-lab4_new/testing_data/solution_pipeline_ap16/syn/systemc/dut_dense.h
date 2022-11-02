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
    sc_signal< sc_lv<27> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_44;
    sc_signal< sc_lv<12> > w_fc2_address0;
    sc_signal< sc_logic > w_fc2_ce0;
    sc_signal< sc_lv<1> > w_fc2_q0;
    sc_signal< sc_lv<4> > b_fc2_address0;
    sc_signal< sc_logic > b_fc2_ce0;
    sc_signal< sc_lv<32> > b_fc2_q0;
    sc_signal< sc_lv<32> > one_out_reg_146;
    sc_signal< sc_lv<9> > m_reg_158;
    sc_signal< sc_lv<32> > grp_fu_175_p2;
    sc_signal< sc_lv<32> > reg_190;
    sc_signal< sc_logic > ap_sig_cseq_ST_st19_fsm_10;
    sc_signal< bool > ap_sig_87;
    sc_signal< sc_logic > ap_sig_cseq_ST_st28_fsm_19;
    sc_signal< bool > ap_sig_94;
    sc_signal< sc_lv<32> > grp_fu_169_p2;
    sc_signal< sc_lv<32> > reg_195;
    sc_signal< sc_logic > ap_sig_cseq_ST_st24_fsm_15;
    sc_signal< bool > ap_sig_104;
    sc_signal< sc_logic > ap_sig_cseq_ST_st33_fsm_24;
    sc_signal< bool > ap_sig_111;
    sc_signal< sc_lv<1> > exitcond2_fu_201_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_121;
    sc_signal< sc_lv<4> > n_1_fu_207_p2;
    sc_signal< sc_lv<4> > n_1_reg_397;
    sc_signal< sc_lv<10> > n_cast6_fu_213_p1;
    sc_signal< sc_lv<10> > n_cast6_reg_402;
    sc_signal< sc_lv<1> > exitcond_fu_217_p2;
    sc_signal< sc_lv<1> > exitcond_reg_407;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_2;
    sc_signal< bool > ap_sig_137;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_407_pp0_iter1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_407_pp0_iter2;
    sc_signal< sc_lv<9> > m_3_fu_223_p2;
    sc_signal< sc_lv<9> > m_3_reg_411;
    sc_signal< sc_lv<1> > tmp_21_fu_286_p2;
    sc_signal< sc_lv<1> > tmp_21_reg_426;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg1_fsm_3;
    sc_signal< bool > ap_sig_164;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg2_fsm_4;
    sc_signal< bool > ap_sig_175;
    sc_signal< sc_lv<32> > grp_fu_182_p1;
    sc_signal< sc_lv<32> > tmp_23_reg_436;
    sc_signal< sc_lv<64> > tmp_25_fu_296_p1;
    sc_signal< sc_lv<64> > tmp_25_reg_446;
    sc_signal< sc_logic > ap_sig_cseq_ST_st27_fsm_18;
    sc_signal< bool > ap_sig_193;
    sc_signal< sc_lv<32> > b_fc2_load_reg_456;
    sc_signal< sc_lv<1> > tmp_32_fu_185_p2;
    sc_signal< sc_lv<1> > tmp_32_reg_461;
    sc_signal< sc_logic > ap_sig_cseq_ST_st34_fsm_25;
    sc_signal< bool > ap_sig_205;
    sc_signal< sc_lv<32> > biased_max_fu_385_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st35_fsm_26;
    sc_signal< bool > ap_sig_214;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg4_fsm_6;
    sc_signal< bool > ap_sig_223;
    sc_signal< sc_lv<32> > max_reg_122;
    sc_signal< sc_lv<4> > n_reg_134;
    sc_signal< sc_lv<9> > m_phi_fu_162_p4;
    sc_signal< sc_lv<64> > newIndex9_fu_270_p1;
    sc_signal< sc_lv<64> > tmp_20_fu_275_p1;
    sc_signal< sc_lv<1> > tmp_33_fu_379_p2;
    sc_signal< sc_lv<32> > grp_fu_169_p0;
    sc_signal< sc_lv<32> > grp_fu_169_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg3_fsm_5;
    sc_signal< bool > ap_sig_257;
    sc_signal< sc_logic > ap_sig_cseq_ST_st20_fsm_11;
    sc_signal< bool > ap_sig_265;
    sc_signal< sc_logic > ap_sig_cseq_ST_st29_fsm_20;
    sc_signal< bool > ap_sig_272;
    sc_signal< sc_lv<32> > grp_fu_175_p0;
    sc_signal< sc_lv<32> > grp_fu_175_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st16_fsm_7;
    sc_signal< bool > ap_sig_284;
    sc_signal< sc_logic > ap_sig_cseq_ST_st25_fsm_16;
    sc_signal< bool > ap_sig_291;
    sc_signal< sc_lv<32> > grp_fu_182_p0;
    sc_signal< sc_lv<8> > tmp_36_fu_229_p1;
    sc_signal< sc_lv<11> > p_shl_fu_233_p3;
    sc_signal< sc_lv<9> > tmp_37_fu_245_p2;
    sc_signal< sc_lv<10> > p_shl1_cast_fu_251_p1;
    sc_signal< sc_lv<10> > tmp1_fu_255_p2;
    sc_signal< sc_lv<12> > p_shl_cast_fu_241_p1;
    sc_signal< sc_lv<12> > tmp1_cast_fu_260_p1;
    sc_signal< sc_lv<12> > w_index_fu_264_p2;
    sc_signal< sc_lv<1> > tmp2_fu_280_p2;
    sc_signal< sc_lv<32> > biased_to_int_fu_301_p1;
    sc_signal< sc_lv<32> > max_to_int_fu_319_p1;
    sc_signal< sc_lv<8> > tmp_fu_305_p4;
    sc_signal< sc_lv<23> > tmp_29_fu_315_p1;
    sc_signal< sc_lv<1> > notrhs_fu_343_p2;
    sc_signal< sc_lv<1> > notlhs_fu_337_p2;
    sc_signal< sc_lv<8> > tmp_26_fu_323_p4;
    sc_signal< sc_lv<23> > tmp_35_fu_333_p1;
    sc_signal< sc_lv<1> > notrhs8_fu_361_p2;
    sc_signal< sc_lv<1> > notlhs7_fu_355_p2;
    sc_signal< sc_lv<1> > tmp_27_fu_349_p2;
    sc_signal< sc_lv<1> > tmp_30_fu_367_p2;
    sc_signal< sc_lv<1> > tmp_31_fu_373_p2;
    sc_signal< sc_lv<27> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<27> ap_ST_st1_fsm_0;
    static const sc_lv<27> ap_ST_st2_fsm_1;
    static const sc_lv<27> ap_ST_pp0_stg0_fsm_2;
    static const sc_lv<27> ap_ST_pp0_stg1_fsm_3;
    static const sc_lv<27> ap_ST_pp0_stg2_fsm_4;
    static const sc_lv<27> ap_ST_pp0_stg3_fsm_5;
    static const sc_lv<27> ap_ST_pp0_stg4_fsm_6;
    static const sc_lv<27> ap_ST_st16_fsm_7;
    static const sc_lv<27> ap_ST_st17_fsm_8;
    static const sc_lv<27> ap_ST_st18_fsm_9;
    static const sc_lv<27> ap_ST_st19_fsm_10;
    static const sc_lv<27> ap_ST_st20_fsm_11;
    static const sc_lv<27> ap_ST_st21_fsm_12;
    static const sc_lv<27> ap_ST_st22_fsm_13;
    static const sc_lv<27> ap_ST_st23_fsm_14;
    static const sc_lv<27> ap_ST_st24_fsm_15;
    static const sc_lv<27> ap_ST_st25_fsm_16;
    static const sc_lv<27> ap_ST_st26_fsm_17;
    static const sc_lv<27> ap_ST_st27_fsm_18;
    static const sc_lv<27> ap_ST_st28_fsm_19;
    static const sc_lv<27> ap_ST_st29_fsm_20;
    static const sc_lv<27> ap_ST_st30_fsm_21;
    static const sc_lv<27> ap_ST_st31_fsm_22;
    static const sc_lv<27> ap_ST_st32_fsm_23;
    static const sc_lv<27> ap_ST_st33_fsm_24;
    static const sc_lv<27> ap_ST_st34_fsm_25;
    static const sc_lv<27> ap_ST_st35_fsm_26;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_C2C80000;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_C3800000;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_40000000;
    static const sc_lv<32> ap_const_lv32_3DB504F3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_17;
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
    void thread_ap_sig_104();
    void thread_ap_sig_111();
    void thread_ap_sig_121();
    void thread_ap_sig_137();
    void thread_ap_sig_164();
    void thread_ap_sig_175();
    void thread_ap_sig_193();
    void thread_ap_sig_205();
    void thread_ap_sig_214();
    void thread_ap_sig_223();
    void thread_ap_sig_257();
    void thread_ap_sig_265();
    void thread_ap_sig_272();
    void thread_ap_sig_284();
    void thread_ap_sig_291();
    void thread_ap_sig_44();
    void thread_ap_sig_87();
    void thread_ap_sig_94();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_2();
    void thread_ap_sig_cseq_ST_pp0_stg1_fsm_3();
    void thread_ap_sig_cseq_ST_pp0_stg2_fsm_4();
    void thread_ap_sig_cseq_ST_pp0_stg3_fsm_5();
    void thread_ap_sig_cseq_ST_pp0_stg4_fsm_6();
    void thread_ap_sig_cseq_ST_st16_fsm_7();
    void thread_ap_sig_cseq_ST_st19_fsm_10();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st20_fsm_11();
    void thread_ap_sig_cseq_ST_st24_fsm_15();
    void thread_ap_sig_cseq_ST_st25_fsm_16();
    void thread_ap_sig_cseq_ST_st27_fsm_18();
    void thread_ap_sig_cseq_ST_st28_fsm_19();
    void thread_ap_sig_cseq_ST_st29_fsm_20();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st33_fsm_24();
    void thread_ap_sig_cseq_ST_st34_fsm_25();
    void thread_ap_sig_cseq_ST_st35_fsm_26();
    void thread_b_fc2_address0();
    void thread_b_fc2_ce0();
    void thread_biased_max_fu_385_p3();
    void thread_biased_to_int_fu_301_p1();
    void thread_exitcond2_fu_201_p2();
    void thread_exitcond_fu_217_p2();
    void thread_grp_fu_169_p0();
    void thread_grp_fu_169_p1();
    void thread_grp_fu_175_p0();
    void thread_grp_fu_175_p1();
    void thread_grp_fu_182_p0();
    void thread_input_0_address0();
    void thread_input_0_ce0();
    void thread_m_3_fu_223_p2();
    void thread_m_phi_fu_162_p4();
    void thread_max_to_int_fu_319_p1();
    void thread_n_1_fu_207_p2();
    void thread_n_cast6_fu_213_p1();
    void thread_newIndex9_fu_270_p1();
    void thread_notlhs7_fu_355_p2();
    void thread_notlhs_fu_337_p2();
    void thread_notrhs8_fu_361_p2();
    void thread_notrhs_fu_343_p2();
    void thread_output_0_address0();
    void thread_output_0_ce0();
    void thread_output_0_d0();
    void thread_output_0_we0();
    void thread_p_shl1_cast_fu_251_p1();
    void thread_p_shl_cast_fu_241_p1();
    void thread_p_shl_fu_233_p3();
    void thread_tmp1_cast_fu_260_p1();
    void thread_tmp1_fu_255_p2();
    void thread_tmp2_fu_280_p2();
    void thread_tmp_20_fu_275_p1();
    void thread_tmp_21_fu_286_p2();
    void thread_tmp_25_fu_296_p1();
    void thread_tmp_26_fu_323_p4();
    void thread_tmp_27_fu_349_p2();
    void thread_tmp_29_fu_315_p1();
    void thread_tmp_30_fu_367_p2();
    void thread_tmp_31_fu_373_p2();
    void thread_tmp_33_fu_379_p2();
    void thread_tmp_35_fu_333_p1();
    void thread_tmp_36_fu_229_p1();
    void thread_tmp_37_fu_245_p2();
    void thread_tmp_fu_305_p4();
    void thread_w_fc2_address0();
    void thread_w_fc2_ce0();
    void thread_w_index_fu_264_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif