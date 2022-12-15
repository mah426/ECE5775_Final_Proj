#=============================================================================
# run_alt.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the baseline digit recongnition design.

# Project name
set hls_prj mlp_alt.prj

# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
set_top dut

# Add design and testbench files
add_files mlp.cpp
add_files -tb mlp_test.cpp
add_files layer.cpp
add_files -tb data2
add_files -tb test_data2

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###

############################################

set_directive_loop_unroll dense_mlp/LOOP_DENSE_MLP_1
set_directive_pipeline dense_mlp/LOOP_DENSE_MLP_0

# Simulate the C++ design
csim_design -O
# Synthesize the design
csynth_design
# Co-simulate the design
#cosim_design
exit
