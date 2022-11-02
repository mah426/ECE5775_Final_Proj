#=============================================================================
# run_unroll.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the unrolled digit recongnition design.

# Project name
set hls_prj digitrec.prj

# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
set_top dut

# Add design and testbench files
add_files digitrec.cpp
add_files -tb digitrec_test.cpp
add_files -tb data

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###
set_directive_inline -off update_knn
set_directive_array_partition -type complete -dim 1 digitrec knn_set
set_directive_unroll digitrec/L10


#array partitions
#set_directive_array_partition -type complete digitrec knn_set
set_directive_array_partition -type complete knn_vote distance
set_directive_array_partition -type complete knn_vote digit
set_directive_array_partition -type complete knn_vote ballot

#loop unrolls
set_directive_loop_unroll digitrec/DIGITREC_INIT_KNN_LOOP_0
set_directive_loop_unroll digitrec/DIGITREC_INIT_KNN_LOOP_1
#we were told to avoid unrolling the outermost loop for area concerns
#set_directive_loop_unroll digitrec/L1800
set_directive_loop_unroll digitrec/L10
set_directive_loop_unroll update_knn/UPDATE_FIND_DISTANCE_LOOP
set_directive_loop_unroll update_knn/UPDATE_MIN_DISTANCE_LOOP
set_directive_loop_unroll knn_vote/VOTE_INIT_LOOP
set_directive_loop_unroll knn_vote/VOTE_INIT_BALLOT_LOOP
set_directive_loop_unroll knn_vote/VOTE_DIGIT_OPTION_LOOP
set_directive_loop_unroll knn_vote/VOTE_DISTANCE_LOOP
set_directive_loop_unroll knn_vote/VOTE_DIGIT_LOOP
set_directive_loop_unroll knn_vote/VOTE_SUM_VOTE_LOOP
set_directive_loop_unroll knn_vote/VOTE_DECIDE_WINNER_LOOP

############################################

# Simulate the C++ design
#csim_design
# Synthesize the design
csynth_design
# Co-simulate the design
#cosim_design
exit
