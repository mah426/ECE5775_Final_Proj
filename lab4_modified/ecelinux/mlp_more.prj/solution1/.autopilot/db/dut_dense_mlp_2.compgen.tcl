# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 80
set MemName dut_dense_mlp_2_fc1_weight
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 48000
set AddrWd 16
set TrueReset 0
set IsROM 1
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


# Memory (RAM/ROM)  definition:
set ID 81
set MemName dut_dense_mlp_2_fc1_bias
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 120
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00111101001101110111010110010000" "10111011000110000100100010011110" "10111010111100111110001010011001" "00111100111111101001111111100010" "10111100001011010011100000011000" "00111101100011100001011110111001" "00111100001010011111100011100000" "00111110000001000100000000110010" "10111101010100111010011101100000" "10111100100110001011000000110110" "00111100001111110101011010010110" "10111100001111101000001101100010" "00111101000001001011100001111101" "10111101011000111111101010101100" "00111101001111010110101111111000" "10111101000001011101111111100011" "10111101011000101110100100010110" "10111100100101011010100101010100" "00111011010110111010010110100000" "00111101011110111100011010111010" "00111100100101011101011000100100" "00111100101110101101101000111010" "10111100001111101100110010001100" "00111110000000011011000101110010" "00111100111010110101101000101101" "00111101100000000000010110110000" "00111100011101000000010111100100" "00111101110110011011000111011011" "10111101010111110100011110001110" "10111101100000000110101011000101" "00111110000111011101011110010101" "10111100010000010001100110001100" "10111011110011111100110101000011" "10111100110001010001010001000100" "10111100110000001101101100000111" "00111101110110000001100111100000" "10111100101110101100101010100001" "10111100101000101001001101000001" "00111101011011110011110001111100" "00111010100001000010010000011001" "00111100101101100100110100001101" "10111100101100001001100111101111" "00111011110011110011000110101001" "00111100101101010100001111101100" "10111100001010101110000001111111" "10111011101100000000001110100111" "10111101001100010011001101001101" "00111101001111010111110111000000" "10111100100000001101001110010011" "00111100001011100011010101001110" "10111010000111000110101000100001" "00111100101111011000010110101000" "00111101100001001010110101001101" "00111101010011011000110110110011" "00111100100001100000100110000000" "00111101011011011100110000001110" "00111100111011011000011101001001" "00111101101000011001111010101011" "10111100111111010110111101010110" "00111101101100110000101101011001" "10111100111000111110010001010101" "00111100100100111110001001100010" "00111100000000111010010110110011" "00111100110111100011000111011011" "00111101001011010000011111011111" "00111100010100011001011010111011" "10111100110010101001101110100000" "10111100001011111110010001010110" "00111100100001011010101100011010" "00111101000000011110010010101011" "10111101010111111011010010011011" "00111011111110010101111001100010" "10111100000010110001111000010010" "10111101100010001011000101110011" "10111101000100110011010111001110" "00111101010111010111110101010100" "10111011111101101100110000010001" "10111101000100000010011000011110" "00111101001110101001001111001010" "10111011010011010110001110111001" "10111100101001001111000111001101" "00111101001110010010110110000101" "00111011011001110101011000111010" "00111100011000000100001010101010" "10111101000100100110010100101101" "10111100010111100011010111100001" "10111101000101011100100000110000" "10111101000110011110001110111110" "10111100100010010000001011010000" "00111100110001010001000000100000" "00111011111101111111001010100000" "10111100111111010100101110110011" "00111101001011001001010111100110" "00111011000100101111101001001010" "10111101101110011010011100001000" "00111101110010010110110010001110" "00111101011110010010110100011000" "00111101100001111000111101111010" "10111100101101010000000101011000" "00111101011000010111100000010001" "10111101010100011011110100110011" "00111101101100000100111100001111" "10111101001001000000101000100111" "10111100000100001101011110100000" "00111100100010101101001010000000" "00111101001111101000001101001010" "10111100101010101111100010010111" "00111100100001111111101001110011" "10111011011100011101001001111101" "00111100110100010000110001010100" "00111100110111111110111000001100" "10111101011010110000001101100101" "00111101001100111100011010110000" "10111100111100101111111000101111" "10111100100011110110001110011100" "10111101000111011011000000011001" "10111011101001110101010001111111" "00111100100101100101111001101000" "00111100010100100011101001001001" "10111100011010111011000010100111" }
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
    id 82 \
    name input_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_r \
    op interface \
    ports { input_r_address0 { O 8 vector } input_r_ce0 { O 1 bit } input_r_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 83 \
    name input1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input1 \
    op interface \
    ports { input1_address0 { O 8 vector } input1_ce0 { O 1 bit } input1_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 84 \
    name input2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input2 \
    op interface \
    ports { input2_address0 { O 8 vector } input2_ce0 { O 1 bit } input2_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 85 \
    name input3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input3 \
    op interface \
    ports { input3_address0 { O 8 vector } input3_ce0 { O 1 bit } input3_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 86 \
    name input4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input4 \
    op interface \
    ports { input4_address0 { O 8 vector } input4_ce0 { O 1 bit } input4_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 87 \
    name input5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input5 \
    op interface \
    ports { input5_address0 { O 8 vector } input5_ce0 { O 1 bit } input5_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 88 \
    name input6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input6 \
    op interface \
    ports { input6_address0 { O 8 vector } input6_ce0 { O 1 bit } input6_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 89 \
    name input7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input7 \
    op interface \
    ports { input7_address0 { O 8 vector } input7_ce0 { O 1 bit } input7_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 90 \
    name output_r \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_r \
    op interface \
    ports { output_r_address0 { O 8 vector } output_r_ce0 { O 1 bit } output_r_we0 { O 1 bit } output_r_d0 { O 128 vector } output_r_q0 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_r'"
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

