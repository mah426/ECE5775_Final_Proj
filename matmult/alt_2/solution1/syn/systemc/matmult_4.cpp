#include "matmult.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void matmult::thread_a_address0() {
    a_address0 =  (sc_lv<14>) (tmp_7_cast_fu_68404_p1.read());
}

void matmult::thread_a_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read()))) {
        a_ce0 = ap_const_logic_1;
    } else {
        a_ce0 = ap_const_logic_0;
    }
}

void matmult::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_fu_68353_p2.read()))) {
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
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_fu_68353_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_1007() {
    ap_sig_1007 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(52, 52));
}

void matmult::thread_ap_sig_1028() {
    ap_sig_1028 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void matmult::thread_ap_sig_1082() {
    ap_sig_1082 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void matmult::thread_ap_sig_1093() {
    ap_sig_1093 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void matmult::thread_ap_sig_1483() {
    ap_sig_1483 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(53, 53));
}

void matmult::thread_ap_sig_508() {
    ap_sig_508 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void matmult::thread_ap_sig_524() {
    ap_sig_524 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(7, 7));
}

void matmult::thread_ap_sig_534() {
    ap_sig_534 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(10, 10));
}

void matmult::thread_ap_sig_544() {
    ap_sig_544 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(13, 13));
}

void matmult::thread_ap_sig_554() {
    ap_sig_554 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(16, 16));
}

void matmult::thread_ap_sig_564() {
    ap_sig_564 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(19, 19));
}

void matmult::thread_ap_sig_574() {
    ap_sig_574 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(22, 22));
}

void matmult::thread_ap_sig_584() {
    ap_sig_584 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(25, 25));
}

void matmult::thread_ap_sig_594() {
    ap_sig_594 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(28, 28));
}

void matmult::thread_ap_sig_604() {
    ap_sig_604 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(31, 31));
}

void matmult::thread_ap_sig_614() {
    ap_sig_614 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(34, 34));
}

void matmult::thread_ap_sig_624() {
    ap_sig_624 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(37, 37));
}

void matmult::thread_ap_sig_634() {
    ap_sig_634 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(40, 40));
}

void matmult::thread_ap_sig_644() {
    ap_sig_644 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(43, 43));
}

void matmult::thread_ap_sig_654() {
    ap_sig_654 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(46, 46));
}

void matmult::thread_ap_sig_664() {
    ap_sig_664 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(49, 49));
}

void matmult::thread_ap_sig_676() {
    ap_sig_676 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void matmult::thread_ap_sig_685() {
    ap_sig_685 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(8, 8));
}

void matmult::thread_ap_sig_69() {
    ap_sig_69 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void matmult::thread_ap_sig_695() {
    ap_sig_695 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(11, 11));
}

void matmult::thread_ap_sig_705() {
    ap_sig_705 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(14, 14));
}

void matmult::thread_ap_sig_715() {
    ap_sig_715 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(17, 17));
}

void matmult::thread_ap_sig_725() {
    ap_sig_725 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(20, 20));
}

void matmult::thread_ap_sig_735() {
    ap_sig_735 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(23, 23));
}

void matmult::thread_ap_sig_745() {
    ap_sig_745 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(26, 26));
}

void matmult::thread_ap_sig_755() {
    ap_sig_755 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(29, 29));
}

void matmult::thread_ap_sig_765() {
    ap_sig_765 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(32, 32));
}

void matmult::thread_ap_sig_775() {
    ap_sig_775 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(35, 35));
}

void matmult::thread_ap_sig_785() {
    ap_sig_785 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(38, 38));
}

void matmult::thread_ap_sig_795() {
    ap_sig_795 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(41, 41));
}

void matmult::thread_ap_sig_805() {
    ap_sig_805 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(44, 44));
}

void matmult::thread_ap_sig_815() {
    ap_sig_815 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(47, 47));
}

void matmult::thread_ap_sig_825() {
    ap_sig_825 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(50, 50));
}

void matmult::thread_ap_sig_837() {
    ap_sig_837 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(6, 6));
}

void matmult::thread_ap_sig_846() {
    ap_sig_846 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(9, 9));
}

void matmult::thread_ap_sig_856() {
    ap_sig_856 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(12, 12));
}

void matmult::thread_ap_sig_866() {
    ap_sig_866 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(15, 15));
}

void matmult::thread_ap_sig_876() {
    ap_sig_876 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(18, 18));
}

void matmult::thread_ap_sig_886() {
    ap_sig_886 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(21, 21));
}

void matmult::thread_ap_sig_896() {
    ap_sig_896 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(24, 24));
}

void matmult::thread_ap_sig_906() {
    ap_sig_906 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(27, 27));
}

void matmult::thread_ap_sig_916() {
    ap_sig_916 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(30, 30));
}

void matmult::thread_ap_sig_926() {
    ap_sig_926 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(33, 33));
}

void matmult::thread_ap_sig_936() {
    ap_sig_936 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(36, 36));
}

void matmult::thread_ap_sig_946() {
    ap_sig_946 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(39, 39));
}

void matmult::thread_ap_sig_956() {
    ap_sig_956 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(42, 42));
}

void matmult::thread_ap_sig_966() {
    ap_sig_966 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(45, 45));
}

void matmult::thread_ap_sig_976() {
    ap_sig_976 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(48, 48));
}

void matmult::thread_ap_sig_986() {
    ap_sig_986 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(51, 51));
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg0_fsm_3() {
    if (ap_sig_1028.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_3 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg10_fsm_13() {
    if (ap_sig_544.read()) {
        ap_sig_cseq_ST_pp0_stg10_fsm_13 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg10_fsm_13 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg11_fsm_14() {
    if (ap_sig_705.read()) {
        ap_sig_cseq_ST_pp0_stg11_fsm_14 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg11_fsm_14 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg12_fsm_15() {
    if (ap_sig_866.read()) {
        ap_sig_cseq_ST_pp0_stg12_fsm_15 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg12_fsm_15 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg13_fsm_16() {
    if (ap_sig_554.read()) {
        ap_sig_cseq_ST_pp0_stg13_fsm_16 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg13_fsm_16 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg14_fsm_17() {
    if (ap_sig_715.read()) {
        ap_sig_cseq_ST_pp0_stg14_fsm_17 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg14_fsm_17 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg15_fsm_18() {
    if (ap_sig_876.read()) {
        ap_sig_cseq_ST_pp0_stg15_fsm_18 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg15_fsm_18 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg16_fsm_19() {
    if (ap_sig_564.read()) {
        ap_sig_cseq_ST_pp0_stg16_fsm_19 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg16_fsm_19 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg17_fsm_20() {
    if (ap_sig_725.read()) {
        ap_sig_cseq_ST_pp0_stg17_fsm_20 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg17_fsm_20 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg18_fsm_21() {
    if (ap_sig_886.read()) {
        ap_sig_cseq_ST_pp0_stg18_fsm_21 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg18_fsm_21 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg19_fsm_22() {
    if (ap_sig_574.read()) {
        ap_sig_cseq_ST_pp0_stg19_fsm_22 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg19_fsm_22 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg1_fsm_4() {
    if (ap_sig_508.read()) {
        ap_sig_cseq_ST_pp0_stg1_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg1_fsm_4 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg20_fsm_23() {
    if (ap_sig_735.read()) {
        ap_sig_cseq_ST_pp0_stg20_fsm_23 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg20_fsm_23 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg21_fsm_24() {
    if (ap_sig_896.read()) {
        ap_sig_cseq_ST_pp0_stg21_fsm_24 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg21_fsm_24 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg22_fsm_25() {
    if (ap_sig_584.read()) {
        ap_sig_cseq_ST_pp0_stg22_fsm_25 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg22_fsm_25 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg23_fsm_26() {
    if (ap_sig_745.read()) {
        ap_sig_cseq_ST_pp0_stg23_fsm_26 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg23_fsm_26 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg24_fsm_27() {
    if (ap_sig_906.read()) {
        ap_sig_cseq_ST_pp0_stg24_fsm_27 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg24_fsm_27 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg25_fsm_28() {
    if (ap_sig_594.read()) {
        ap_sig_cseq_ST_pp0_stg25_fsm_28 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg25_fsm_28 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg26_fsm_29() {
    if (ap_sig_755.read()) {
        ap_sig_cseq_ST_pp0_stg26_fsm_29 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg26_fsm_29 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg27_fsm_30() {
    if (ap_sig_916.read()) {
        ap_sig_cseq_ST_pp0_stg27_fsm_30 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg27_fsm_30 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg28_fsm_31() {
    if (ap_sig_604.read()) {
        ap_sig_cseq_ST_pp0_stg28_fsm_31 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg28_fsm_31 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg29_fsm_32() {
    if (ap_sig_765.read()) {
        ap_sig_cseq_ST_pp0_stg29_fsm_32 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg29_fsm_32 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg2_fsm_5() {
    if (ap_sig_676.read()) {
        ap_sig_cseq_ST_pp0_stg2_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg2_fsm_5 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg30_fsm_33() {
    if (ap_sig_926.read()) {
        ap_sig_cseq_ST_pp0_stg30_fsm_33 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg30_fsm_33 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg31_fsm_34() {
    if (ap_sig_614.read()) {
        ap_sig_cseq_ST_pp0_stg31_fsm_34 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg31_fsm_34 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg32_fsm_35() {
    if (ap_sig_775.read()) {
        ap_sig_cseq_ST_pp0_stg32_fsm_35 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg32_fsm_35 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg33_fsm_36() {
    if (ap_sig_936.read()) {
        ap_sig_cseq_ST_pp0_stg33_fsm_36 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg33_fsm_36 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg34_fsm_37() {
    if (ap_sig_624.read()) {
        ap_sig_cseq_ST_pp0_stg34_fsm_37 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg34_fsm_37 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg35_fsm_38() {
    if (ap_sig_785.read()) {
        ap_sig_cseq_ST_pp0_stg35_fsm_38 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg35_fsm_38 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg36_fsm_39() {
    if (ap_sig_946.read()) {
        ap_sig_cseq_ST_pp0_stg36_fsm_39 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg36_fsm_39 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg37_fsm_40() {
    if (ap_sig_634.read()) {
        ap_sig_cseq_ST_pp0_stg37_fsm_40 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg37_fsm_40 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg38_fsm_41() {
    if (ap_sig_795.read()) {
        ap_sig_cseq_ST_pp0_stg38_fsm_41 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg38_fsm_41 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg39_fsm_42() {
    if (ap_sig_956.read()) {
        ap_sig_cseq_ST_pp0_stg39_fsm_42 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg39_fsm_42 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg3_fsm_6() {
    if (ap_sig_837.read()) {
        ap_sig_cseq_ST_pp0_stg3_fsm_6 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg3_fsm_6 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg40_fsm_43() {
    if (ap_sig_644.read()) {
        ap_sig_cseq_ST_pp0_stg40_fsm_43 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg40_fsm_43 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg41_fsm_44() {
    if (ap_sig_805.read()) {
        ap_sig_cseq_ST_pp0_stg41_fsm_44 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg41_fsm_44 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg42_fsm_45() {
    if (ap_sig_966.read()) {
        ap_sig_cseq_ST_pp0_stg42_fsm_45 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg42_fsm_45 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg43_fsm_46() {
    if (ap_sig_654.read()) {
        ap_sig_cseq_ST_pp0_stg43_fsm_46 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg43_fsm_46 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg44_fsm_47() {
    if (ap_sig_815.read()) {
        ap_sig_cseq_ST_pp0_stg44_fsm_47 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg44_fsm_47 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg45_fsm_48() {
    if (ap_sig_976.read()) {
        ap_sig_cseq_ST_pp0_stg45_fsm_48 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg45_fsm_48 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg46_fsm_49() {
    if (ap_sig_664.read()) {
        ap_sig_cseq_ST_pp0_stg46_fsm_49 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg46_fsm_49 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg47_fsm_50() {
    if (ap_sig_825.read()) {
        ap_sig_cseq_ST_pp0_stg47_fsm_50 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg47_fsm_50 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg48_fsm_51() {
    if (ap_sig_986.read()) {
        ap_sig_cseq_ST_pp0_stg48_fsm_51 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg48_fsm_51 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg49_fsm_52() {
    if (ap_sig_1007.read()) {
        ap_sig_cseq_ST_pp0_stg49_fsm_52 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg49_fsm_52 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg4_fsm_7() {
    if (ap_sig_524.read()) {
        ap_sig_cseq_ST_pp0_stg4_fsm_7 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg4_fsm_7 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg5_fsm_8() {
    if (ap_sig_685.read()) {
        ap_sig_cseq_ST_pp0_stg5_fsm_8 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg5_fsm_8 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg6_fsm_9() {
    if (ap_sig_846.read()) {
        ap_sig_cseq_ST_pp0_stg6_fsm_9 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg6_fsm_9 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg7_fsm_10() {
    if (ap_sig_534.read()) {
        ap_sig_cseq_ST_pp0_stg7_fsm_10 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg7_fsm_10 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg8_fsm_11() {
    if (ap_sig_695.read()) {
        ap_sig_cseq_ST_pp0_stg8_fsm_11 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg8_fsm_11 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_pp0_stg9_fsm_12() {
    if (ap_sig_856.read()) {
        ap_sig_cseq_ST_pp0_stg9_fsm_12 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg9_fsm_12 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_69.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_1082.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_1093.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void matmult::thread_ap_sig_cseq_ST_st63_fsm_53() {
    if (ap_sig_1483.read()) {
        ap_sig_cseq_ST_st63_fsm_53 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st63_fsm_53 = ap_const_logic_0;
    }
}

void matmult::thread_b_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read())) {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg49_fsm_52.read())) {
            b_address0 =  (sc_lv<14>) (tmp_107_cast_fu_69488_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg48_fsm_51.read())) {
            b_address0 =  (sc_lv<14>) (tmp_105_cast_fu_69460_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg47_fsm_50.read())) {
            b_address0 =  (sc_lv<14>) (tmp_103_cast_fu_69438_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg46_fsm_49.read())) {
            b_address0 =  (sc_lv<14>) (tmp_101_cast_fu_69416_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg45_fsm_48.read())) {
            b_address0 =  (sc_lv<14>) (tmp_99_cast_fu_69394_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg44_fsm_47.read())) {
            b_address0 =  (sc_lv<14>) (tmp_97_cast_fu_69372_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg43_fsm_46.read())) {
            b_address0 =  (sc_lv<14>) (tmp_95_cast_fu_69350_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg42_fsm_45.read())) {
            b_address0 =  (sc_lv<14>) (tmp_93_cast_fu_69328_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg41_fsm_44.read())) {
            b_address0 =  (sc_lv<14>) (tmp_91_cast_fu_69306_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg40_fsm_43.read())) {
            b_address0 =  (sc_lv<14>) (tmp_89_cast_fu_69284_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg39_fsm_42.read())) {
            b_address0 =  (sc_lv<14>) (tmp_87_cast_fu_69262_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg38_fsm_41.read())) {
            b_address0 =  (sc_lv<14>) (tmp_85_cast_fu_69240_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg37_fsm_40.read())) {
            b_address0 =  (sc_lv<14>) (tmp_83_cast_fu_69218_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg36_fsm_39.read())) {
            b_address0 =  (sc_lv<14>) (tmp_81_cast_fu_69196_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg35_fsm_38.read())) {
            b_address0 =  (sc_lv<14>) (tmp_79_cast_fu_69174_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg34_fsm_37.read())) {
            b_address0 =  (sc_lv<14>) (tmp_77_cast_fu_69152_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg33_fsm_36.read())) {
            b_address0 =  (sc_lv<14>) (tmp_75_cast_fu_69130_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg32_fsm_35.read())) {
            b_address0 =  (sc_lv<14>) (tmp_73_cast_fu_69108_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg31_fsm_34.read())) {
            b_address0 =  (sc_lv<14>) (tmp_71_cast_fu_69086_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg30_fsm_33.read())) {
            b_address0 =  (sc_lv<14>) (tmp_69_cast_fu_69064_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg29_fsm_32.read())) {
            b_address0 =  (sc_lv<14>) (tmp_67_cast_fu_69042_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg28_fsm_31.read())) {
            b_address0 =  (sc_lv<14>) (tmp_65_cast_fu_69020_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg27_fsm_30.read())) {
            b_address0 =  (sc_lv<14>) (tmp_63_cast_fu_68998_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg26_fsm_29.read())) {
            b_address0 =  (sc_lv<14>) (tmp_61_cast_fu_68976_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg25_fsm_28.read())) {
            b_address0 =  (sc_lv<14>) (tmp_59_cast_fu_68954_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg24_fsm_27.read())) {
            b_address0 =  (sc_lv<14>) (tmp_57_cast_fu_68932_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg23_fsm_26.read())) {
            b_address0 =  (sc_lv<14>) (tmp_55_cast_fu_68910_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg22_fsm_25.read())) {
            b_address0 =  (sc_lv<14>) (tmp_53_cast_fu_68888_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg21_fsm_24.read())) {
            b_address0 =  (sc_lv<14>) (tmp_51_cast_fu_68866_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg20_fsm_23.read())) {
            b_address0 =  (sc_lv<14>) (tmp_49_cast_fu_68844_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg19_fsm_22.read())) {
            b_address0 =  (sc_lv<14>) (tmp_47_cast_fu_68822_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg18_fsm_21.read())) {
            b_address0 =  (sc_lv<14>) (tmp_45_cast_fu_68800_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg17_fsm_20.read())) {
            b_address0 =  (sc_lv<14>) (tmp_43_cast_fu_68778_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg16_fsm_19.read())) {
            b_address0 =  (sc_lv<14>) (tmp_41_cast_fu_68756_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg15_fsm_18.read())) {
            b_address0 =  (sc_lv<14>) (tmp_39_cast_fu_68734_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg14_fsm_17.read())) {
            b_address0 =  (sc_lv<14>) (tmp_37_cast_fu_68712_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg13_fsm_16.read())) {
            b_address0 =  (sc_lv<14>) (tmp_35_cast_fu_68690_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg12_fsm_15.read())) {
            b_address0 =  (sc_lv<14>) (tmp_33_cast_fu_68668_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg11_fsm_14.read())) {
            b_address0 =  (sc_lv<14>) (tmp_31_cast_fu_68646_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg10_fsm_13.read())) {
            b_address0 =  (sc_lv<14>) (tmp_29_cast_fu_68624_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg9_fsm_12.read())) {
            b_address0 =  (sc_lv<14>) (tmp_27_cast_fu_68602_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read())) {
            b_address0 =  (sc_lv<14>) (tmp_25_cast_fu_68580_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read())) {
            b_address0 =  (sc_lv<14>) (tmp_23_cast_fu_68558_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read())) {
            b_address0 =  (sc_lv<14>) (tmp_21_cast_fu_68536_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read())) {
            b_address0 =  (sc_lv<14>) (tmp_19_cast_fu_68514_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg4_fsm_7.read())) {
            b_address0 =  (sc_lv<14>) (tmp_17_cast_fu_68492_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg3_fsm_6.read())) {
            b_address0 =  (sc_lv<14>) (tmp_15_cast_fu_68470_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg2_fsm_5.read())) {
            b_address0 =  (sc_lv<14>) (tmp_13_cast_fu_68448_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_4.read())) {
            b_address0 =  (sc_lv<14>) (tmp_11_cast_fu_68426_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read())) {
            b_address0 =  (sc_lv<14>) (phi_mul_cast_fu_68377_p1.read());
        } else {
            b_address0 = "XXXXXXXXXXXXXX";
        }
    } else {
        b_address0 = "XXXXXXXXXXXXXX";
    }
}

void matmult::thread_b_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read())) {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg49_fsm_52.read())) {
            b_address1 =  (sc_lv<14>) (tmp_108_cast_fu_69499_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg48_fsm_51.read())) {
            b_address1 =  (sc_lv<14>) (tmp_106_cast_fu_69471_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg47_fsm_50.read())) {
            b_address1 =  (sc_lv<14>) (tmp_104_cast_fu_69449_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg46_fsm_49.read())) {
            b_address1 =  (sc_lv<14>) (tmp_102_cast_fu_69427_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg45_fsm_48.read())) {
            b_address1 =  (sc_lv<14>) (tmp_100_cast_fu_69405_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg44_fsm_47.read())) {
            b_address1 =  (sc_lv<14>) (tmp_98_cast_fu_69383_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg43_fsm_46.read())) {
            b_address1 =  (sc_lv<14>) (tmp_96_cast_fu_69361_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg42_fsm_45.read())) {
            b_address1 =  (sc_lv<14>) (tmp_94_cast_fu_69339_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg41_fsm_44.read())) {
            b_address1 =  (sc_lv<14>) (tmp_92_cast_fu_69317_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg40_fsm_43.read())) {
            b_address1 =  (sc_lv<14>) (tmp_90_cast_fu_69295_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg39_fsm_42.read())) {
            b_address1 =  (sc_lv<14>) (tmp_88_cast_fu_69273_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg38_fsm_41.read())) {
            b_address1 =  (sc_lv<14>) (tmp_86_cast_fu_69251_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg37_fsm_40.read())) {
            b_address1 =  (sc_lv<14>) (tmp_84_cast_fu_69229_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg36_fsm_39.read())) {
            b_address1 =  (sc_lv<14>) (tmp_82_cast_fu_69207_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg35_fsm_38.read())) {
            b_address1 =  (sc_lv<14>) (tmp_80_cast_fu_69185_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg34_fsm_37.read())) {
            b_address1 =  (sc_lv<14>) (tmp_78_cast_fu_69163_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg33_fsm_36.read())) {
            b_address1 =  (sc_lv<14>) (tmp_76_cast_fu_69141_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg32_fsm_35.read())) {
            b_address1 =  (sc_lv<14>) (tmp_74_cast_fu_69119_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg31_fsm_34.read())) {
            b_address1 =  (sc_lv<14>) (tmp_72_cast_fu_69097_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg30_fsm_33.read())) {
            b_address1 =  (sc_lv<14>) (tmp_70_cast_fu_69075_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg29_fsm_32.read())) {
            b_address1 =  (sc_lv<14>) (tmp_68_cast_fu_69053_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg28_fsm_31.read())) {
            b_address1 =  (sc_lv<14>) (tmp_66_cast_fu_69031_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg27_fsm_30.read())) {
            b_address1 =  (sc_lv<14>) (tmp_64_cast_fu_69009_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg26_fsm_29.read())) {
            b_address1 =  (sc_lv<14>) (tmp_62_cast_fu_68987_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg25_fsm_28.read())) {
            b_address1 =  (sc_lv<14>) (tmp_60_cast_fu_68965_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg24_fsm_27.read())) {
            b_address1 =  (sc_lv<14>) (tmp_58_cast_fu_68943_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg23_fsm_26.read())) {
            b_address1 =  (sc_lv<14>) (tmp_56_cast_fu_68921_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg22_fsm_25.read())) {
            b_address1 =  (sc_lv<14>) (tmp_54_cast_fu_68899_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg21_fsm_24.read())) {
            b_address1 =  (sc_lv<14>) (tmp_52_cast_fu_68877_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg20_fsm_23.read())) {
            b_address1 =  (sc_lv<14>) (tmp_50_cast_fu_68855_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg19_fsm_22.read())) {
            b_address1 =  (sc_lv<14>) (tmp_48_cast_fu_68833_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg18_fsm_21.read())) {
            b_address1 =  (sc_lv<14>) (tmp_46_cast_fu_68811_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg17_fsm_20.read())) {
            b_address1 =  (sc_lv<14>) (tmp_44_cast_fu_68789_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg16_fsm_19.read())) {
            b_address1 =  (sc_lv<14>) (tmp_42_cast_fu_68767_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg15_fsm_18.read())) {
            b_address1 =  (sc_lv<14>) (tmp_40_cast_fu_68745_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg14_fsm_17.read())) {
            b_address1 =  (sc_lv<14>) (tmp_38_cast_fu_68723_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg13_fsm_16.read())) {
            b_address1 =  (sc_lv<14>) (tmp_36_cast_fu_68701_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg12_fsm_15.read())) {
            b_address1 =  (sc_lv<14>) (tmp_34_cast_fu_68679_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg11_fsm_14.read())) {
            b_address1 =  (sc_lv<14>) (tmp_32_cast_fu_68657_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg10_fsm_13.read())) {
            b_address1 =  (sc_lv<14>) (tmp_30_cast_fu_68635_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg9_fsm_12.read())) {
            b_address1 =  (sc_lv<14>) (tmp_28_cast_fu_68613_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read())) {
            b_address1 =  (sc_lv<14>) (tmp_26_cast_fu_68591_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read())) {
            b_address1 =  (sc_lv<14>) (tmp_24_cast_fu_68569_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read())) {
            b_address1 =  (sc_lv<14>) (tmp_22_cast_fu_68547_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read())) {
            b_address1 =  (sc_lv<14>) (tmp_20_cast_fu_68525_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg4_fsm_7.read())) {
            b_address1 =  (sc_lv<14>) (tmp_18_cast_fu_68503_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg3_fsm_6.read())) {
            b_address1 =  (sc_lv<14>) (tmp_16_cast_fu_68481_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg2_fsm_5.read())) {
            b_address1 =  (sc_lv<14>) (tmp_14_cast_fu_68459_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_4.read())) {
            b_address1 =  (sc_lv<14>) (tmp_12_cast_fu_68437_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read())) {
            b_address1 =  (sc_lv<14>) (tmp_10_cast_fu_68415_p1.read());
        } else {
            b_address1 = "XXXXXXXXXXXXXX";
        }
    } else {
        b_address1 = "XXXXXXXXXXXXXX";
    }
}

void matmult::thread_b_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_4.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg4_fsm_7.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg10_fsm_13.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg13_fsm_16.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg16_fsm_19.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg19_fsm_22.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg22_fsm_25.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg25_fsm_28.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg28_fsm_31.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg31_fsm_34.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg34_fsm_37.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg37_fsm_40.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg40_fsm_43.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg43_fsm_46.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg46_fsm_49.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg2_fsm_5.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg11_fsm_14.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg14_fsm_17.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg17_fsm_20.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg20_fsm_23.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg23_fsm_26.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg26_fsm_29.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg29_fsm_32.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg32_fsm_35.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg35_fsm_38.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg38_fsm_41.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg41_fsm_44.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg44_fsm_47.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg47_fsm_50.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg3_fsm_6.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg9_fsm_12.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg12_fsm_15.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg15_fsm_18.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg18_fsm_21.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg21_fsm_24.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg24_fsm_27.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg27_fsm_30.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg30_fsm_33.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg33_fsm_36.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg36_fsm_39.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg39_fsm_42.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg42_fsm_45.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg45_fsm_48.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg48_fsm_51.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg49_fsm_52.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read())))) {
        b_ce0 = ap_const_logic_1;
    } else {
        b_ce0 = ap_const_logic_0;
    }
}

void matmult::thread_b_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_4.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg4_fsm_7.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg10_fsm_13.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg13_fsm_16.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg16_fsm_19.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg19_fsm_22.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg22_fsm_25.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg25_fsm_28.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg28_fsm_31.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg31_fsm_34.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg34_fsm_37.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg37_fsm_40.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg40_fsm_43.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg43_fsm_46.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg46_fsm_49.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg2_fsm_5.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg11_fsm_14.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg14_fsm_17.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg17_fsm_20.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg20_fsm_23.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg23_fsm_26.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg26_fsm_29.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg29_fsm_32.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg32_fsm_35.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg35_fsm_38.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg38_fsm_41.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg41_fsm_44.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg44_fsm_47.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg47_fsm_50.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg3_fsm_6.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg9_fsm_12.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg12_fsm_15.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg15_fsm_18.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg18_fsm_21.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg21_fsm_24.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg24_fsm_27.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg27_fsm_30.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg30_fsm_33.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg33_fsm_36.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg36_fsm_39.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg39_fsm_42.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg42_fsm_45.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg45_fsm_48.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg48_fsm_51.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg49_fsm_52.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read())))) {
        b_ce1 = ap_const_logic_1;
    } else {
        b_ce1 = ap_const_logic_0;
    }
}

void matmult::thread_exitcond2_fu_68382_p2() {
    exitcond2_fu_68382_p2 = (!k_phi_fu_68117_p4.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(k_phi_fu_68117_p4.read() == ap_const_lv7_64);
}

void matmult::thread_exitcond3_fu_68365_p2() {
    exitcond3_fu_68365_p2 = (!j_reg_65504.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_65504.read() == ap_const_lv7_64);
}

void matmult::thread_exitcond4_fu_68353_p2() {
    exitcond4_fu_68353_p2 = (!i_reg_3681.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_3681.read() == ap_const_lv7_64);
}

void matmult::thread_exitcond_fu_69504_p2() {
    exitcond_fu_69504_p2 = (!j2_reg_68136.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(j2_reg_68136.read() == ap_const_lv7_64);
}

void matmult::thread_grp_fu_68147_p0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg4_fsm_7.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_98_reg_66925.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg3_fsm_6.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_96_reg_66949.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg2_fsm_5.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_94_reg_66973.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_4.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_92_reg_66997.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_90_reg_67021.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg49_fsm_52.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_88_reg_67045.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg48_fsm_51.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_86_reg_67069.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg47_fsm_50.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_84_reg_67093.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg46_fsm_49.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_82_reg_67117.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg45_fsm_48.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_80_reg_67141.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg44_fsm_47.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_78_reg_67165.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg43_fsm_46.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_76_reg_67189.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg42_fsm_45.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_74_reg_67213.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg41_fsm_44.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_72_reg_67237.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg40_fsm_43.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_70_reg_67261.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg39_fsm_42.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_68_reg_67285.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg38_fsm_41.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_66_reg_67309.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg37_fsm_40.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_64_reg_67333.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg36_fsm_39.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_62_reg_67357.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg35_fsm_38.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_60_reg_67381.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg34_fsm_37.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_58_reg_67405.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg33_fsm_36.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_56_reg_67429.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg32_fsm_35.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_54_reg_67453.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg31_fsm_34.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_52_reg_67477.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg30_fsm_33.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_50_reg_67501.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg29_fsm_32.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_48_reg_67525.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg28_fsm_31.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_46_reg_67549.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg27_fsm_30.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_44_reg_67573.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg26_fsm_29.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_42_reg_67597.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg25_fsm_28.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_40_reg_67621.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg24_fsm_27.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_38_reg_67645.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg23_fsm_26.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_36_reg_67669.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg22_fsm_25.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_34_reg_67693.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg21_fsm_24.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_32_reg_67717.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg20_fsm_23.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_30_reg_67741.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg19_fsm_22.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_28_reg_67765.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg18_fsm_21.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_26_reg_67789.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg17_fsm_20.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_24_reg_67813.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg16_fsm_19.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_22_reg_67837.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg15_fsm_18.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_20_reg_67861.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg14_fsm_17.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_18_reg_67885.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg13_fsm_16.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_16_reg_67909.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg12_fsm_15.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_14_reg_67933.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg11_fsm_14.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_12_reg_67957.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg10_fsm_13.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_10_reg_67981.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg9_fsm_12.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_8_reg_68005.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_6_phi_fu_68033_p4.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_4_phi_fu_68057_p4.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_2_phi_fu_68081_p4.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read()))) {
        grp_fu_68147_p0 = out_vec_load_1_phi_fu_68105_p4.read();
    } else {
        grp_fu_68147_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void matmult::thread_grp_fu_68147_p1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg19_fsm_22.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg34_fsm_37.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg14_fsm_17.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg29_fsm_32.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg44_fsm_47.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg9_fsm_12.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg24_fsm_27.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg39_fsm_42.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg49_fsm_52.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg4_fsm_7.read())))) {
        grp_fu_68147_p1 = reg_68337.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg13_fsm_16.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg28_fsm_31.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg43_fsm_46.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg23_fsm_26.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg38_fsm_41.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg18_fsm_21.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg33_fsm_36.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg48_fsm_51.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg3_fsm_6.read())))) {
        grp_fu_68147_p1 = reg_68327.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg22_fsm_25.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg37_fsm_40.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg17_fsm_20.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg32_fsm_35.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg47_fsm_50.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg12_fsm_15.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg27_fsm_30.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg42_fsm_45.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg2_fsm_5.read())))) {
        grp_fu_68147_p1 = reg_68317.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg16_fsm_19.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg31_fsm_34.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg46_fsm_49.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg11_fsm_14.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg26_fsm_29.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg41_fsm_44.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg21_fsm_24.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg36_fsm_39.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_4.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        grp_fu_68147_p1 = reg_68307.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg10_fsm_13.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg25_fsm_28.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg40_fsm_43.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg20_fsm_23.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg35_fsm_38.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg15_fsm_18.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg30_fsm_33.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg45_fsm_48.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read())))) {
        grp_fu_68147_p1 = reg_68297.read();
    } else {
        grp_fu_68147_p1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void matmult::thread_grp_fu_68152_p0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg4_fsm_7.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_99_reg_66913.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg3_fsm_6.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_97_reg_66937.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg2_fsm_5.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_95_reg_66961.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_4.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_93_reg_66985.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_91_reg_67009.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg49_fsm_52.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_89_reg_67033.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg48_fsm_51.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_87_reg_67057.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg47_fsm_50.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_85_reg_67081.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg46_fsm_49.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_83_reg_67105.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg45_fsm_48.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_81_reg_67129.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg44_fsm_47.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_79_reg_67153.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg43_fsm_46.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_77_reg_67177.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg42_fsm_45.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_75_reg_67201.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg41_fsm_44.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_73_reg_67225.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg40_fsm_43.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_71_reg_67249.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg39_fsm_42.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_69_reg_67273.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg38_fsm_41.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_67_reg_67297.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg37_fsm_40.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_65_reg_67321.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg36_fsm_39.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_63_reg_67345.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg35_fsm_38.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_61_reg_67369.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg34_fsm_37.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_59_reg_67393.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg33_fsm_36.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_57_reg_67417.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg32_fsm_35.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_55_reg_67441.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg31_fsm_34.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_53_reg_67465.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg30_fsm_33.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_51_reg_67489.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg29_fsm_32.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_49_reg_67513.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg28_fsm_31.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_47_reg_67537.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg27_fsm_30.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_45_reg_67561.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg26_fsm_29.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_43_reg_67585.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg25_fsm_28.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_41_reg_67609.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg24_fsm_27.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_39_reg_67633.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg23_fsm_26.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_37_reg_67657.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg22_fsm_25.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_35_reg_67681.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg21_fsm_24.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_33_reg_67705.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg20_fsm_23.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_31_reg_67729.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg19_fsm_22.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_29_reg_67753.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg18_fsm_21.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_27_reg_67777.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg17_fsm_20.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_25_reg_67801.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg16_fsm_19.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_23_reg_67825.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg15_fsm_18.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_21_reg_67849.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg14_fsm_17.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_19_reg_67873.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg13_fsm_16.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_17_reg_67897.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg12_fsm_15.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_15_reg_67921.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg11_fsm_14.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_13_reg_67945.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg10_fsm_13.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_11_reg_67969.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg9_fsm_12.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_9_reg_67993.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_7_phi_fu_68021_p4.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_5_phi_fu_68045_p4.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_3_phi_fu_68069_p4.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read()))) {
        grp_fu_68152_p0 = out_vec_load_1_1_phi_fu_68093_p4.read();
    } else {
        grp_fu_68152_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void matmult::thread_grp_fu_68152_p1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg19_fsm_22.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg34_fsm_37.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg14_fsm_17.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg29_fsm_32.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg44_fsm_47.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg9_fsm_12.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg24_fsm_27.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg39_fsm_42.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg49_fsm_52.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg4_fsm_7.read())))) {
        grp_fu_68152_p1 = reg_68342.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg13_fsm_16.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg28_fsm_31.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg43_fsm_46.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg23_fsm_26.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg38_fsm_41.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg18_fsm_21.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg33_fsm_36.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg48_fsm_51.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg3_fsm_6.read())))) {
        grp_fu_68152_p1 = reg_68332.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg22_fsm_25.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg37_fsm_40.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg17_fsm_20.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg32_fsm_35.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg47_fsm_50.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg12_fsm_15.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg27_fsm_30.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg42_fsm_45.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg2_fsm_5.read())))) {
        grp_fu_68152_p1 = reg_68322.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg16_fsm_19.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg31_fsm_34.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg46_fsm_49.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg11_fsm_14.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg26_fsm_29.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg41_fsm_44.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg21_fsm_24.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg36_fsm_39.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_4.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        grp_fu_68152_p1 = reg_68312.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg10_fsm_13.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg25_fsm_28.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg40_fsm_43.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg20_fsm_23.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg35_fsm_38.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg15_fsm_18.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg30_fsm_33.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg45_fsm_48.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read())))) {
        grp_fu_68152_p1 = reg_68302.read();
    } else {
        grp_fu_68152_p1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void matmult::thread_grp_fu_68255_p0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg4_fsm_7.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg10_fsm_13.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg13_fsm_16.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg16_fsm_19.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg19_fsm_22.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg22_fsm_25.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg25_fsm_28.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg28_fsm_31.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg31_fsm_34.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg34_fsm_37.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg37_fsm_40.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg40_fsm_43.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg43_fsm_46.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg46_fsm_49.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg2_fsm_5.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg11_fsm_14.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg14_fsm_17.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg17_fsm_20.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg20_fsm_23.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg23_fsm_26.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg26_fsm_29.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg29_fsm_32.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg32_fsm_35.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg35_fsm_38.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg38_fsm_41.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg41_fsm_44.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg44_fsm_47.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg47_fsm_50.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg3_fsm_6.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg9_fsm_12.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg12_fsm_15.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg15_fsm_18.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg18_fsm_21.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg21_fsm_24.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg24_fsm_27.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg27_fsm_30.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg30_fsm_33.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg33_fsm_36.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg36_fsm_39.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg39_fsm_42.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg42_fsm_45.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg45_fsm_48.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg48_fsm_51.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg49_fsm_52.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read())))) {
        grp_fu_68255_p0 = a_load_reg_69893.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_4.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()))) {
        grp_fu_68255_p0 = a_q0.read();
    } else {
        grp_fu_68255_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void matmult::thread_grp_fu_68261_p0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg4_fsm_7.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg10_fsm_13.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg13_fsm_16.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg16_fsm_19.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg19_fsm_22.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg22_fsm_25.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg25_fsm_28.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg28_fsm_31.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg31_fsm_34.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg34_fsm_37.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg37_fsm_40.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg40_fsm_43.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg43_fsm_46.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg46_fsm_49.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg2_fsm_5.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg11_fsm_14.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg14_fsm_17.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg17_fsm_20.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg20_fsm_23.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg23_fsm_26.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg26_fsm_29.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg29_fsm_32.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg32_fsm_35.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg35_fsm_38.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg38_fsm_41.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg41_fsm_44.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg44_fsm_47.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg47_fsm_50.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg3_fsm_6.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg9_fsm_12.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg12_fsm_15.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg15_fsm_18.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg18_fsm_21.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg21_fsm_24.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg24_fsm_27.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg27_fsm_30.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg30_fsm_33.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg33_fsm_36.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg36_fsm_39.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg39_fsm_42.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg42_fsm_45.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg45_fsm_48.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg48_fsm_51.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg49_fsm_52.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read())))) {
        grp_fu_68261_p0 = a_load_reg_69893.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_4.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()))) {
        grp_fu_68261_p0 = a_q0.read();
    } else {
        grp_fu_68261_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void matmult::thread_i_1_fu_68359_p2() {
    i_1_fu_68359_p2 = (!i_reg_3681.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(i_reg_3681.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void matmult::thread_j_1_fu_68371_p2() {
    j_1_fu_68371_p2 = (!j_reg_65504.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(j_reg_65504.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void matmult::thread_j_2_fu_69510_p2() {
    j_2_fu_69510_p2 = (!j2_reg_68136.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(j2_reg_68136.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void matmult::thread_j_phi_fu_65508_p202() {
    j_phi_fu_65508_p202 = j_reg_65504.read();
}

void matmult::thread_k_1_fu_68388_p2() {
    k_1_fu_68388_p2 = (!k_phi_fu_68117_p4.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(k_phi_fu_68117_p4.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void matmult::thread_k_phi_fu_68117_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond2_reg_69859.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read()))) {
        k_phi_fu_68117_p4 = k_1_reg_69863.read();
    } else {
        k_phi_fu_68117_p4 = k_reg_68113.read();
    }
}

void matmult::thread_next_mul2_fu_68347_p2() {
    next_mul2_fu_68347_p2 = (!phi_mul1_reg_3692.read().is_01() || !ap_const_lv14_64.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul1_reg_3692.read()) + sc_biguint<14>(ap_const_lv14_64));
}

void matmult::thread_next_mul_fu_69476_p2() {
    next_mul_fu_69476_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_64.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_64));
}

void matmult::thread_out_r_address0() {
    out_r_address0 =  (sc_lv<14>) (tmp_109_cast_fu_69526_p1.read());
}

void matmult::thread_out_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st63_fsm_53.read())) {
        out_r_ce0 = ap_const_logic_1;
    } else {
        out_r_ce0 = ap_const_logic_0;
    }
}

void matmult::thread_out_r_d0() {
    out_r_d0 = tmp_2_fu_69531_p102.read();
}

void matmult::thread_out_r_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st63_fsm_53.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_69504_p2.read())))) {
        out_r_we0 = ap_const_logic_1;
    } else {
        out_r_we0 = ap_const_logic_0;
    }
}

void matmult::thread_out_vec_load_1_1_phi_fu_68093_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_69859_pp0_iter1.read()))) {
        out_vec_load_1_1_phi_fu_68093_p4 = out_vec_1_1_reg_69985.read();
    } else {
        out_vec_load_1_1_phi_fu_68093_p4 = out_vec_load_1_1_reg_68089.read();
    }
}

void matmult::thread_out_vec_load_1_2_phi_fu_68081_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_69859_pp0_iter1.read()))) {
        out_vec_load_1_2_phi_fu_68081_p4 = out_vec_2_1_reg_70001.read();
    } else {
        out_vec_load_1_2_phi_fu_68081_p4 = out_vec_load_1_2_reg_68077.read();
    }
}

void matmult::thread_out_vec_load_1_3_phi_fu_68069_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg6_fsm_9.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_69859_pp0_iter1.read()))) {
        out_vec_load_1_3_phi_fu_68069_p4 = out_vec_3_1_reg_70007.read();
    } else {
        out_vec_load_1_3_phi_fu_68069_p4 = out_vec_load_1_3_reg_68065.read();
    }
}

void matmult::thread_out_vec_load_1_4_phi_fu_68057_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_69859_pp0_iter1.read()))) {
        out_vec_load_1_4_phi_fu_68057_p4 = out_vec_4_1_reg_70023.read();
    } else {
        out_vec_load_1_4_phi_fu_68057_p4 = out_vec_load_1_4_reg_68053.read();
    }
}

void matmult::thread_out_vec_load_1_5_phi_fu_68045_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg7_fsm_10.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_69859_pp0_iter1.read()))) {
        out_vec_load_1_5_phi_fu_68045_p4 = out_vec_5_1_reg_70029.read();
    } else {
        out_vec_load_1_5_phi_fu_68045_p4 = out_vec_load_1_5_reg_68041.read();
    }
}

void matmult::thread_out_vec_load_1_6_phi_fu_68033_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_69859_pp0_iter1.read()))) {
        out_vec_load_1_6_phi_fu_68033_p4 = out_vec_6_1_reg_70045.read();
    } else {
        out_vec_load_1_6_phi_fu_68033_p4 = out_vec_load_1_6_reg_68029.read();
    }
}

void matmult::thread_out_vec_load_1_7_phi_fu_68021_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg8_fsm_11.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_69859_pp0_iter1.read()))) {
        out_vec_load_1_7_phi_fu_68021_p4 = out_vec_7_1_reg_70051.read();
    } else {
        out_vec_load_1_7_phi_fu_68021_p4 = out_vec_load_1_7_reg_68017.read();
    }
}

void matmult::thread_out_vec_load_1_phi_fu_68105_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg5_fsm_8.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_69859_pp0_iter1.read()))) {
        out_vec_load_1_phi_fu_68105_p4 = out_vec_0_1_reg_69979.read();
    } else {
        out_vec_load_1_phi_fu_68105_p4 = out_vec_load_1_reg_68101.read();
    }
}

void matmult::thread_phi_mul_cast_fu_68377_p1() {
    phi_mul_cast_fu_68377_p1 = esl_zext<64,14>(phi_mul_phi_fu_68128_p4.read());
}

void matmult::thread_phi_mul_phi_fu_68128_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond2_reg_69859.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_3.read()))) {
        phi_mul_phi_fu_68128_p4 = next_mul_reg_70849.read();
    } else {
        phi_mul_phi_fu_68128_p4 = phi_mul_reg_68124.read();
    }
}

void matmult::thread_tmp_100_cast_fu_69405_p1() {
    tmp_100_cast_fu_69405_p1 = esl_zext<64,14>(tmp_95_fu_69399_p2.read());
}

void matmult::thread_tmp_100_fu_69454_p2() {
    tmp_100_fu_69454_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_60.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_60));
}

void matmult::thread_tmp_101_cast_fu_69416_p1() {
    tmp_101_cast_fu_69416_p1 = esl_zext<64,14>(tmp_96_fu_69410_p2.read());
}

void matmult::thread_tmp_101_fu_69465_p2() {
    tmp_101_fu_69465_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_61.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_61));
}

void matmult::thread_tmp_102_cast_fu_69427_p1() {
    tmp_102_cast_fu_69427_p1 = esl_zext<64,14>(tmp_97_fu_69421_p2.read());
}

void matmult::thread_tmp_102_fu_69482_p2() {
    tmp_102_fu_69482_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_62.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_62));
}

void matmult::thread_tmp_103_cast_fu_69438_p1() {
    tmp_103_cast_fu_69438_p1 = esl_zext<64,14>(tmp_98_fu_69432_p2.read());
}

void matmult::thread_tmp_103_fu_69493_p2() {
    tmp_103_fu_69493_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_63.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_63));
}

void matmult::thread_tmp_104_cast_fu_69449_p1() {
    tmp_104_cast_fu_69449_p1 = esl_zext<64,14>(tmp_99_fu_69443_p2.read());
}

void matmult::thread_tmp_104_fu_69520_p2() {
    tmp_104_fu_69520_p2 = (!phi_mul1_reg_3692.read().is_01() || !tmp_5_cast_fu_69516_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul1_reg_3692.read()) + sc_biguint<14>(tmp_5_cast_fu_69516_p1.read()));
}

void matmult::thread_tmp_105_cast_fu_69460_p1() {
    tmp_105_cast_fu_69460_p1 = esl_zext<64,14>(tmp_100_fu_69454_p2.read());
}

void matmult::thread_tmp_106_cast_fu_69471_p1() {
    tmp_106_cast_fu_69471_p1 = esl_zext<64,14>(tmp_101_fu_69465_p2.read());
}

void matmult::thread_tmp_107_cast_fu_69488_p1() {
    tmp_107_cast_fu_69488_p1 = esl_zext<64,14>(tmp_102_fu_69482_p2.read());
}

void matmult::thread_tmp_108_cast_fu_69499_p1() {
    tmp_108_cast_fu_69499_p1 = esl_zext<64,14>(tmp_103_fu_69493_p2.read());
}

void matmult::thread_tmp_109_cast_fu_69526_p1() {
    tmp_109_cast_fu_69526_p1 = esl_zext<64,14>(tmp_104_fu_69520_p2.read());
}

void matmult::thread_tmp_10_cast_fu_68415_p1() {
    tmp_10_cast_fu_68415_p1 = esl_zext<64,14>(tmp_s_fu_68409_p2.read());
}

void matmult::thread_tmp_10_fu_68464_p2() {
    tmp_10_fu_68464_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_6.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_6));
}

void matmult::thread_tmp_11_cast_fu_68426_p1() {
    tmp_11_cast_fu_68426_p1 = esl_zext<64,14>(tmp_3_fu_68420_p2.read());
}

void matmult::thread_tmp_11_fu_68475_p2() {
    tmp_11_fu_68475_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_7.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_7));
}

void matmult::thread_tmp_12_cast_fu_68437_p1() {
    tmp_12_cast_fu_68437_p1 = esl_zext<64,14>(tmp_5_fu_68431_p2.read());
}

void matmult::thread_tmp_12_fu_68486_p2() {
    tmp_12_fu_68486_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_8.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_8));
}

void matmult::thread_tmp_13_cast_fu_68448_p1() {
    tmp_13_cast_fu_68448_p1 = esl_zext<64,14>(tmp_6_fu_68442_p2.read());
}

void matmult::thread_tmp_13_fu_68497_p2() {
    tmp_13_fu_68497_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_9.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_9));
}

void matmult::thread_tmp_14_cast_fu_68459_p1() {
    tmp_14_cast_fu_68459_p1 = esl_zext<64,14>(tmp_8_fu_68453_p2.read());
}

void matmult::thread_tmp_14_fu_68508_p2() {
    tmp_14_fu_68508_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_A.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_A));
}

void matmult::thread_tmp_15_cast_fu_68470_p1() {
    tmp_15_cast_fu_68470_p1 = esl_zext<64,14>(tmp_10_fu_68464_p2.read());
}

void matmult::thread_tmp_15_fu_68519_p2() {
    tmp_15_fu_68519_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_B.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_B));
}

void matmult::thread_tmp_16_cast_fu_68481_p1() {
    tmp_16_cast_fu_68481_p1 = esl_zext<64,14>(tmp_11_fu_68475_p2.read());
}

void matmult::thread_tmp_16_fu_68530_p2() {
    tmp_16_fu_68530_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_C.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_C));
}

void matmult::thread_tmp_17_cast_fu_68492_p1() {
    tmp_17_cast_fu_68492_p1 = esl_zext<64,14>(tmp_12_fu_68486_p2.read());
}

void matmult::thread_tmp_17_fu_68541_p2() {
    tmp_17_fu_68541_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_D.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_D));
}

void matmult::thread_tmp_18_cast_fu_68503_p1() {
    tmp_18_cast_fu_68503_p1 = esl_zext<64,14>(tmp_13_fu_68497_p2.read());
}

void matmult::thread_tmp_18_fu_68552_p2() {
    tmp_18_fu_68552_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_E.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_E));
}

void matmult::thread_tmp_19_cast_fu_68514_p1() {
    tmp_19_cast_fu_68514_p1 = esl_zext<64,14>(tmp_14_fu_68508_p2.read());
}

void matmult::thread_tmp_19_fu_68563_p2() {
    tmp_19_fu_68563_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_F.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_F));
}

void matmult::thread_tmp_20_cast_fu_68525_p1() {
    tmp_20_cast_fu_68525_p1 = esl_zext<64,14>(tmp_15_fu_68519_p2.read());
}

void matmult::thread_tmp_20_fu_68574_p2() {
    tmp_20_fu_68574_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_10.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_10));
}

void matmult::thread_tmp_21_cast_fu_68536_p1() {
    tmp_21_cast_fu_68536_p1 = esl_zext<64,14>(tmp_16_fu_68530_p2.read());
}

void matmult::thread_tmp_21_fu_68585_p2() {
    tmp_21_fu_68585_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_11.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_11));
}

void matmult::thread_tmp_22_cast_fu_68547_p1() {
    tmp_22_cast_fu_68547_p1 = esl_zext<64,14>(tmp_17_fu_68541_p2.read());
}

void matmult::thread_tmp_22_fu_68596_p2() {
    tmp_22_fu_68596_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_12.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_12));
}

void matmult::thread_tmp_23_cast_fu_68558_p1() {
    tmp_23_cast_fu_68558_p1 = esl_zext<64,14>(tmp_18_fu_68552_p2.read());
}

void matmult::thread_tmp_23_fu_68607_p2() {
    tmp_23_fu_68607_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_13.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_13));
}

void matmult::thread_tmp_24_cast_fu_68569_p1() {
    tmp_24_cast_fu_68569_p1 = esl_zext<64,14>(tmp_19_fu_68563_p2.read());
}

void matmult::thread_tmp_24_fu_68618_p2() {
    tmp_24_fu_68618_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_14.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_14));
}

void matmult::thread_tmp_25_cast_fu_68580_p1() {
    tmp_25_cast_fu_68580_p1 = esl_zext<64,14>(tmp_20_fu_68574_p2.read());
}

void matmult::thread_tmp_25_fu_68629_p2() {
    tmp_25_fu_68629_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_15.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_15));
}

void matmult::thread_tmp_26_cast_fu_68591_p1() {
    tmp_26_cast_fu_68591_p1 = esl_zext<64,14>(tmp_21_fu_68585_p2.read());
}

void matmult::thread_tmp_26_fu_68640_p2() {
    tmp_26_fu_68640_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_16.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_16));
}

void matmult::thread_tmp_27_cast_fu_68602_p1() {
    tmp_27_cast_fu_68602_p1 = esl_zext<64,14>(tmp_22_fu_68596_p2.read());
}

void matmult::thread_tmp_27_fu_68651_p2() {
    tmp_27_fu_68651_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_17.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_17));
}

void matmult::thread_tmp_28_cast_fu_68613_p1() {
    tmp_28_cast_fu_68613_p1 = esl_zext<64,14>(tmp_23_fu_68607_p2.read());
}

void matmult::thread_tmp_28_fu_68662_p2() {
    tmp_28_fu_68662_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_18.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_18));
}

void matmult::thread_tmp_29_cast_fu_68624_p1() {
    tmp_29_cast_fu_68624_p1 = esl_zext<64,14>(tmp_24_fu_68618_p2.read());
}

void matmult::thread_tmp_29_fu_68673_p2() {
    tmp_29_fu_68673_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_19.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_19));
}

void matmult::thread_tmp_30_cast_fu_68635_p1() {
    tmp_30_cast_fu_68635_p1 = esl_zext<64,14>(tmp_25_fu_68629_p2.read());
}

void matmult::thread_tmp_30_fu_68684_p2() {
    tmp_30_fu_68684_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_1A.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_1A));
}

void matmult::thread_tmp_31_cast_fu_68646_p1() {
    tmp_31_cast_fu_68646_p1 = esl_zext<64,14>(tmp_26_fu_68640_p2.read());
}

void matmult::thread_tmp_31_fu_68695_p2() {
    tmp_31_fu_68695_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_1B.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_1B));
}

void matmult::thread_tmp_32_cast_fu_68657_p1() {
    tmp_32_cast_fu_68657_p1 = esl_zext<64,14>(tmp_27_fu_68651_p2.read());
}

void matmult::thread_tmp_32_fu_68706_p2() {
    tmp_32_fu_68706_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_1C.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_1C));
}

void matmult::thread_tmp_33_cast_fu_68668_p1() {
    tmp_33_cast_fu_68668_p1 = esl_zext<64,14>(tmp_28_fu_68662_p2.read());
}

void matmult::thread_tmp_33_fu_68717_p2() {
    tmp_33_fu_68717_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_1D.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_1D));
}

void matmult::thread_tmp_34_cast_fu_68679_p1() {
    tmp_34_cast_fu_68679_p1 = esl_zext<64,14>(tmp_29_fu_68673_p2.read());
}

void matmult::thread_tmp_34_fu_68728_p2() {
    tmp_34_fu_68728_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_1E.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_1E));
}

void matmult::thread_tmp_35_cast_fu_68690_p1() {
    tmp_35_cast_fu_68690_p1 = esl_zext<64,14>(tmp_30_fu_68684_p2.read());
}

void matmult::thread_tmp_35_fu_68739_p2() {
    tmp_35_fu_68739_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_1F.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_1F));
}

void matmult::thread_tmp_36_cast_fu_68701_p1() {
    tmp_36_cast_fu_68701_p1 = esl_zext<64,14>(tmp_31_fu_68695_p2.read());
}

void matmult::thread_tmp_36_fu_68750_p2() {
    tmp_36_fu_68750_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_20.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_20));
}

void matmult::thread_tmp_37_cast_fu_68712_p1() {
    tmp_37_cast_fu_68712_p1 = esl_zext<64,14>(tmp_32_fu_68706_p2.read());
}

void matmult::thread_tmp_37_fu_68761_p2() {
    tmp_37_fu_68761_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_21.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_21));
}

void matmult::thread_tmp_38_cast_fu_68723_p1() {
    tmp_38_cast_fu_68723_p1 = esl_zext<64,14>(tmp_33_fu_68717_p2.read());
}

void matmult::thread_tmp_38_fu_68772_p2() {
    tmp_38_fu_68772_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_22.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_22));
}

void matmult::thread_tmp_39_cast_fu_68734_p1() {
    tmp_39_cast_fu_68734_p1 = esl_zext<64,14>(tmp_34_fu_68728_p2.read());
}

void matmult::thread_tmp_39_fu_68783_p2() {
    tmp_39_fu_68783_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_23.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_23));
}

void matmult::thread_tmp_3_cast_fu_68394_p1() {
    tmp_3_cast_fu_68394_p1 = esl_zext<14,7>(k_phi_fu_68117_p4.read());
}

void matmult::thread_tmp_3_fu_68420_p2() {
    tmp_3_fu_68420_p2 = (phi_mul_reg_68124.read() | ap_const_lv14_2);
}

void matmult::thread_tmp_40_cast_fu_68745_p1() {
    tmp_40_cast_fu_68745_p1 = esl_zext<64,14>(tmp_35_fu_68739_p2.read());
}

void matmult::thread_tmp_40_fu_68794_p2() {
    tmp_40_fu_68794_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_24.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_24));
}

void matmult::thread_tmp_41_cast_fu_68756_p1() {
    tmp_41_cast_fu_68756_p1 = esl_zext<64,14>(tmp_36_fu_68750_p2.read());
}

void matmult::thread_tmp_41_fu_68805_p2() {
    tmp_41_fu_68805_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_25.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_25));
}

void matmult::thread_tmp_42_cast_fu_68767_p1() {
    tmp_42_cast_fu_68767_p1 = esl_zext<64,14>(tmp_37_fu_68761_p2.read());
}

void matmult::thread_tmp_42_fu_68816_p2() {
    tmp_42_fu_68816_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_26.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_26));
}

void matmult::thread_tmp_43_cast_fu_68778_p1() {
    tmp_43_cast_fu_68778_p1 = esl_zext<64,14>(tmp_38_fu_68772_p2.read());
}

void matmult::thread_tmp_43_fu_68827_p2() {
    tmp_43_fu_68827_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_27.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_27));
}

void matmult::thread_tmp_44_cast_fu_68789_p1() {
    tmp_44_cast_fu_68789_p1 = esl_zext<64,14>(tmp_39_fu_68783_p2.read());
}

void matmult::thread_tmp_44_fu_68838_p2() {
    tmp_44_fu_68838_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_28.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_28));
}

void matmult::thread_tmp_45_cast_fu_68800_p1() {
    tmp_45_cast_fu_68800_p1 = esl_zext<64,14>(tmp_40_fu_68794_p2.read());
}

void matmult::thread_tmp_45_fu_68849_p2() {
    tmp_45_fu_68849_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_29.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_29));
}

void matmult::thread_tmp_46_cast_fu_68811_p1() {
    tmp_46_cast_fu_68811_p1 = esl_zext<64,14>(tmp_41_fu_68805_p2.read());
}

void matmult::thread_tmp_46_fu_68860_p2() {
    tmp_46_fu_68860_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_2A.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_2A));
}

void matmult::thread_tmp_47_cast_fu_68822_p1() {
    tmp_47_cast_fu_68822_p1 = esl_zext<64,14>(tmp_42_fu_68816_p2.read());
}

void matmult::thread_tmp_47_fu_68871_p2() {
    tmp_47_fu_68871_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_2B.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_2B));
}

void matmult::thread_tmp_48_cast_fu_68833_p1() {
    tmp_48_cast_fu_68833_p1 = esl_zext<64,14>(tmp_43_fu_68827_p2.read());
}

void matmult::thread_tmp_48_fu_68882_p2() {
    tmp_48_fu_68882_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_2C.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_2C));
}

void matmult::thread_tmp_49_cast_fu_68844_p1() {
    tmp_49_cast_fu_68844_p1 = esl_zext<64,14>(tmp_44_fu_68838_p2.read());
}

void matmult::thread_tmp_49_fu_68893_p2() {
    tmp_49_fu_68893_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_2D.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_2D));
}

void matmult::thread_tmp_50_cast_fu_68855_p1() {
    tmp_50_cast_fu_68855_p1 = esl_zext<64,14>(tmp_45_fu_68849_p2.read());
}

void matmult::thread_tmp_50_fu_68904_p2() {
    tmp_50_fu_68904_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_2E.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_2E));
}

void matmult::thread_tmp_51_cast_fu_68866_p1() {
    tmp_51_cast_fu_68866_p1 = esl_zext<64,14>(tmp_46_fu_68860_p2.read());
}

void matmult::thread_tmp_51_fu_68915_p2() {
    tmp_51_fu_68915_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_2F.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_2F));
}

void matmult::thread_tmp_52_cast_fu_68877_p1() {
    tmp_52_cast_fu_68877_p1 = esl_zext<64,14>(tmp_47_fu_68871_p2.read());
}

void matmult::thread_tmp_52_fu_68926_p2() {
    tmp_52_fu_68926_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_30.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_30));
}

void matmult::thread_tmp_53_cast_fu_68888_p1() {
    tmp_53_cast_fu_68888_p1 = esl_zext<64,14>(tmp_48_fu_68882_p2.read());
}

void matmult::thread_tmp_53_fu_68937_p2() {
    tmp_53_fu_68937_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_31.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_31));
}

void matmult::thread_tmp_54_cast_fu_68899_p1() {
    tmp_54_cast_fu_68899_p1 = esl_zext<64,14>(tmp_49_fu_68893_p2.read());
}

void matmult::thread_tmp_54_fu_68948_p2() {
    tmp_54_fu_68948_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_32.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_32));
}

void matmult::thread_tmp_55_cast_fu_68910_p1() {
    tmp_55_cast_fu_68910_p1 = esl_zext<64,14>(tmp_50_fu_68904_p2.read());
}

void matmult::thread_tmp_55_fu_68959_p2() {
    tmp_55_fu_68959_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_33.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_33));
}

void matmult::thread_tmp_56_cast_fu_68921_p1() {
    tmp_56_cast_fu_68921_p1 = esl_zext<64,14>(tmp_51_fu_68915_p2.read());
}

void matmult::thread_tmp_56_fu_68970_p2() {
    tmp_56_fu_68970_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_34.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_34));
}

void matmult::thread_tmp_57_cast_fu_68932_p1() {
    tmp_57_cast_fu_68932_p1 = esl_zext<64,14>(tmp_52_fu_68926_p2.read());
}

void matmult::thread_tmp_57_fu_68981_p2() {
    tmp_57_fu_68981_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_35.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_35));
}

void matmult::thread_tmp_58_cast_fu_68943_p1() {
    tmp_58_cast_fu_68943_p1 = esl_zext<64,14>(tmp_53_fu_68937_p2.read());
}

void matmult::thread_tmp_58_fu_68992_p2() {
    tmp_58_fu_68992_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_36.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_36));
}

void matmult::thread_tmp_59_cast_fu_68954_p1() {
    tmp_59_cast_fu_68954_p1 = esl_zext<64,14>(tmp_54_fu_68948_p2.read());
}

void matmult::thread_tmp_59_fu_69003_p2() {
    tmp_59_fu_69003_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_37.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_37));
}

void matmult::thread_tmp_5_cast_fu_69516_p1() {
    tmp_5_cast_fu_69516_p1 = esl_zext<14,7>(j2_reg_68136.read());
}

void matmult::thread_tmp_5_fu_68431_p2() {
    tmp_5_fu_68431_p2 = (phi_mul_reg_68124.read() | ap_const_lv14_3);
}

void matmult::thread_tmp_60_cast_fu_68965_p1() {
    tmp_60_cast_fu_68965_p1 = esl_zext<64,14>(tmp_55_fu_68959_p2.read());
}

void matmult::thread_tmp_60_fu_69014_p2() {
    tmp_60_fu_69014_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_38.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_38));
}

void matmult::thread_tmp_61_cast_fu_68976_p1() {
    tmp_61_cast_fu_68976_p1 = esl_zext<64,14>(tmp_56_fu_68970_p2.read());
}

void matmult::thread_tmp_61_fu_69025_p2() {
    tmp_61_fu_69025_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_39.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_39));
}

void matmult::thread_tmp_62_cast_fu_68987_p1() {
    tmp_62_cast_fu_68987_p1 = esl_zext<64,14>(tmp_57_fu_68981_p2.read());
}

void matmult::thread_tmp_62_fu_69036_p2() {
    tmp_62_fu_69036_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_3A.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_3A));
}

void matmult::thread_tmp_63_cast_fu_68998_p1() {
    tmp_63_cast_fu_68998_p1 = esl_zext<64,14>(tmp_58_fu_68992_p2.read());
}

void matmult::thread_tmp_63_fu_69047_p2() {
    tmp_63_fu_69047_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_3B.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_3B));
}

void matmult::thread_tmp_64_cast_fu_69009_p1() {
    tmp_64_cast_fu_69009_p1 = esl_zext<64,14>(tmp_59_fu_69003_p2.read());
}

void matmult::thread_tmp_64_fu_69058_p2() {
    tmp_64_fu_69058_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_3C.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_3C));
}

void matmult::thread_tmp_65_cast_fu_69020_p1() {
    tmp_65_cast_fu_69020_p1 = esl_zext<64,14>(tmp_60_fu_69014_p2.read());
}

void matmult::thread_tmp_65_fu_69069_p2() {
    tmp_65_fu_69069_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_3D.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_3D));
}

void matmult::thread_tmp_66_cast_fu_69031_p1() {
    tmp_66_cast_fu_69031_p1 = esl_zext<64,14>(tmp_61_fu_69025_p2.read());
}

void matmult::thread_tmp_66_fu_69080_p2() {
    tmp_66_fu_69080_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_3E.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_3E));
}

void matmult::thread_tmp_67_cast_fu_69042_p1() {
    tmp_67_cast_fu_69042_p1 = esl_zext<64,14>(tmp_62_fu_69036_p2.read());
}

void matmult::thread_tmp_67_fu_69091_p2() {
    tmp_67_fu_69091_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_3F.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_3F));
}

void matmult::thread_tmp_68_cast_fu_69053_p1() {
    tmp_68_cast_fu_69053_p1 = esl_zext<64,14>(tmp_63_fu_69047_p2.read());
}

void matmult::thread_tmp_68_fu_69102_p2() {
    tmp_68_fu_69102_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_40.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_40));
}

void matmult::thread_tmp_69_cast_fu_69064_p1() {
    tmp_69_cast_fu_69064_p1 = esl_zext<64,14>(tmp_64_fu_69058_p2.read());
}

void matmult::thread_tmp_69_fu_69113_p2() {
    tmp_69_fu_69113_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_41.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_41));
}

void matmult::thread_tmp_6_fu_68442_p2() {
    tmp_6_fu_68442_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_4.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_4));
}

void matmult::thread_tmp_70_cast_fu_69075_p1() {
    tmp_70_cast_fu_69075_p1 = esl_zext<64,14>(tmp_65_fu_69069_p2.read());
}

void matmult::thread_tmp_70_fu_69124_p2() {
    tmp_70_fu_69124_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_42.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_42));
}

void matmult::thread_tmp_71_cast_fu_69086_p1() {
    tmp_71_cast_fu_69086_p1 = esl_zext<64,14>(tmp_66_fu_69080_p2.read());
}

void matmult::thread_tmp_71_fu_69135_p2() {
    tmp_71_fu_69135_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_43.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_43));
}

void matmult::thread_tmp_72_cast_fu_69097_p1() {
    tmp_72_cast_fu_69097_p1 = esl_zext<64,14>(tmp_67_fu_69091_p2.read());
}

void matmult::thread_tmp_72_fu_69146_p2() {
    tmp_72_fu_69146_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_44.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_44));
}

void matmult::thread_tmp_73_cast_fu_69108_p1() {
    tmp_73_cast_fu_69108_p1 = esl_zext<64,14>(tmp_68_fu_69102_p2.read());
}

void matmult::thread_tmp_73_fu_69157_p2() {
    tmp_73_fu_69157_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_45.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_45));
}

void matmult::thread_tmp_74_cast_fu_69119_p1() {
    tmp_74_cast_fu_69119_p1 = esl_zext<64,14>(tmp_69_fu_69113_p2.read());
}

void matmult::thread_tmp_74_fu_69168_p2() {
    tmp_74_fu_69168_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_46.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_46));
}

void matmult::thread_tmp_75_cast_fu_69130_p1() {
    tmp_75_cast_fu_69130_p1 = esl_zext<64,14>(tmp_70_fu_69124_p2.read());
}

void matmult::thread_tmp_75_fu_69179_p2() {
    tmp_75_fu_69179_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_47.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_47));
}

void matmult::thread_tmp_76_cast_fu_69141_p1() {
    tmp_76_cast_fu_69141_p1 = esl_zext<64,14>(tmp_71_fu_69135_p2.read());
}

void matmult::thread_tmp_76_fu_69190_p2() {
    tmp_76_fu_69190_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_48.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_48));
}

void matmult::thread_tmp_77_cast_fu_69152_p1() {
    tmp_77_cast_fu_69152_p1 = esl_zext<64,14>(tmp_72_fu_69146_p2.read());
}

void matmult::thread_tmp_77_fu_69201_p2() {
    tmp_77_fu_69201_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_49.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_49));
}

void matmult::thread_tmp_78_cast_fu_69163_p1() {
    tmp_78_cast_fu_69163_p1 = esl_zext<64,14>(tmp_73_fu_69157_p2.read());
}

void matmult::thread_tmp_78_fu_69212_p2() {
    tmp_78_fu_69212_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_4A.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_4A));
}

void matmult::thread_tmp_79_cast_fu_69174_p1() {
    tmp_79_cast_fu_69174_p1 = esl_zext<64,14>(tmp_74_fu_69168_p2.read());
}

void matmult::thread_tmp_79_fu_69223_p2() {
    tmp_79_fu_69223_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_4B.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_4B));
}

void matmult::thread_tmp_7_cast_fu_68404_p1() {
    tmp_7_cast_fu_68404_p1 = esl_zext<64,14>(tmp_7_fu_68398_p2.read());
}

void matmult::thread_tmp_7_fu_68398_p2() {
    tmp_7_fu_68398_p2 = (!phi_mul1_reg_3692.read().is_01() || !tmp_3_cast_fu_68394_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul1_reg_3692.read()) + sc_biguint<14>(tmp_3_cast_fu_68394_p1.read()));
}

void matmult::thread_tmp_80_cast_fu_69185_p1() {
    tmp_80_cast_fu_69185_p1 = esl_zext<64,14>(tmp_75_fu_69179_p2.read());
}

void matmult::thread_tmp_80_fu_69234_p2() {
    tmp_80_fu_69234_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_4C.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_4C));
}

void matmult::thread_tmp_81_cast_fu_69196_p1() {
    tmp_81_cast_fu_69196_p1 = esl_zext<64,14>(tmp_76_fu_69190_p2.read());
}

void matmult::thread_tmp_81_fu_69245_p2() {
    tmp_81_fu_69245_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_4D.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_4D));
}

void matmult::thread_tmp_82_cast_fu_69207_p1() {
    tmp_82_cast_fu_69207_p1 = esl_zext<64,14>(tmp_77_fu_69201_p2.read());
}

void matmult::thread_tmp_82_fu_69256_p2() {
    tmp_82_fu_69256_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_4E.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_4E));
}

void matmult::thread_tmp_83_cast_fu_69218_p1() {
    tmp_83_cast_fu_69218_p1 = esl_zext<64,14>(tmp_78_fu_69212_p2.read());
}

void matmult::thread_tmp_83_fu_69267_p2() {
    tmp_83_fu_69267_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_4F.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_4F));
}

void matmult::thread_tmp_84_cast_fu_69229_p1() {
    tmp_84_cast_fu_69229_p1 = esl_zext<64,14>(tmp_79_fu_69223_p2.read());
}

void matmult::thread_tmp_84_fu_69278_p2() {
    tmp_84_fu_69278_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_50.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_50));
}

void matmult::thread_tmp_85_cast_fu_69240_p1() {
    tmp_85_cast_fu_69240_p1 = esl_zext<64,14>(tmp_80_fu_69234_p2.read());
}

void matmult::thread_tmp_85_fu_69289_p2() {
    tmp_85_fu_69289_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_51.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_51));
}

void matmult::thread_tmp_86_cast_fu_69251_p1() {
    tmp_86_cast_fu_69251_p1 = esl_zext<64,14>(tmp_81_fu_69245_p2.read());
}

void matmult::thread_tmp_86_fu_69300_p2() {
    tmp_86_fu_69300_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_52.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_52));
}

void matmult::thread_tmp_87_cast_fu_69262_p1() {
    tmp_87_cast_fu_69262_p1 = esl_zext<64,14>(tmp_82_fu_69256_p2.read());
}

void matmult::thread_tmp_87_fu_69311_p2() {
    tmp_87_fu_69311_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_53.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_53));
}

void matmult::thread_tmp_88_cast_fu_69273_p1() {
    tmp_88_cast_fu_69273_p1 = esl_zext<64,14>(tmp_83_fu_69267_p2.read());
}

void matmult::thread_tmp_88_fu_69322_p2() {
    tmp_88_fu_69322_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_54.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_54));
}

void matmult::thread_tmp_89_cast_fu_69284_p1() {
    tmp_89_cast_fu_69284_p1 = esl_zext<64,14>(tmp_84_fu_69278_p2.read());
}

void matmult::thread_tmp_89_fu_69333_p2() {
    tmp_89_fu_69333_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_55.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_55));
}

void matmult::thread_tmp_8_fu_68453_p2() {
    tmp_8_fu_68453_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_5.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_5));
}

void matmult::thread_tmp_90_cast_fu_69295_p1() {
    tmp_90_cast_fu_69295_p1 = esl_zext<64,14>(tmp_85_fu_69289_p2.read());
}

void matmult::thread_tmp_90_fu_69344_p2() {
    tmp_90_fu_69344_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_56.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_56));
}

void matmult::thread_tmp_91_cast_fu_69306_p1() {
    tmp_91_cast_fu_69306_p1 = esl_zext<64,14>(tmp_86_fu_69300_p2.read());
}

void matmult::thread_tmp_91_fu_69355_p2() {
    tmp_91_fu_69355_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_57.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_57));
}

void matmult::thread_tmp_92_cast_fu_69317_p1() {
    tmp_92_cast_fu_69317_p1 = esl_zext<64,14>(tmp_87_fu_69311_p2.read());
}

void matmult::thread_tmp_92_fu_69366_p2() {
    tmp_92_fu_69366_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_58.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_58));
}

void matmult::thread_tmp_93_cast_fu_69328_p1() {
    tmp_93_cast_fu_69328_p1 = esl_zext<64,14>(tmp_88_fu_69322_p2.read());
}

void matmult::thread_tmp_93_fu_69377_p2() {
    tmp_93_fu_69377_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_59.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_59));
}

void matmult::thread_tmp_94_cast_fu_69339_p1() {
    tmp_94_cast_fu_69339_p1 = esl_zext<64,14>(tmp_89_fu_69333_p2.read());
}

void matmult::thread_tmp_94_fu_69388_p2() {
    tmp_94_fu_69388_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_5A.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_5A));
}

void matmult::thread_tmp_95_cast_fu_69350_p1() {
    tmp_95_cast_fu_69350_p1 = esl_zext<64,14>(tmp_90_fu_69344_p2.read());
}

void matmult::thread_tmp_95_fu_69399_p2() {
    tmp_95_fu_69399_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_5B.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_5B));
}

void matmult::thread_tmp_96_cast_fu_69361_p1() {
    tmp_96_cast_fu_69361_p1 = esl_zext<64,14>(tmp_91_fu_69355_p2.read());
}

void matmult::thread_tmp_96_fu_69410_p2() {
    tmp_96_fu_69410_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_5C.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_5C));
}

void matmult::thread_tmp_97_cast_fu_69372_p1() {
    tmp_97_cast_fu_69372_p1 = esl_zext<64,14>(tmp_92_fu_69366_p2.read());
}

void matmult::thread_tmp_97_fu_69421_p2() {
    tmp_97_fu_69421_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_5D.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_5D));
}

void matmult::thread_tmp_98_cast_fu_69383_p1() {
    tmp_98_cast_fu_69383_p1 = esl_zext<64,14>(tmp_93_fu_69377_p2.read());
}

void matmult::thread_tmp_98_fu_69432_p2() {
    tmp_98_fu_69432_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_5E.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_5E));
}

void matmult::thread_tmp_99_cast_fu_69394_p1() {
    tmp_99_cast_fu_69394_p1 = esl_zext<64,14>(tmp_94_fu_69388_p2.read());
}

void matmult::thread_tmp_99_fu_69443_p2() {
    tmp_99_fu_69443_p2 = (!phi_mul_reg_68124.read().is_01() || !ap_const_lv14_5F.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_68124.read()) + sc_biguint<14>(ap_const_lv14_5F));
}

void matmult::thread_tmp_s_fu_68409_p2() {
    tmp_s_fu_68409_p2 = (phi_mul_phi_fu_68128_p4.read() | ap_const_lv14_1);
}

}

