set moduleName dut_conv
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut_conv}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_0 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_1 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_2 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_3 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_4 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_5 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_6 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_7 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_8 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_9 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_10 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_11 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_12 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_13 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_14 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ input_15 int 1 regular {array 324 { 1 1 } 1 1 }  }
	{ output_0 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_1 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_2 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_3 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_4 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_5 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_6 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_7 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_8 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_9 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_10 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_11 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_12 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_13 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_14 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ output_15 int 1 regular {array 324 { 0 3 } 0 1 }  }
	{ threshold_0_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_1_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_2_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_3_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_4_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_5_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_6_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_7_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_8_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_9_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_10_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_11_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_12_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_13_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_14_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ threshold_15_V int 8 regular {array 324 { 1 3 } 1 1 }  }
	{ M int 7 regular  }
	{ N int 7 regular  }
	{ I int 6 regular  }
	{ L int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_0", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_2", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_3", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_4", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_5", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_6", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_7", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_8", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_9", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_10", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_11", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_12", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_13", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_14", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_15", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_4", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_5", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_6", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_7", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_8", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_9", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_10", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_11", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_12", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_13", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_14", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_15", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "threshold_0_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_1_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_2_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_3_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_4_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_5_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_6_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_7_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_8_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_9_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_10_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_11_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_12_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_13_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_14_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_15_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "M", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "N", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "I", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "L", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 218
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_address0 sc_out sc_lv 9 signal 0 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_q0 sc_in sc_lv 1 signal 0 } 
	{ input_0_address1 sc_out sc_lv 9 signal 0 } 
	{ input_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_0_q1 sc_in sc_lv 1 signal 0 } 
	{ input_1_address0 sc_out sc_lv 9 signal 1 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_1_q0 sc_in sc_lv 1 signal 1 } 
	{ input_1_address1 sc_out sc_lv 9 signal 1 } 
	{ input_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ input_1_q1 sc_in sc_lv 1 signal 1 } 
	{ input_2_address0 sc_out sc_lv 9 signal 2 } 
	{ input_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_2_q0 sc_in sc_lv 1 signal 2 } 
	{ input_2_address1 sc_out sc_lv 9 signal 2 } 
	{ input_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ input_2_q1 sc_in sc_lv 1 signal 2 } 
	{ input_3_address0 sc_out sc_lv 9 signal 3 } 
	{ input_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_3_q0 sc_in sc_lv 1 signal 3 } 
	{ input_3_address1 sc_out sc_lv 9 signal 3 } 
	{ input_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ input_3_q1 sc_in sc_lv 1 signal 3 } 
	{ input_4_address0 sc_out sc_lv 9 signal 4 } 
	{ input_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_4_q0 sc_in sc_lv 1 signal 4 } 
	{ input_4_address1 sc_out sc_lv 9 signal 4 } 
	{ input_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ input_4_q1 sc_in sc_lv 1 signal 4 } 
	{ input_5_address0 sc_out sc_lv 9 signal 5 } 
	{ input_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ input_5_q0 sc_in sc_lv 1 signal 5 } 
	{ input_5_address1 sc_out sc_lv 9 signal 5 } 
	{ input_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ input_5_q1 sc_in sc_lv 1 signal 5 } 
	{ input_6_address0 sc_out sc_lv 9 signal 6 } 
	{ input_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_6_q0 sc_in sc_lv 1 signal 6 } 
	{ input_6_address1 sc_out sc_lv 9 signal 6 } 
	{ input_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ input_6_q1 sc_in sc_lv 1 signal 6 } 
	{ input_7_address0 sc_out sc_lv 9 signal 7 } 
	{ input_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_7_q0 sc_in sc_lv 1 signal 7 } 
	{ input_7_address1 sc_out sc_lv 9 signal 7 } 
	{ input_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ input_7_q1 sc_in sc_lv 1 signal 7 } 
	{ input_8_address0 sc_out sc_lv 9 signal 8 } 
	{ input_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ input_8_q0 sc_in sc_lv 1 signal 8 } 
	{ input_8_address1 sc_out sc_lv 9 signal 8 } 
	{ input_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ input_8_q1 sc_in sc_lv 1 signal 8 } 
	{ input_9_address0 sc_out sc_lv 9 signal 9 } 
	{ input_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ input_9_q0 sc_in sc_lv 1 signal 9 } 
	{ input_9_address1 sc_out sc_lv 9 signal 9 } 
	{ input_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ input_9_q1 sc_in sc_lv 1 signal 9 } 
	{ input_10_address0 sc_out sc_lv 9 signal 10 } 
	{ input_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ input_10_q0 sc_in sc_lv 1 signal 10 } 
	{ input_10_address1 sc_out sc_lv 9 signal 10 } 
	{ input_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ input_10_q1 sc_in sc_lv 1 signal 10 } 
	{ input_11_address0 sc_out sc_lv 9 signal 11 } 
	{ input_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ input_11_q0 sc_in sc_lv 1 signal 11 } 
	{ input_11_address1 sc_out sc_lv 9 signal 11 } 
	{ input_11_ce1 sc_out sc_logic 1 signal 11 } 
	{ input_11_q1 sc_in sc_lv 1 signal 11 } 
	{ input_12_address0 sc_out sc_lv 9 signal 12 } 
	{ input_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ input_12_q0 sc_in sc_lv 1 signal 12 } 
	{ input_12_address1 sc_out sc_lv 9 signal 12 } 
	{ input_12_ce1 sc_out sc_logic 1 signal 12 } 
	{ input_12_q1 sc_in sc_lv 1 signal 12 } 
	{ input_13_address0 sc_out sc_lv 9 signal 13 } 
	{ input_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ input_13_q0 sc_in sc_lv 1 signal 13 } 
	{ input_13_address1 sc_out sc_lv 9 signal 13 } 
	{ input_13_ce1 sc_out sc_logic 1 signal 13 } 
	{ input_13_q1 sc_in sc_lv 1 signal 13 } 
	{ input_14_address0 sc_out sc_lv 9 signal 14 } 
	{ input_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ input_14_q0 sc_in sc_lv 1 signal 14 } 
	{ input_14_address1 sc_out sc_lv 9 signal 14 } 
	{ input_14_ce1 sc_out sc_logic 1 signal 14 } 
	{ input_14_q1 sc_in sc_lv 1 signal 14 } 
	{ input_15_address0 sc_out sc_lv 9 signal 15 } 
	{ input_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ input_15_q0 sc_in sc_lv 1 signal 15 } 
	{ input_15_address1 sc_out sc_lv 9 signal 15 } 
	{ input_15_ce1 sc_out sc_logic 1 signal 15 } 
	{ input_15_q1 sc_in sc_lv 1 signal 15 } 
	{ output_0_address0 sc_out sc_lv 9 signal 16 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ output_0_we0 sc_out sc_logic 1 signal 16 } 
	{ output_0_d0 sc_out sc_lv 1 signal 16 } 
	{ output_1_address0 sc_out sc_lv 9 signal 17 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ output_1_we0 sc_out sc_logic 1 signal 17 } 
	{ output_1_d0 sc_out sc_lv 1 signal 17 } 
	{ output_2_address0 sc_out sc_lv 9 signal 18 } 
	{ output_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ output_2_we0 sc_out sc_logic 1 signal 18 } 
	{ output_2_d0 sc_out sc_lv 1 signal 18 } 
	{ output_3_address0 sc_out sc_lv 9 signal 19 } 
	{ output_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ output_3_we0 sc_out sc_logic 1 signal 19 } 
	{ output_3_d0 sc_out sc_lv 1 signal 19 } 
	{ output_4_address0 sc_out sc_lv 9 signal 20 } 
	{ output_4_ce0 sc_out sc_logic 1 signal 20 } 
	{ output_4_we0 sc_out sc_logic 1 signal 20 } 
	{ output_4_d0 sc_out sc_lv 1 signal 20 } 
	{ output_5_address0 sc_out sc_lv 9 signal 21 } 
	{ output_5_ce0 sc_out sc_logic 1 signal 21 } 
	{ output_5_we0 sc_out sc_logic 1 signal 21 } 
	{ output_5_d0 sc_out sc_lv 1 signal 21 } 
	{ output_6_address0 sc_out sc_lv 9 signal 22 } 
	{ output_6_ce0 sc_out sc_logic 1 signal 22 } 
	{ output_6_we0 sc_out sc_logic 1 signal 22 } 
	{ output_6_d0 sc_out sc_lv 1 signal 22 } 
	{ output_7_address0 sc_out sc_lv 9 signal 23 } 
	{ output_7_ce0 sc_out sc_logic 1 signal 23 } 
	{ output_7_we0 sc_out sc_logic 1 signal 23 } 
	{ output_7_d0 sc_out sc_lv 1 signal 23 } 
	{ output_8_address0 sc_out sc_lv 9 signal 24 } 
	{ output_8_ce0 sc_out sc_logic 1 signal 24 } 
	{ output_8_we0 sc_out sc_logic 1 signal 24 } 
	{ output_8_d0 sc_out sc_lv 1 signal 24 } 
	{ output_9_address0 sc_out sc_lv 9 signal 25 } 
	{ output_9_ce0 sc_out sc_logic 1 signal 25 } 
	{ output_9_we0 sc_out sc_logic 1 signal 25 } 
	{ output_9_d0 sc_out sc_lv 1 signal 25 } 
	{ output_10_address0 sc_out sc_lv 9 signal 26 } 
	{ output_10_ce0 sc_out sc_logic 1 signal 26 } 
	{ output_10_we0 sc_out sc_logic 1 signal 26 } 
	{ output_10_d0 sc_out sc_lv 1 signal 26 } 
	{ output_11_address0 sc_out sc_lv 9 signal 27 } 
	{ output_11_ce0 sc_out sc_logic 1 signal 27 } 
	{ output_11_we0 sc_out sc_logic 1 signal 27 } 
	{ output_11_d0 sc_out sc_lv 1 signal 27 } 
	{ output_12_address0 sc_out sc_lv 9 signal 28 } 
	{ output_12_ce0 sc_out sc_logic 1 signal 28 } 
	{ output_12_we0 sc_out sc_logic 1 signal 28 } 
	{ output_12_d0 sc_out sc_lv 1 signal 28 } 
	{ output_13_address0 sc_out sc_lv 9 signal 29 } 
	{ output_13_ce0 sc_out sc_logic 1 signal 29 } 
	{ output_13_we0 sc_out sc_logic 1 signal 29 } 
	{ output_13_d0 sc_out sc_lv 1 signal 29 } 
	{ output_14_address0 sc_out sc_lv 9 signal 30 } 
	{ output_14_ce0 sc_out sc_logic 1 signal 30 } 
	{ output_14_we0 sc_out sc_logic 1 signal 30 } 
	{ output_14_d0 sc_out sc_lv 1 signal 30 } 
	{ output_15_address0 sc_out sc_lv 9 signal 31 } 
	{ output_15_ce0 sc_out sc_logic 1 signal 31 } 
	{ output_15_we0 sc_out sc_logic 1 signal 31 } 
	{ output_15_d0 sc_out sc_lv 1 signal 31 } 
	{ threshold_0_V_address0 sc_out sc_lv 9 signal 32 } 
	{ threshold_0_V_ce0 sc_out sc_logic 1 signal 32 } 
	{ threshold_0_V_q0 sc_in sc_lv 8 signal 32 } 
	{ threshold_1_V_address0 sc_out sc_lv 9 signal 33 } 
	{ threshold_1_V_ce0 sc_out sc_logic 1 signal 33 } 
	{ threshold_1_V_q0 sc_in sc_lv 8 signal 33 } 
	{ threshold_2_V_address0 sc_out sc_lv 9 signal 34 } 
	{ threshold_2_V_ce0 sc_out sc_logic 1 signal 34 } 
	{ threshold_2_V_q0 sc_in sc_lv 8 signal 34 } 
	{ threshold_3_V_address0 sc_out sc_lv 9 signal 35 } 
	{ threshold_3_V_ce0 sc_out sc_logic 1 signal 35 } 
	{ threshold_3_V_q0 sc_in sc_lv 8 signal 35 } 
	{ threshold_4_V_address0 sc_out sc_lv 9 signal 36 } 
	{ threshold_4_V_ce0 sc_out sc_logic 1 signal 36 } 
	{ threshold_4_V_q0 sc_in sc_lv 8 signal 36 } 
	{ threshold_5_V_address0 sc_out sc_lv 9 signal 37 } 
	{ threshold_5_V_ce0 sc_out sc_logic 1 signal 37 } 
	{ threshold_5_V_q0 sc_in sc_lv 8 signal 37 } 
	{ threshold_6_V_address0 sc_out sc_lv 9 signal 38 } 
	{ threshold_6_V_ce0 sc_out sc_logic 1 signal 38 } 
	{ threshold_6_V_q0 sc_in sc_lv 8 signal 38 } 
	{ threshold_7_V_address0 sc_out sc_lv 9 signal 39 } 
	{ threshold_7_V_ce0 sc_out sc_logic 1 signal 39 } 
	{ threshold_7_V_q0 sc_in sc_lv 8 signal 39 } 
	{ threshold_8_V_address0 sc_out sc_lv 9 signal 40 } 
	{ threshold_8_V_ce0 sc_out sc_logic 1 signal 40 } 
	{ threshold_8_V_q0 sc_in sc_lv 8 signal 40 } 
	{ threshold_9_V_address0 sc_out sc_lv 9 signal 41 } 
	{ threshold_9_V_ce0 sc_out sc_logic 1 signal 41 } 
	{ threshold_9_V_q0 sc_in sc_lv 8 signal 41 } 
	{ threshold_10_V_address0 sc_out sc_lv 9 signal 42 } 
	{ threshold_10_V_ce0 sc_out sc_logic 1 signal 42 } 
	{ threshold_10_V_q0 sc_in sc_lv 8 signal 42 } 
	{ threshold_11_V_address0 sc_out sc_lv 9 signal 43 } 
	{ threshold_11_V_ce0 sc_out sc_logic 1 signal 43 } 
	{ threshold_11_V_q0 sc_in sc_lv 8 signal 43 } 
	{ threshold_12_V_address0 sc_out sc_lv 9 signal 44 } 
	{ threshold_12_V_ce0 sc_out sc_logic 1 signal 44 } 
	{ threshold_12_V_q0 sc_in sc_lv 8 signal 44 } 
	{ threshold_13_V_address0 sc_out sc_lv 9 signal 45 } 
	{ threshold_13_V_ce0 sc_out sc_logic 1 signal 45 } 
	{ threshold_13_V_q0 sc_in sc_lv 8 signal 45 } 
	{ threshold_14_V_address0 sc_out sc_lv 9 signal 46 } 
	{ threshold_14_V_ce0 sc_out sc_logic 1 signal 46 } 
	{ threshold_14_V_q0 sc_in sc_lv 8 signal 46 } 
	{ threshold_15_V_address0 sc_out sc_lv 9 signal 47 } 
	{ threshold_15_V_ce0 sc_out sc_logic 1 signal 47 } 
	{ threshold_15_V_q0 sc_in sc_lv 8 signal 47 } 
	{ M sc_in sc_lv 7 signal 48 } 
	{ N sc_in sc_lv 7 signal 49 } 
	{ I sc_in sc_lv 6 signal 50 } 
	{ L sc_in sc_lv 1 signal 51 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0", "role": "address0" }} , 
 	{ "name": "input_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce0" }} , 
 	{ "name": "input_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "q0" }} , 
 	{ "name": "input_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0", "role": "address1" }} , 
 	{ "name": "input_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce1" }} , 
 	{ "name": "input_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "q1" }} , 
 	{ "name": "input_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1", "role": "address0" }} , 
 	{ "name": "input_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce0" }} , 
 	{ "name": "input_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "q0" }} , 
 	{ "name": "input_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1", "role": "address1" }} , 
 	{ "name": "input_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce1" }} , 
 	{ "name": "input_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "q1" }} , 
 	{ "name": "input_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_2", "role": "address0" }} , 
 	{ "name": "input_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce0" }} , 
 	{ "name": "input_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "q0" }} , 
 	{ "name": "input_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_2", "role": "address1" }} , 
 	{ "name": "input_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce1" }} , 
 	{ "name": "input_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "q1" }} , 
 	{ "name": "input_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_3", "role": "address0" }} , 
 	{ "name": "input_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce0" }} , 
 	{ "name": "input_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "q0" }} , 
 	{ "name": "input_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_3", "role": "address1" }} , 
 	{ "name": "input_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce1" }} , 
 	{ "name": "input_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "q1" }} , 
 	{ "name": "input_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_4", "role": "address0" }} , 
 	{ "name": "input_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce0" }} , 
 	{ "name": "input_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "q0" }} , 
 	{ "name": "input_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_4", "role": "address1" }} , 
 	{ "name": "input_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce1" }} , 
 	{ "name": "input_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "q1" }} , 
 	{ "name": "input_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_5", "role": "address0" }} , 
 	{ "name": "input_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "ce0" }} , 
 	{ "name": "input_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "q0" }} , 
 	{ "name": "input_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_5", "role": "address1" }} , 
 	{ "name": "input_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "ce1" }} , 
 	{ "name": "input_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "q1" }} , 
 	{ "name": "input_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_6", "role": "address0" }} , 
 	{ "name": "input_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "ce0" }} , 
 	{ "name": "input_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "q0" }} , 
 	{ "name": "input_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_6", "role": "address1" }} , 
 	{ "name": "input_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "ce1" }} , 
 	{ "name": "input_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "q1" }} , 
 	{ "name": "input_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_7", "role": "address0" }} , 
 	{ "name": "input_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "ce0" }} , 
 	{ "name": "input_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "q0" }} , 
 	{ "name": "input_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_7", "role": "address1" }} , 
 	{ "name": "input_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "ce1" }} , 
 	{ "name": "input_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "q1" }} , 
 	{ "name": "input_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_8", "role": "address0" }} , 
 	{ "name": "input_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_8", "role": "ce0" }} , 
 	{ "name": "input_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_8", "role": "q0" }} , 
 	{ "name": "input_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_8", "role": "address1" }} , 
 	{ "name": "input_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_8", "role": "ce1" }} , 
 	{ "name": "input_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_8", "role": "q1" }} , 
 	{ "name": "input_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_9", "role": "address0" }} , 
 	{ "name": "input_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_9", "role": "ce0" }} , 
 	{ "name": "input_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_9", "role": "q0" }} , 
 	{ "name": "input_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_9", "role": "address1" }} , 
 	{ "name": "input_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_9", "role": "ce1" }} , 
 	{ "name": "input_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_9", "role": "q1" }} , 
 	{ "name": "input_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_10", "role": "address0" }} , 
 	{ "name": "input_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_10", "role": "ce0" }} , 
 	{ "name": "input_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_10", "role": "q0" }} , 
 	{ "name": "input_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_10", "role": "address1" }} , 
 	{ "name": "input_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_10", "role": "ce1" }} , 
 	{ "name": "input_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_10", "role": "q1" }} , 
 	{ "name": "input_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_11", "role": "address0" }} , 
 	{ "name": "input_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_11", "role": "ce0" }} , 
 	{ "name": "input_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_11", "role": "q0" }} , 
 	{ "name": "input_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_11", "role": "address1" }} , 
 	{ "name": "input_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_11", "role": "ce1" }} , 
 	{ "name": "input_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_11", "role": "q1" }} , 
 	{ "name": "input_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_12", "role": "address0" }} , 
 	{ "name": "input_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_12", "role": "ce0" }} , 
 	{ "name": "input_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_12", "role": "q0" }} , 
 	{ "name": "input_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_12", "role": "address1" }} , 
 	{ "name": "input_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_12", "role": "ce1" }} , 
 	{ "name": "input_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_12", "role": "q1" }} , 
 	{ "name": "input_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_13", "role": "address0" }} , 
 	{ "name": "input_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_13", "role": "ce0" }} , 
 	{ "name": "input_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_13", "role": "q0" }} , 
 	{ "name": "input_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_13", "role": "address1" }} , 
 	{ "name": "input_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_13", "role": "ce1" }} , 
 	{ "name": "input_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_13", "role": "q1" }} , 
 	{ "name": "input_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_14", "role": "address0" }} , 
 	{ "name": "input_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_14", "role": "ce0" }} , 
 	{ "name": "input_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_14", "role": "q0" }} , 
 	{ "name": "input_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_14", "role": "address1" }} , 
 	{ "name": "input_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_14", "role": "ce1" }} , 
 	{ "name": "input_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_14", "role": "q1" }} , 
 	{ "name": "input_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_15", "role": "address0" }} , 
 	{ "name": "input_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_15", "role": "ce0" }} , 
 	{ "name": "input_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_15", "role": "q0" }} , 
 	{ "name": "input_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_15", "role": "address1" }} , 
 	{ "name": "input_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_15", "role": "ce1" }} , 
 	{ "name": "input_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_15", "role": "q1" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we0" }} , 
 	{ "name": "output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "d0" }} , 
 	{ "name": "output_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_2", "role": "address0" }} , 
 	{ "name": "output_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce0" }} , 
 	{ "name": "output_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we0" }} , 
 	{ "name": "output_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "d0" }} , 
 	{ "name": "output_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_3", "role": "address0" }} , 
 	{ "name": "output_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce0" }} , 
 	{ "name": "output_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we0" }} , 
 	{ "name": "output_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "d0" }} , 
 	{ "name": "output_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_4", "role": "address0" }} , 
 	{ "name": "output_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "ce0" }} , 
 	{ "name": "output_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "we0" }} , 
 	{ "name": "output_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "d0" }} , 
 	{ "name": "output_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_5", "role": "address0" }} , 
 	{ "name": "output_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "ce0" }} , 
 	{ "name": "output_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "we0" }} , 
 	{ "name": "output_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "d0" }} , 
 	{ "name": "output_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_6", "role": "address0" }} , 
 	{ "name": "output_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "ce0" }} , 
 	{ "name": "output_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "we0" }} , 
 	{ "name": "output_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "d0" }} , 
 	{ "name": "output_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_7", "role": "address0" }} , 
 	{ "name": "output_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "ce0" }} , 
 	{ "name": "output_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "we0" }} , 
 	{ "name": "output_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "d0" }} , 
 	{ "name": "output_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_8", "role": "address0" }} , 
 	{ "name": "output_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "ce0" }} , 
 	{ "name": "output_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "we0" }} , 
 	{ "name": "output_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "d0" }} , 
 	{ "name": "output_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_9", "role": "address0" }} , 
 	{ "name": "output_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "ce0" }} , 
 	{ "name": "output_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "we0" }} , 
 	{ "name": "output_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "d0" }} , 
 	{ "name": "output_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_10", "role": "address0" }} , 
 	{ "name": "output_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_10", "role": "ce0" }} , 
 	{ "name": "output_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_10", "role": "we0" }} , 
 	{ "name": "output_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_10", "role": "d0" }} , 
 	{ "name": "output_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_11", "role": "address0" }} , 
 	{ "name": "output_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_11", "role": "ce0" }} , 
 	{ "name": "output_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_11", "role": "we0" }} , 
 	{ "name": "output_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_11", "role": "d0" }} , 
 	{ "name": "output_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_12", "role": "address0" }} , 
 	{ "name": "output_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_12", "role": "ce0" }} , 
 	{ "name": "output_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_12", "role": "we0" }} , 
 	{ "name": "output_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_12", "role": "d0" }} , 
 	{ "name": "output_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_13", "role": "address0" }} , 
 	{ "name": "output_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_13", "role": "ce0" }} , 
 	{ "name": "output_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_13", "role": "we0" }} , 
 	{ "name": "output_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_13", "role": "d0" }} , 
 	{ "name": "output_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_14", "role": "address0" }} , 
 	{ "name": "output_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_14", "role": "ce0" }} , 
 	{ "name": "output_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_14", "role": "we0" }} , 
 	{ "name": "output_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_14", "role": "d0" }} , 
 	{ "name": "output_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_15", "role": "address0" }} , 
 	{ "name": "output_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_15", "role": "ce0" }} , 
 	{ "name": "output_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_15", "role": "we0" }} , 
 	{ "name": "output_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_15", "role": "d0" }} , 
 	{ "name": "threshold_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_0_V", "role": "address0" }} , 
 	{ "name": "threshold_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_0_V", "role": "ce0" }} , 
 	{ "name": "threshold_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_0_V", "role": "q0" }} , 
 	{ "name": "threshold_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_1_V", "role": "address0" }} , 
 	{ "name": "threshold_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_1_V", "role": "ce0" }} , 
 	{ "name": "threshold_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_1_V", "role": "q0" }} , 
 	{ "name": "threshold_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_2_V", "role": "address0" }} , 
 	{ "name": "threshold_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_2_V", "role": "ce0" }} , 
 	{ "name": "threshold_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_2_V", "role": "q0" }} , 
 	{ "name": "threshold_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_3_V", "role": "address0" }} , 
 	{ "name": "threshold_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_3_V", "role": "ce0" }} , 
 	{ "name": "threshold_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_3_V", "role": "q0" }} , 
 	{ "name": "threshold_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_4_V", "role": "address0" }} , 
 	{ "name": "threshold_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_4_V", "role": "ce0" }} , 
 	{ "name": "threshold_4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_4_V", "role": "q0" }} , 
 	{ "name": "threshold_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_5_V", "role": "address0" }} , 
 	{ "name": "threshold_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_5_V", "role": "ce0" }} , 
 	{ "name": "threshold_5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_5_V", "role": "q0" }} , 
 	{ "name": "threshold_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_6_V", "role": "address0" }} , 
 	{ "name": "threshold_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_6_V", "role": "ce0" }} , 
 	{ "name": "threshold_6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_6_V", "role": "q0" }} , 
 	{ "name": "threshold_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_7_V", "role": "address0" }} , 
 	{ "name": "threshold_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_7_V", "role": "ce0" }} , 
 	{ "name": "threshold_7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_7_V", "role": "q0" }} , 
 	{ "name": "threshold_8_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_8_V", "role": "address0" }} , 
 	{ "name": "threshold_8_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_8_V", "role": "ce0" }} , 
 	{ "name": "threshold_8_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_8_V", "role": "q0" }} , 
 	{ "name": "threshold_9_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_9_V", "role": "address0" }} , 
 	{ "name": "threshold_9_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_9_V", "role": "ce0" }} , 
 	{ "name": "threshold_9_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_9_V", "role": "q0" }} , 
 	{ "name": "threshold_10_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_10_V", "role": "address0" }} , 
 	{ "name": "threshold_10_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_10_V", "role": "ce0" }} , 
 	{ "name": "threshold_10_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_10_V", "role": "q0" }} , 
 	{ "name": "threshold_11_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_11_V", "role": "address0" }} , 
 	{ "name": "threshold_11_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_11_V", "role": "ce0" }} , 
 	{ "name": "threshold_11_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_11_V", "role": "q0" }} , 
 	{ "name": "threshold_12_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_12_V", "role": "address0" }} , 
 	{ "name": "threshold_12_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_12_V", "role": "ce0" }} , 
 	{ "name": "threshold_12_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_12_V", "role": "q0" }} , 
 	{ "name": "threshold_13_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_13_V", "role": "address0" }} , 
 	{ "name": "threshold_13_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_13_V", "role": "ce0" }} , 
 	{ "name": "threshold_13_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_13_V", "role": "q0" }} , 
 	{ "name": "threshold_14_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_14_V", "role": "address0" }} , 
 	{ "name": "threshold_14_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_14_V", "role": "ce0" }} , 
 	{ "name": "threshold_14_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_14_V", "role": "q0" }} , 
 	{ "name": "threshold_15_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "threshold_15_V", "role": "address0" }} , 
 	{ "name": "threshold_15_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_15_V", "role": "ce0" }} , 
 	{ "name": "threshold_15_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_15_V", "role": "q0" }} , 
 	{ "name": "M", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "M", "role": "default" }} , 
 	{ "name": "N", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "N", "role": "default" }} , 
 	{ "name": "I", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "I", "role": "default" }} , 
 	{ "name": "L", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "L", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"], "CDFG" : "dut_conv", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_8", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_9", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_10", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_11", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_12", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_13", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_14", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_15", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_0", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_1", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_2", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_3", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_4", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_5", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_6", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_7", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_8", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_9", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_10", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_11", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_12", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_13", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_14", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_15", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_0_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_1_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_2_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_3_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_4_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_5_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_6_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_7_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_8_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_9_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_10_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_11_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_12_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_13_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_14_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_15_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "M", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "N", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "I", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "L", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_10ns_13_17_U40", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_10ns_13_17_U41", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_10ns_13_17_U42", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_10ns_13_17_U43", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_10ns_13_17_U44", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_10ns_13_17_U45", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_10ns_13_17_U46", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_10ns_13_17_U47", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_10ns_13_17_U48", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_16to1_sel32_1_1_U49", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_16to1_sel32_1_1_U50", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_16to1_sel32_1_1_U51", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_16to1_sel32_1_1_U52", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_16to1_sel32_1_1_U53", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_16to1_sel32_1_1_U54", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_16to1_sel32_1_1_U55", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_16to1_sel32_1_1_U56", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_16to1_sel32_1_1_U57", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_10ns_13_17_U58", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_16to1_sel32_8_1_U59", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U60", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U61", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U62", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U63", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U64", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U65", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U66", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U67", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U68", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U69", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "47393", "Max" : "992321"}
	, {"Name" : "Interval", "Min" : "47393", "Max" : "992321"}
]}

set Spec2ImplPortList { 
	input_0 { ap_memory {  { input_0_address0 mem_address 1 9 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 1 }  { input_0_address1 mem_address 1 9 }  { input_0_ce1 mem_ce 1 1 }  { input_0_q1 mem_dout 0 1 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 9 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 1 }  { input_1_address1 mem_address 1 9 }  { input_1_ce1 mem_ce 1 1 }  { input_1_q1 mem_dout 0 1 } } }
	input_2 { ap_memory {  { input_2_address0 mem_address 1 9 }  { input_2_ce0 mem_ce 1 1 }  { input_2_q0 mem_dout 0 1 }  { input_2_address1 mem_address 1 9 }  { input_2_ce1 mem_ce 1 1 }  { input_2_q1 mem_dout 0 1 } } }
	input_3 { ap_memory {  { input_3_address0 mem_address 1 9 }  { input_3_ce0 mem_ce 1 1 }  { input_3_q0 mem_dout 0 1 }  { input_3_address1 mem_address 1 9 }  { input_3_ce1 mem_ce 1 1 }  { input_3_q1 mem_dout 0 1 } } }
	input_4 { ap_memory {  { input_4_address0 mem_address 1 9 }  { input_4_ce0 mem_ce 1 1 }  { input_4_q0 mem_dout 0 1 }  { input_4_address1 mem_address 1 9 }  { input_4_ce1 mem_ce 1 1 }  { input_4_q1 mem_dout 0 1 } } }
	input_5 { ap_memory {  { input_5_address0 mem_address 1 9 }  { input_5_ce0 mem_ce 1 1 }  { input_5_q0 mem_dout 0 1 }  { input_5_address1 mem_address 1 9 }  { input_5_ce1 mem_ce 1 1 }  { input_5_q1 mem_dout 0 1 } } }
	input_6 { ap_memory {  { input_6_address0 mem_address 1 9 }  { input_6_ce0 mem_ce 1 1 }  { input_6_q0 mem_dout 0 1 }  { input_6_address1 mem_address 1 9 }  { input_6_ce1 mem_ce 1 1 }  { input_6_q1 mem_dout 0 1 } } }
	input_7 { ap_memory {  { input_7_address0 mem_address 1 9 }  { input_7_ce0 mem_ce 1 1 }  { input_7_q0 mem_dout 0 1 }  { input_7_address1 mem_address 1 9 }  { input_7_ce1 mem_ce 1 1 }  { input_7_q1 mem_dout 0 1 } } }
	input_8 { ap_memory {  { input_8_address0 mem_address 1 9 }  { input_8_ce0 mem_ce 1 1 }  { input_8_q0 mem_dout 0 1 }  { input_8_address1 mem_address 1 9 }  { input_8_ce1 mem_ce 1 1 }  { input_8_q1 mem_dout 0 1 } } }
	input_9 { ap_memory {  { input_9_address0 mem_address 1 9 }  { input_9_ce0 mem_ce 1 1 }  { input_9_q0 mem_dout 0 1 }  { input_9_address1 mem_address 1 9 }  { input_9_ce1 mem_ce 1 1 }  { input_9_q1 mem_dout 0 1 } } }
	input_10 { ap_memory {  { input_10_address0 mem_address 1 9 }  { input_10_ce0 mem_ce 1 1 }  { input_10_q0 mem_dout 0 1 }  { input_10_address1 mem_address 1 9 }  { input_10_ce1 mem_ce 1 1 }  { input_10_q1 mem_dout 0 1 } } }
	input_11 { ap_memory {  { input_11_address0 mem_address 1 9 }  { input_11_ce0 mem_ce 1 1 }  { input_11_q0 mem_dout 0 1 }  { input_11_address1 mem_address 1 9 }  { input_11_ce1 mem_ce 1 1 }  { input_11_q1 mem_dout 0 1 } } }
	input_12 { ap_memory {  { input_12_address0 mem_address 1 9 }  { input_12_ce0 mem_ce 1 1 }  { input_12_q0 mem_dout 0 1 }  { input_12_address1 mem_address 1 9 }  { input_12_ce1 mem_ce 1 1 }  { input_12_q1 mem_dout 0 1 } } }
	input_13 { ap_memory {  { input_13_address0 mem_address 1 9 }  { input_13_ce0 mem_ce 1 1 }  { input_13_q0 mem_dout 0 1 }  { input_13_address1 mem_address 1 9 }  { input_13_ce1 mem_ce 1 1 }  { input_13_q1 mem_dout 0 1 } } }
	input_14 { ap_memory {  { input_14_address0 mem_address 1 9 }  { input_14_ce0 mem_ce 1 1 }  { input_14_q0 mem_dout 0 1 }  { input_14_address1 mem_address 1 9 }  { input_14_ce1 mem_ce 1 1 }  { input_14_q1 mem_dout 0 1 } } }
	input_15 { ap_memory {  { input_15_address0 mem_address 1 9 }  { input_15_ce0 mem_ce 1 1 }  { input_15_q0 mem_dout 0 1 }  { input_15_address1 mem_address 1 9 }  { input_15_ce1 mem_ce 1 1 }  { input_15_q1 mem_dout 0 1 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 9 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 1 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 9 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 1 } } }
	output_2 { ap_memory {  { output_2_address0 mem_address 1 9 }  { output_2_ce0 mem_ce 1 1 }  { output_2_we0 mem_we 1 1 }  { output_2_d0 mem_din 1 1 } } }
	output_3 { ap_memory {  { output_3_address0 mem_address 1 9 }  { output_3_ce0 mem_ce 1 1 }  { output_3_we0 mem_we 1 1 }  { output_3_d0 mem_din 1 1 } } }
	output_4 { ap_memory {  { output_4_address0 mem_address 1 9 }  { output_4_ce0 mem_ce 1 1 }  { output_4_we0 mem_we 1 1 }  { output_4_d0 mem_din 1 1 } } }
	output_5 { ap_memory {  { output_5_address0 mem_address 1 9 }  { output_5_ce0 mem_ce 1 1 }  { output_5_we0 mem_we 1 1 }  { output_5_d0 mem_din 1 1 } } }
	output_6 { ap_memory {  { output_6_address0 mem_address 1 9 }  { output_6_ce0 mem_ce 1 1 }  { output_6_we0 mem_we 1 1 }  { output_6_d0 mem_din 1 1 } } }
	output_7 { ap_memory {  { output_7_address0 mem_address 1 9 }  { output_7_ce0 mem_ce 1 1 }  { output_7_we0 mem_we 1 1 }  { output_7_d0 mem_din 1 1 } } }
	output_8 { ap_memory {  { output_8_address0 mem_address 1 9 }  { output_8_ce0 mem_ce 1 1 }  { output_8_we0 mem_we 1 1 }  { output_8_d0 mem_din 1 1 } } }
	output_9 { ap_memory {  { output_9_address0 mem_address 1 9 }  { output_9_ce0 mem_ce 1 1 }  { output_9_we0 mem_we 1 1 }  { output_9_d0 mem_din 1 1 } } }
	output_10 { ap_memory {  { output_10_address0 mem_address 1 9 }  { output_10_ce0 mem_ce 1 1 }  { output_10_we0 mem_we 1 1 }  { output_10_d0 mem_din 1 1 } } }
	output_11 { ap_memory {  { output_11_address0 mem_address 1 9 }  { output_11_ce0 mem_ce 1 1 }  { output_11_we0 mem_we 1 1 }  { output_11_d0 mem_din 1 1 } } }
	output_12 { ap_memory {  { output_12_address0 mem_address 1 9 }  { output_12_ce0 mem_ce 1 1 }  { output_12_we0 mem_we 1 1 }  { output_12_d0 mem_din 1 1 } } }
	output_13 { ap_memory {  { output_13_address0 mem_address 1 9 }  { output_13_ce0 mem_ce 1 1 }  { output_13_we0 mem_we 1 1 }  { output_13_d0 mem_din 1 1 } } }
	output_14 { ap_memory {  { output_14_address0 mem_address 1 9 }  { output_14_ce0 mem_ce 1 1 }  { output_14_we0 mem_we 1 1 }  { output_14_d0 mem_din 1 1 } } }
	output_15 { ap_memory {  { output_15_address0 mem_address 1 9 }  { output_15_ce0 mem_ce 1 1 }  { output_15_we0 mem_we 1 1 }  { output_15_d0 mem_din 1 1 } } }
	threshold_0_V { ap_memory {  { threshold_0_V_address0 mem_address 1 9 }  { threshold_0_V_ce0 mem_ce 1 1 }  { threshold_0_V_q0 mem_dout 0 8 } } }
	threshold_1_V { ap_memory {  { threshold_1_V_address0 mem_address 1 9 }  { threshold_1_V_ce0 mem_ce 1 1 }  { threshold_1_V_q0 mem_dout 0 8 } } }
	threshold_2_V { ap_memory {  { threshold_2_V_address0 mem_address 1 9 }  { threshold_2_V_ce0 mem_ce 1 1 }  { threshold_2_V_q0 mem_dout 0 8 } } }
	threshold_3_V { ap_memory {  { threshold_3_V_address0 mem_address 1 9 }  { threshold_3_V_ce0 mem_ce 1 1 }  { threshold_3_V_q0 mem_dout 0 8 } } }
	threshold_4_V { ap_memory {  { threshold_4_V_address0 mem_address 1 9 }  { threshold_4_V_ce0 mem_ce 1 1 }  { threshold_4_V_q0 mem_dout 0 8 } } }
	threshold_5_V { ap_memory {  { threshold_5_V_address0 mem_address 1 9 }  { threshold_5_V_ce0 mem_ce 1 1 }  { threshold_5_V_q0 mem_dout 0 8 } } }
	threshold_6_V { ap_memory {  { threshold_6_V_address0 mem_address 1 9 }  { threshold_6_V_ce0 mem_ce 1 1 }  { threshold_6_V_q0 mem_dout 0 8 } } }
	threshold_7_V { ap_memory {  { threshold_7_V_address0 mem_address 1 9 }  { threshold_7_V_ce0 mem_ce 1 1 }  { threshold_7_V_q0 mem_dout 0 8 } } }
	threshold_8_V { ap_memory {  { threshold_8_V_address0 mem_address 1 9 }  { threshold_8_V_ce0 mem_ce 1 1 }  { threshold_8_V_q0 mem_dout 0 8 } } }
	threshold_9_V { ap_memory {  { threshold_9_V_address0 mem_address 1 9 }  { threshold_9_V_ce0 mem_ce 1 1 }  { threshold_9_V_q0 mem_dout 0 8 } } }
	threshold_10_V { ap_memory {  { threshold_10_V_address0 mem_address 1 9 }  { threshold_10_V_ce0 mem_ce 1 1 }  { threshold_10_V_q0 mem_dout 0 8 } } }
	threshold_11_V { ap_memory {  { threshold_11_V_address0 mem_address 1 9 }  { threshold_11_V_ce0 mem_ce 1 1 }  { threshold_11_V_q0 mem_dout 0 8 } } }
	threshold_12_V { ap_memory {  { threshold_12_V_address0 mem_address 1 9 }  { threshold_12_V_ce0 mem_ce 1 1 }  { threshold_12_V_q0 mem_dout 0 8 } } }
	threshold_13_V { ap_memory {  { threshold_13_V_address0 mem_address 1 9 }  { threshold_13_V_ce0 mem_ce 1 1 }  { threshold_13_V_q0 mem_dout 0 8 } } }
	threshold_14_V { ap_memory {  { threshold_14_V_address0 mem_address 1 9 }  { threshold_14_V_ce0 mem_ce 1 1 }  { threshold_14_V_q0 mem_dout 0 8 } } }
	threshold_15_V { ap_memory {  { threshold_15_V_address0 mem_address 1 9 }  { threshold_15_V_ce0 mem_ce 1 1 }  { threshold_15_V_q0 mem_dout 0 8 } } }
	M { ap_none {  { M in_data 0 7 } } }
	N { ap_none {  { N in_data 0 7 } } }
	I { ap_none {  { I in_data 0 6 } } }
	L { ap_none {  { L in_data 0 1 } } }
}
