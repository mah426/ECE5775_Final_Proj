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
	{ input_0 int 1 regular {array 1296 { 1 1 } 1 1 }  }
	{ input_1 int 1 regular {array 1296 { 1 1 } 1 1 }  }
	{ input_2 int 1 regular {array 1296 { 1 1 } 1 1 }  }
	{ input_3 int 1 regular {array 1296 { 1 1 } 1 1 }  }
	{ output_0 int 1 regular {array 1296 { 0 0 } 0 1 }  }
	{ output_1 int 1 regular {array 1296 { 0 0 } 0 1 }  }
	{ output_2 int 1 regular {array 1296 { 0 0 } 0 1 }  }
	{ output_3 int 1 regular {array 1296 { 0 0 } 0 1 }  }
	{ M int 7 regular  }
	{ I int 6 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_0", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_2", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_3", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "I", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 64
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_address0 sc_out sc_lv 11 signal 0 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_q0 sc_in sc_lv 1 signal 0 } 
	{ input_0_address1 sc_out sc_lv 11 signal 0 } 
	{ input_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_0_q1 sc_in sc_lv 1 signal 0 } 
	{ input_1_address0 sc_out sc_lv 11 signal 1 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_1_q0 sc_in sc_lv 1 signal 1 } 
	{ input_1_address1 sc_out sc_lv 11 signal 1 } 
	{ input_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ input_1_q1 sc_in sc_lv 1 signal 1 } 
	{ input_2_address0 sc_out sc_lv 11 signal 2 } 
	{ input_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_2_q0 sc_in sc_lv 1 signal 2 } 
	{ input_2_address1 sc_out sc_lv 11 signal 2 } 
	{ input_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ input_2_q1 sc_in sc_lv 1 signal 2 } 
	{ input_3_address0 sc_out sc_lv 11 signal 3 } 
	{ input_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_3_q0 sc_in sc_lv 1 signal 3 } 
	{ input_3_address1 sc_out sc_lv 11 signal 3 } 
	{ input_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ input_3_q1 sc_in sc_lv 1 signal 3 } 
	{ output_0_address0 sc_out sc_lv 11 signal 4 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ output_0_we0 sc_out sc_logic 1 signal 4 } 
	{ output_0_d0 sc_out sc_lv 1 signal 4 } 
	{ output_0_address1 sc_out sc_lv 11 signal 4 } 
	{ output_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ output_0_we1 sc_out sc_logic 1 signal 4 } 
	{ output_0_d1 sc_out sc_lv 1 signal 4 } 
	{ output_1_address0 sc_out sc_lv 11 signal 5 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_1_we0 sc_out sc_logic 1 signal 5 } 
	{ output_1_d0 sc_out sc_lv 1 signal 5 } 
	{ output_1_address1 sc_out sc_lv 11 signal 5 } 
	{ output_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ output_1_we1 sc_out sc_logic 1 signal 5 } 
	{ output_1_d1 sc_out sc_lv 1 signal 5 } 
	{ output_2_address0 sc_out sc_lv 11 signal 6 } 
	{ output_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ output_2_we0 sc_out sc_logic 1 signal 6 } 
	{ output_2_d0 sc_out sc_lv 1 signal 6 } 
	{ output_2_address1 sc_out sc_lv 11 signal 6 } 
	{ output_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ output_2_we1 sc_out sc_logic 1 signal 6 } 
	{ output_2_d1 sc_out sc_lv 1 signal 6 } 
	{ output_3_address0 sc_out sc_lv 11 signal 7 } 
	{ output_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ output_3_we0 sc_out sc_logic 1 signal 7 } 
	{ output_3_d0 sc_out sc_lv 1 signal 7 } 
	{ output_3_address1 sc_out sc_lv 11 signal 7 } 
	{ output_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ output_3_we1 sc_out sc_logic 1 signal 7 } 
	{ output_3_d1 sc_out sc_lv 1 signal 7 } 
	{ M sc_in sc_lv 7 signal 8 } 
	{ I sc_in sc_lv 6 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0", "role": "address0" }} , 
 	{ "name": "input_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce0" }} , 
 	{ "name": "input_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "q0" }} , 
 	{ "name": "input_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0", "role": "address1" }} , 
 	{ "name": "input_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce1" }} , 
 	{ "name": "input_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "q1" }} , 
 	{ "name": "input_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1", "role": "address0" }} , 
 	{ "name": "input_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce0" }} , 
 	{ "name": "input_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "q0" }} , 
 	{ "name": "input_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1", "role": "address1" }} , 
 	{ "name": "input_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce1" }} , 
 	{ "name": "input_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "q1" }} , 
 	{ "name": "input_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_2", "role": "address0" }} , 
 	{ "name": "input_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce0" }} , 
 	{ "name": "input_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "q0" }} , 
 	{ "name": "input_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_2", "role": "address1" }} , 
 	{ "name": "input_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce1" }} , 
 	{ "name": "input_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "q1" }} , 
 	{ "name": "input_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_3", "role": "address0" }} , 
 	{ "name": "input_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce0" }} , 
 	{ "name": "input_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "q0" }} , 
 	{ "name": "input_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_3", "role": "address1" }} , 
 	{ "name": "input_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce1" }} , 
 	{ "name": "input_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "q1" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_0", "role": "address1" }} , 
 	{ "name": "output_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce1" }} , 
 	{ "name": "output_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we1" }} , 
 	{ "name": "output_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "d1" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we0" }} , 
 	{ "name": "output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "d0" }} , 
 	{ "name": "output_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_1", "role": "address1" }} , 
 	{ "name": "output_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce1" }} , 
 	{ "name": "output_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we1" }} , 
 	{ "name": "output_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "d1" }} , 
 	{ "name": "output_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_2", "role": "address0" }} , 
 	{ "name": "output_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce0" }} , 
 	{ "name": "output_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we0" }} , 
 	{ "name": "output_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "d0" }} , 
 	{ "name": "output_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_2", "role": "address1" }} , 
 	{ "name": "output_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce1" }} , 
 	{ "name": "output_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we1" }} , 
 	{ "name": "output_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "d1" }} , 
 	{ "name": "output_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_3", "role": "address0" }} , 
 	{ "name": "output_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce0" }} , 
 	{ "name": "output_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we0" }} , 
 	{ "name": "output_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "d0" }} , 
 	{ "name": "output_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_3", "role": "address1" }} , 
 	{ "name": "output_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce1" }} , 
 	{ "name": "output_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we1" }} , 
 	{ "name": "output_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "d1" }} , 
 	{ "name": "M", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "M", "role": "default" }} , 
 	{ "name": "I", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "I", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"], "CDFG" : "dut_max_pool", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_0", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_1", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_2", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_3", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "M", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "I", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_12ns_13_17_seq_U64", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_12ns_13_17_seq_U65", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_12ns_13_17_seq_U66", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_12ns_13_17_seq_U67", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_4to1_sel32_1_1_U68", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_4to1_sel32_1_1_U69", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_4to1_sel32_1_1_U70", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_4to1_sel32_1_1_U71", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_15ns_13ns_28_1_U72", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_15ns_13ns_28_1_U73", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_15ns_13ns_28_1_U74", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_15ns_13ns_28_1_U75", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6184", "Max" : "44232"}
	, {"Name" : "Interval", "Min" : "6184", "Max" : "44232"}
]}

set Spec2ImplPortList { 
	input_0 { ap_memory {  { input_0_address0 mem_address 1 11 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 1 }  { input_0_address1 mem_address 1 11 }  { input_0_ce1 mem_ce 1 1 }  { input_0_q1 mem_dout 0 1 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 11 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 1 }  { input_1_address1 mem_address 1 11 }  { input_1_ce1 mem_ce 1 1 }  { input_1_q1 mem_dout 0 1 } } }
	input_2 { ap_memory {  { input_2_address0 mem_address 1 11 }  { input_2_ce0 mem_ce 1 1 }  { input_2_q0 mem_dout 0 1 }  { input_2_address1 mem_address 1 11 }  { input_2_ce1 mem_ce 1 1 }  { input_2_q1 mem_dout 0 1 } } }
	input_3 { ap_memory {  { input_3_address0 mem_address 1 11 }  { input_3_ce0 mem_ce 1 1 }  { input_3_q0 mem_dout 0 1 }  { input_3_address1 mem_address 1 11 }  { input_3_ce1 mem_ce 1 1 }  { input_3_q1 mem_dout 0 1 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 11 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 1 }  { output_0_address1 mem_address 1 11 }  { output_0_ce1 mem_ce 1 1 }  { output_0_we1 mem_we 1 1 }  { output_0_d1 mem_din 1 1 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 11 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 1 }  { output_1_address1 mem_address 1 11 }  { output_1_ce1 mem_ce 1 1 }  { output_1_we1 mem_we 1 1 }  { output_1_d1 mem_din 1 1 } } }
	output_2 { ap_memory {  { output_2_address0 mem_address 1 11 }  { output_2_ce0 mem_ce 1 1 }  { output_2_we0 mem_we 1 1 }  { output_2_d0 mem_din 1 1 }  { output_2_address1 mem_address 1 11 }  { output_2_ce1 mem_ce 1 1 }  { output_2_we1 mem_we 1 1 }  { output_2_d1 mem_din 1 1 } } }
	output_3 { ap_memory {  { output_3_address0 mem_address 1 11 }  { output_3_ce0 mem_ce 1 1 }  { output_3_we0 mem_we 1 1 }  { output_3_d0 mem_din 1 1 }  { output_3_address1 mem_address 1 11 }  { output_3_ce1 mem_ce 1 1 }  { output_3_we1 mem_we 1 1 }  { output_3_d1 mem_din 1 1 } } }
	M { ap_none {  { M in_data 0 7 } } }
	I { ap_none {  { I in_data 0 6 } } }
}
