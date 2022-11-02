set moduleName dut_dense_1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut_dense.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input1 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input2 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input3 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input4 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input5 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input6 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input7 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input8 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input9 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input10 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input11 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input12 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input13 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input14 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ input15 int 1 regular {array 324 { 1 3 } 1 1 }  }
	{ output_r int 1 regular {array 324 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input2", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input3", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input4", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input5", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input6", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input7", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input8", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input9", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input10", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input11", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input12", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input13", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input14", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input15", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 9 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 1 signal 0 } 
	{ input1_address0 sc_out sc_lv 9 signal 1 } 
	{ input1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input1_q0 sc_in sc_lv 1 signal 1 } 
	{ input2_address0 sc_out sc_lv 9 signal 2 } 
	{ input2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input2_q0 sc_in sc_lv 1 signal 2 } 
	{ input3_address0 sc_out sc_lv 9 signal 3 } 
	{ input3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input3_q0 sc_in sc_lv 1 signal 3 } 
	{ input4_address0 sc_out sc_lv 9 signal 4 } 
	{ input4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input4_q0 sc_in sc_lv 1 signal 4 } 
	{ input5_address0 sc_out sc_lv 9 signal 5 } 
	{ input5_ce0 sc_out sc_logic 1 signal 5 } 
	{ input5_q0 sc_in sc_lv 1 signal 5 } 
	{ input6_address0 sc_out sc_lv 9 signal 6 } 
	{ input6_ce0 sc_out sc_logic 1 signal 6 } 
	{ input6_q0 sc_in sc_lv 1 signal 6 } 
	{ input7_address0 sc_out sc_lv 9 signal 7 } 
	{ input7_ce0 sc_out sc_logic 1 signal 7 } 
	{ input7_q0 sc_in sc_lv 1 signal 7 } 
	{ input8_address0 sc_out sc_lv 9 signal 8 } 
	{ input8_ce0 sc_out sc_logic 1 signal 8 } 
	{ input8_q0 sc_in sc_lv 1 signal 8 } 
	{ input9_address0 sc_out sc_lv 9 signal 9 } 
	{ input9_ce0 sc_out sc_logic 1 signal 9 } 
	{ input9_q0 sc_in sc_lv 1 signal 9 } 
	{ input10_address0 sc_out sc_lv 9 signal 10 } 
	{ input10_ce0 sc_out sc_logic 1 signal 10 } 
	{ input10_q0 sc_in sc_lv 1 signal 10 } 
	{ input11_address0 sc_out sc_lv 9 signal 11 } 
	{ input11_ce0 sc_out sc_logic 1 signal 11 } 
	{ input11_q0 sc_in sc_lv 1 signal 11 } 
	{ input12_address0 sc_out sc_lv 9 signal 12 } 
	{ input12_ce0 sc_out sc_logic 1 signal 12 } 
	{ input12_q0 sc_in sc_lv 1 signal 12 } 
	{ input13_address0 sc_out sc_lv 9 signal 13 } 
	{ input13_ce0 sc_out sc_logic 1 signal 13 } 
	{ input13_q0 sc_in sc_lv 1 signal 13 } 
	{ input14_address0 sc_out sc_lv 9 signal 14 } 
	{ input14_ce0 sc_out sc_logic 1 signal 14 } 
	{ input14_q0 sc_in sc_lv 1 signal 14 } 
	{ input15_address0 sc_out sc_lv 9 signal 15 } 
	{ input15_ce0 sc_out sc_logic 1 signal 15 } 
	{ input15_q0 sc_in sc_lv 1 signal 15 } 
	{ output_r_address0 sc_out sc_lv 9 signal 16 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 16 } 
	{ output_r_we0 sc_out sc_logic 1 signal 16 } 
	{ output_r_d0 sc_out sc_lv 1 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "input1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input1", "role": "address0" }} , 
 	{ "name": "input1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input1", "role": "ce0" }} , 
 	{ "name": "input1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input1", "role": "q0" }} , 
 	{ "name": "input2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input2", "role": "address0" }} , 
 	{ "name": "input2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input2", "role": "ce0" }} , 
 	{ "name": "input2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input2", "role": "q0" }} , 
 	{ "name": "input3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input3", "role": "address0" }} , 
 	{ "name": "input3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input3", "role": "ce0" }} , 
 	{ "name": "input3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input3", "role": "q0" }} , 
 	{ "name": "input4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input4", "role": "address0" }} , 
 	{ "name": "input4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input4", "role": "ce0" }} , 
 	{ "name": "input4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input4", "role": "q0" }} , 
 	{ "name": "input5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input5", "role": "address0" }} , 
 	{ "name": "input5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input5", "role": "ce0" }} , 
 	{ "name": "input5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input5", "role": "q0" }} , 
 	{ "name": "input6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input6", "role": "address0" }} , 
 	{ "name": "input6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input6", "role": "ce0" }} , 
 	{ "name": "input6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input6", "role": "q0" }} , 
 	{ "name": "input7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input7", "role": "address0" }} , 
 	{ "name": "input7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input7", "role": "ce0" }} , 
 	{ "name": "input7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input7", "role": "q0" }} , 
 	{ "name": "input8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input8", "role": "address0" }} , 
 	{ "name": "input8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input8", "role": "ce0" }} , 
 	{ "name": "input8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input8", "role": "q0" }} , 
 	{ "name": "input9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input9", "role": "address0" }} , 
 	{ "name": "input9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input9", "role": "ce0" }} , 
 	{ "name": "input9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input9", "role": "q0" }} , 
 	{ "name": "input10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input10", "role": "address0" }} , 
 	{ "name": "input10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input10", "role": "ce0" }} , 
 	{ "name": "input10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input10", "role": "q0" }} , 
 	{ "name": "input11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input11", "role": "address0" }} , 
 	{ "name": "input11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input11", "role": "ce0" }} , 
 	{ "name": "input11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input11", "role": "q0" }} , 
 	{ "name": "input12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input12", "role": "address0" }} , 
 	{ "name": "input12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input12", "role": "ce0" }} , 
 	{ "name": "input12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input12", "role": "q0" }} , 
 	{ "name": "input13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input13", "role": "address0" }} , 
 	{ "name": "input13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input13", "role": "ce0" }} , 
 	{ "name": "input13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input13", "role": "q0" }} , 
 	{ "name": "input14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input14", "role": "address0" }} , 
 	{ "name": "input14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input14", "role": "ce0" }} , 
 	{ "name": "input14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input14", "role": "q0" }} , 
 	{ "name": "input15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input15", "role": "address0" }} , 
 	{ "name": "input15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input15", "role": "ce0" }} , 
 	{ "name": "input15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input15", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"], "CDFG" : "dut_dense_1", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input8", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input9", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input10", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input11", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input12", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input13", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input14", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input15", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_fc1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_fc1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_fc1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_fc1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U176", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U177", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_sitofp_32ns_32_6_U178", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fcmp_32ns_32ns_1_1_U179", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_16to1_sel32_1_1_U180", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "663297", "Max" : "663297"}
	, {"Name" : "Interval", "Min" : "663297", "Max" : "663297"}
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 9 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 1 } } }
	input1 { ap_memory {  { input1_address0 mem_address 1 9 }  { input1_ce0 mem_ce 1 1 }  { input1_q0 mem_dout 0 1 } } }
	input2 { ap_memory {  { input2_address0 mem_address 1 9 }  { input2_ce0 mem_ce 1 1 }  { input2_q0 mem_dout 0 1 } } }
	input3 { ap_memory {  { input3_address0 mem_address 1 9 }  { input3_ce0 mem_ce 1 1 }  { input3_q0 mem_dout 0 1 } } }
	input4 { ap_memory {  { input4_address0 mem_address 1 9 }  { input4_ce0 mem_ce 1 1 }  { input4_q0 mem_dout 0 1 } } }
	input5 { ap_memory {  { input5_address0 mem_address 1 9 }  { input5_ce0 mem_ce 1 1 }  { input5_q0 mem_dout 0 1 } } }
	input6 { ap_memory {  { input6_address0 mem_address 1 9 }  { input6_ce0 mem_ce 1 1 }  { input6_q0 mem_dout 0 1 } } }
	input7 { ap_memory {  { input7_address0 mem_address 1 9 }  { input7_ce0 mem_ce 1 1 }  { input7_q0 mem_dout 0 1 } } }
	input8 { ap_memory {  { input8_address0 mem_address 1 9 }  { input8_ce0 mem_ce 1 1 }  { input8_q0 mem_dout 0 1 } } }
	input9 { ap_memory {  { input9_address0 mem_address 1 9 }  { input9_ce0 mem_ce 1 1 }  { input9_q0 mem_dout 0 1 } } }
	input10 { ap_memory {  { input10_address0 mem_address 1 9 }  { input10_ce0 mem_ce 1 1 }  { input10_q0 mem_dout 0 1 } } }
	input11 { ap_memory {  { input11_address0 mem_address 1 9 }  { input11_ce0 mem_ce 1 1 }  { input11_q0 mem_dout 0 1 } } }
	input12 { ap_memory {  { input12_address0 mem_address 1 9 }  { input12_ce0 mem_ce 1 1 }  { input12_q0 mem_dout 0 1 } } }
	input13 { ap_memory {  { input13_address0 mem_address 1 9 }  { input13_ce0 mem_ce 1 1 }  { input13_q0 mem_dout 0 1 } } }
	input14 { ap_memory {  { input14_address0 mem_address 1 9 }  { input14_ce0 mem_ce 1 1 }  { input14_q0 mem_dout 0 1 } } }
	input15 { ap_memory {  { input15_address0 mem_address 1 9 }  { input15_ce0 mem_ce 1 1 }  { input15_q0 mem_dout 0 1 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 1 } } }
}
