// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _matmult_HH_
#define _matmult_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "matmult_mul_32s_32s_32_6.h"

namespace ap_rtl {

struct matmult : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > a_V_address0;
    sc_out< sc_logic > a_V_ce0;
    sc_in< sc_lv<32> > a_V_q0;
    sc_out< sc_lv<14> > b_V_address0;
    sc_out< sc_logic > b_V_ce0;
    sc_in< sc_lv<32> > b_V_q0;
    sc_out< sc_lv<14> > out_V_address0;
    sc_out< sc_logic > out_V_ce0;
    sc_out< sc_logic > out_V_we0;
    sc_out< sc_lv<32> > out_V_d0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    matmult(sc_module_name name);
    SC_HAS_PROCESS(matmult);

    ~matmult();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matmult_mul_32s_32s_32_6<1,6,32,32,32>* matmult_mul_32s_32s_32_6_U1;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_26;
    sc_signal< sc_lv<14> > next_mul2_fu_146_p2;
    sc_signal< sc_lv<14> > next_mul2_reg_244;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_59;
    sc_signal< sc_lv<7> > i_1_fu_158_p2;
    sc_signal< sc_lv<7> > i_1_reg_252;
    sc_signal< sc_lv<7> > j_1_fu_170_p2;
    sc_signal< sc_lv<7> > j_1_reg_260;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_70;
    sc_signal< sc_lv<14> > tmp_2_cast_fu_176_p1;
    sc_signal< sc_lv<14> > tmp_2_cast_reg_265;
    sc_signal< sc_lv<1> > exitcond2_fu_164_p2;
    sc_signal< sc_lv<14> > out_V_addr_reg_270;
    sc_signal< sc_lv<7> > k_1_fu_197_p2;
    sc_signal< sc_lv<7> > k_1_reg_278;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_87;
    sc_signal< sc_lv<1> > exitcond_fu_191_p2;
    sc_signal< sc_lv<14> > next_mul_fu_218_p2;
    sc_signal< sc_lv<14> > next_mul_reg_288;
    sc_signal< sc_lv<32> > a_V_load_reg_298;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_104;
    sc_signal< sc_lv<32> > b_V_load_reg_303;
    sc_signal< sc_lv<32> > tmp_5_fu_238_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_114;
    sc_signal< sc_lv<7> > i_reg_77;
    sc_signal< sc_lv<14> > phi_mul1_reg_88;
    sc_signal< sc_lv<7> > j_reg_100;
    sc_signal< sc_lv<1> > exitcond1_fu_152_p2;
    sc_signal< sc_lv<32> > out_V_load_reg_111;
    sc_signal< sc_lv<7> > k_reg_124;
    sc_signal< sc_lv<14> > phi_mul_reg_135;
    sc_signal< sc_lv<64> > tmp_7_cast_fu_186_p1;
    sc_signal< sc_lv<64> > tmp_8_cast_fu_213_p1;
    sc_signal< sc_lv<64> > tmp_10_cast_fu_229_p1;
    sc_signal< sc_lv<14> > tmp_7_fu_180_p2;
    sc_signal< sc_lv<14> > tmp_4_cast_fu_203_p1;
    sc_signal< sc_lv<14> > tmp_8_fu_207_p2;
    sc_signal< sc_lv<14> > tmp_s_fu_224_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_185;
    sc_signal< sc_lv<32> > grp_fu_234_p2;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_st1_fsm_0;
    static const sc_lv<11> ap_ST_st2_fsm_1;
    static const sc_lv<11> ap_ST_st3_fsm_2;
    static const sc_lv<11> ap_ST_st4_fsm_3;
    static const sc_lv<11> ap_ST_st5_fsm_4;
    static const sc_lv<11> ap_ST_st6_fsm_5;
    static const sc_lv<11> ap_ST_st7_fsm_6;
    static const sc_lv<11> ap_ST_st8_fsm_7;
    static const sc_lv<11> ap_ST_st9_fsm_8;
    static const sc_lv<11> ap_ST_st10_fsm_9;
    static const sc_lv<11> ap_ST_st11_fsm_10;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<14> ap_const_lv14_64;
    static const sc_lv<7> ap_const_lv7_64;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_a_V_address0();
    void thread_a_V_ce0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_104();
    void thread_ap_sig_114();
    void thread_ap_sig_185();
    void thread_ap_sig_26();
    void thread_ap_sig_59();
    void thread_ap_sig_70();
    void thread_ap_sig_87();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_b_V_address0();
    void thread_b_V_ce0();
    void thread_exitcond1_fu_152_p2();
    void thread_exitcond2_fu_164_p2();
    void thread_exitcond_fu_191_p2();
    void thread_i_1_fu_158_p2();
    void thread_j_1_fu_170_p2();
    void thread_k_1_fu_197_p2();
    void thread_next_mul2_fu_146_p2();
    void thread_next_mul_fu_218_p2();
    void thread_out_V_address0();
    void thread_out_V_ce0();
    void thread_out_V_d0();
    void thread_out_V_we0();
    void thread_tmp_10_cast_fu_229_p1();
    void thread_tmp_2_cast_fu_176_p1();
    void thread_tmp_4_cast_fu_203_p1();
    void thread_tmp_5_fu_238_p2();
    void thread_tmp_7_cast_fu_186_p1();
    void thread_tmp_7_fu_180_p2();
    void thread_tmp_8_cast_fu_213_p1();
    void thread_tmp_8_fu_207_p2();
    void thread_tmp_s_fu_224_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
