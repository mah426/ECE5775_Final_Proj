// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_HH_
#define _dut_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_max_pool.h"
#include "dut_reshape.h"
#include "dut_conv.h"
#include "dut_dense.h"
#include "dut_pad.h"
#include "dut_fadd_32ns_32ns_32_5_full_dsp.h"
#include "dut_fmul_32ns_32ns_32_4_max_dsp.h"
#include "dut_sitofp_32ns_32_6.h"
#include "dut_fcmp_32ns_32ns_1_1.h"
#include "dut_threshold1_V_0.h"
#include "dut_threshold1_V_1.h"
#include "dut_threshold2_V_0.h"
#include "dut_threshold2_V_1.h"
#include "dut_w_fc1.h"
#include "dut_b_fc1.h"
#include "dut_mem_conv1_0.h"
#include "dut_input_0.h"
#include "dut_input_1.h"

namespace ap_rtl {

struct dut : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > strm_in_V_V_dout;
    sc_in< sc_logic > strm_in_V_V_empty_n;
    sc_out< sc_logic > strm_in_V_V_read;
    sc_out< sc_lv<32> > strm_out_V_V_din;
    sc_in< sc_logic > strm_out_V_V_full_n;
    sc_out< sc_logic > strm_out_V_V_write;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<5> > ap_var_for_const2;


    // Module declarations
    dut(sc_module_name name);
    SC_HAS_PROCESS(dut);

    ~dut();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dut_threshold1_V_0* threshold1_V_0_U;
    dut_threshold1_V_1* threshold1_V_1_U;
    dut_threshold2_V_0* threshold2_V_0_U;
    dut_threshold2_V_1* threshold2_V_1_U;
    dut_w_fc1* w_fc1_U;
    dut_b_fc1* b_fc1_U;
    dut_mem_conv1_0* mem_conv1_0_U;
    dut_mem_conv1_0* mem_conv1_1_U;
    dut_mem_conv1_0* mem_conv2_0_U;
    dut_mem_conv1_0* mem_conv2_1_U;
    dut_input_0* input_0_U;
    dut_input_1* input_1_U;
    dut_max_pool* grp_dut_max_pool_fu_336;
    dut_reshape* grp_dut_reshape_fu_350;
    dut_conv* grp_dut_conv_fu_356;
    dut_dense* grp_dut_dense_fu_386;
    dut_pad* grp_dut_pad_fu_396;
    dut_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_fadd_32ns_32ns_32_5_full_dsp_U50;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U51;
    dut_sitofp_32ns_32_6<1,6,32,32>* dut_sitofp_32ns_32_6_U52;
    dut_fcmp_32ns_32ns_1_1<1,1,32,32,1>* dut_fcmp_32ns_32ns_1_1_U53;
    sc_signal< sc_lv<52> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_67;
    sc_signal< sc_lv<8> > threshold1_V_0_q0;
    sc_signal< sc_lv<8> > threshold1_V_1_q0;
    sc_signal< sc_lv<8> > threshold2_V_0_q0;
    sc_signal< sc_lv<8> > threshold2_V_1_q0;
    sc_signal< sc_lv<17> > w_fc1_address0;
    sc_signal< sc_logic > w_fc1_ce0;
    sc_signal< sc_lv<1> > w_fc1_q0;
    sc_signal< sc_lv<8> > b_fc1_address0;
    sc_signal< sc_logic > b_fc1_ce0;
    sc_signal< sc_lv<32> > b_fc1_q0;
    sc_signal< sc_logic > strm_in_V_V_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_134;
    sc_signal< sc_lv<1> > exitcond1_fu_442_p2;
    sc_signal< sc_logic > strm_out_V_V_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st51_fsm_50;
    sc_signal< bool > ap_sig_146;
    sc_signal< sc_lv<1> > exitcond_i_fu_626_p2;
    sc_signal< sc_lv<32> > grp_fu_416_p2;
    sc_signal< sc_lv<32> > reg_431;
    sc_signal< sc_logic > ap_sig_cseq_ST_st33_fsm_32;
    sc_signal< bool > ap_sig_159;
    sc_signal< sc_logic > ap_sig_cseq_ST_st42_fsm_41;
    sc_signal< bool > ap_sig_166;
    sc_signal< sc_lv<32> > grp_fu_410_p2;
    sc_signal< sc_lv<32> > reg_436;
    sc_signal< sc_logic > ap_sig_cseq_ST_st38_fsm_37;
    sc_signal< bool > ap_sig_176;
    sc_signal< sc_logic > ap_sig_cseq_ST_st47_fsm_46;
    sc_signal< bool > ap_sig_183;
    sc_signal< sc_lv<4> > i_2_fu_448_p2;
    sc_signal< sc_lv<4> > i_2_reg_653;
    sc_signal< bool > ap_sig_190;
    sc_signal< sc_lv<32> > tmp_V_1_reg_658;
    sc_signal< sc_lv<8> > tmp_s_fu_458_p3;
    sc_signal< sc_lv<8> > tmp_s_reg_663;
    sc_signal< sc_lv<6> > j_fu_480_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_205;
    sc_signal< sc_lv<17> > n_i_cast9_fu_504_p1;
    sc_signal< sc_lv<17> > n_i_cast9_reg_676;
    sc_signal< sc_logic > ap_sig_cseq_ST_st17_fsm_16;
    sc_signal< bool > ap_sig_214;
    sc_signal< sc_lv<9> > n_fu_514_p2;
    sc_signal< sc_lv<9> > n_reg_684;
    sc_signal< sc_lv<10> > m_fu_526_p2;
    sc_signal< sc_lv<10> > m_reg_692;
    sc_signal< sc_logic > ap_sig_cseq_ST_st18_fsm_17;
    sc_signal< bool > ap_sig_225;
    sc_signal< sc_lv<1> > exitcond_i1_fu_520_p2;
    sc_signal< sc_lv<1> > tmp_15_i_fu_565_p2;
    sc_signal< sc_lv<1> > tmp_15_i_reg_707;
    sc_signal< sc_logic > ap_sig_cseq_ST_st19_fsm_18;
    sc_signal< bool > ap_sig_241;
    sc_signal< sc_logic > ap_sig_cseq_ST_st20_fsm_19;
    sc_signal< bool > ap_sig_250;
    sc_signal< sc_lv<32> > grp_fu_423_p1;
    sc_signal< sc_lv<32> > tmp_17_i_reg_717;
    sc_signal< sc_logic > ap_sig_cseq_ST_st25_fsm_24;
    sc_signal< bool > ap_sig_259;
    sc_signal< sc_logic > ap_sig_cseq_ST_st30_fsm_29;
    sc_signal< bool > ap_sig_267;
    sc_signal< sc_lv<64> > tmp_12_i_fu_575_p1;
    sc_signal< sc_lv<64> > tmp_12_i_reg_727;
    sc_signal< sc_logic > ap_sig_cseq_ST_st41_fsm_40;
    sc_signal< bool > ap_sig_276;
    sc_signal< sc_lv<32> > b_fc1_load_reg_737;
    sc_signal< sc_lv<1> > tmp_5_fu_616_p2;
    sc_signal< sc_lv<1> > tmp_5_reg_742;
    sc_signal< sc_logic > ap_sig_cseq_ST_st48_fsm_47;
    sc_signal< bool > ap_sig_288;
    sc_signal< sc_lv<32> > max_id_V_cast4_fu_622_p1;
    sc_signal< sc_lv<32> > max_id_V_cast4_reg_747;
    sc_signal< bool > ap_sig_294;
    sc_signal< sc_lv<4> > i_3_fu_637_p2;
    sc_signal< sc_lv<4> > i_3_reg_760;
    sc_signal< sc_lv<32> > phitmp_i_fu_643_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st52_fsm_51;
    sc_signal< bool > ap_sig_309;
    sc_signal< sc_lv<12> > mem_conv1_0_address0;
    sc_signal< sc_logic > mem_conv1_0_ce0;
    sc_signal< sc_logic > mem_conv1_0_we0;
    sc_signal< sc_lv<1> > mem_conv1_0_d0;
    sc_signal< sc_lv<1> > mem_conv1_0_q0;
    sc_signal< sc_lv<12> > mem_conv1_0_address1;
    sc_signal< sc_logic > mem_conv1_0_ce1;
    sc_signal< sc_logic > mem_conv1_0_we1;
    sc_signal< sc_lv<1> > mem_conv1_0_d1;
    sc_signal< sc_lv<1> > mem_conv1_0_q1;
    sc_signal< sc_lv<12> > mem_conv1_1_address0;
    sc_signal< sc_logic > mem_conv1_1_ce0;
    sc_signal< sc_logic > mem_conv1_1_we0;
    sc_signal< sc_lv<1> > mem_conv1_1_d0;
    sc_signal< sc_lv<1> > mem_conv1_1_q0;
    sc_signal< sc_lv<12> > mem_conv1_1_address1;
    sc_signal< sc_logic > mem_conv1_1_ce1;
    sc_signal< sc_logic > mem_conv1_1_we1;
    sc_signal< sc_lv<1> > mem_conv1_1_q1;
    sc_signal< sc_lv<12> > mem_conv2_0_address0;
    sc_signal< sc_logic > mem_conv2_0_ce0;
    sc_signal< sc_logic > mem_conv2_0_we0;
    sc_signal< sc_lv<1> > mem_conv2_0_d0;
    sc_signal< sc_lv<1> > mem_conv2_0_q0;
    sc_signal< sc_lv<12> > mem_conv2_0_address1;
    sc_signal< sc_logic > mem_conv2_0_ce1;
    sc_signal< sc_logic > mem_conv2_0_we1;
    sc_signal< sc_lv<1> > mem_conv2_0_q1;
    sc_signal< sc_lv<12> > mem_conv2_1_address0;
    sc_signal< sc_logic > mem_conv2_1_ce0;
    sc_signal< sc_logic > mem_conv2_1_we0;
    sc_signal< sc_lv<1> > mem_conv2_1_d0;
    sc_signal< sc_lv<1> > mem_conv2_1_q0;
    sc_signal< sc_lv<12> > mem_conv2_1_address1;
    sc_signal< sc_logic > mem_conv2_1_ce1;
    sc_signal< sc_logic > mem_conv2_1_we1;
    sc_signal< sc_lv<1> > mem_conv2_1_q1;
    sc_signal< sc_lv<12> > input_0_address0;
    sc_signal< sc_logic > input_0_ce0;
    sc_signal< sc_logic > input_0_we0;
    sc_signal< sc_lv<1> > input_0_d0;
    sc_signal< sc_lv<1> > input_0_q0;
    sc_signal< sc_lv<1> > input_1_q0;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_ap_start;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_ap_done;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_ap_idle;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_ap_ready;
    sc_signal< sc_lv<12> > grp_dut_max_pool_fu_336_input_0_address0;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_input_0_ce0;
    sc_signal< sc_lv<1> > grp_dut_max_pool_fu_336_input_0_q0;
    sc_signal< sc_lv<12> > grp_dut_max_pool_fu_336_input_0_address1;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_input_0_ce1;
    sc_signal< sc_lv<1> > grp_dut_max_pool_fu_336_input_0_q1;
    sc_signal< sc_lv<12> > grp_dut_max_pool_fu_336_input_1_address0;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_input_1_ce0;
    sc_signal< sc_lv<1> > grp_dut_max_pool_fu_336_input_1_q0;
    sc_signal< sc_lv<12> > grp_dut_max_pool_fu_336_input_1_address1;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_input_1_ce1;
    sc_signal< sc_lv<1> > grp_dut_max_pool_fu_336_input_1_q1;
    sc_signal< sc_lv<12> > grp_dut_max_pool_fu_336_output_0_address0;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_output_0_ce0;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_output_0_we0;
    sc_signal< sc_lv<1> > grp_dut_max_pool_fu_336_output_0_d0;
    sc_signal< sc_lv<12> > grp_dut_max_pool_fu_336_output_0_address1;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_output_0_ce1;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_output_0_we1;
    sc_signal< sc_lv<1> > grp_dut_max_pool_fu_336_output_0_d1;
    sc_signal< sc_lv<12> > grp_dut_max_pool_fu_336_output_1_address0;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_output_1_ce0;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_output_1_we0;
    sc_signal< sc_lv<1> > grp_dut_max_pool_fu_336_output_1_d0;
    sc_signal< sc_lv<12> > grp_dut_max_pool_fu_336_output_1_address1;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_output_1_ce1;
    sc_signal< sc_logic > grp_dut_max_pool_fu_336_output_1_we1;
    sc_signal< sc_lv<1> > grp_dut_max_pool_fu_336_output_1_d1;
    sc_signal< sc_lv<7> > grp_dut_max_pool_fu_336_M;
    sc_signal< sc_lv<6> > grp_dut_max_pool_fu_336_I;
    sc_signal< sc_logic > grp_dut_reshape_fu_350_ap_start;
    sc_signal< sc_logic > grp_dut_reshape_fu_350_ap_done;
    sc_signal< sc_logic > grp_dut_reshape_fu_350_ap_idle;
    sc_signal< sc_logic > grp_dut_reshape_fu_350_ap_ready;
    sc_signal< sc_lv<12> > grp_dut_reshape_fu_350_input_0_address0;
    sc_signal< sc_logic > grp_dut_reshape_fu_350_input_0_ce0;
    sc_signal< sc_lv<12> > grp_dut_reshape_fu_350_input_0_address1;
    sc_signal< sc_logic > grp_dut_reshape_fu_350_input_0_ce1;
    sc_signal< sc_lv<12> > grp_dut_reshape_fu_350_output_0_address0;
    sc_signal< sc_logic > grp_dut_reshape_fu_350_output_0_ce0;
    sc_signal< sc_logic > grp_dut_reshape_fu_350_output_0_we0;
    sc_signal< sc_lv<1> > grp_dut_reshape_fu_350_output_0_d0;
    sc_signal< sc_lv<12> > grp_dut_reshape_fu_350_output_0_address1;
    sc_signal< sc_logic > grp_dut_reshape_fu_350_output_0_ce1;
    sc_signal< sc_logic > grp_dut_reshape_fu_350_output_0_we1;
    sc_signal< sc_lv<1> > grp_dut_reshape_fu_350_output_0_d1;
    sc_signal< sc_logic > grp_dut_conv_fu_356_ap_start;
    sc_signal< sc_logic > grp_dut_conv_fu_356_ap_done;
    sc_signal< sc_logic > grp_dut_conv_fu_356_ap_idle;
    sc_signal< sc_logic > grp_dut_conv_fu_356_ap_ready;
    sc_signal< sc_lv<12> > grp_dut_conv_fu_356_input_0_address0;
    sc_signal< sc_logic > grp_dut_conv_fu_356_input_0_ce0;
    sc_signal< sc_lv<1> > grp_dut_conv_fu_356_input_0_q0;
    sc_signal< sc_lv<12> > grp_dut_conv_fu_356_input_1_address0;
    sc_signal< sc_logic > grp_dut_conv_fu_356_input_1_ce0;
    sc_signal< sc_lv<1> > grp_dut_conv_fu_356_input_1_q0;
    sc_signal< sc_lv<12> > grp_dut_conv_fu_356_output_0_address0;
    sc_signal< sc_logic > grp_dut_conv_fu_356_output_0_ce0;
    sc_signal< sc_logic > grp_dut_conv_fu_356_output_0_we0;
    sc_signal< sc_lv<1> > grp_dut_conv_fu_356_output_0_d0;
    sc_signal< sc_lv<12> > grp_dut_conv_fu_356_output_1_address0;
    sc_signal< sc_logic > grp_dut_conv_fu_356_output_1_ce0;
    sc_signal< sc_logic > grp_dut_conv_fu_356_output_1_we0;
    sc_signal< sc_lv<1> > grp_dut_conv_fu_356_output_1_d0;
    sc_signal< sc_lv<12> > grp_dut_conv_fu_356_threshold_0_V_address0;
    sc_signal< sc_logic > grp_dut_conv_fu_356_threshold_0_V_ce0;
    sc_signal< sc_lv<8> > grp_dut_conv_fu_356_threshold_0_V_q0;
    sc_signal< sc_lv<12> > grp_dut_conv_fu_356_threshold_1_V_address0;
    sc_signal< sc_logic > grp_dut_conv_fu_356_threshold_1_V_ce0;
    sc_signal< sc_lv<8> > grp_dut_conv_fu_356_threshold_1_V_q0;
    sc_signal< sc_lv<7> > grp_dut_conv_fu_356_M;
    sc_signal< sc_lv<7> > grp_dut_conv_fu_356_N;
    sc_signal< sc_lv<6> > grp_dut_conv_fu_356_I;
    sc_signal< sc_lv<1> > grp_dut_conv_fu_356_L;
    sc_signal< sc_logic > grp_dut_dense_fu_386_ap_start;
    sc_signal< sc_logic > grp_dut_dense_fu_386_ap_done;
    sc_signal< sc_logic > grp_dut_dense_fu_386_ap_idle;
    sc_signal< sc_logic > grp_dut_dense_fu_386_ap_ready;
    sc_signal< sc_lv<12> > grp_dut_dense_fu_386_input_0_address0;
    sc_signal< sc_logic > grp_dut_dense_fu_386_input_0_ce0;
    sc_signal< sc_lv<12> > grp_dut_dense_fu_386_output_0_address0;
    sc_signal< sc_logic > grp_dut_dense_fu_386_output_0_ce0;
    sc_signal< sc_logic > grp_dut_dense_fu_386_output_0_we0;
    sc_signal< sc_lv<1> > grp_dut_dense_fu_386_output_0_d0;
    sc_signal< sc_logic > grp_dut_pad_fu_396_ap_start;
    sc_signal< sc_logic > grp_dut_pad_fu_396_ap_done;
    sc_signal< sc_logic > grp_dut_pad_fu_396_ap_idle;
    sc_signal< sc_logic > grp_dut_pad_fu_396_ap_ready;
    sc_signal< sc_lv<12> > grp_dut_pad_fu_396_input_0_address0;
    sc_signal< sc_logic > grp_dut_pad_fu_396_input_0_ce0;
    sc_signal< sc_lv<1> > grp_dut_pad_fu_396_input_0_q0;
    sc_signal< sc_lv<12> > grp_dut_pad_fu_396_input_1_address0;
    sc_signal< sc_logic > grp_dut_pad_fu_396_input_1_ce0;
    sc_signal< sc_lv<1> > grp_dut_pad_fu_396_input_1_q0;
    sc_signal< sc_lv<12> > grp_dut_pad_fu_396_output_0_address0;
    sc_signal< sc_logic > grp_dut_pad_fu_396_output_0_ce0;
    sc_signal< sc_logic > grp_dut_pad_fu_396_output_0_we0;
    sc_signal< sc_lv<1> > grp_dut_pad_fu_396_output_0_d0;
    sc_signal< sc_lv<12> > grp_dut_pad_fu_396_output_1_address0;
    sc_signal< sc_logic > grp_dut_pad_fu_396_output_1_ce0;
    sc_signal< sc_logic > grp_dut_pad_fu_396_output_1_we0;
    sc_signal< sc_lv<1> > grp_dut_pad_fu_396_output_1_d0;
    sc_signal< sc_lv<7> > grp_dut_pad_fu_396_M;
    sc_signal< sc_lv<6> > grp_dut_pad_fu_396_I;
    sc_signal< sc_lv<4> > i_reg_255;
    sc_signal< sc_lv<1> > exitcond_fu_474_p2;
    sc_signal< sc_lv<6> > Hi_assign_reg_266;
    sc_signal< sc_lv<9> > n_i_reg_277;
    sc_signal< sc_logic > ap_sig_cseq_ST_st16_fsm_15;
    sc_signal< bool > ap_sig_529;
    sc_signal< sc_logic > ap_sig_cseq_ST_st49_fsm_48;
    sc_signal< bool > ap_sig_539;
    sc_signal< sc_lv<32> > one_out_i_reg_289;
    sc_signal< sc_lv<1> > exitcond1_i_fu_508_p2;
    sc_signal< sc_lv<10> > m_i_reg_301;
    sc_signal< sc_lv<32> > output_V_reg_312;
    sc_signal< sc_logic > ap_sig_cseq_ST_st50_fsm_49;
    sc_signal< bool > ap_sig_556;
    sc_signal< sc_lv<4> > max_id_V_reg_325;
    sc_signal< sc_logic > ap_reg_grp_dut_max_pool_fu_336_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_571;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_578;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_586;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_593;
    sc_signal< sc_logic > ap_reg_grp_dut_reshape_fu_350_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st15_fsm_14;
    sc_signal< bool > ap_sig_606;
    sc_signal< sc_logic > ap_reg_grp_dut_conv_fu_356_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_615;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_622;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_630;
    sc_signal< sc_logic > ap_sig_cseq_ST_st12_fsm_11;
    sc_signal< bool > ap_sig_637;
    sc_signal< sc_logic > ap_reg_grp_dut_dense_fu_386_ap_start;
    sc_signal< sc_logic > ap_reg_grp_dut_pad_fu_396_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_688;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_696;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_703;
    sc_signal< sc_lv<64> > newIndex1_fu_499_p1;
    sc_signal< sc_lv<64> > newIndex3_i_fu_549_p1;
    sc_signal< sc_lv<64> > tmp_14_i_fu_554_p1;
    sc_signal< sc_lv<64> > newIndex18_i_fu_632_p1;
    sc_signal< sc_lv<32> > grp_fu_410_p0;
    sc_signal< sc_lv<32> > grp_fu_410_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st26_fsm_25;
    sc_signal< bool > ap_sig_727;
    sc_signal< sc_logic > ap_sig_cseq_ST_st34_fsm_33;
    sc_signal< bool > ap_sig_734;
    sc_signal< sc_logic > ap_sig_cseq_ST_st43_fsm_42;
    sc_signal< bool > ap_sig_741;
    sc_signal< sc_lv<32> > grp_fu_416_p0;
    sc_signal< sc_lv<32> > grp_fu_416_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st39_fsm_38;
    sc_signal< bool > ap_sig_753;
    sc_signal< sc_lv<32> > grp_fu_423_p0;
    sc_signal< sc_lv<3> > tmp_12_fu_454_p1;
    sc_signal< sc_lv<32> > Hi_assign_cast1_fu_470_p1;
    sc_signal< sc_lv<8> > Hi_assign_cast_fu_466_p1;
    sc_signal< sc_lv<8> > tmp_7_fu_494_p2;
    sc_signal< sc_lv<9> > tmp_15_fu_532_p1;
    sc_signal< sc_lv<17> > tmp_9_i_fu_536_p3;
    sc_signal< sc_lv<17> > w_index_fu_544_p2;
    sc_signal< sc_lv<1> > tmp_fu_559_p2;
    sc_signal< sc_lv<32> > biased_i_to_int_fu_580_p1;
    sc_signal< sc_lv<8> > tmp_1_fu_584_p4;
    sc_signal< sc_lv<23> > tmp_14_fu_594_p1;
    sc_signal< sc_lv<1> > notrhs_fu_604_p2;
    sc_signal< sc_lv<1> > notlhs_fu_598_p2;
    sc_signal< sc_lv<1> > tmp_3_fu_610_p2;
    sc_signal< sc_lv<1> > tmp_4_fu_426_p2;
    sc_signal< sc_lv<52> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<52> ap_ST_st1_fsm_0;
    static const sc_lv<52> ap_ST_st2_fsm_1;
    static const sc_lv<52> ap_ST_st3_fsm_2;
    static const sc_lv<52> ap_ST_st4_fsm_3;
    static const sc_lv<52> ap_ST_st5_fsm_4;
    static const sc_lv<52> ap_ST_st6_fsm_5;
    static const sc_lv<52> ap_ST_st7_fsm_6;
    static const sc_lv<52> ap_ST_st8_fsm_7;
    static const sc_lv<52> ap_ST_st9_fsm_8;
    static const sc_lv<52> ap_ST_st10_fsm_9;
    static const sc_lv<52> ap_ST_st11_fsm_10;
    static const sc_lv<52> ap_ST_st12_fsm_11;
    static const sc_lv<52> ap_ST_st13_fsm_12;
    static const sc_lv<52> ap_ST_st14_fsm_13;
    static const sc_lv<52> ap_ST_st15_fsm_14;
    static const sc_lv<52> ap_ST_st16_fsm_15;
    static const sc_lv<52> ap_ST_st17_fsm_16;
    static const sc_lv<52> ap_ST_st18_fsm_17;
    static const sc_lv<52> ap_ST_st19_fsm_18;
    static const sc_lv<52> ap_ST_st20_fsm_19;
    static const sc_lv<52> ap_ST_st21_fsm_20;
    static const sc_lv<52> ap_ST_st22_fsm_21;
    static const sc_lv<52> ap_ST_st23_fsm_22;
    static const sc_lv<52> ap_ST_st24_fsm_23;
    static const sc_lv<52> ap_ST_st25_fsm_24;
    static const sc_lv<52> ap_ST_st26_fsm_25;
    static const sc_lv<52> ap_ST_st27_fsm_26;
    static const sc_lv<52> ap_ST_st28_fsm_27;
    static const sc_lv<52> ap_ST_st29_fsm_28;
    static const sc_lv<52> ap_ST_st30_fsm_29;
    static const sc_lv<52> ap_ST_st31_fsm_30;
    static const sc_lv<52> ap_ST_st32_fsm_31;
    static const sc_lv<52> ap_ST_st33_fsm_32;
    static const sc_lv<52> ap_ST_st34_fsm_33;
    static const sc_lv<52> ap_ST_st35_fsm_34;
    static const sc_lv<52> ap_ST_st36_fsm_35;
    static const sc_lv<52> ap_ST_st37_fsm_36;
    static const sc_lv<52> ap_ST_st38_fsm_37;
    static const sc_lv<52> ap_ST_st39_fsm_38;
    static const sc_lv<52> ap_ST_st40_fsm_39;
    static const sc_lv<52> ap_ST_st41_fsm_40;
    static const sc_lv<52> ap_ST_st42_fsm_41;
    static const sc_lv<52> ap_ST_st43_fsm_42;
    static const sc_lv<52> ap_ST_st44_fsm_43;
    static const sc_lv<52> ap_ST_st45_fsm_44;
    static const sc_lv<52> ap_ST_st46_fsm_45;
    static const sc_lv<52> ap_ST_st47_fsm_46;
    static const sc_lv<52> ap_ST_st48_fsm_47;
    static const sc_lv<52> ap_ST_st49_fsm_48;
    static const sc_lv<52> ap_ST_st50_fsm_49;
    static const sc_lv<52> ap_ST_st51_fsm_50;
    static const sc_lv<52> ap_ST_st52_fsm_51;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<7> ap_const_lv7_10;
    static const sc_lv<7> ap_const_lv7_20;
    static const sc_lv<6> ap_const_lv6_10;
    static const sc_lv<6> ap_const_lv6_8;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<6> ap_const_lv6_12;
    static const sc_lv<6> ap_const_lv6_A;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_C4000000;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_40000000;
    static const sc_lv<32> ap_const_lv32_3D800000;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<10> ap_const_lv10_200;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<5> ap_const_lv5_2;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_Hi_assign_cast1_fu_470_p1();
    void thread_Hi_assign_cast_fu_466_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_134();
    void thread_ap_sig_146();
    void thread_ap_sig_159();
    void thread_ap_sig_166();
    void thread_ap_sig_176();
    void thread_ap_sig_183();
    void thread_ap_sig_190();
    void thread_ap_sig_205();
    void thread_ap_sig_214();
    void thread_ap_sig_225();
    void thread_ap_sig_241();
    void thread_ap_sig_250();
    void thread_ap_sig_259();
    void thread_ap_sig_267();
    void thread_ap_sig_276();
    void thread_ap_sig_288();
    void thread_ap_sig_294();
    void thread_ap_sig_309();
    void thread_ap_sig_529();
    void thread_ap_sig_539();
    void thread_ap_sig_556();
    void thread_ap_sig_571();
    void thread_ap_sig_578();
    void thread_ap_sig_586();
    void thread_ap_sig_593();
    void thread_ap_sig_606();
    void thread_ap_sig_615();
    void thread_ap_sig_622();
    void thread_ap_sig_630();
    void thread_ap_sig_637();
    void thread_ap_sig_67();
    void thread_ap_sig_688();
    void thread_ap_sig_696();
    void thread_ap_sig_703();
    void thread_ap_sig_727();
    void thread_ap_sig_734();
    void thread_ap_sig_741();
    void thread_ap_sig_753();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st12_fsm_11();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st15_fsm_14();
    void thread_ap_sig_cseq_ST_st16_fsm_15();
    void thread_ap_sig_cseq_ST_st17_fsm_16();
    void thread_ap_sig_cseq_ST_st18_fsm_17();
    void thread_ap_sig_cseq_ST_st19_fsm_18();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st20_fsm_19();
    void thread_ap_sig_cseq_ST_st25_fsm_24();
    void thread_ap_sig_cseq_ST_st26_fsm_25();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st30_fsm_29();
    void thread_ap_sig_cseq_ST_st33_fsm_32();
    void thread_ap_sig_cseq_ST_st34_fsm_33();
    void thread_ap_sig_cseq_ST_st38_fsm_37();
    void thread_ap_sig_cseq_ST_st39_fsm_38();
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
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_b_fc1_address0();
    void thread_b_fc1_ce0();
    void thread_biased_i_to_int_fu_580_p1();
    void thread_exitcond1_fu_442_p2();
    void thread_exitcond1_i_fu_508_p2();
    void thread_exitcond_fu_474_p2();
    void thread_exitcond_i1_fu_520_p2();
    void thread_exitcond_i_fu_626_p2();
    void thread_grp_dut_conv_fu_356_I();
    void thread_grp_dut_conv_fu_356_L();
    void thread_grp_dut_conv_fu_356_M();
    void thread_grp_dut_conv_fu_356_N();
    void thread_grp_dut_conv_fu_356_ap_start();
    void thread_grp_dut_conv_fu_356_input_0_q0();
    void thread_grp_dut_conv_fu_356_input_1_q0();
    void thread_grp_dut_conv_fu_356_threshold_0_V_q0();
    void thread_grp_dut_conv_fu_356_threshold_1_V_q0();
    void thread_grp_dut_dense_fu_386_ap_start();
    void thread_grp_dut_max_pool_fu_336_I();
    void thread_grp_dut_max_pool_fu_336_M();
    void thread_grp_dut_max_pool_fu_336_ap_start();
    void thread_grp_dut_max_pool_fu_336_input_0_q0();
    void thread_grp_dut_max_pool_fu_336_input_0_q1();
    void thread_grp_dut_max_pool_fu_336_input_1_q0();
    void thread_grp_dut_max_pool_fu_336_input_1_q1();
    void thread_grp_dut_pad_fu_396_I();
    void thread_grp_dut_pad_fu_396_M();
    void thread_grp_dut_pad_fu_396_ap_start();
    void thread_grp_dut_pad_fu_396_input_0_q0();
    void thread_grp_dut_pad_fu_396_input_1_q0();
    void thread_grp_dut_reshape_fu_350_ap_start();
    void thread_grp_fu_410_p0();
    void thread_grp_fu_410_p1();
    void thread_grp_fu_416_p0();
    void thread_grp_fu_416_p1();
    void thread_grp_fu_423_p0();
    void thread_i_2_fu_448_p2();
    void thread_i_3_fu_637_p2();
    void thread_input_0_address0();
    void thread_input_0_ce0();
    void thread_input_0_d0();
    void thread_input_0_we0();
    void thread_j_fu_480_p2();
    void thread_m_fu_526_p2();
    void thread_max_id_V_cast4_fu_622_p1();
    void thread_mem_conv1_0_address0();
    void thread_mem_conv1_0_address1();
    void thread_mem_conv1_0_ce0();
    void thread_mem_conv1_0_ce1();
    void thread_mem_conv1_0_d0();
    void thread_mem_conv1_0_d1();
    void thread_mem_conv1_0_we0();
    void thread_mem_conv1_0_we1();
    void thread_mem_conv1_1_address0();
    void thread_mem_conv1_1_address1();
    void thread_mem_conv1_1_ce0();
    void thread_mem_conv1_1_ce1();
    void thread_mem_conv1_1_d0();
    void thread_mem_conv1_1_we0();
    void thread_mem_conv1_1_we1();
    void thread_mem_conv2_0_address0();
    void thread_mem_conv2_0_address1();
    void thread_mem_conv2_0_ce0();
    void thread_mem_conv2_0_ce1();
    void thread_mem_conv2_0_d0();
    void thread_mem_conv2_0_we0();
    void thread_mem_conv2_0_we1();
    void thread_mem_conv2_1_address0();
    void thread_mem_conv2_1_address1();
    void thread_mem_conv2_1_ce0();
    void thread_mem_conv2_1_ce1();
    void thread_mem_conv2_1_d0();
    void thread_mem_conv2_1_we0();
    void thread_mem_conv2_1_we1();
    void thread_n_fu_514_p2();
    void thread_n_i_cast9_fu_504_p1();
    void thread_newIndex18_i_fu_632_p1();
    void thread_newIndex1_fu_499_p1();
    void thread_newIndex3_i_fu_549_p1();
    void thread_notlhs_fu_598_p2();
    void thread_notrhs_fu_604_p2();
    void thread_phitmp_i_fu_643_p3();
    void thread_strm_in_V_V_blk_n();
    void thread_strm_in_V_V_read();
    void thread_strm_out_V_V_blk_n();
    void thread_strm_out_V_V_din();
    void thread_strm_out_V_V_write();
    void thread_tmp_12_fu_454_p1();
    void thread_tmp_12_i_fu_575_p1();
    void thread_tmp_14_fu_594_p1();
    void thread_tmp_14_i_fu_554_p1();
    void thread_tmp_15_fu_532_p1();
    void thread_tmp_15_i_fu_565_p2();
    void thread_tmp_1_fu_584_p4();
    void thread_tmp_3_fu_610_p2();
    void thread_tmp_5_fu_616_p2();
    void thread_tmp_7_fu_494_p2();
    void thread_tmp_9_i_fu_536_p3();
    void thread_tmp_fu_559_p2();
    void thread_tmp_s_fu_458_p3();
    void thread_w_fc1_address0();
    void thread_w_fc1_ce0();
    void thread_w_index_fu_544_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif