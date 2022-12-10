# This script segment is generated automatically by AutoPilot

set id 1
set name dut_fadd_32ns_32ns_32_5_full_dsp
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


set id 2
set name dut_fmul_32ns_32ns_32_4_max_dsp
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


set id 3
set name dut_urem_14ns_12ns_11_18_seq
set corename simcore_urem_seq
set op urem
set stage_num 18
set max_latency -1
set registered_input 1
set in0_width 14
set in0_signed 0
set in1_width 12
set in1_signed 0
set out_width 11
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_urem] == "ap_gen_simcore_urem"} {
eval "ap_gen_simcore_urem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_urem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op urem
set corename DivnS_SEQ
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


set id 4
set name dut_urem_12ns_12ns_12_16_seq
set corename simcore_urem_seq
set op urem
set stage_num 16
set max_latency -1
set registered_input 1
set in0_width 12
set in0_signed 0
set in1_width 12
set in1_signed 0
set out_width 12
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_urem] == "ap_gen_simcore_urem"} {
eval "ap_gen_simcore_urem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_urem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op urem
set corename DivnS_SEQ
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


set id 5
set name dut_urem_11ns_9ns_11_15_seq
set corename simcore_urem_seq
set op urem
set stage_num 15
set max_latency -1
set registered_input 1
set in0_width 11
set in0_signed 0
set in1_width 9
set in1_signed 0
set out_width 11
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_urem] == "ap_gen_simcore_urem"} {
eval "ap_gen_simcore_urem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_urem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op urem
set corename DivnS_SEQ
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


set id 6
set name dut_mux_8to1_sel14_128_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set in1_width 128
set in1_signed 0
set in2_width 128
set in2_signed 0
set in3_width 128
set in3_signed 0
set in4_width 128
set in4_signed 0
set in5_width 128
set in5_signed 0
set in6_width 128
set in6_signed 0
set in7_width 128
set in7_signed 0
set in8_width 128
set in8_signed 0
set in9_width 14
set in9_signed 0
set out_width 128
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
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 7
set name dut_mul_mul_14ns_12ns_26_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 14
set in0_signed 0
set in1_width 12
set in1_signed 0
set out_width 26
set exp i0*i1
set arg_lists {i0 {14 0 +} i1 {12 0 +} p {26 0 +} }
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 8
set name dut_mul_mul_14ns_16ns_30_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 14
set in0_signed 0
set in1_width 16
set in1_signed 0
set out_width 30
set exp i0*i1
set arg_lists {i0 {14 0 +} i1 {16 0 +} p {30 0 +} }
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 9
set name dut_mul_mul_11ns_13ns_24_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 11
set in0_signed 0
set in1_width 13
set in1_signed 0
set out_width 24
set exp i0*i1
set arg_lists {i0 {11 0 +} i1 {13 0 +} p {24 0 +} }
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 10
set MemName dut_conv1_1_conv1_weight
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 450
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "10111101011010011110110100001101" "00111100110011011011110100010001" "10111110101000011110000101000101" "10111110111101101101101010111010" "00111100000101100110100101110110" "00111101100111000100111100000110" "10111110110101110101000000101001" "10111110110100011011001011001100" "10111110000010100101010011111001" "10111101000010000101100111000001" "00111101110100100001000000111100" "10111100110111110111101111101010" "00111110100011101010111000010011" "00111110100010101001000000010011" "00111101010001011011001011001101" "00111101110000011011101010101001" "00111110101101100110101110001110" "00111110110011101111010101111010" "00111110100010011011100010110101" "10111101010101100000101101110101" "10111100101000101001000010000011" "00111100100011100101000011001111" "10111100001100100010001101110010" "00111100111110111111011001100010" "00111110001010001000011101110101" "00111110001100101010001101000001" "00111110100111110010010010101111" "10111110001101111001011010011001" "10111110001011010110011110011110" "00111110001111110010010000111001" "00111110010110101101010011010000" "10111110011001111001110001000011" "10111110101111000100101001000101" "00111011110100110010000011110010" "00111110100010100100110110010100" "10111101000111100110010000001000" "10111110000100100100111111000100" "00111110010000000110001011111000" "00111110001100101100101010100110" "10111101001001110100000101101001" "10111101101110100111001010101111" "00111101111010101011100101010001" "00111110001101001011010001110001" "00111100110111101111000001100000" "10111110101001100100001101011100" "10111101101110000100000101010101" "10111101110001000001011010111000" "10111101101101101010001000000111" "00111100110100110011000111110000" "10111110001001010100000100100010" "10111101001000111000011001110101" "00111101111100001100010111110110" "10111110101101001110011011101001" "10111110101110110000000011011110" "00111110000000111010011000011111" "00111011110101110111000011000010" "10111110100111100011000101111000" "10111111000000000110101100110100" "10111101101011011101101100010011" "00111101000110100001001010101110" "10111101000010000101110001010000" "10111100101111000111100001100100" "00111110100110010001001001111000" "00111110001000011011010100100001" "10111101111111111010100000101111" "00111101011101100111010000000011" "00111110100111010010100001110010" "00111110110011101111000000101001" "00111101101000001011110111101110" "00111101000110100000111100110010" "10111100010000011001000100100010" "10111100100110001110110100111010" "00111101110010111001100000110111" "00111101110011000011000101101110" "10111101000001001100001000011010" "10111110001111010010110110110110" "00111101111110111110011100011101" "00111110000011001011100111111001" "10111110101001101111000110101001" "00111101100001100111101000011000" "10111110011010000111111010010101" "00111110100011110100101100000101" "00111101101111110101101011000011" "10111110011101011000010110010110" "00111101110100010011100111000101" "10111110101011110010000000011010" "00111111000010100000011110100100" "00111110000111010011110101000100" "10111110101011111000100001101001" "10111100100101100011011111101101" "10111110101001100111110110001011" "00111110111000001100110000001010" "00111101111000110111101010010100" "10111110100001011001001001110111" "10111101100100010011110111101000" "10111101101010000110101000101101" "00111110101101100110011100110000" "00111100111010110011101100000010" "10111110010100110111001010001110" "10111101011001001110110001000110" "10111110100110110110000010110111" "00111110011110110101101000001100" "00111101000110110011011000111000" "10111110001000001101110000011000" "00111110000011000110101100011101" "10111110110100100011101011011100" "00111110011100010100011011010111" "00111101110000111010110101001010" "10111110100101100000100111110100" "10111010100001011101100000111111" "10111110110101001111010010000110" "00111110110111010101000000101010" "00111110001110100110111000010110" "10111110010001111011000010111001" "00111110001011100110000110010110" "10111110101101010100110110010001" "00111110101100010101001000111011" "00111110000101000011110111100100" "10111110010100101110001110111000" "00111101011101100101001111101010" "10111110100011010101010100110111" "00111110101100000110110101011010" "00111101101110011110000100001010" "10111110100001111110010001110001" "00111100011010100011011101111100" "10111110100101011100000000000010" "00111110011110001011010111000001" "00111110001110101001110001100010" "10111110000111110101001001110101" "00111101100100110001001001001010" "10111110110010101101101110010100" "00111110110010011000001110011110" "00111110000100010100111100001110" "10111110101000010010110110100101" "00111101100001100110111001001111" "10111110110111000011011010110101" "00111111000001000010010111101010" "00111110000000001000011101011011" "10111110011101010101101011000001" "00111101101011100110001010011111" "10111110111100001010000010111000" "00111111000010010111100011100000" "00111110001011100001100011010110" "10111110101010101101010101110010" "00111101101101110010111100111010" "10111110100100101001011010100110" "00111111000000000010101010011010" "00111110001111110010001011010000" "10111110000000110001011000010001" "00111101011111010010100011000111" "10111100001111100010111011110011" "00111110101110011001000010010110" "00111110001011101000011011001011" "10111100010011000110100000101100" "10111101001101001010011010101010" "10111101011010010001100010001001" "00111110101001011000011110000110" "00111110110111100011001100110101" "10111101100111000101111101100011" "10111101101001001100010100101000" "10111101110101111010100010001000" "10111110001101000010111111100000" "10111100111110001001011001101110" "10111101001100101110011110001001" "10111101100001000101110101100110" "10111100110100000001111100110100" "10111110100101100011000010011001" "10111110101001101001111100000101" "10111100111001110000110010110001" "00111101110111100101000011001101" "00111101011001111011001010011111" "10111110000001011010010110001001" "10111110000000011010011101111000" "00111101001000001000011000001110" "10111100010011111001010010001011" "10111110000000110010000001001010" "00111110100000100010010001110101" "00111101101011001011111010011101" "10111110001110100010101010001011" "10111110001001001011001100000111" "10111110001010101101010000111011" "00111110001000100010111011101111" "00111110100110010101001101001111" "10111101101100010001101000101101" "10111110011100011110000110011110" "00111001000100101010000011010111" "10111110101001101101100010110100" "10111101111110010111001111101101" "00111101100111011111110001000010" "00111110011001000010000011100011" "00111110010001100101101100010100" "10111110011000000000010011011111" "10111110110100000100011100011100" "00111101100010100010010001000010" "00111110010000100100100110110001" "00111110000111101110100101111001" "10111101110010000101101111110001" "10111110010111111000101000010010" "00111110000101101001100110100001" "00111101111010111000000100100100" "00111100110011001010011010100101" "00111110111001000110001100110010" "00111110101011100100100000000111" "10111110001111111111000000001110" "10111110010001111011111110011011" "10111101111100110111111000000000" "00111110100000111101011000011101" "00111111000100100101111101001111" "00111100101110100010011100011011" "10111101101001110100111011111100" "10111101101000001110011010011110" "10111101101110001010001000110001" "10111110011001000100011001111101" "10111011111111111101111101100100" "00111110000000010101111000100101" "00111101000011011000101001010100" "10111110110001011111111111100101" "10111110111001001100010000110011" "00111101101001101110001111011110" "00111110000111000001010011011100" "00111101100001111101010100101110" "10111101100100101111000110011100" "10111101000101110010111001010110" "10111101101001011111111011011011" "10111100101110110001110111000011" "10111110000001101101011100001010" "00111101010100101100001110110011" "10111101010011111110011101011010" "00111101111110111101101110100011" "00111101111000000001011000101001" "10111110100010000000000110000101" "10111110010000001111101000101011" "00111100100100111000011010011001" "10111100100101101101000001110110" "10111110000010011001110101001111" "10111100111101100001011000011101" "00111101100101101000000101100000" "00111101000000011011100001011010" "00111110010011110111111111000010" "10111101100110111110001110001001" "10111110100011100011110001100101" "00111010110100001111001100001010" "10111101000101001101000110000101" "00111110001001100111000001001101" "10111101001111100001010001010000" "10111101010011010111101110001001" "10111100010101100110100010101000" "10111101111111011010001000000100" "00111110001000100110010011111100" "00111110001100010100011001010100" "10111101101010000000011010100001" "00111110011001011000111111011111" "00111110001110010111100010101111" "00111110010101010010100100010111" "00111101101001010001111010000001" "10111110001111011010101100101110" "10111110001111010011000000101111" "10111110010101000110101101010011" "10111110100001101011101100000000" "10111101110110110010001110011100" "00111100001111000111010001110100" "00111110000100110101011111010101" "00111110001111011110100000100010" "00111100111011000111010110010101" "10111101101111001000011000110101" "10111100100100110100011001111111" "00111010111000000111010000110101" "00111101101111100011000101000100" "00111101000001010010110010010001" "00111101011000101010111001111011" "10111101111010010100011101000110" "00111101101010101101111110100011" "10111110000100111111110000111111" "00111100011110011101010101001010" "00111101100101011000001000011101" "10111101100111010111010010000000" "00111101000110101010110001010001" "00111101010111111100100011111100" "10111101100011010100101101000111" "10111101110000100001111111101011" "10111110011101000101101100001110" "10111100110100111110001111011110" "10111101111100000110111000110111" "10111110011000001001111010010101" "10111110011110110010000111010101" "10111110000001011011010110010010" "00111101110111001110100011010010" "00111110000101100010011001010111" "10111101011111100111010001100100" "10111110010100111101101100000001" "10111101101001111100100100000000" "00111100111000101000101010100001" "00111110011001100111010000001001" "00111101111010010001001011011101" "10111101110001100001111101110110" "10111101100011001101111010001101" "00111110001001110010101001010010" "10111100100111011101011001111010" "00111101001100101001101011101000" "00111110001100110010010110111101" "10111110000111011101111110010001" "00111001101111001011101001001101" "10111100111101010101001000010010" "10111100101100111100010010111110" "00111110001000001010010010000011" "10111101010000010101011110111101" "00111100110010100111101010111011" "10111100101011001100101001010001" "10111110100001101111101110100110" "00111110111010111101001100110111" "00111100011101000110000010110110" "00111110000000001010100001101011" "10111110000101100011011010011111" "10111110111100111110100001101110" "00111110110111101010110011000101" "10111100100000100100110000001111" "00111101000101100011011100010000" "00111100000101011111111110101101" "10111110111110011011000110011010" "00111110110100111100011100110000" "10111101100100111001110111111010" "10111011110101111000111000111011" "00111101100111011010101101011100" "10111110110000011001010011111010" "00111110100010101010001010000011" "00111101110000000001000101101011" "00111110000100010110100000001111" "10111101110010101000010000000101" "10111110101000101001111011011011" "00111110010010111011101101101011" "00111101111100011011001010111010" "00111110011101100001011100011000" "10111110001000010100101101010101" "10111111000000101110101111101001" "00111110011101100011011000011111" "00111101111001011100010010011011" "00111110011000101101011001110100" "10111100110110010101110011010001" "10111111000100011101011111101101" "00111110111000111010001000010101" "10111101100001010011101100101000" "00111110100000111001010010110000" "10111101110001111111111001111000" "10111111000000110110000111000000" "00111110001011111011010111100111" "00111101100110101101010011101111" "00111110010010011110000001011010" "10111100110000100101100100101011" "10111110101000010110011111110101" "00111101101011101101000000110111" "10111100100010010000001100011111" "00111110000000011010010010110000" "00111001000101001010010011001010" "10111110101010001111101010101011" "00111101001000101011000001100001" "00111011100110110010011011101100" "00111110010111100100100010111101" "10111101010100001111111111100011" "10111110110001100110111111111000" "00111110011101010101111010100100" "00111101100110001110000010001011" "00111110010011101101000011101101" "10111101110001010001110111010111" "10111111000010001000001110100001" "00111110010000111011100000111011" "00111101111011111010011011010000" "00111110011010100100101100010001" "00111011011100001011101011101011" "10111110111001001011110111010001" "00111110100100000010001111111110" "00111110001101111010010000110110" "00111110011010010011001101101000" "10111011100100011000111111000011" "10111110101101101010110111011101" "00111101111001100110100011101001" "10111100100100010100000010111001" "10111110101101011001010111000111" "10111110001101000001000101111110" "00111100101101100110011010111101" "00111101110011111111010001111011" "10111110010000101110000000110001" "10111110000000010101010110101001" "10111110001111000101001101000011" "10111100100011101011111001111101" "10111101111110000101000111010110" "00111101101101001101001110001011" "00111100101110111011110000001001" "10111110010001011111001001100100" "10111110100011111000010001011110" "10111101101010000001011110001001" "10111101111101101010101011000111" "00111101100000000001110010010111" "10111011101111011110110001110100" "00111101001000011110100100000101" "00111101110100001110011010111011" "10111100010000111101110011101110" "00111100100000010001010101110000" "00111101101100010101001010110000" "00111101111001000101000111101011" "00111110010101100111111100011010" "00111110000001000100110011011001" "10111110011001110101101000100001" "10111101101100000000100111101101" "00111101111101001011000000110110" "00111101101011110001010111111010" "10111110010110001100000010100000" "10111101001110101000110001100101" "00111100111011110001010010110111" "10111101100111011001001111101110" "10111110000100110100011111100101" "00111100101111010001101101111101" "00111101001100110111100110110110" "10111110000001100011011100001011" "10111110100110011011111111101101" "10111110001001011101001001011111" "10111011000001000111111101111010" "10111101001011001000110001011111" "00111011011011010101111011011000" "10111101111100110111101100001111" "10111110000000001100111000000001" "10111110000011110001001111101100" "00111011110111101101101001011011" "10111101100100010111101101100101" "10111101101000001010101110000001" "10111101001001100001101110101000" "00111110000110010101010110001001" "10111101100100101100001101011100" "00111011111101111000101100101011" "00111110001100100010100101110001" "00111110100101010100110011011101" "10111101110000000101000101000110" "00111110000100000110100111000010" "00111110100100100100111100000111" "00111110101101001001010111110110" "00111101100001001011010110011000" "00111110101001000110110110100111" "00111110100010110000110001011001" "00111101110110001100011100001000" "00111101110001111000111000110001" "00111101000011010101110010001011" "00111101110001011001011100000001" "00111110000100100100011001001011" "00111110001010001001101100111001" "00111100111001000001101101111111" "00111001011101000011111011101110" "10111101110011011010110011010011" "00111100100010101001111000010011" "00111101110100100100011101100001" "10111101011001001011010010010001" "00111101001101000001010101111010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.39
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
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
    id 11 \
    name input_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_r \
    op interface \
    ports { input_r_address0 { O 11 vector } input_r_ce0 { O 1 bit } input_r_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 12 \
    name output_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_0 \
    op interface \
    ports { output_0_address0 { O 8 vector } output_0_ce0 { O 1 bit } output_0_we0 { O 1 bit } output_0_d0 { O 128 vector } output_0_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name output_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_1 \
    op interface \
    ports { output_1_address0 { O 8 vector } output_1_ce0 { O 1 bit } output_1_we0 { O 1 bit } output_1_d0 { O 128 vector } output_1_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 14 \
    name output_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_2 \
    op interface \
    ports { output_2_address0 { O 8 vector } output_2_ce0 { O 1 bit } output_2_we0 { O 1 bit } output_2_d0 { O 128 vector } output_2_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name output_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_3 \
    op interface \
    ports { output_3_address0 { O 8 vector } output_3_ce0 { O 1 bit } output_3_we0 { O 1 bit } output_3_d0 { O 128 vector } output_3_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name output_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_4 \
    op interface \
    ports { output_4_address0 { O 8 vector } output_4_ce0 { O 1 bit } output_4_we0 { O 1 bit } output_4_d0 { O 128 vector } output_4_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name output_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_5 \
    op interface \
    ports { output_5_address0 { O 8 vector } output_5_ce0 { O 1 bit } output_5_we0 { O 1 bit } output_5_d0 { O 128 vector } output_5_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name output_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_6 \
    op interface \
    ports { output_6_address0 { O 8 vector } output_6_ce0 { O 1 bit } output_6_we0 { O 1 bit } output_6_d0 { O 128 vector } output_6_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name output_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_7 \
    op interface \
    ports { output_7_address0 { O 8 vector } output_7_ce0 { O 1 bit } output_7_we0 { O 1 bit } output_7_d0 { O 128 vector } output_7_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_7'"
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

