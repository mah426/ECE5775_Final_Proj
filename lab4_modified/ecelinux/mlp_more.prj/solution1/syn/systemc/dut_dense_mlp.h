// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_dense_mlp_HH_
#define _dut_dense_mlp_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_fadd_32ns_32ns_32_5_full_dsp.h"
#include "dut_fmul_32ns_32ns_32_4_max_dsp.h"
#include "dut_dense_mlp_fc3_weight.h"

namespace ap_rtl {

struct dut_dense_mlp : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > input_0_address0;
    sc_out< sc_logic > input_0_ce0;
    sc_in< sc_lv<128> > input_0_q0;
    sc_out< sc_lv<8> > output_0_address0;
    sc_out< sc_logic > output_0_ce0;
    sc_out< sc_logic > output_0_we0;
    sc_out< sc_lv<128> > output_0_d0;
    sc_in< sc_lv<128> > output_0_q0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    dut_dense_mlp(sc_module_name name);
    SC_HAS_PROCESS(dut_dense_mlp);

    ~dut_dense_mlp();

    sc_trace_file* mVcdFile;

    dut_dense_mlp_fc3_weight* fc3_weight_U;
    dut_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_fadd_32ns_32ns_32_5_full_dsp_U98;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U99;
    sc_signal< sc_lv<17> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_34;
    sc_signal< sc_lv<8> > fc3_weight_address0;
    sc_signal< sc_logic > fc3_weight_ce0;
    sc_signal< sc_lv<32> > fc3_weight_q0;
    sc_signal< sc_lv<8> > next_mul_fu_146_p2;
    sc_signal< sc_lv<8> > next_mul_reg_239;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_67;
    sc_signal< sc_lv<2> > n_1_fu_158_p2;
    sc_signal< sc_lv<2> > n_1_reg_247;
    sc_signal< sc_lv<7> > m_2_fu_174_p2;
    sc_signal< sc_lv<7> > m_2_reg_255;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_78;
    sc_signal< sc_lv<1> > exitcond_fu_168_p2;
    sc_signal< sc_lv<32> > bias_load_phi_fu_200_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_99;
    sc_signal< sc_lv<32> > grp_fu_141_p2;
    sc_signal< sc_lv<32> > tmp_14_reg_285;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_109;
    sc_signal< sc_lv<32> > grp_fu_135_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st12_fsm_11;
    sc_signal< bool > ap_sig_118;
    sc_signal< sc_lv<32> > biased_reg_295;
    sc_signal< sc_logic > ap_sig_cseq_ST_st16_fsm_15;
    sc_signal< bool > ap_sig_126;
    sc_signal< sc_lv<8> > output_0_addr_reg_300;
    sc_signal< sc_lv<2> > n_reg_88;
    sc_signal< sc_logic > ap_sig_cseq_ST_st17_fsm_16;
    sc_signal< bool > ap_sig_141;
    sc_signal< sc_lv<8> > phi_mul_reg_100;
    sc_signal< sc_lv<32> > sum_phi_fu_116_p4;
    sc_signal< sc_lv<32> > sum_reg_112;
    sc_signal< sc_lv<1> > exitcond1_fu_152_p2;
    sc_signal< sc_lv<7> > m_reg_124;
    sc_signal< sc_lv<64> > newIndex3_fu_186_p1;
    sc_signal< sc_lv<64> > tmp_13_fu_191_p1;
    sc_signal< sc_lv<64> > newIndex2_fu_218_p1;
    sc_signal< sc_lv<32> > grp_fu_135_p0;
    sc_signal< sc_lv<32> > grp_fu_135_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_167;
    sc_signal< sc_lv<32> > grp_fu_141_p0;
    sc_signal< sc_lv<8> > m_cast_fu_164_p1;
    sc_signal< sc_lv<8> > w_index_fu_180_p2;
    sc_signal< sc_lv<1> > tmp_fu_196_p1;
    sc_signal< sc_lv<32> > tmp_104_fu_209_p1;
    sc_signal< sc_lv<32> > tmp_s_fu_223_p1;
    sc_signal< sc_lv<17> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<17> ap_ST_st1_fsm_0;
    static const sc_lv<17> ap_ST_st2_fsm_1;
    static const sc_lv<17> ap_ST_st3_fsm_2;
    static const sc_lv<17> ap_ST_st4_fsm_3;
    static const sc_lv<17> ap_ST_st5_fsm_4;
    static const sc_lv<17> ap_ST_st6_fsm_5;
    static const sc_lv<17> ap_ST_st7_fsm_6;
    static const sc_lv<17> ap_ST_st8_fsm_7;
    static const sc_lv<17> ap_ST_st9_fsm_8;
    static const sc_lv<17> ap_ST_st10_fsm_9;
    static const sc_lv<17> ap_ST_st11_fsm_10;
    static const sc_lv<17> ap_ST_st12_fsm_11;
    static const sc_lv<17> ap_ST_st13_fsm_12;
    static const sc_lv<17> ap_ST_st14_fsm_13;
    static const sc_lv<17> ap_ST_st15_fsm_14;
    static const sc_lv<17> ap_ST_st16_fsm_15;
    static const sc_lv<17> ap_ST_st17_fsm_16;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_54;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<7> ap_const_lv7_54;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_3E759240;
    static const sc_lv<32> ap_const_lv32_BE833E74;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<9> ap_const_lv9_1F;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_109();
    void thread_ap_sig_118();
    void thread_ap_sig_126();
    void thread_ap_sig_141();
    void thread_ap_sig_167();
    void thread_ap_sig_34();
    void thread_ap_sig_67();
    void thread_ap_sig_78();
    void thread_ap_sig_99();
    void thread_ap_sig_cseq_ST_st12_fsm_11();
    void thread_ap_sig_cseq_ST_st16_fsm_15();
    void thread_ap_sig_cseq_ST_st17_fsm_16();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_bias_load_phi_fu_200_p3();
    void thread_exitcond1_fu_152_p2();
    void thread_exitcond_fu_168_p2();
    void thread_fc3_weight_address0();
    void thread_fc3_weight_ce0();
    void thread_grp_fu_135_p0();
    void thread_grp_fu_135_p1();
    void thread_grp_fu_141_p0();
    void thread_input_0_address0();
    void thread_input_0_ce0();
    void thread_m_2_fu_174_p2();
    void thread_m_cast_fu_164_p1();
    void thread_n_1_fu_158_p2();
    void thread_newIndex2_fu_218_p1();
    void thread_newIndex3_fu_186_p1();
    void thread_next_mul_fu_146_p2();
    void thread_output_0_address0();
    void thread_output_0_ce0();
    void thread_output_0_d0();
    void thread_output_0_we0();
    void thread_sum_phi_fu_116_p4();
    void thread_tmp_104_fu_209_p1();
    void thread_tmp_13_fu_191_p1();
    void thread_tmp_fu_196_p1();
    void thread_tmp_s_fu_223_p1();
    void thread_w_index_fu_180_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif