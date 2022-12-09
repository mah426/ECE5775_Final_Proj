#=============================================================================
# run_alt.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the baseline digit recongnition design.

# Project name
set hls_prj mlp_more.prj

# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
set_top dut

# Add design and testbench files
add_files mlp.cpp
add_files -tb mlp_test.cpp
add_files layer.cpp
add_files -tb data

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###

############################################
# -------------------------------------------------
#array partitions
# -------------------------------------------------
set_directive_array_partition -type block -factor 8 max_pool input
set_directive_array_partition -type block -factor 8 max_pool output
set_directive_array_partition -type block -factor 8 conv input
set_directive_array_partition -type block -factor 8 conv output

# Unrolling DENSE function ------------------------
# set_directive_loop_unroll dense_mlp/LOOP_DENSE_MLP_1
# set_directive_pipeline dense_mlp/LOOP_DENSE_MLP_0

# Unrolling RESHAPE function ----------------------
# set_directive_loop_unroll reshape/LOOP_RESHAPE_0
set_directive_loop_unroll reshape/LOOP_RESHAPE_1
set_directive_loop_unroll reshape/LOOP_RESHAPE_2

# Unrolling CONV function --------------------------
set_directive_loop_unroll conv/LOOP_N
set_directive_loop_unroll conv/LOOP_X
set_directive_loop_unroll conv/LOOP_Y
set_directive_loop_unroll conv/LOOP_M
set_directive_loop_unroll conv/LOOP_C
set_directive_loop_unroll conv/LOOP_R

# -------------------------------------------------
#Pipeline
# -------------------------------------------------
set_directive_pipeline conv/LOOP_N

# Simulate the C++ design
csim_design -O
# Synthesize the design
csynth_design
# Co-simulate the design
#cosim_design
exit
