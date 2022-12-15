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
#include "dut_conv1_conv1_weight.h"
#include "dut_conv1_conv2_weight.h"

namespace ap_rtl {

struct dut_conv1 : public sc_module {
    // Port declarations 17
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<13> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<32> > input_r_q0;
    sc_out< sc_lv<13> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;
    sc_in< sc_lv<4> > M;
    sc_in< sc_lv<6> > N;
    sc_in< sc_lv<7> > I;
    sc_in< sc_lv<1> > L;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    dut_conv1(sc_module_name name);
    SC_HAS_PROCESS(dut_conv1);

    ~dut_conv1();

    sc_trace_file* mVcdFile;

    dut_conv1_conv1_weight* conv1_weight_U;
    dut_conv1_conv2_weight* conv2_weight_U;
    dut_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_fadd_32ns_32ns_32_5_full_dsp_U1;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U2;
    sc_signal< sc_lv<18> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_35;
    sc_signal< sc_lv<9> > conv1_weight_address0;
    sc_signal< sc_logic > conv1_weight_ce0;
    sc_signal< sc_lv<32> > conv1_weight_q0;
    sc_signal< sc_lv<12> > conv2_weight_address0;
    sc_signal< sc_logic > conv2_weight_ce0;
    sc_signal< sc_lv<32> > conv2_weight_q0;
    sc_signal< sc_lv<6> > O_fu_295_p2;
    sc_signal< sc_lv<6> > O_reg_587;
    sc_signal< sc_lv<14> > O_cast20_cast_fu_301_p1;
    sc_signal< sc_lv<14> > O_cast20_cast_reg_593;
    sc_signal< sc_lv<9> > O_cast_cast_fu_305_p1;
    sc_signal< sc_lv<9> > O_cast_cast_reg_598;
    sc_signal< sc_lv<7> > M_cast_fu_309_p1;
    sc_signal< sc_lv<7> > M_cast_reg_603;
    sc_signal< sc_lv<8> > I_cast4_fu_313_p1;
    sc_signal< sc_lv<8> > I_cast4_reg_608;
    sc_signal< sc_lv<13> > I_cast_fu_317_p1;
    sc_signal< sc_lv<13> > I_cast_reg_613;
    sc_signal< sc_lv<7> > next_mul3_fu_321_p2;
    sc_signal< sc_lv<7> > next_mul3_reg_618;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_99;
    sc_signal< sc_lv<5> > n_2_fu_339_p2;
    sc_signal< sc_lv<5> > n_2_reg_626;
    sc_signal< sc_lv<9> > tmp_13_fu_345_p2;
    sc_signal< sc_lv<9> > tmp_13_reg_631;
    sc_signal< sc_lv<1> > tmp_s_fu_334_p2;
    sc_signal< sc_lv<8> > x_cast1_fu_350_p1;
    sc_signal< sc_lv<8> > x_cast1_reg_636;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_117;
    sc_signal< sc_lv<5> > x_2_fu_367_p2;
    sc_signal< sc_lv<5> > x_2_reg_644;
    sc_signal< sc_lv<14> > tmp3_fu_382_p2;
    sc_signal< sc_lv<14> > tmp3_reg_649;
    sc_signal< sc_lv<1> > tmp_15_fu_362_p2;
    sc_signal< sc_lv<13> > y_cast1_fu_387_p1;
    sc_signal< sc_lv<13> > y_cast1_reg_654;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_134;
    sc_signal< sc_lv<5> > y_2_fu_404_p2;
    sc_signal< sc_lv<5> > y_2_reg_662;
    sc_signal< sc_lv<14> > o_index_fu_410_p2;
    sc_signal< sc_lv<14> > o_index_reg_667;
    sc_signal< sc_lv<1> > exitcond2_fu_399_p2;
    sc_signal< sc_lv<8> > next_mul_fu_415_p2;
    sc_signal< sc_lv<8> > next_mul_reg_672;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_150;
    sc_signal< sc_lv<3> > m_3_fu_433_p2;
    sc_signal< sc_lv<3> > m_3_reg_680;
    sc_signal< sc_lv<12> > tmp_22_fu_449_p2;
    sc_signal< sc_lv<12> > tmp_22_reg_685;
    sc_signal< sc_lv<1> > tmp_18_fu_428_p2;
    sc_signal< sc_lv<13> > c_cast1_fu_463_p1;
    sc_signal< sc_lv<13> > c_cast1_reg_690;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_167;
    sc_signal< sc_lv<3> > c_2_fu_473_p2;
    sc_signal< sc_lv<3> > c_2_reg_698;
    sc_signal< sc_lv<12> > tmp7_fu_479_p2;
    sc_signal< sc_lv<12> > tmp7_reg_703;
    sc_signal< sc_lv<1> > exitcond1_fu_467_p2;
    sc_signal< sc_lv<3> > r_2_fu_498_p2;
    sc_signal< sc_lv<3> > r_2_reg_711;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_183;
    sc_signal< sc_lv<8> > tmp4_fu_510_p2;
    sc_signal< sc_lv<8> > tmp4_reg_716;
    sc_signal< sc_lv<1> > exitcond_fu_492_p2;
    sc_signal< sc_lv<12> > w_index_fu_533_p2;
    sc_signal< sc_lv<12> > w_index_reg_721;
    sc_signal< sc_lv<13> > tmp5_fu_541_p2;
    sc_signal< sc_lv<13> > tmp5_reg_726;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_199;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_216;
    sc_signal< sc_lv<32> > p_pn_v_fu_565_p3;
    sc_signal< sc_lv<32> > p_pn_v_reg_746;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_226;
    sc_signal< sc_lv<32> > grp_fu_286_p2;
    sc_signal< sc_lv<32> > p_pn_reg_756;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_235;
    sc_signal< sc_lv<32> > grp_fu_281_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st18_fsm_17;
    sc_signal< bool > ap_sig_244;
    sc_signal< sc_lv<5> > n_reg_154;
    sc_signal< sc_lv<7> > phi_mul2_reg_165;
    sc_signal< sc_lv<5> > x_reg_177;
    sc_signal< sc_lv<5> > y_reg_188;
    sc_signal< sc_lv<32> > sum_reg_199;
    sc_signal< sc_lv<3> > m_reg_212;
    sc_signal< sc_lv<8> > phi_mul_reg_223;
    sc_signal< sc_lv<32> > sum_1_reg_235;
    sc_signal< sc_lv<3> > c_reg_247;
    sc_signal< sc_lv<32> > sum_2_reg_258;
    sc_signal< sc_lv<3> > r_reg_270;
    sc_signal< sc_lv<64> > tmp_23_fu_455_p1;
    sc_signal< sc_lv<64> > tmp_26_fu_546_p1;
    sc_signal< sc_lv<64> > tmp_25_fu_560_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_293;
    sc_signal< sc_lv<6> > tmp_27_fu_291_p1;
    sc_signal< sc_lv<6> > n_cast_fu_330_p1;
    sc_signal< sc_lv<6> > tmp_13_fu_345_p0;
    sc_signal< sc_lv<5> > tmp_13_fu_345_p1;
    sc_signal< sc_lv<6> > x_cast_fu_358_p1;
    sc_signal< sc_lv<9> > x_cast2_fu_354_p1;
    sc_signal< sc_lv<9> > tmp_fu_373_p2;
    sc_signal< sc_lv<9> > tmp3_fu_382_p0;
    sc_signal< sc_lv<6> > tmp3_fu_382_p1;
    sc_signal< sc_lv<6> > y_cast_fu_395_p1;
    sc_signal< sc_lv<14> > y_cast2_fu_391_p1;
    sc_signal< sc_lv<4> > m_cast_fu_424_p1;
    sc_signal< sc_lv<7> > m_cast1_fu_420_p1;
    sc_signal< sc_lv<7> > tmp_21_fu_439_p2;
    sc_signal< sc_lv<7> > tmp_22_fu_449_p0;
    sc_signal< sc_lv<12> > c_cast_fu_459_p1;
    sc_signal< sc_lv<8> > r_cast9_fu_484_p1;
    sc_signal< sc_lv<8> > tmp1_fu_504_p2;
    sc_signal< sc_lv<5> > p_shl_fu_515_p3;
    sc_signal< sc_lv<5> > r_cast8_fu_488_p1;
    sc_signal< sc_lv<5> > tmp6_fu_523_p2;
    sc_signal< sc_lv<12> > tmp6_cast_fu_529_p1;
    sc_signal< sc_lv<8> > tmp5_fu_541_p0;
    sc_signal< sc_lv<7> > tmp5_fu_541_p1;
    sc_signal< sc_lv<13> > tmp2_fu_551_p2;
    sc_signal< sc_lv<13> > i_index_fu_555_p2;
    sc_signal< sc_lv<18> > ap_NS_fsm;
    sc_signal< sc_lv<14> > tmp3_fu_382_p00;
    sc_signal< sc_lv<13> > tmp5_fu_541_p00;
    sc_signal< sc_lv<9> > tmp_13_fu_345_p10;
    sc_signal< sc_lv<12> > tmp_22_fu_449_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<18> ap_ST_st1_fsm_0;
    static const sc_lv<18> ap_ST_st2_fsm_1;
    static const sc_lv<18> ap_ST_st3_fsm_2;
    static const sc_lv<18> ap_ST_st4_fsm_3;
    static const sc_lv<18> ap_ST_st5_fsm_4;
    static const sc_lv<18> ap_ST_st6_fsm_5;
    static const sc_lv<18> ap_ST_st7_fsm_6;
    static const sc_lv<18> ap_ST_st8_fsm_7;
    static const sc_lv<18> ap_ST_st9_fsm_8;
    static const sc_lv<18> ap_ST_st10_fsm_9;
    static const sc_lv<18> ap_ST_st11_fsm_10;
    static const sc_lv<18> ap_ST_st12_fsm_11;
    static const sc_lv<18> ap_ST_st13_fsm_12;
    static const sc_lv<18> ap_ST_st14_fsm_13;
    static const sc_lv<18> ap_ST_st15_fsm_14;
    static const sc_lv<18> ap_ST_st16_fsm_15;
    static const sc_lv<18> ap_ST_st17_fsm_16;
    static const sc_lv<18> ap_ST_st18_fsm_17;
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
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<6> ap_const_lv6_3C;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<12> ap_const_lv12_19;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<2> ap_const_lv2_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_I_cast4_fu_313_p1();
    void thread_I_cast_fu_317_p1();
    void thread_M_cast_fu_309_p1();
    void thread_O_cast20_cast_fu_301_p1();
    void thread_O_cast_cast_fu_305_p1();
    void thread_O_fu_295_p2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_117();
    void thread_ap_sig_134();
    void thread_ap_sig_150();
    void thread_ap_sig_167();
    void thread_ap_sig_183();
    void thread_ap_sig_199();
    void thread_ap_sig_216();
    void thread_ap_sig_226();
    void thread_ap_sig_235();
    void thread_ap_sig_244();
    void thread_ap_sig_293();
    void thread_ap_sig_35();
    void thread_ap_sig_99();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st18_fsm_17();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_c_2_fu_473_p2();
    void thread_c_cast1_fu_463_p1();
    void thread_c_cast_fu_459_p1();
    void thread_conv1_weight_address0();
    void thread_conv1_weight_ce0();
    void thread_conv2_weight_address0();
    void thread_conv2_weight_ce0();
    void thread_exitcond1_fu_467_p2();
    void thread_exitcond2_fu_399_p2();
    void thread_exitcond_fu_492_p2();
    void thread_i_index_fu_555_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_m_3_fu_433_p2();
    void thread_m_cast1_fu_420_p1();
    void thread_m_cast_fu_424_p1();
    void thread_n_2_fu_339_p2();
    void thread_n_cast_fu_330_p1();
    void thread_next_mul3_fu_321_p2();
    void thread_next_mul_fu_415_p2();
    void thread_o_index_fu_410_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_pn_v_fu_565_p3();
    void thread_p_shl_fu_515_p3();
    void thread_r_2_fu_498_p2();
    void thread_r_cast8_fu_488_p1();
    void thread_r_cast9_fu_484_p1();
    void thread_tmp1_fu_504_p2();
    void thread_tmp2_fu_551_p2();
    void thread_tmp3_fu_382_p0();
    void thread_tmp3_fu_382_p00();
    void thread_tmp3_fu_382_p1();
    void thread_tmp3_fu_382_p2();
    void thread_tmp4_fu_510_p2();
    void thread_tmp5_fu_541_p0();
    void thread_tmp5_fu_541_p00();
    void thread_tmp5_fu_541_p1();
    void thread_tmp5_fu_541_p2();
    void thread_tmp6_cast_fu_529_p1();
    void thread_tmp6_fu_523_p2();
    void thread_tmp7_fu_479_p2();
    void thread_tmp_13_fu_345_p0();
    void thread_tmp_13_fu_345_p1();
    void thread_tmp_13_fu_345_p10();
    void thread_tmp_13_fu_345_p2();
    void thread_tmp_15_fu_362_p2();
    void thread_tmp_18_fu_428_p2();
    void thread_tmp_21_fu_439_p2();
    void thread_tmp_22_fu_449_p0();
    void thread_tmp_22_fu_449_p00();
    void thread_tmp_22_fu_449_p2();
    void thread_tmp_23_fu_455_p1();
    void thread_tmp_25_fu_560_p1();
    void thread_tmp_26_fu_546_p1();
    void thread_tmp_27_fu_291_p1();
    void thread_tmp_fu_373_p2();
    void thread_tmp_s_fu_334_p2();
    void thread_w_index_fu_533_p2();
    void thread_x_2_fu_367_p2();
    void thread_x_cast1_fu_350_p1();
    void thread_x_cast2_fu_354_p1();
    void thread_x_cast_fu_358_p1();
    void thread_y_2_fu_404_p2();
    void thread_y_cast1_fu_387_p1();
    void thread_y_cast2_fu_391_p1();
    void thread_y_cast_fu_395_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
