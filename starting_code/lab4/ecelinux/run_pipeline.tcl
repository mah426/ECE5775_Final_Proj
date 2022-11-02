#=============================================================================
# run_loop_0.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the optimal digit recongnition design.
#this just unrolls the loops specified in the function conv()

# Project name
set hls_prj bnn.prj

# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
set_top dut

# Add design and testbench files
add_files bnn.cpp
add_files -tb bnn_test.cpp
add_files layer.cpp
add_files -tb data

open_solution "solution3"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###

# -------------------------------------------------
#Pipeline
# -------------------------------------------------
set_directive_pipeline conv/LOOP_N
set_directive_pipeline conv/LOOP_X
set_directive_pipeline conv/LOOP_Y
set_directive_pipeline conv/LOOP_M
set_directive_pipeline conv/LOOP_C
set_directive_pipeline conv/LOOP_R

set_directive_pipeline max_pool/LOOP_MAX_POOL_0
set_directive_pipeline max_pool/LOOP_MAX_POOL_1
set_directive_pipeline max_pool/LOOP_MAX_POOL_2
set_directive_pipeline max_pool/LOOP_MAX_POOL_3
set_directive_pipeline max_pool/LOOP_MAX_POOL_4
set_directive_pipeline max_pool/LOOP_MAX_POOL_5

set_directive_pipeline reshape/LOOP_RESHAPE_0
set_directive_pipeline reshape/LOOP_RESHAPE_1

set_directive_pipeline dense/LOOP_DENSE_0
set_directive_pipeline dense/LOOP_DENSE_1

# -------------------------------------------------
#array partitions
# -------------------------------------------------
set_directive_array_partition -type block -factor 4 pad input
set_directive_array_partition -type block -factor 4 pad output
set_directive_array_partition -type block -factor 4 max_pool input
set_directive_array_partition -type block -factor 4 max_pool output
set_directive_array_partition -type block -factor 4 conv input
set_directive_array_partition -type block -factor 4 conv output
set_directive_array_partition -type block -factor 4 conv threshold

# --------------------------------------------------
#loop unrolls
# --------------------------------------------------

# Unrolling CONV function --------------------------
set_directive_loop_unroll conv/LOOP_N
set_directive_loop_unroll conv/LOOP_X
set_directive_loop_unroll conv/LOOP_Y
set_directive_loop_unroll conv/LOOP_M
set_directive_loop_unroll conv/LOOP_C
set_directive_loop_unroll conv/LOOP_R

# Unrolling MAX_POOL function ---------------------
set_directive_loop_unroll max_pool/LOOP_MAX_POOL_0
set_directive_loop_unroll max_pool/LOOP_MAX_POOL_1
set_directive_loop_unroll max_pool/LOOP_MAX_POOL_2
set_directive_loop_unroll max_pool/LOOP_MAX_POOL_3
set_directive_loop_unroll max_pool/LOOP_MAX_POOL_4
set_directive_loop_unroll max_pool/LOOP_MAX_POOL_5

# Unrolling RESHAPE function ----------------------
set_directive_loop_unroll reshape/LOOP_RESHAPE_0
set_directive_loop_unroll reshape/LOOP_RESHAPE_1
set_directive_loop_unroll reshape/LOOP_RESHAPE_2

# Unrolling DENSE function ------------------------
set_directive_loop_unroll dense/LOOP_DENSE_0
set_directive_loop_unroll dense/LOOP_DENSE_1

############################################

# Simulate the C++ design
csim_design -O
# Synthesize the design
csynth_design
# Co-simulate the design
#cosim_design
exit
