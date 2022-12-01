# This script segment is generated automatically by AutoPilot

set id 1
set name matmult_fadd_32ns_32ns_32_5_full_dsp
set corename simcore_fadd
set op fadd
set stage_num 5
set max_latency -1
set registered_input 1
set impl_style full_dsp
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fadd] == "ap_gen_simcore_fadd"} {
eval "ap_gen_simcore_fadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fadd
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 3
set name matmult_fmul_32ns_32ns_32_4_max_dsp
set corename simcore_fmul
set op fmul
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style max_dsp
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fmul] == "ap_gen_simcore_fmul"} {
eval "ap_gen_simcore_fmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fmul
set corename FMul
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 5
set name matmult_mux_100to1_sel7_32_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set in1_width 32
set in1_signed 0
set in2_width 32
set in2_signed 0
set in3_width 32
set in3_signed 0
set in4_width 32
set in4_signed 0
set in5_width 32
set in5_signed 0
set in6_width 32
set in6_signed 0
set in7_width 32
set in7_signed 0
set in8_width 32
set in8_signed 0
set in9_width 32
set in9_signed 0
set in10_width 32
set in10_signed 0
set in11_width 32
set in11_signed 0
set in12_width 32
set in12_signed 0
set in13_width 32
set in13_signed 0
set in14_width 32
set in14_signed 0
set in15_width 32
set in15_signed 0
set in16_width 32
set in16_signed 0
set in17_width 32
set in17_signed 0
set in18_width 32
set in18_signed 0
set in19_width 32
set in19_signed 0
set in20_width 32
set in20_signed 0
set in21_width 32
set in21_signed 0
set in22_width 32
set in22_signed 0
set in23_width 32
set in23_signed 0
set in24_width 32
set in24_signed 0
set in25_width 32
set in25_signed 0
set in26_width 32
set in26_signed 0
set in27_width 32
set in27_signed 0
set in28_width 32
set in28_signed 0
set in29_width 32
set in29_signed 0
set in30_width 32
set in30_signed 0
set in31_width 32
set in31_signed 0
set in32_width 32
set in32_signed 0
set in33_width 32
set in33_signed 0
set in34_width 32
set in34_signed 0
set in35_width 32
set in35_signed 0
set in36_width 32
set in36_signed 0
set in37_width 32
set in37_signed 0
set in38_width 32
set in38_signed 0
set in39_width 32
set in39_signed 0
set in40_width 32
set in40_signed 0
set in41_width 32
set in41_signed 0
set in42_width 32
set in42_signed 0
set in43_width 32
set in43_signed 0
set in44_width 32
set in44_signed 0
set in45_width 32
set in45_signed 0
set in46_width 32
set in46_signed 0
set in47_width 32
set in47_signed 0
set in48_width 32
set in48_signed 0
set in49_width 32
set in49_signed 0
set in50_width 32
set in50_signed 0
set in51_width 32
set in51_signed 0
set in52_width 32
set in52_signed 0
set in53_width 32
set in53_signed 0
set in54_width 32
set in54_signed 0
set in55_width 32
set in55_signed 0
set in56_width 32
set in56_signed 0
set in57_width 32
set in57_signed 0
set in58_width 32
set in58_signed 0
set in59_width 32
set in59_signed 0
set in60_width 32
set in60_signed 0
set in61_width 32
set in61_signed 0
set in62_width 32
set in62_signed 0
set in63_width 32
set in63_signed 0
set in64_width 32
set in64_signed 0
set in65_width 32
set in65_signed 0
set in66_width 32
set in66_signed 0
set in67_width 32
set in67_signed 0
set in68_width 32
set in68_signed 0
set in69_width 32
set in69_signed 0
set in70_width 32
set in70_signed 0
set in71_width 32
set in71_signed 0
set in72_width 32
set in72_signed 0
set in73_width 32
set in73_signed 0
set in74_width 32
set in74_signed 0
set in75_width 32
set in75_signed 0
set in76_width 32
set in76_signed 0
set in77_width 32
set in77_signed 0
set in78_width 32
set in78_signed 0
set in79_width 32
set in79_signed 0
set in80_width 32
set in80_signed 0
set in81_width 32
set in81_signed 0
set in82_width 32
set in82_signed 0
set in83_width 32
set in83_signed 0
set in84_width 32
set in84_signed 0
set in85_width 32
set in85_signed 0
set in86_width 32
set in86_signed 0
set in87_width 32
set in87_signed 0
set in88_width 32
set in88_signed 0
set in89_width 32
set in89_signed 0
set in90_width 32
set in90_signed 0
set in91_width 32
set in91_signed 0
set in92_width 32
set in92_signed 0
set in93_width 32
set in93_signed 0
set in94_width 32
set in94_signed 0
set in95_width 32
set in95_signed 0
set in96_width 32
set in96_signed 0
set in97_width 32
set in97_signed 0
set in98_width 32
set in98_signed 0
set in99_width 32
set in99_signed 0
set in100_width 32
set in100_signed 0
set in101_width 7
set in101_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    in3_width ${in3_width} \
    in3_signed ${in3_signed} \
    in4_width ${in4_width} \
    in4_signed ${in4_signed} \
    in5_width ${in5_width} \
    in5_signed ${in5_signed} \
    in6_width ${in6_width} \
    in6_signed ${in6_signed} \
    in7_width ${in7_width} \
    in7_signed ${in7_signed} \
    in8_width ${in8_width} \
    in8_signed ${in8_signed} \
    in9_width ${in9_width} \
    in9_signed ${in9_signed} \
    in10_width ${in10_width} \
    in10_signed ${in10_signed} \
    in11_width ${in11_width} \
    in11_signed ${in11_signed} \
    in12_width ${in12_width} \
    in12_signed ${in12_signed} \
    in13_width ${in13_width} \
    in13_signed ${in13_signed} \
    in14_width ${in14_width} \
    in14_signed ${in14_signed} \
    in15_width ${in15_width} \
    in15_signed ${in15_signed} \
    in16_width ${in16_width} \
    in16_signed ${in16_signed} \
    in17_width ${in17_width} \
    in17_signed ${in17_signed} \
    in18_width ${in18_width} \
    in18_signed ${in18_signed} \
    in19_width ${in19_width} \
    in19_signed ${in19_signed} \
    in20_width ${in20_width} \
    in20_signed ${in20_signed} \
    in21_width ${in21_width} \
    in21_signed ${in21_signed} \
    in22_width ${in22_width} \
    in22_signed ${in22_signed} \
    in23_width ${in23_width} \
    in23_signed ${in23_signed} \
    in24_width ${in24_width} \
    in24_signed ${in24_signed} \
    in25_width ${in25_width} \
    in25_signed ${in25_signed} \
    in26_width ${in26_width} \
    in26_signed ${in26_signed} \
    in27_width ${in27_width} \
    in27_signed ${in27_signed} \
    in28_width ${in28_width} \
    in28_signed ${in28_signed} \
    in29_width ${in29_width} \
    in29_signed ${in29_signed} \
    in30_width ${in30_width} \
    in30_signed ${in30_signed} \
    in31_width ${in31_width} \
    in31_signed ${in31_signed} \
    in32_width ${in32_width} \
    in32_signed ${in32_signed} \
    in33_width ${in33_width} \
    in33_signed ${in33_signed} \
    in34_width ${in34_width} \
    in34_signed ${in34_signed} \
    in35_width ${in35_width} \
    in35_signed ${in35_signed} \
    in36_width ${in36_width} \
    in36_signed ${in36_signed} \
    in37_width ${in37_width} \
    in37_signed ${in37_signed} \
    in38_width ${in38_width} \
    in38_signed ${in38_signed} \
    in39_width ${in39_width} \
    in39_signed ${in39_signed} \
    in40_width ${in40_width} \
    in40_signed ${in40_signed} \
    in41_width ${in41_width} \
    in41_signed ${in41_signed} \
    in42_width ${in42_width} \
    in42_signed ${in42_signed} \
    in43_width ${in43_width} \
    in43_signed ${in43_signed} \
    in44_width ${in44_width} \
    in44_signed ${in44_signed} \
    in45_width ${in45_width} \
    in45_signed ${in45_signed} \
    in46_width ${in46_width} \
    in46_signed ${in46_signed} \
    in47_width ${in47_width} \
    in47_signed ${in47_signed} \
    in48_width ${in48_width} \
    in48_signed ${in48_signed} \
    in49_width ${in49_width} \
    in49_signed ${in49_signed} \
    in50_width ${in50_width} \
    in50_signed ${in50_signed} \
    in51_width ${in51_width} \
    in51_signed ${in51_signed} \
    in52_width ${in52_width} \
    in52_signed ${in52_signed} \
    in53_width ${in53_width} \
    in53_signed ${in53_signed} \
    in54_width ${in54_width} \
    in54_signed ${in54_signed} \
    in55_width ${in55_width} \
    in55_signed ${in55_signed} \
    in56_width ${in56_width} \
    in56_signed ${in56_signed} \
    in57_width ${in57_width} \
    in57_signed ${in57_signed} \
    in58_width ${in58_width} \
    in58_signed ${in58_signed} \
    in59_width ${in59_width} \
    in59_signed ${in59_signed} \
    in60_width ${in60_width} \
    in60_signed ${in60_signed} \
    in61_width ${in61_width} \
    in61_signed ${in61_signed} \
    in62_width ${in62_width} \
    in62_signed ${in62_signed} \
    in63_width ${in63_width} \
    in63_signed ${in63_signed} \
    in64_width ${in64_width} \
    in64_signed ${in64_signed} \
    in65_width ${in65_width} \
    in65_signed ${in65_signed} \
    in66_width ${in66_width} \
    in66_signed ${in66_signed} \
    in67_width ${in67_width} \
    in67_signed ${in67_signed} \
    in68_width ${in68_width} \
    in68_signed ${in68_signed} \
    in69_width ${in69_width} \
    in69_signed ${in69_signed} \
    in70_width ${in70_width} \
    in70_signed ${in70_signed} \
    in71_width ${in71_width} \
    in71_signed ${in71_signed} \
    in72_width ${in72_width} \
    in72_signed ${in72_signed} \
    in73_width ${in73_width} \
    in73_signed ${in73_signed} \
    in74_width ${in74_width} \
    in74_signed ${in74_signed} \
    in75_width ${in75_width} \
    in75_signed ${in75_signed} \
    in76_width ${in76_width} \
    in76_signed ${in76_signed} \
    in77_width ${in77_width} \
    in77_signed ${in77_signed} \
    in78_width ${in78_width} \
    in78_signed ${in78_signed} \
    in79_width ${in79_width} \
    in79_signed ${in79_signed} \
    in80_width ${in80_width} \
    in80_signed ${in80_signed} \
    in81_width ${in81_width} \
    in81_signed ${in81_signed} \
    in82_width ${in82_width} \
    in82_signed ${in82_signed} \
    in83_width ${in83_width} \
    in83_signed ${in83_signed} \
    in84_width ${in84_width} \
    in84_signed ${in84_signed} \
    in85_width ${in85_width} \
    in85_signed ${in85_signed} \
    in86_width ${in86_width} \
    in86_signed ${in86_signed} \
    in87_width ${in87_width} \
    in87_signed ${in87_signed} \
    in88_width ${in88_width} \
    in88_signed ${in88_signed} \
    in89_width ${in89_width} \
    in89_signed ${in89_signed} \
    in90_width ${in90_width} \
    in90_signed ${in90_signed} \
    in91_width ${in91_width} \
    in91_signed ${in91_signed} \
    in92_width ${in92_width} \
    in92_signed ${in92_signed} \
    in93_width ${in93_width} \
    in93_signed ${in93_signed} \
    in94_width ${in94_width} \
    in94_signed ${in94_signed} \
    in95_width ${in95_width} \
    in95_signed ${in95_signed} \
    in96_width ${in96_width} \
    in96_signed ${in96_signed} \
    in97_width ${in97_width} \
    in97_signed ${in97_signed} \
    in98_width ${in98_width} \
    in98_signed ${in98_signed} \
    in99_width ${in99_width} \
    in99_signed ${in99_signed} \
    in100_width ${in100_width} \
    in100_signed ${in100_signed} \
    in101_width ${in101_width} \
    in101_signed ${in101_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    in3_width ${in3_width} \
    in3_signed ${in3_signed} \
    in4_width ${in4_width} \
    in4_signed ${in4_signed} \
    in5_width ${in5_width} \
    in5_signed ${in5_signed} \
    in6_width ${in6_width} \
    in6_signed ${in6_signed} \
    in7_width ${in7_width} \
    in7_signed ${in7_signed} \
    in8_width ${in8_width} \
    in8_signed ${in8_signed} \
    in9_width ${in9_width} \
    in9_signed ${in9_signed} \
    in10_width ${in10_width} \
    in10_signed ${in10_signed} \
    in11_width ${in11_width} \
    in11_signed ${in11_signed} \
    in12_width ${in12_width} \
    in12_signed ${in12_signed} \
    in13_width ${in13_width} \
    in13_signed ${in13_signed} \
    in14_width ${in14_width} \
    in14_signed ${in14_signed} \
    in15_width ${in15_width} \
    in15_signed ${in15_signed} \
    in16_width ${in16_width} \
    in16_signed ${in16_signed} \
    in17_width ${in17_width} \
    in17_signed ${in17_signed} \
    in18_width ${in18_width} \
    in18_signed ${in18_signed} \
    in19_width ${in19_width} \
    in19_signed ${in19_signed} \
    in20_width ${in20_width} \
    in20_signed ${in20_signed} \
    in21_width ${in21_width} \
    in21_signed ${in21_signed} \
    in22_width ${in22_width} \
    in22_signed ${in22_signed} \
    in23_width ${in23_width} \
    in23_signed ${in23_signed} \
    in24_width ${in24_width} \
    in24_signed ${in24_signed} \
    in25_width ${in25_width} \
    in25_signed ${in25_signed} \
    in26_width ${in26_width} \
    in26_signed ${in26_signed} \
    in27_width ${in27_width} \
    in27_signed ${in27_signed} \
    in28_width ${in28_width} \
    in28_signed ${in28_signed} \
    in29_width ${in29_width} \
    in29_signed ${in29_signed} \
    in30_width ${in30_width} \
    in30_signed ${in30_signed} \
    in31_width ${in31_width} \
    in31_signed ${in31_signed} \
    in32_width ${in32_width} \
    in32_signed ${in32_signed} \
    in33_width ${in33_width} \
    in33_signed ${in33_signed} \
    in34_width ${in34_width} \
    in34_signed ${in34_signed} \
    in35_width ${in35_width} \
    in35_signed ${in35_signed} \
    in36_width ${in36_width} \
    in36_signed ${in36_signed} \
    in37_width ${in37_width} \
    in37_signed ${in37_signed} \
    in38_width ${in38_width} \
    in38_signed ${in38_signed} \
    in39_width ${in39_width} \
    in39_signed ${in39_signed} \
    in40_width ${in40_width} \
    in40_signed ${in40_signed} \
    in41_width ${in41_width} \
    in41_signed ${in41_signed} \
    in42_width ${in42_width} \
    in42_signed ${in42_signed} \
    in43_width ${in43_width} \
    in43_signed ${in43_signed} \
    in44_width ${in44_width} \
    in44_signed ${in44_signed} \
    in45_width ${in45_width} \
    in45_signed ${in45_signed} \
    in46_width ${in46_width} \
    in46_signed ${in46_signed} \
    in47_width ${in47_width} \
    in47_signed ${in47_signed} \
    in48_width ${in48_width} \
    in48_signed ${in48_signed} \
    in49_width ${in49_width} \
    in49_signed ${in49_signed} \
    in50_width ${in50_width} \
    in50_signed ${in50_signed} \
    in51_width ${in51_width} \
    in51_signed ${in51_signed} \
    in52_width ${in52_width} \
    in52_signed ${in52_signed} \
    in53_width ${in53_width} \
    in53_signed ${in53_signed} \
    in54_width ${in54_width} \
    in54_signed ${in54_signed} \
    in55_width ${in55_width} \
    in55_signed ${in55_signed} \
    in56_width ${in56_width} \
    in56_signed ${in56_signed} \
    in57_width ${in57_width} \
    in57_signed ${in57_signed} \
    in58_width ${in58_width} \
    in58_signed ${in58_signed} \
    in59_width ${in59_width} \
    in59_signed ${in59_signed} \
    in60_width ${in60_width} \
    in60_signed ${in60_signed} \
    in61_width ${in61_width} \
    in61_signed ${in61_signed} \
    in62_width ${in62_width} \
    in62_signed ${in62_signed} \
    in63_width ${in63_width} \
    in63_signed ${in63_signed} \
    in64_width ${in64_width} \
    in64_signed ${in64_signed} \
    in65_width ${in65_width} \
    in65_signed ${in65_signed} \
    in66_width ${in66_width} \
    in66_signed ${in66_signed} \
    in67_width ${in67_width} \
    in67_signed ${in67_signed} \
    in68_width ${in68_width} \
    in68_signed ${in68_signed} \
    in69_width ${in69_width} \
    in69_signed ${in69_signed} \
    in70_width ${in70_width} \
    in70_signed ${in70_signed} \
    in71_width ${in71_width} \
    in71_signed ${in71_signed} \
    in72_width ${in72_width} \
    in72_signed ${in72_signed} \
    in73_width ${in73_width} \
    in73_signed ${in73_signed} \
    in74_width ${in74_width} \
    in74_signed ${in74_signed} \
    in75_width ${in75_width} \
    in75_signed ${in75_signed} \
    in76_width ${in76_width} \
    in76_signed ${in76_signed} \
    in77_width ${in77_width} \
    in77_signed ${in77_signed} \
    in78_width ${in78_width} \
    in78_signed ${in78_signed} \
    in79_width ${in79_width} \
    in79_signed ${in79_signed} \
    in80_width ${in80_width} \
    in80_signed ${in80_signed} \
    in81_width ${in81_width} \
    in81_signed ${in81_signed} \
    in82_width ${in82_width} \
    in82_signed ${in82_signed} \
    in83_width ${in83_width} \
    in83_signed ${in83_signed} \
    in84_width ${in84_width} \
    in84_signed ${in84_signed} \
    in85_width ${in85_width} \
    in85_signed ${in85_signed} \
    in86_width ${in86_width} \
    in86_signed ${in86_signed} \
    in87_width ${in87_width} \
    in87_signed ${in87_signed} \
    in88_width ${in88_width} \
    in88_signed ${in88_signed} \
    in89_width ${in89_width} \
    in89_signed ${in89_signed} \
    in90_width ${in90_width} \
    in90_signed ${in90_signed} \
    in91_width ${in91_width} \
    in91_signed ${in91_signed} \
    in92_width ${in92_width} \
    in92_signed ${in92_signed} \
    in93_width ${in93_width} \
    in93_signed ${in93_signed} \
    in94_width ${in94_width} \
    in94_signed ${in94_signed} \
    in95_width ${in95_width} \
    in95_signed ${in95_signed} \
    in96_width ${in96_width} \
    in96_signed ${in96_signed} \
    in97_width ${in97_width} \
    in97_signed ${in97_signed} \
    in98_width ${in98_width} \
    in98_signed ${in98_signed} \
    in99_width ${in99_width} \
    in99_signed ${in99_signed} \
    in100_width ${in100_width} \
    in100_signed ${in100_signed} \
    in101_width ${in101_width} \
    in101_signed ${in101_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6 \
    name a \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a \
    op interface \
    ports { a_address0 { O 14 vector } a_ce0 { O 1 bit } a_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7 \
    name b \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b \
    op interface \
    ports { b_address0 { O 14 vector } b_ce0 { O 1 bit } b_q0 { I 32 vector } b_address1 { O 14 vector } b_ce1 { O 1 bit } b_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8 \
    name out_r \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_r \
    op interface \
    ports { out_r_address0 { O 14 vector } out_r_ce0 { O 1 bit } out_r_we0 { O 1 bit } out_r_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


