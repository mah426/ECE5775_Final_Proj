// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_pad_HH_
#define _dut_pad_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_urem_12ns_11ns_12_16_seq.h"
#include "dut_urem_13ns_11ns_13_17_seq.h"
#include "dut_mux_8to1_sel32_1_1.h"
#include "dut_mul_mul_13ns_15ns_28_1.h"
#include "dut_mul_mul_12ns_14ns_26_1.h"

namespace ap_rtl {

struct dut_pad : public sc_module {
    // Port declarations 64
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > input_0_address0;
    sc_out< sc_logic > input_0_ce0;
    sc_in< sc_lv<1> > input_0_q0;
    sc_out< sc_lv<10> > input_1_address0;
    sc_out< sc_logic > input_1_ce0;
    sc_in< sc_lv<1> > input_1_q0;
    sc_out< sc_lv<10> > input_2_address0;
    sc_out< sc_logic > input_2_ce0;
    sc_in< sc_lv<1> > input_2_q0;
    sc_out< sc_lv<10> > input_3_address0;
    sc_out< sc_logic > input_3_ce0;
    sc_in< sc_lv<1> > input_3_q0;
    sc_out< sc_lv<10> > input_4_address0;
    sc_out< sc_logic > input_4_ce0;
    sc_in< sc_lv<1> > input_4_q0;
    sc_out< sc_lv<10> > input_5_address0;
    sc_out< sc_logic > input_5_ce0;
    sc_in< sc_lv<1> > input_5_q0;
    sc_out< sc_lv<10> > input_6_address0;
    sc_out< sc_logic > input_6_ce0;
    sc_in< sc_lv<1> > input_6_q0;
    sc_out< sc_lv<10> > input_7_address0;
    sc_out< sc_logic > input_7_ce0;
    sc_in< sc_lv<1> > input_7_q0;
    sc_out< sc_lv<10> > output_0_address0;
    sc_out< sc_logic > output_0_ce0;
    sc_out< sc_logic > output_0_we0;
    sc_out< sc_lv<1> > output_0_d0;
    sc_out< sc_lv<10> > output_1_address0;
    sc_out< sc_logic > output_1_ce0;
    sc_out< sc_logic > output_1_we0;
    sc_out< sc_lv<1> > output_1_d0;
    sc_out< sc_lv<10> > output_2_address0;
    sc_out< sc_logic > output_2_ce0;
    sc_out< sc_logic > output_2_we0;
    sc_out< sc_lv<1> > output_2_d0;
    sc_out< sc_lv<10> > output_3_address0;
    sc_out< sc_logic > output_3_ce0;
    sc_out< sc_logic > output_3_we0;
    sc_out< sc_lv<1> > output_3_d0;
    sc_out< sc_lv<10> > output_4_address0;
    sc_out< sc_logic > output_4_ce0;
    sc_out< sc_logic > output_4_we0;
    sc_out< sc_lv<1> > output_4_d0;
    sc_out< sc_lv<10> > output_5_address0;
    sc_out< sc_logic > output_5_ce0;
    sc_out< sc_logic > output_5_we0;
    sc_out< sc_lv<1> > output_5_d0;
    sc_out< sc_lv<10> > output_6_address0;
    sc_out< sc_logic > output_6_ce0;
    sc_out< sc_logic > output_6_we0;
    sc_out< sc_lv<1> > output_6_d0;
    sc_out< sc_lv<10> > output_7_address0;
    sc_out< sc_logic > output_7_ce0;
    sc_out< sc_logic > output_7_we0;
    sc_out< sc_lv<1> > output_7_d0;
    sc_in< sc_lv<7> > M;
    sc_in< sc_lv<6> > I;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    dut_pad(sc_module_name name);
    SC_HAS_PROCESS(dut_pad);

    ~dut_pad();

    sc_trace_file* mVcdFile;

    dut_urem_12ns_11ns_12_16_seq<1,16,12,11,12>* dut_urem_12ns_11ns_12_16_seq_U1;
    dut_urem_13ns_11ns_13_17_seq<1,17,13,11,13>* dut_urem_13ns_11ns_13_17_seq_U2;
    dut_mux_8to1_sel32_1_1<1,1,1,1,1,1,1,1,1,1,32,1>* dut_mux_8to1_sel32_1_1_U3;
    dut_mul_mul_13ns_15ns_28_1<1,1,13,15,28>* dut_mul_mul_13ns_15ns_28_1_U4;
    dut_mul_mul_12ns_14ns_26_1<1,1,12,14,26>* dut_mul_mul_12ns_14ns_26_1_U5;
    sc_signal< sc_lv<24> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_41;
    sc_signal< sc_lv<13> > tmp_cast5_cast_fu_501_p1;
    sc_signal< sc_lv<13> > tmp_cast5_cast_reg_809;
    sc_signal< sc_lv<9> > tmp_cast_cast_fu_505_p1;
    sc_signal< sc_lv<9> > tmp_cast_cast_reg_814;
    sc_signal< sc_lv<13> > i_1_fu_515_p2;
    sc_signal< sc_lv<13> > i_1_reg_822;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_170;
    sc_signal< sc_lv<27> > next_mul_fu_521_p2;
    sc_signal< sc_lv<27> > next_mul_reg_827;
    sc_signal< sc_lv<1> > exitcond1_fu_509_p2;
    sc_signal< sc_lv<6> > tmp_8_fu_549_p1;
    sc_signal< sc_lv<6> > tmp_8_reg_835;
    sc_signal< sc_lv<8> > I_cast6_fu_552_p1;
    sc_signal< sc_lv<8> > I_cast6_reg_840;
    sc_signal< sc_lv<12> > I_cast_fu_555_p1;
    sc_signal< sc_lv<12> > I_cast_reg_845;
    sc_signal< sc_lv<13> > idx_urem_fu_570_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_193;
    sc_signal< sc_lv<8> > next_mul8_fu_578_p2;
    sc_signal< sc_lv<8> > next_mul8_reg_855;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_202;
    sc_signal< sc_lv<5> > m_1_fu_596_p2;
    sc_signal< sc_lv<5> > m_1_reg_863;
    sc_signal< sc_lv<9> > tmp_4_fu_602_p2;
    sc_signal< sc_lv<9> > tmp_4_reg_868;
    sc_signal< sc_lv<1> > tmp_2_fu_591_p2;
    sc_signal< sc_lv<12> > x_cast2_fu_607_p1;
    sc_signal< sc_lv<12> > x_cast2_reg_873;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_219;
    sc_signal< sc_lv<5> > x_1_fu_620_p2;
    sc_signal< sc_lv<5> > x_1_reg_881;
    sc_signal< sc_lv<13> > tmp_6_cast_fu_626_p1;
    sc_signal< sc_lv<13> > tmp_6_cast_reg_886;
    sc_signal< sc_lv<1> > tmp_5_fu_615_p2;
    sc_signal< sc_lv<5> > y_1_fu_643_p2;
    sc_signal< sc_lv<5> > y_1_reg_894;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_236;
    sc_signal< sc_lv<12> > tmp2_fu_659_p2;
    sc_signal< sc_lv<12> > tmp2_reg_899;
    sc_signal< sc_lv<1> > exitcond_fu_638_p2;
    sc_signal< sc_lv<9> > tmp9_fu_668_p2;
    sc_signal< sc_lv<9> > tmp9_reg_904;
    sc_signal< sc_lv<12> > i_index_fu_673_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_252;
    sc_signal< sc_lv<13> > o_index_fu_685_p2;
    sc_signal< sc_lv<13> > o_index_reg_914;
    sc_signal< sc_lv<4> > tmp_11_reg_920;
    sc_signal< sc_lv<5> > tmp_12_reg_925;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_265;
    sc_signal< sc_logic > ap_sig_cseq_ST_st22_fsm_21;
    sc_signal< bool > ap_sig_274;
    sc_signal< sc_lv<1> > tmp_6_fu_745_p10;
    sc_signal< sc_lv<1> > tmp_6_reg_970;
    sc_signal< sc_logic > ap_sig_cseq_ST_st23_fsm_22;
    sc_signal< bool > ap_sig_297;
    sc_signal< sc_lv<13> > i_reg_412;
    sc_signal< sc_lv<27> > phi_mul_reg_423;
    sc_signal< sc_lv<13> > phi_urem_reg_434;
    sc_signal< sc_lv<5> > m_reg_446;
    sc_signal< sc_lv<8> > phi_mul7_reg_457;
    sc_signal< sc_lv<5> > x_reg_469;
    sc_signal< sc_lv<5> > y_reg_480;
    sc_signal< sc_logic > ap_sig_cseq_ST_st24_fsm_23;
    sc_signal< bool > ap_sig_325;
    sc_signal< sc_lv<64> > newIndex2_fu_537_p1;
    sc_signal< sc_lv<64> > newIndex3_fu_726_p1;
    sc_signal< sc_lv<64> > newIndex5_fu_770_p1;
    sc_signal< sc_lv<4> > tmp_9_fu_527_p4;
    sc_signal< sc_lv<13> > arrayNo2_fu_767_p1;
    sc_signal< sc_lv<5> > tmp_3_fu_491_p1;
    sc_signal< sc_lv<5> > tmp_s_fu_495_p2;
    sc_signal< sc_lv<13> > next_urem_fu_558_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_564_p2;
    sc_signal< sc_lv<6> > m_cast_fu_587_p1;
    sc_signal< sc_lv<5> > tmp_4_fu_602_p0;
    sc_signal< sc_lv<5> > tmp_4_fu_602_p1;
    sc_signal< sc_lv<6> > x_cast_fu_611_p1;
    sc_signal< sc_lv<6> > y_cast_fu_634_p1;
    sc_signal< sc_lv<8> > y_cast1_fu_630_p1;
    sc_signal< sc_lv<8> > tmp_fu_649_p2;
    sc_signal< sc_lv<6> > tmp2_fu_659_p0;
    sc_signal< sc_lv<8> > tmp2_fu_659_p1;
    sc_signal< sc_lv<9> > y_1_cast_fu_664_p1;
    sc_signal< sc_lv<5> > tmp1_fu_680_p0;
    sc_signal< sc_lv<9> > tmp1_fu_680_p1;
    sc_signal< sc_lv<13> > tmp1_fu_680_p2;
    sc_signal< sc_lv<26> > mul5_fu_789_p2;
    sc_signal< sc_lv<11> > grp_fu_703_p1;
    sc_signal< sc_lv<28> > mul2_fu_782_p2;
    sc_signal< sc_lv<11> > grp_fu_721_p1;
    sc_signal< sc_lv<12> > grp_fu_703_p2;
    sc_signal< sc_lv<12> > arrayNo_fu_738_p1;
    sc_signal< sc_lv<32> > tmp_6_fu_745_p9;
    sc_signal< sc_lv<13> > grp_fu_721_p2;
    sc_signal< sc_lv<13> > mul2_fu_782_p0;
    sc_signal< sc_lv<15> > mul2_fu_782_p1;
    sc_signal< sc_lv<12> > mul5_fu_789_p0;
    sc_signal< sc_lv<14> > mul5_fu_789_p1;
    sc_signal< sc_logic > grp_fu_703_ap_start;
    sc_signal< sc_logic > grp_fu_703_ap_done;
    sc_signal< sc_logic > grp_fu_721_ap_start;
    sc_signal< sc_logic > grp_fu_721_ap_done;
    sc_signal< sc_lv<24> > ap_NS_fsm;
    sc_signal< sc_lv<28> > mul2_fu_782_p00;
    sc_signal< sc_lv<26> > mul5_fu_789_p00;
    sc_signal< sc_lv<13> > tmp1_fu_680_p10;
    sc_signal< sc_lv<12> > tmp2_fu_659_p10;
    sc_signal< sc_lv<9> > tmp_4_fu_602_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<24> ap_ST_st1_fsm_0;
    static const sc_lv<24> ap_ST_st2_fsm_1;
    static const sc_lv<24> ap_ST_st3_fsm_2;
    static const sc_lv<24> ap_ST_st4_fsm_3;
    static const sc_lv<24> ap_ST_st5_fsm_4;
    static const sc_lv<24> ap_ST_st6_fsm_5;
    static const sc_lv<24> ap_ST_st7_fsm_6;
    static const sc_lv<24> ap_ST_st8_fsm_7;
    static const sc_lv<24> ap_ST_st9_fsm_8;
    static const sc_lv<24> ap_ST_st10_fsm_9;
    static const sc_lv<24> ap_ST_st11_fsm_10;
    static const sc_lv<24> ap_ST_st12_fsm_11;
    static const sc_lv<24> ap_ST_st13_fsm_12;
    static const sc_lv<24> ap_ST_st14_fsm_13;
    static const sc_lv<24> ap_ST_st15_fsm_14;
    static const sc_lv<24> ap_ST_st16_fsm_15;
    static const sc_lv<24> ap_ST_st17_fsm_16;
    static const sc_lv<24> ap_ST_st18_fsm_17;
    static const sc_lv<24> ap_ST_st19_fsm_18;
    static const sc_lv<24> ap_ST_st20_fsm_19;
    static const sc_lv<24> ap_ST_st21_fsm_20;
    static const sc_lv<24> ap_ST_st22_fsm_21;
    static const sc_lv<24> ap_ST_st23_fsm_22;
    static const sc_lv<24> ap_ST_st24_fsm_23;
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
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<27> ap_const_lv27_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<13> ap_const_lv13_6;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<13> ap_const_lv13_5;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<13> ap_const_lv13_4;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<13> ap_const_lv13_3;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<13> ap_const_lv13_2;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<13> ap_const_lv13_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<13> ap_const_lv13_1440;
    static const sc_lv<27> ap_const_lv27_3292;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<13> ap_const_lv13_288;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<12> ap_const_lv12_288;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<28> ap_const_lv28_3292;
    static const sc_lv<26> ap_const_lv26_1949;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_I_cast6_fu_552_p1();
    void thread_I_cast_fu_555_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_170();
    void thread_ap_sig_193();
    void thread_ap_sig_202();
    void thread_ap_sig_219();
    void thread_ap_sig_236();
    void thread_ap_sig_252();
    void thread_ap_sig_265();
    void thread_ap_sig_274();
    void thread_ap_sig_297();
    void thread_ap_sig_325();
    void thread_ap_sig_41();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st22_fsm_21();
    void thread_ap_sig_cseq_ST_st23_fsm_22();
    void thread_ap_sig_cseq_ST_st24_fsm_23();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_arrayNo2_fu_767_p1();
    void thread_arrayNo_fu_738_p1();
    void thread_exitcond1_fu_509_p2();
    void thread_exitcond_fu_638_p2();
    void thread_grp_fu_703_ap_start();
    void thread_grp_fu_703_p1();
    void thread_grp_fu_721_ap_start();
    void thread_grp_fu_721_p1();
    void thread_i_1_fu_515_p2();
    void thread_i_index_fu_673_p2();
    void thread_idx_urem_fu_570_p3();
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
    void thread_m_1_fu_596_p2();
    void thread_m_cast_fu_587_p1();
    void thread_mul2_fu_782_p0();
    void thread_mul2_fu_782_p00();
    void thread_mul2_fu_782_p1();
    void thread_mul5_fu_789_p0();
    void thread_mul5_fu_789_p00();
    void thread_mul5_fu_789_p1();
    void thread_newIndex2_fu_537_p1();
    void thread_newIndex3_fu_726_p1();
    void thread_newIndex5_fu_770_p1();
    void thread_next_mul8_fu_578_p2();
    void thread_next_mul_fu_521_p2();
    void thread_next_urem_fu_558_p2();
    void thread_o_index_fu_685_p2();
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
    void thread_tmp1_fu_680_p0();
    void thread_tmp1_fu_680_p1();
    void thread_tmp1_fu_680_p10();
    void thread_tmp1_fu_680_p2();
    void thread_tmp2_fu_659_p0();
    void thread_tmp2_fu_659_p1();
    void thread_tmp2_fu_659_p10();
    void thread_tmp2_fu_659_p2();
    void thread_tmp9_fu_668_p2();
    void thread_tmp_10_fu_564_p2();
    void thread_tmp_2_fu_591_p2();
    void thread_tmp_3_fu_491_p1();
    void thread_tmp_4_fu_602_p0();
    void thread_tmp_4_fu_602_p00();
    void thread_tmp_4_fu_602_p1();
    void thread_tmp_4_fu_602_p2();
    void thread_tmp_5_fu_615_p2();
    void thread_tmp_6_cast_fu_626_p1();
    void thread_tmp_6_fu_745_p9();
    void thread_tmp_8_fu_549_p1();
    void thread_tmp_9_fu_527_p4();
    void thread_tmp_cast5_cast_fu_501_p1();
    void thread_tmp_cast_cast_fu_505_p1();
    void thread_tmp_fu_649_p2();
    void thread_tmp_s_fu_495_p2();
    void thread_x_1_fu_620_p2();
    void thread_x_cast2_fu_607_p1();
    void thread_x_cast_fu_611_p1();
    void thread_y_1_cast_fu_664_p1();
    void thread_y_1_fu_643_p2();
    void thread_y_cast1_fu_630_p1();
    void thread_y_cast_fu_634_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
