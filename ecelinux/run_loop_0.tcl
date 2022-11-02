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

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###

#Pipeline
#set_directive_pipeline conv/LOOP_N

#array partitions
#set_directive_array_partition -type complete digitrec knn_set

#loop unrolls

set_directive_loop_unroll conv/LOOP_N
set_directive_loop_unroll conv/LOOP_X
set_directive_loop_unroll conv/LOOP_Y
set_directive_loop_unroll conv/LOOP_M
set_directive_loop_unroll conv/LOOP_C
set_directive_loop_unroll conv/LOOP_R

############################################

# Simulate the C++ design
csim_design -O
# Synthesize the design
csynth_design
# Co-simulate the design
#cosim_design
exit
