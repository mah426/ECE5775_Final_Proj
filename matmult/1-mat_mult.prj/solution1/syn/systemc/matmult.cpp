// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "matmult.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic matmult::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic matmult::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<12> matmult::ap_ST_st1_fsm_0 = "1";
const sc_lv<12> matmult::ap_ST_st2_fsm_1 = "10";
const sc_lv<12> matmult::ap_ST_st3_fsm_2 = "100";
const sc_lv<12> matmult::ap_ST_st4_fsm_3 = "1000";
const sc_lv<12> matmult::ap_ST_st5_fsm_4 = "10000";
const sc_lv<12> matmult::ap_ST_st6_fsm_5 = "100000";
const sc_lv<12> matmult::ap_ST_st7_fsm_6 = "1000000";
const sc_lv<12> matmult::ap_ST_st8_fsm_7 = "10000000";
const sc_lv<12> matmult::ap_ST_st9_fsm_8 = "100000000";
const sc_lv<12> matmult::ap_ST_st10_fsm_9 = "1000000000";
const sc_lv<12> matmult::ap_ST_st11_fsm_10 = "10000000000";
const sc_lv<12> matmult::ap_ST_st12_fsm_11 = "100000000000";
const sc_lv<32> matmult::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> matmult::ap_const_lv1_1 = "1";
const sc_lv<32> matmult::ap_const_lv32_1 = "1";
const sc_lv<32> matmult::ap_const_lv32_2 = "10";
const sc_lv<1> matmult::ap_const_lv1_0 = "0";
const sc_lv<32> matmult::ap_const_lv32_3 = "11";
const sc_lv<32> matmult::ap_const_lv32_4 = "100";
const sc_lv<32> matmult::ap_const_lv32_A = "1010";
const sc_lv<7> matmult::ap_const_lv7_0 = "0000000";
const sc_lv<14> matmult::ap_const_lv14_0 = "00000000000000";
const sc_lv<32> matmult::ap_const_lv32_B = "1011";
const sc_lv<14> matmult::ap_const_lv14_64 = "1100100";
const sc_lv<7> matmult::ap_const_lv7_64 = "1100100";
const sc_lv<7> matmult::ap_const_lv7_1 = "1";
const sc_lv<32> matmult::ap_const_lv32_5 = "101";

matmult::matmult(sc_module_name name) : sc_module(name), mVcdFile(0) {
    matmult_mul_32s_32s_32_6_U1 = new matmult_mul_32s_32s_32_6<1,6,32,32,32>("matmult_mul_32s_32s_32_6_U1");
    matmult_mul_32s_32s_32_6_U1->clk(ap_clk);
    matmult_mul_32s_32s_32_6_U1->reset(ap_rst);
    matmult_mul_32s_32s_32_6_U1->din0(b_V_load_reg_276);
    matmult_mul_32s_32s_32_6_U1->din1(a_V_load_reg_271);
    matmult_mul_32s_32s_32_6_U1->ce(ap_var_for_const0);
    matmult_mul_32s_32s_32_6_U1->dout(grp_fu_207_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_a_V_address0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_6_cast_fu_186_p1 );

    SC_METHOD(thread_a_V_ce0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond1_fu_125_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond1_fu_125_p2 );

    SC_METHOD(thread_ap_sig_106);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_116);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_143);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_194);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_27);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_61);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_72);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_89);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st11_fsm_10);
    sensitive << ( ap_sig_116 );

    SC_METHOD(thread_ap_sig_cseq_ST_st12_fsm_11);
    sensitive << ( ap_sig_143 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_27 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_61 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_72 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_89 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_4);
    sensitive << ( ap_sig_106 );

    SC_METHOD(thread_ap_sig_cseq_ST_st6_fsm_5);
    sensitive << ( ap_sig_194 );

    SC_METHOD(thread_b_V_address0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_8_cast_fu_202_p1 );

    SC_METHOD(thread_b_V_ce0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_exitcond1_fu_125_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( i_reg_63 );

    SC_METHOD(thread_exitcond2_fu_137_p2);
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( j_reg_86 );

    SC_METHOD(thread_exitcond_fu_164_p2);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( k_reg_97 );

    SC_METHOD(thread_i_1_fu_131_p2);
    sensitive << ( i_reg_63 );

    SC_METHOD(thread_j_1_fu_143_p2);
    sensitive << ( j_reg_86 );

    SC_METHOD(thread_k_1_fu_170_p2);
    sensitive << ( k_reg_97 );

    SC_METHOD(thread_next_mul2_fu_119_p2);
    sensitive << ( phi_mul1_reg_74 );

    SC_METHOD(thread_next_mul_fu_191_p2);
    sensitive << ( phi_mul_reg_108 );

    SC_METHOD(thread_out_V_address0);
    sensitive << ( out_V_addr_reg_243 );
    sensitive << ( ap_sig_cseq_ST_st11_fsm_10 );
    sensitive << ( ap_sig_cseq_ST_st12_fsm_11 );

    SC_METHOD(thread_out_V_ce0);
    sensitive << ( ap_sig_cseq_ST_st11_fsm_10 );
    sensitive << ( ap_sig_cseq_ST_st12_fsm_11 );

    SC_METHOD(thread_out_V_d0);
    sensitive << ( out_V_q0 );
    sensitive << ( p_s_reg_281 );
    sensitive << ( ap_sig_cseq_ST_st12_fsm_11 );

    SC_METHOD(thread_out_V_we0);
    sensitive << ( ap_sig_cseq_ST_st12_fsm_11 );

    SC_METHOD(thread_tmp_2_cast_fu_149_p1);
    sensitive << ( j_reg_86 );

    SC_METHOD(thread_tmp_3_cast_fu_159_p1);
    sensitive << ( tmp_3_fu_153_p2 );

    SC_METHOD(thread_tmp_3_fu_153_p2);
    sensitive << ( tmp_2_cast_fu_149_p1 );
    sensitive << ( phi_mul1_reg_74 );

    SC_METHOD(thread_tmp_4_cast_fu_176_p1);
    sensitive << ( k_reg_97 );

    SC_METHOD(thread_tmp_6_cast_fu_186_p1);
    sensitive << ( tmp_6_fu_180_p2 );

    SC_METHOD(thread_tmp_6_fu_180_p2);
    sensitive << ( phi_mul1_reg_74 );
    sensitive << ( tmp_4_cast_fu_176_p1 );

    SC_METHOD(thread_tmp_8_cast_fu_202_p1);
    sensitive << ( tmp_8_fu_197_p2 );

    SC_METHOD(thread_tmp_8_fu_197_p2);
    sensitive << ( tmp_2_cast_reg_238 );
    sensitive << ( phi_mul_reg_108 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond2_fu_137_p2 );
    sensitive << ( exitcond_fu_164_p2 );
    sensitive << ( exitcond1_fu_125_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "matmult_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a_V_address0, "(port)a_V_address0");
    sc_trace(mVcdFile, a_V_ce0, "(port)a_V_ce0");
    sc_trace(mVcdFile, a_V_q0, "(port)a_V_q0");
    sc_trace(mVcdFile, b_V_address0, "(port)b_V_address0");
    sc_trace(mVcdFile, b_V_ce0, "(port)b_V_ce0");
    sc_trace(mVcdFile, b_V_q0, "(port)b_V_q0");
    sc_trace(mVcdFile, out_V_address0, "(port)out_V_address0");
    sc_trace(mVcdFile, out_V_ce0, "(port)out_V_ce0");
    sc_trace(mVcdFile, out_V_we0, "(port)out_V_we0");
    sc_trace(mVcdFile, out_V_d0, "(port)out_V_d0");
    sc_trace(mVcdFile, out_V_q0, "(port)out_V_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_27, "ap_sig_27");
    sc_trace(mVcdFile, next_mul2_fu_119_p2, "next_mul2_fu_119_p2");
    sc_trace(mVcdFile, next_mul2_reg_217, "next_mul2_reg_217");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_61, "ap_sig_61");
    sc_trace(mVcdFile, i_1_fu_131_p2, "i_1_fu_131_p2");
    sc_trace(mVcdFile, i_1_reg_225, "i_1_reg_225");
    sc_trace(mVcdFile, j_1_fu_143_p2, "j_1_fu_143_p2");
    sc_trace(mVcdFile, j_1_reg_233, "j_1_reg_233");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_72, "ap_sig_72");
    sc_trace(mVcdFile, tmp_2_cast_fu_149_p1, "tmp_2_cast_fu_149_p1");
    sc_trace(mVcdFile, tmp_2_cast_reg_238, "tmp_2_cast_reg_238");
    sc_trace(mVcdFile, exitcond2_fu_137_p2, "exitcond2_fu_137_p2");
    sc_trace(mVcdFile, out_V_addr_reg_243, "out_V_addr_reg_243");
    sc_trace(mVcdFile, k_1_fu_170_p2, "k_1_fu_170_p2");
    sc_trace(mVcdFile, k_1_reg_251, "k_1_reg_251");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_89, "ap_sig_89");
    sc_trace(mVcdFile, exitcond_fu_164_p2, "exitcond_fu_164_p2");
    sc_trace(mVcdFile, next_mul_fu_191_p2, "next_mul_fu_191_p2");
    sc_trace(mVcdFile, next_mul_reg_261, "next_mul_reg_261");
    sc_trace(mVcdFile, a_V_load_reg_271, "a_V_load_reg_271");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_4, "ap_sig_cseq_ST_st5_fsm_4");
    sc_trace(mVcdFile, ap_sig_106, "ap_sig_106");
    sc_trace(mVcdFile, b_V_load_reg_276, "b_V_load_reg_276");
    sc_trace(mVcdFile, grp_fu_207_p2, "grp_fu_207_p2");
    sc_trace(mVcdFile, p_s_reg_281, "p_s_reg_281");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st11_fsm_10, "ap_sig_cseq_ST_st11_fsm_10");
    sc_trace(mVcdFile, ap_sig_116, "ap_sig_116");
    sc_trace(mVcdFile, i_reg_63, "i_reg_63");
    sc_trace(mVcdFile, phi_mul1_reg_74, "phi_mul1_reg_74");
    sc_trace(mVcdFile, j_reg_86, "j_reg_86");
    sc_trace(mVcdFile, exitcond1_fu_125_p2, "exitcond1_fu_125_p2");
    sc_trace(mVcdFile, k_reg_97, "k_reg_97");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st12_fsm_11, "ap_sig_cseq_ST_st12_fsm_11");
    sc_trace(mVcdFile, ap_sig_143, "ap_sig_143");
    sc_trace(mVcdFile, phi_mul_reg_108, "phi_mul_reg_108");
    sc_trace(mVcdFile, tmp_3_cast_fu_159_p1, "tmp_3_cast_fu_159_p1");
    sc_trace(mVcdFile, tmp_6_cast_fu_186_p1, "tmp_6_cast_fu_186_p1");
    sc_trace(mVcdFile, tmp_8_cast_fu_202_p1, "tmp_8_cast_fu_202_p1");
    sc_trace(mVcdFile, tmp_3_fu_153_p2, "tmp_3_fu_153_p2");
    sc_trace(mVcdFile, tmp_4_cast_fu_176_p1, "tmp_4_cast_fu_176_p1");
    sc_trace(mVcdFile, tmp_6_fu_180_p2, "tmp_6_fu_180_p2");
    sc_trace(mVcdFile, tmp_8_fu_197_p2, "tmp_8_fu_197_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st6_fsm_5, "ap_sig_cseq_ST_st6_fsm_5");
    sc_trace(mVcdFile, ap_sig_194, "ap_sig_194");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("matmult.hdltvin.dat");
    mHdltvoutHandle.open("matmult.hdltvout.dat");
}

matmult::~matmult() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete matmult_mul_32s_32s_32_6_U1;
}

void matmult::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void matmult::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
         !esl_seteq<1,1,1>(exitcond2_fu_137_p2.read(), ap_const_lv1_0))) {
        i_reg_63 = i_1_reg_225.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_reg_63 = ap_const_lv7_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_164_p2.read()))) {
        j_reg_86 = j_1_reg_233.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_125_p2.read()))) {
        j_reg_86 = ap_const_lv7_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond2_fu_137_p2.read(), ap_const_lv1_0))) {
        k_reg_97 = ap_const_lv7_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st12_fsm_11.read())) {
        k_reg_97 = k_1_reg_251.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
         !esl_seteq<1,1,1>(exitcond2_fu_137_p2.read(), ap_const_lv1_0))) {
        phi_mul1_reg_74 = next_mul2_reg_217.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        phi_mul1_reg_74 = ap_const_lv14_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond2_fu_137_p2.read(), ap_const_lv1_0))) {
        phi_mul_reg_108 = ap_const_lv14_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st12_fsm_11.read())) {
        phi_mul_reg_108 = next_mul_reg_261.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
        a_V_load_reg_271 = a_V_q0.read();
        b_V_load_reg_276 = b_V_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        i_1_reg_225 = i_1_fu_131_p2.read();
        next_mul2_reg_217 = next_mul2_fu_119_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        j_1_reg_233 = j_1_fu_143_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        k_1_reg_251 = k_1_fu_170_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_164_p2.read()))) {
        next_mul_reg_261 = next_mul_fu_191_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && esl_seteq<1,1,1>(exitcond2_fu_137_p2.read(), ap_const_lv1_0))) {
        out_V_addr_reg_243 =  (sc_lv<14>) (tmp_3_cast_fu_159_p1.read());
        tmp_2_cast_reg_238 = tmp_2_cast_fu_149_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_10.read())) {
        p_s_reg_281 = grp_fu_207_p2.read();
    }
}

void matmult::thread_a_V_address0() {
    a_V_address0 =  (sc_lv<14>) (tmp_6_cast_fu_186_p1.read());
}

void matmult::thread_a_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        a_V_ce0 = ap_const_logic_1;
    } else {
        a_V_ce0 = ap_const_logic_0;
    }
}

void matmult::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_125_p2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void matmult::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void matmult::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_125_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_106() {
    ap_sig_106 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void matmult::thread_ap_sig_116() {
    ap_sig_116 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(10, 10));
}

void matmult::thread_ap_sig_143() {
    ap_sig_143 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(11, 11));
}

void matmult::thread_ap_sig_194() {
    ap_sig_194 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void matmult::thread_ap_sig_27() {
    ap_sig_27 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void matmult::thread_ap_sig_61() {
    ap_sig_61 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void matmult::thread_ap_sig_72() {
    ap_sig_72 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void matmult::thread_ap_sig_89() {
    ap_sig_89 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void matmult::thread_ap_sig_cseq_ST_st11_fsm_10() {
    if (ap_sig_116.read()) {
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_st12_fsm_11() {
    if (ap_sig_143.read()) {
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_27.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_61.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_72.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_89.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_106.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_st6_fsm_5() {
    if (ap_sig_194.read()) {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    }
}

void matmult::thread_b_V_address0() {
    b_V_address0 =  (sc_lv<14>) (tmp_8_cast_fu_202_p1.read());
}

void matmult::thread_b_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        b_V_ce0 = ap_const_logic_1;
    } else {
        b_V_ce0 = ap_const_logic_0;
    }
}

void matmult::thread_exitcond1_fu_125_p2() {
    exitcond1_fu_125_p2 = (!i_reg_63.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_63.read() == ap_const_lv7_64);
}

void matmult::thread_exitcond2_fu_137_p2() {
    exitcond2_fu_137_p2 = (!j_reg_86.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_86.read() == ap_const_lv7_64);
}

void matmult::thread_exitcond_fu_164_p2() {
    exitcond_fu_164_p2 = (!k_reg_97.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(k_reg_97.read() == ap_const_lv7_64);
}

void matmult::thread_i_1_fu_131_p2() {
    i_1_fu_131_p2 = (!i_reg_63.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(i_reg_63.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void matmult::thread_j_1_fu_143_p2() {
    j_1_fu_143_p2 = (!j_reg_86.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(j_reg_86.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void matmult::thread_k_1_fu_170_p2() {
    k_1_fu_170_p2 = (!k_reg_97.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(k_reg_97.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void matmult::thread_next_mul2_fu_119_p2() {
    next_mul2_fu_119_p2 = (!phi_mul1_reg_74.read().is_01() || !ap_const_lv14_64.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul1_reg_74.read()) + sc_biguint<14>(ap_const_lv14_64));
}

void matmult::thread_next_mul_fu_191_p2() {
    next_mul_fu_191_p2 = (!phi_mul_reg_108.read().is_01() || !ap_const_lv14_64.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_108.read()) + sc_biguint<14>(ap_const_lv14_64));
}

void matmult::thread_out_V_address0() {
    out_V_address0 = out_V_addr_reg_243.read();
}

void matmult::thread_out_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_10.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st12_fsm_11.read()))) {
        out_V_ce0 = ap_const_logic_1;
    } else {
        out_V_ce0 = ap_const_logic_0;
    }
}

void matmult::thread_out_V_d0() {
    out_V_d0 = (!p_s_reg_281.read().is_01() || !out_V_q0.read().is_01())? sc_lv<32>(): (sc_biguint<32>(p_s_reg_281.read()) + sc_biguint<32>(out_V_q0.read()));
}

void matmult::thread_out_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st12_fsm_11.read()))) {
        out_V_we0 = ap_const_logic_1;
    } else {
        out_V_we0 = ap_const_logic_0;
    }
}

void matmult::thread_tmp_2_cast_fu_149_p1() {
    tmp_2_cast_fu_149_p1 = esl_zext<14,7>(j_reg_86.read());
}

void matmult::thread_tmp_3_cast_fu_159_p1() {
    tmp_3_cast_fu_159_p1 = esl_zext<64,14>(tmp_3_fu_153_p2.read());
}

void matmult::thread_tmp_3_fu_153_p2() {
    tmp_3_fu_153_p2 = (!phi_mul1_reg_74.read().is_01() || !tmp_2_cast_fu_149_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul1_reg_74.read()) + sc_biguint<14>(tmp_2_cast_fu_149_p1.read()));
}

void matmult::thread_tmp_4_cast_fu_176_p1() {
    tmp_4_cast_fu_176_p1 = esl_zext<14,7>(k_reg_97.read());
}

void matmult::thread_tmp_6_cast_fu_186_p1() {
    tmp_6_cast_fu_186_p1 = esl_zext<64,14>(tmp_6_fu_180_p2.read());
}

void matmult::thread_tmp_6_fu_180_p2() {
    tmp_6_fu_180_p2 = (!phi_mul1_reg_74.read().is_01() || !tmp_4_cast_fu_176_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul1_reg_74.read()) + sc_biguint<14>(tmp_4_cast_fu_176_p1.read()));
}

void matmult::thread_tmp_8_cast_fu_202_p1() {
    tmp_8_cast_fu_202_p1 = esl_zext<64,14>(tmp_8_fu_197_p2.read());
}

void matmult::thread_tmp_8_fu_197_p2() {
    tmp_8_fu_197_p2 = (!phi_mul_reg_108.read().is_01() || !tmp_2_cast_reg_238.read().is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_108.read()) + sc_biguint<14>(tmp_2_cast_reg_238.read()));
}

void matmult::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_125_p2.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 4 : 
            if (esl_seteq<1,1,1>(exitcond2_fu_137_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        case 8 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_164_p2.read())) {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_st7_fsm_6;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_st8_fsm_7;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_st9_fsm_8;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_st10_fsm_9;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_st11_fsm_10;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_st12_fsm_11;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXXXXXX";
            break;
    }
}

void matmult::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_V_address0\" :  \"" << a_V_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_V_ce0\" :  \"" << a_V_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a_V_q0\" :  \"" << a_V_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b_V_address0\" :  \"" << b_V_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b_V_ce0\" :  \"" << b_V_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b_V_q0\" :  \"" << b_V_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_V_address0\" :  \"" << out_V_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_V_ce0\" :  \"" << out_V_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_V_we0\" :  \"" << out_V_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_V_d0\" :  \"" << out_V_d0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"out_V_q0\" :  \"" << out_V_q0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

