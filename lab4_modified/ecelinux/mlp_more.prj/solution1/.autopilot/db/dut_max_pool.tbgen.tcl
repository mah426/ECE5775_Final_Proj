set moduleName dut_max_pool
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut_max_pool}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_0 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input_1 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input_2 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input_3 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input_4 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input_5 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input_6 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input_7 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ output_0 int 128 regular {array 147 { 2 3 } 1 1 }  }
	{ output_1 int 128 regular {array 147 { 2 3 } 1 1 }  }
	{ output_2 int 128 regular {array 147 { 2 3 } 1 1 }  }
	{ output_3 int 128 regular {array 147 { 2 3 } 1 1 }  }
	{ output_4 int 128 regular {array 147 { 2 3 } 1 1 }  }
	{ output_5 int 128 regular {array 147 { 2 3 } 1 1 }  }
	{ output_6 int 128 regular {array 147 { 2 3 } 1 1 }  }
	{ output_7 int 128 regular {array 147 { 2 3 } 1 1 }  }
	{ M int 6 regular  }
	{ I int 6 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_0", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input_2", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input_3", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input_4", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input_5", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input_6", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input_7", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "output_2", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "output_3", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "output_4", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "output_5", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "output_6", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "output_7", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "M", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "I", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 72
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_address0 sc_out sc_lv 8 signal 0 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_q0 sc_in sc_lv 128 signal 0 } 
	{ input_1_address0 sc_out sc_lv 8 signal 1 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_1_q0 sc_in sc_lv 128 signal 1 } 
	{ input_2_address0 sc_out sc_lv 8 signal 2 } 
	{ input_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_2_q0 sc_in sc_lv 128 signal 2 } 
	{ input_3_address0 sc_out sc_lv 8 signal 3 } 
	{ input_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_3_q0 sc_in sc_lv 128 signal 3 } 
	{ input_4_address0 sc_out sc_lv 8 signal 4 } 
	{ input_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_4_q0 sc_in sc_lv 128 signal 4 } 
	{ input_5_address0 sc_out sc_lv 8 signal 5 } 
	{ input_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ input_5_q0 sc_in sc_lv 128 signal 5 } 
	{ input_6_address0 sc_out sc_lv 8 signal 6 } 
	{ input_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_6_q0 sc_in sc_lv 128 signal 6 } 
	{ input_7_address0 sc_out sc_lv 8 signal 7 } 
	{ input_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_7_q0 sc_in sc_lv 128 signal 7 } 
	{ output_0_address0 sc_out sc_lv 8 signal 8 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ output_0_we0 sc_out sc_logic 1 signal 8 } 
	{ output_0_d0 sc_out sc_lv 128 signal 8 } 
	{ output_0_q0 sc_in sc_lv 128 signal 8 } 
	{ output_1_address0 sc_out sc_lv 8 signal 9 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ output_1_we0 sc_out sc_logic 1 signal 9 } 
	{ output_1_d0 sc_out sc_lv 128 signal 9 } 
	{ output_1_q0 sc_in sc_lv 128 signal 9 } 
	{ output_2_address0 sc_out sc_lv 8 signal 10 } 
	{ output_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ output_2_we0 sc_out sc_logic 1 signal 10 } 
	{ output_2_d0 sc_out sc_lv 128 signal 10 } 
	{ output_2_q0 sc_in sc_lv 128 signal 10 } 
	{ output_3_address0 sc_out sc_lv 8 signal 11 } 
	{ output_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ output_3_we0 sc_out sc_logic 1 signal 11 } 
	{ output_3_d0 sc_out sc_lv 128 signal 11 } 
	{ output_3_q0 sc_in sc_lv 128 signal 11 } 
	{ output_4_address0 sc_out sc_lv 8 signal 12 } 
	{ output_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ output_4_we0 sc_out sc_logic 1 signal 12 } 
	{ output_4_d0 sc_out sc_lv 128 signal 12 } 
	{ output_4_q0 sc_in sc_lv 128 signal 12 } 
	{ output_5_address0 sc_out sc_lv 8 signal 13 } 
	{ output_5_ce0 sc_out sc_logic 1 signal 13 } 
	{ output_5_we0 sc_out sc_logic 1 signal 13 } 
	{ output_5_d0 sc_out sc_lv 128 signal 13 } 
	{ output_5_q0 sc_in sc_lv 128 signal 13 } 
	{ output_6_address0 sc_out sc_lv 8 signal 14 } 
	{ output_6_ce0 sc_out sc_logic 1 signal 14 } 
	{ output_6_we0 sc_out sc_logic 1 signal 14 } 
	{ output_6_d0 sc_out sc_lv 128 signal 14 } 
	{ output_6_q0 sc_in sc_lv 128 signal 14 } 
	{ output_7_address0 sc_out sc_lv 8 signal 15 } 
	{ output_7_ce0 sc_out sc_logic 1 signal 15 } 
	{ output_7_we0 sc_out sc_logic 1 signal 15 } 
	{ output_7_d0 sc_out sc_lv 128 signal 15 } 
	{ output_7_q0 sc_in sc_lv 128 signal 15 } 
	{ M sc_in sc_lv 6 signal 16 } 
	{ I sc_in sc_lv 6 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_0", "role": "address0" }} , 
 	{ "name": "input_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce0" }} , 
 	{ "name": "input_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input_0", "role": "q0" }} , 
 	{ "name": "input_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_1", "role": "address0" }} , 
 	{ "name": "input_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce0" }} , 
 	{ "name": "input_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input_1", "role": "q0" }} , 
 	{ "name": "input_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_2", "role": "address0" }} , 
 	{ "name": "input_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce0" }} , 
 	{ "name": "input_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input_2", "role": "q0" }} , 
 	{ "name": "input_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_3", "role": "address0" }} , 
 	{ "name": "input_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce0" }} , 
 	{ "name": "input_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input_3", "role": "q0" }} , 
 	{ "name": "input_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_4", "role": "address0" }} , 
 	{ "name": "input_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce0" }} , 
 	{ "name": "input_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input_4", "role": "q0" }} , 
 	{ "name": "input_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_5", "role": "address0" }} , 
 	{ "name": "input_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "ce0" }} , 
 	{ "name": "input_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input_5", "role": "q0" }} , 
 	{ "name": "input_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_6", "role": "address0" }} , 
 	{ "name": "input_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "ce0" }} , 
 	{ "name": "input_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input_6", "role": "q0" }} , 
 	{ "name": "input_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_7", "role": "address0" }} , 
 	{ "name": "input_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "ce0" }} , 
 	{ "name": "input_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input_7", "role": "q0" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_0", "role": "q0" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we0" }} , 
 	{ "name": "output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_1", "role": "d0" }} , 
 	{ "name": "output_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_1", "role": "q0" }} , 
 	{ "name": "output_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_2", "role": "address0" }} , 
 	{ "name": "output_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce0" }} , 
 	{ "name": "output_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we0" }} , 
 	{ "name": "output_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_2", "role": "d0" }} , 
 	{ "name": "output_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_2", "role": "q0" }} , 
 	{ "name": "output_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_3", "role": "address0" }} , 
 	{ "name": "output_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce0" }} , 
 	{ "name": "output_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we0" }} , 
 	{ "name": "output_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_3", "role": "d0" }} , 
 	{ "name": "output_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_3", "role": "q0" }} , 
 	{ "name": "output_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_4", "role": "address0" }} , 
 	{ "name": "output_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "ce0" }} , 
 	{ "name": "output_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "we0" }} , 
 	{ "name": "output_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_4", "role": "d0" }} , 
 	{ "name": "output_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_4", "role": "q0" }} , 
 	{ "name": "output_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_5", "role": "address0" }} , 
 	{ "name": "output_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "ce0" }} , 
 	{ "name": "output_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "we0" }} , 
 	{ "name": "output_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_5", "role": "d0" }} , 
 	{ "name": "output_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_5", "role": "q0" }} , 
 	{ "name": "output_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_6", "role": "address0" }} , 
 	{ "name": "output_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "ce0" }} , 
 	{ "name": "output_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "we0" }} , 
 	{ "name": "output_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_6", "role": "d0" }} , 
 	{ "name": "output_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_6", "role": "q0" }} , 
 	{ "name": "output_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_7", "role": "address0" }} , 
 	{ "name": "output_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "ce0" }} , 
 	{ "name": "output_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "we0" }} , 
 	{ "name": "output_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_7", "role": "d0" }} , 
 	{ "name": "output_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_7", "role": "q0" }} , 
 	{ "name": "M", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "M", "role": "default" }} , 
 	{ "name": "I", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "I", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"], "CDFG" : "dut_max_pool", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_0", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_1", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_2", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_3", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_4", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_5", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_6", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_7", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "M", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "I", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fcmp_32ns_32ns_1_1_U20", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_12ns_12ns_11_16_seq_U21", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_14ns_12ns_11_18_seq_U22", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_11ns_9ns_11_15_seq_U23", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel14_128_1_U24", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_11ns_9ns_11_15_seq_U25", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel14_128_1_U26", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_13ns_11ns_24_1_U27", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14ns_12ns_26_1_U28", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_11ns_13ns_24_1_U29", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14ns_16ns_30_1_U30", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28573", "Max" : "596321"}
	, {"Name" : "Interval", "Min" : "28573", "Max" : "596321"}
]}

set Spec2ImplPortList { 
	input_0 { ap_memory {  { input_0_address0 mem_address 1 8 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 128 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 8 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 128 } } }
	input_2 { ap_memory {  { input_2_address0 mem_address 1 8 }  { input_2_ce0 mem_ce 1 1 }  { input_2_q0 mem_dout 0 128 } } }
	input_3 { ap_memory {  { input_3_address0 mem_address 1 8 }  { input_3_ce0 mem_ce 1 1 }  { input_3_q0 mem_dout 0 128 } } }
	input_4 { ap_memory {  { input_4_address0 mem_address 1 8 }  { input_4_ce0 mem_ce 1 1 }  { input_4_q0 mem_dout 0 128 } } }
	input_5 { ap_memory {  { input_5_address0 mem_address 1 8 }  { input_5_ce0 mem_ce 1 1 }  { input_5_q0 mem_dout 0 128 } } }
	input_6 { ap_memory {  { input_6_address0 mem_address 1 8 }  { input_6_ce0 mem_ce 1 1 }  { input_6_q0 mem_dout 0 128 } } }
	input_7 { ap_memory {  { input_7_address0 mem_address 1 8 }  { input_7_ce0 mem_ce 1 1 }  { input_7_q0 mem_dout 0 128 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 8 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 128 }  { output_0_q0 mem_dout 0 128 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 8 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 128 }  { output_1_q0 mem_dout 0 128 } } }
	output_2 { ap_memory {  { output_2_address0 mem_address 1 8 }  { output_2_ce0 mem_ce 1 1 }  { output_2_we0 mem_we 1 1 }  { output_2_d0 mem_din 1 128 }  { output_2_q0 mem_dout 0 128 } } }
	output_3 { ap_memory {  { output_3_address0 mem_address 1 8 }  { output_3_ce0 mem_ce 1 1 }  { output_3_we0 mem_we 1 1 }  { output_3_d0 mem_din 1 128 }  { output_3_q0 mem_dout 0 128 } } }
	output_4 { ap_memory {  { output_4_address0 mem_address 1 8 }  { output_4_ce0 mem_ce 1 1 }  { output_4_we0 mem_we 1 1 }  { output_4_d0 mem_din 1 128 }  { output_4_q0 mem_dout 0 128 } } }
	output_5 { ap_memory {  { output_5_address0 mem_address 1 8 }  { output_5_ce0 mem_ce 1 1 }  { output_5_we0 mem_we 1 1 }  { output_5_d0 mem_din 1 128 }  { output_5_q0 mem_dout 0 128 } } }
	output_6 { ap_memory {  { output_6_address0 mem_address 1 8 }  { output_6_ce0 mem_ce 1 1 }  { output_6_we0 mem_we 1 1 }  { output_6_d0 mem_din 1 128 }  { output_6_q0 mem_dout 0 128 } } }
	output_7 { ap_memory {  { output_7_address0 mem_address 1 8 }  { output_7_ce0 mem_ce 1 1 }  { output_7_we0 mem_we 1 1 }  { output_7_d0 mem_din 1 128 }  { output_7_q0 mem_dout 0 128 } } }
	M { ap_none {  { M in_data 0 6 } } }
	I { ap_none {  { I in_data 0 6 } } }
}
