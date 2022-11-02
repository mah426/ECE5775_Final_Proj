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
	{ input_0 int 1 regular {array 648 { 1 1 } 1 1 }  }
	{ input_1 int 1 regular {array 648 { 1 1 } 1 1 }  }
	{ input_2 int 1 regular {array 648 { 1 1 } 1 1 }  }
	{ input_3 int 1 regular {array 648 { 1 1 } 1 1 }  }
	{ input_4 int 1 regular {array 648 { 1 1 } 1 1 }  }
	{ input_5 int 1 regular {array 648 { 1 1 } 1 1 }  }
	{ input_6 int 1 regular {array 648 { 1 1 } 1 1 }  }
	{ input_7 int 1 regular {array 648 { 1 1 } 1 1 }  }
	{ output_0 int 1 regular {array 648 { 0 3 } 0 1 }  }
	{ output_1 int 1 regular {array 648 { 0 3 } 0 1 }  }
	{ output_2 int 1 regular {array 648 { 0 3 } 0 1 }  }
	{ output_3 int 1 regular {array 648 { 0 3 } 0 1 }  }
	{ output_4 int 1 regular {array 648 { 0 3 } 0 1 }  }
	{ output_5 int 1 regular {array 648 { 0 3 } 0 1 }  }
	{ output_6 int 1 regular {array 648 { 0 3 } 0 1 }  }
	{ output_7 int 1 regular {array 648 { 0 3 } 0 1 }  }
	{ threshold_0_V int 8 regular {array 648 { 1 3 } 1 1 }  }
	{ threshold_1_V int 8 regular {array 648 { 1 3 } 1 1 }  }
	{ threshold_2_V int 8 regular {array 648 { 1 3 } 1 1 }  }
	{ threshold_3_V int 8 regular {array 648 { 1 3 } 1 1 }  }
	{ threshold_4_V int 8 regular {array 648 { 1 3 } 1 1 }  }
	{ threshold_5_V int 8 regular {array 648 { 1 3 } 1 1 }  }
	{ threshold_6_V int 8 regular {array 648 { 1 3 } 1 1 }  }
	{ threshold_7_V int 8 regular {array 648 { 1 3 } 1 1 }  }
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
 	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_4", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_5", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_6", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_7", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "threshold_0_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_1_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_2_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_3_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_4_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_5_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_6_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "threshold_7_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "M", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "N", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "I", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "L", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 114
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_address0 sc_out sc_lv 10 signal 0 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_q0 sc_in sc_lv 1 signal 0 } 
	{ input_0_address1 sc_out sc_lv 10 signal 0 } 
	{ input_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_0_q1 sc_in sc_lv 1 signal 0 } 
	{ input_1_address0 sc_out sc_lv 10 signal 1 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_1_q0 sc_in sc_lv 1 signal 1 } 
	{ input_1_address1 sc_out sc_lv 10 signal 1 } 
	{ input_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ input_1_q1 sc_in sc_lv 1 signal 1 } 
	{ input_2_address0 sc_out sc_lv 10 signal 2 } 
	{ input_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_2_q0 sc_in sc_lv 1 signal 2 } 
	{ input_2_address1 sc_out sc_lv 10 signal 2 } 
	{ input_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ input_2_q1 sc_in sc_lv 1 signal 2 } 
	{ input_3_address0 sc_out sc_lv 10 signal 3 } 
	{ input_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_3_q0 sc_in sc_lv 1 signal 3 } 
	{ input_3_address1 sc_out sc_lv 10 signal 3 } 
	{ input_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ input_3_q1 sc_in sc_lv 1 signal 3 } 
	{ input_4_address0 sc_out sc_lv 10 signal 4 } 
	{ input_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_4_q0 sc_in sc_lv 1 signal 4 } 
	{ input_4_address1 sc_out sc_lv 10 signal 4 } 
	{ input_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ input_4_q1 sc_in sc_lv 1 signal 4 } 
	{ input_5_address0 sc_out sc_lv 10 signal 5 } 
	{ input_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ input_5_q0 sc_in sc_lv 1 signal 5 } 
	{ input_5_address1 sc_out sc_lv 10 signal 5 } 
	{ input_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ input_5_q1 sc_in sc_lv 1 signal 5 } 
	{ input_6_address0 sc_out sc_lv 10 signal 6 } 
	{ input_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_6_q0 sc_in sc_lv 1 signal 6 } 
	{ input_6_address1 sc_out sc_lv 10 signal 6 } 
	{ input_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ input_6_q1 sc_in sc_lv 1 signal 6 } 
	{ input_7_address0 sc_out sc_lv 10 signal 7 } 
	{ input_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_7_q0 sc_in sc_lv 1 signal 7 } 
	{ input_7_address1 sc_out sc_lv 10 signal 7 } 
	{ input_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ input_7_q1 sc_in sc_lv 1 signal 7 } 
	{ output_0_address0 sc_out sc_lv 10 signal 8 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ output_0_we0 sc_out sc_logic 1 signal 8 } 
	{ output_0_d0 sc_out sc_lv 1 signal 8 } 
	{ output_1_address0 sc_out sc_lv 10 signal 9 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ output_1_we0 sc_out sc_logic 1 signal 9 } 
	{ output_1_d0 sc_out sc_lv 1 signal 9 } 
	{ output_2_address0 sc_out sc_lv 10 signal 10 } 
	{ output_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ output_2_we0 sc_out sc_logic 1 signal 10 } 
	{ output_2_d0 sc_out sc_lv 1 signal 10 } 
	{ output_3_address0 sc_out sc_lv 10 signal 11 } 
	{ output_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ output_3_we0 sc_out sc_logic 1 signal 11 } 
	{ output_3_d0 sc_out sc_lv 1 signal 11 } 
	{ output_4_address0 sc_out sc_lv 10 signal 12 } 
	{ output_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ output_4_we0 sc_out sc_logic 1 signal 12 } 
	{ output_4_d0 sc_out sc_lv 1 signal 12 } 
	{ output_5_address0 sc_out sc_lv 10 signal 13 } 
	{ output_5_ce0 sc_out sc_logic 1 signal 13 } 
	{ output_5_we0 sc_out sc_logic 1 signal 13 } 
	{ output_5_d0 sc_out sc_lv 1 signal 13 } 
	{ output_6_address0 sc_out sc_lv 10 signal 14 } 
	{ output_6_ce0 sc_out sc_logic 1 signal 14 } 
	{ output_6_we0 sc_out sc_logic 1 signal 14 } 
	{ output_6_d0 sc_out sc_lv 1 signal 14 } 
	{ output_7_address0 sc_out sc_lv 10 signal 15 } 
	{ output_7_ce0 sc_out sc_logic 1 signal 15 } 
	{ output_7_we0 sc_out sc_logic 1 signal 15 } 
	{ output_7_d0 sc_out sc_lv 1 signal 15 } 
	{ threshold_0_V_address0 sc_out sc_lv 10 signal 16 } 
	{ threshold_0_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ threshold_0_V_q0 sc_in sc_lv 8 signal 16 } 
	{ threshold_1_V_address0 sc_out sc_lv 10 signal 17 } 
	{ threshold_1_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ threshold_1_V_q0 sc_in sc_lv 8 signal 17 } 
	{ threshold_2_V_address0 sc_out sc_lv 10 signal 18 } 
	{ threshold_2_V_ce0 sc_out sc_logic 1 signal 18 } 
	{ threshold_2_V_q0 sc_in sc_lv 8 signal 18 } 
	{ threshold_3_V_address0 sc_out sc_lv 10 signal 19 } 
	{ threshold_3_V_ce0 sc_out sc_logic 1 signal 19 } 
	{ threshold_3_V_q0 sc_in sc_lv 8 signal 19 } 
	{ threshold_4_V_address0 sc_out sc_lv 10 signal 20 } 
	{ threshold_4_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ threshold_4_V_q0 sc_in sc_lv 8 signal 20 } 
	{ threshold_5_V_address0 sc_out sc_lv 10 signal 21 } 
	{ threshold_5_V_ce0 sc_out sc_logic 1 signal 21 } 
	{ threshold_5_V_q0 sc_in sc_lv 8 signal 21 } 
	{ threshold_6_V_address0 sc_out sc_lv 10 signal 22 } 
	{ threshold_6_V_ce0 sc_out sc_logic 1 signal 22 } 
	{ threshold_6_V_q0 sc_in sc_lv 8 signal 22 } 
	{ threshold_7_V_address0 sc_out sc_lv 10 signal 23 } 
	{ threshold_7_V_ce0 sc_out sc_logic 1 signal 23 } 
	{ threshold_7_V_q0 sc_in sc_lv 8 signal 23 } 
	{ M sc_in sc_lv 7 signal 24 } 
	{ N sc_in sc_lv 7 signal 25 } 
	{ I sc_in sc_lv 6 signal 26 } 
	{ L sc_in sc_lv 1 signal 27 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_0", "role": "address0" }} , 
 	{ "name": "input_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce0" }} , 
 	{ "name": "input_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "q0" }} , 
 	{ "name": "input_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_0", "role": "address1" }} , 
 	{ "name": "input_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce1" }} , 
 	{ "name": "input_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "q1" }} , 
 	{ "name": "input_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_1", "role": "address0" }} , 
 	{ "name": "input_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce0" }} , 
 	{ "name": "input_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "q0" }} , 
 	{ "name": "input_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_1", "role": "address1" }} , 
 	{ "name": "input_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce1" }} , 
 	{ "name": "input_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "q1" }} , 
 	{ "name": "input_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_2", "role": "address0" }} , 
 	{ "name": "input_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce0" }} , 
 	{ "name": "input_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "q0" }} , 
 	{ "name": "input_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_2", "role": "address1" }} , 
 	{ "name": "input_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce1" }} , 
 	{ "name": "input_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "q1" }} , 
 	{ "name": "input_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_3", "role": "address0" }} , 
 	{ "name": "input_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce0" }} , 
 	{ "name": "input_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "q0" }} , 
 	{ "name": "input_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_3", "role": "address1" }} , 
 	{ "name": "input_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce1" }} , 
 	{ "name": "input_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "q1" }} , 
 	{ "name": "input_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_4", "role": "address0" }} , 
 	{ "name": "input_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce0" }} , 
 	{ "name": "input_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "q0" }} , 
 	{ "name": "input_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_4", "role": "address1" }} , 
 	{ "name": "input_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce1" }} , 
 	{ "name": "input_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "q1" }} , 
 	{ "name": "input_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_5", "role": "address0" }} , 
 	{ "name": "input_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "ce0" }} , 
 	{ "name": "input_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "q0" }} , 
 	{ "name": "input_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_5", "role": "address1" }} , 
 	{ "name": "input_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "ce1" }} , 
 	{ "name": "input_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "q1" }} , 
 	{ "name": "input_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_6", "role": "address0" }} , 
 	{ "name": "input_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "ce0" }} , 
 	{ "name": "input_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "q0" }} , 
 	{ "name": "input_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_6", "role": "address1" }} , 
 	{ "name": "input_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "ce1" }} , 
 	{ "name": "input_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "q1" }} , 
 	{ "name": "input_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_7", "role": "address0" }} , 
 	{ "name": "input_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "ce0" }} , 
 	{ "name": "input_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "q0" }} , 
 	{ "name": "input_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_7", "role": "address1" }} , 
 	{ "name": "input_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "ce1" }} , 
 	{ "name": "input_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "q1" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we0" }} , 
 	{ "name": "output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "d0" }} , 
 	{ "name": "output_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_2", "role": "address0" }} , 
 	{ "name": "output_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce0" }} , 
 	{ "name": "output_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we0" }} , 
 	{ "name": "output_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "d0" }} , 
 	{ "name": "output_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_3", "role": "address0" }} , 
 	{ "name": "output_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce0" }} , 
 	{ "name": "output_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we0" }} , 
 	{ "name": "output_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "d0" }} , 
 	{ "name": "output_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_4", "role": "address0" }} , 
 	{ "name": "output_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "ce0" }} , 
 	{ "name": "output_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "we0" }} , 
 	{ "name": "output_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "d0" }} , 
 	{ "name": "output_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_5", "role": "address0" }} , 
 	{ "name": "output_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "ce0" }} , 
 	{ "name": "output_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "we0" }} , 
 	{ "name": "output_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "d0" }} , 
 	{ "name": "output_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_6", "role": "address0" }} , 
 	{ "name": "output_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "ce0" }} , 
 	{ "name": "output_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "we0" }} , 
 	{ "name": "output_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "d0" }} , 
 	{ "name": "output_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_7", "role": "address0" }} , 
 	{ "name": "output_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "ce0" }} , 
 	{ "name": "output_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "we0" }} , 
 	{ "name": "output_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "d0" }} , 
 	{ "name": "threshold_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "threshold_0_V", "role": "address0" }} , 
 	{ "name": "threshold_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_0_V", "role": "ce0" }} , 
 	{ "name": "threshold_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_0_V", "role": "q0" }} , 
 	{ "name": "threshold_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "threshold_1_V", "role": "address0" }} , 
 	{ "name": "threshold_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_1_V", "role": "ce0" }} , 
 	{ "name": "threshold_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_1_V", "role": "q0" }} , 
 	{ "name": "threshold_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "threshold_2_V", "role": "address0" }} , 
 	{ "name": "threshold_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_2_V", "role": "ce0" }} , 
 	{ "name": "threshold_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_2_V", "role": "q0" }} , 
 	{ "name": "threshold_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "threshold_3_V", "role": "address0" }} , 
 	{ "name": "threshold_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_3_V", "role": "ce0" }} , 
 	{ "name": "threshold_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_3_V", "role": "q0" }} , 
 	{ "name": "threshold_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "threshold_4_V", "role": "address0" }} , 
 	{ "name": "threshold_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_4_V", "role": "ce0" }} , 
 	{ "name": "threshold_4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_4_V", "role": "q0" }} , 
 	{ "name": "threshold_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "threshold_5_V", "role": "address0" }} , 
 	{ "name": "threshold_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_5_V", "role": "ce0" }} , 
 	{ "name": "threshold_5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_5_V", "role": "q0" }} , 
 	{ "name": "threshold_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "threshold_6_V", "role": "address0" }} , 
 	{ "name": "threshold_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_6_V", "role": "ce0" }} , 
 	{ "name": "threshold_6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_6_V", "role": "q0" }} , 
 	{ "name": "threshold_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "threshold_7_V", "role": "address0" }} , 
 	{ "name": "threshold_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_7_V", "role": "ce0" }} , 
 	{ "name": "threshold_7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_7_V", "role": "q0" }} , 
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
		{"Name" : "output_0", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_1", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_2", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_3", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_4", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_5", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_6", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_7", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_0_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_1_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_2_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_3_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_4_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_5_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_6_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_7_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
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
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_11ns_13_17_U24", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_11ns_13_17_U25", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_11ns_13_17_U26", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_11ns_13_17_U27", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_11ns_13_17_U28", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_11ns_13_17_U29", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_11ns_13_17_U30", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_11ns_13_17_U31", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_11ns_13_17_U32", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel32_1_1_U33", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel32_1_1_U34", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel32_1_1_U35", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel32_1_1_U36", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel32_1_1_U37", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel32_1_1_U38", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel32_1_1_U39", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel32_1_1_U40", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel32_1_1_U41", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_11ns_13_17_U42", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel32_8_1_U43", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U44", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U45", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U46", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U47", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U48", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U49", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U50", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U51", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U52", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_15ns_28_1_U53", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "47393", "Max" : "992321"}
	, {"Name" : "Interval", "Min" : "47393", "Max" : "992321"}
]}

set Spec2ImplPortList { 
	input_0 { ap_memory {  { input_0_address0 mem_address 1 10 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 1 }  { input_0_address1 mem_address 1 10 }  { input_0_ce1 mem_ce 1 1 }  { input_0_q1 mem_dout 0 1 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 10 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 1 }  { input_1_address1 mem_address 1 10 }  { input_1_ce1 mem_ce 1 1 }  { input_1_q1 mem_dout 0 1 } } }
	input_2 { ap_memory {  { input_2_address0 mem_address 1 10 }  { input_2_ce0 mem_ce 1 1 }  { input_2_q0 mem_dout 0 1 }  { input_2_address1 mem_address 1 10 }  { input_2_ce1 mem_ce 1 1 }  { input_2_q1 mem_dout 0 1 } } }
	input_3 { ap_memory {  { input_3_address0 mem_address 1 10 }  { input_3_ce0 mem_ce 1 1 }  { input_3_q0 mem_dout 0 1 }  { input_3_address1 mem_address 1 10 }  { input_3_ce1 mem_ce 1 1 }  { input_3_q1 mem_dout 0 1 } } }
	input_4 { ap_memory {  { input_4_address0 mem_address 1 10 }  { input_4_ce0 mem_ce 1 1 }  { input_4_q0 mem_dout 0 1 }  { input_4_address1 mem_address 1 10 }  { input_4_ce1 mem_ce 1 1 }  { input_4_q1 mem_dout 0 1 } } }
	input_5 { ap_memory {  { input_5_address0 mem_address 1 10 }  { input_5_ce0 mem_ce 1 1 }  { input_5_q0 mem_dout 0 1 }  { input_5_address1 mem_address 1 10 }  { input_5_ce1 mem_ce 1 1 }  { input_5_q1 mem_dout 0 1 } } }
	input_6 { ap_memory {  { input_6_address0 mem_address 1 10 }  { input_6_ce0 mem_ce 1 1 }  { input_6_q0 mem_dout 0 1 }  { input_6_address1 mem_address 1 10 }  { input_6_ce1 mem_ce 1 1 }  { input_6_q1 mem_dout 0 1 } } }
	input_7 { ap_memory {  { input_7_address0 mem_address 1 10 }  { input_7_ce0 mem_ce 1 1 }  { input_7_q0 mem_dout 0 1 }  { input_7_address1 mem_address 1 10 }  { input_7_ce1 mem_ce 1 1 }  { input_7_q1 mem_dout 0 1 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 10 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 1 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 10 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 1 } } }
	output_2 { ap_memory {  { output_2_address0 mem_address 1 10 }  { output_2_ce0 mem_ce 1 1 }  { output_2_we0 mem_we 1 1 }  { output_2_d0 mem_din 1 1 } } }
	output_3 { ap_memory {  { output_3_address0 mem_address 1 10 }  { output_3_ce0 mem_ce 1 1 }  { output_3_we0 mem_we 1 1 }  { output_3_d0 mem_din 1 1 } } }
	output_4 { ap_memory {  { output_4_address0 mem_address 1 10 }  { output_4_ce0 mem_ce 1 1 }  { output_4_we0 mem_we 1 1 }  { output_4_d0 mem_din 1 1 } } }
	output_5 { ap_memory {  { output_5_address0 mem_address 1 10 }  { output_5_ce0 mem_ce 1 1 }  { output_5_we0 mem_we 1 1 }  { output_5_d0 mem_din 1 1 } } }
	output_6 { ap_memory {  { output_6_address0 mem_address 1 10 }  { output_6_ce0 mem_ce 1 1 }  { output_6_we0 mem_we 1 1 }  { output_6_d0 mem_din 1 1 } } }
	output_7 { ap_memory {  { output_7_address0 mem_address 1 10 }  { output_7_ce0 mem_ce 1 1 }  { output_7_we0 mem_we 1 1 }  { output_7_d0 mem_din 1 1 } } }
	threshold_0_V { ap_memory {  { threshold_0_V_address0 mem_address 1 10 }  { threshold_0_V_ce0 mem_ce 1 1 }  { threshold_0_V_q0 mem_dout 0 8 } } }
	threshold_1_V { ap_memory {  { threshold_1_V_address0 mem_address 1 10 }  { threshold_1_V_ce0 mem_ce 1 1 }  { threshold_1_V_q0 mem_dout 0 8 } } }
	threshold_2_V { ap_memory {  { threshold_2_V_address0 mem_address 1 10 }  { threshold_2_V_ce0 mem_ce 1 1 }  { threshold_2_V_q0 mem_dout 0 8 } } }
	threshold_3_V { ap_memory {  { threshold_3_V_address0 mem_address 1 10 }  { threshold_3_V_ce0 mem_ce 1 1 }  { threshold_3_V_q0 mem_dout 0 8 } } }
	threshold_4_V { ap_memory {  { threshold_4_V_address0 mem_address 1 10 }  { threshold_4_V_ce0 mem_ce 1 1 }  { threshold_4_V_q0 mem_dout 0 8 } } }
	threshold_5_V { ap_memory {  { threshold_5_V_address0 mem_address 1 10 }  { threshold_5_V_ce0 mem_ce 1 1 }  { threshold_5_V_q0 mem_dout 0 8 } } }
	threshold_6_V { ap_memory {  { threshold_6_V_address0 mem_address 1 10 }  { threshold_6_V_ce0 mem_ce 1 1 }  { threshold_6_V_q0 mem_dout 0 8 } } }
	threshold_7_V { ap_memory {  { threshold_7_V_address0 mem_address 1 10 }  { threshold_7_V_ce0 mem_ce 1 1 }  { threshold_7_V_q0 mem_dout 0 8 } } }
	M { ap_none {  { M in_data 0 7 } } }
	N { ap_none {  { N in_data 0 7 } } }
	I { ap_none {  { I in_data 0 6 } } }
	L { ap_none {  { L in_data 0 1 } } }
}
