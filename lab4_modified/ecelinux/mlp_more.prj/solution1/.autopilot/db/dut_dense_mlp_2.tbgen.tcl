set moduleName dut_dense_mlp_2
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut_dense_mlp.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input1 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input2 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input3 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input4 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input5 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input6 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ input7 int 128 regular {array 147 { 1 3 } 1 1 }  }
	{ output_r int 128 regular {array 147 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input1", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input2", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input3", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input4", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input5", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input6", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "input7", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 8 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 128 signal 0 } 
	{ input1_address0 sc_out sc_lv 8 signal 1 } 
	{ input1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input1_q0 sc_in sc_lv 128 signal 1 } 
	{ input2_address0 sc_out sc_lv 8 signal 2 } 
	{ input2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input2_q0 sc_in sc_lv 128 signal 2 } 
	{ input3_address0 sc_out sc_lv 8 signal 3 } 
	{ input3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input3_q0 sc_in sc_lv 128 signal 3 } 
	{ input4_address0 sc_out sc_lv 8 signal 4 } 
	{ input4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input4_q0 sc_in sc_lv 128 signal 4 } 
	{ input5_address0 sc_out sc_lv 8 signal 5 } 
	{ input5_ce0 sc_out sc_logic 1 signal 5 } 
	{ input5_q0 sc_in sc_lv 128 signal 5 } 
	{ input6_address0 sc_out sc_lv 8 signal 6 } 
	{ input6_ce0 sc_out sc_logic 1 signal 6 } 
	{ input6_q0 sc_in sc_lv 128 signal 6 } 
	{ input7_address0 sc_out sc_lv 8 signal 7 } 
	{ input7_ce0 sc_out sc_logic 1 signal 7 } 
	{ input7_q0 sc_in sc_lv 128 signal 7 } 
	{ output_r_address0 sc_out sc_lv 8 signal 8 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 8 } 
	{ output_r_we0 sc_out sc_logic 1 signal 8 } 
	{ output_r_d0 sc_out sc_lv 128 signal 8 } 
	{ output_r_q0 sc_in sc_lv 128 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "input1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input1", "role": "address0" }} , 
 	{ "name": "input1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input1", "role": "ce0" }} , 
 	{ "name": "input1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input1", "role": "q0" }} , 
 	{ "name": "input2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input2", "role": "address0" }} , 
 	{ "name": "input2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input2", "role": "ce0" }} , 
 	{ "name": "input2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input2", "role": "q0" }} , 
 	{ "name": "input3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input3", "role": "address0" }} , 
 	{ "name": "input3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input3", "role": "ce0" }} , 
 	{ "name": "input3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input3", "role": "q0" }} , 
 	{ "name": "input4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input4", "role": "address0" }} , 
 	{ "name": "input4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input4", "role": "ce0" }} , 
 	{ "name": "input4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input4", "role": "q0" }} , 
 	{ "name": "input5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input5", "role": "address0" }} , 
 	{ "name": "input5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input5", "role": "ce0" }} , 
 	{ "name": "input5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input5", "role": "q0" }} , 
 	{ "name": "input6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input6", "role": "address0" }} , 
 	{ "name": "input6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input6", "role": "ce0" }} , 
 	{ "name": "input6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input6", "role": "q0" }} , 
 	{ "name": "input7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input7", "role": "address0" }} , 
 	{ "name": "input7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input7", "role": "ce0" }} , 
 	{ "name": "input7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input7", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "output_r", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"], "CDFG" : "dut_dense_mlp_2", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "fc1_weight", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "fc1_bias", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_bias_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U76", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U77", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fcmp_32ns_32ns_1_1_U78", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_8to1_sel14_128_1_U79", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "529201", "Max" : "529201"}
	, {"Name" : "Interval", "Min" : "529201", "Max" : "529201"}
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 8 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 128 } } }
	input1 { ap_memory {  { input1_address0 mem_address 1 8 }  { input1_ce0 mem_ce 1 1 }  { input1_q0 mem_dout 0 128 } } }
	input2 { ap_memory {  { input2_address0 mem_address 1 8 }  { input2_ce0 mem_ce 1 1 }  { input2_q0 mem_dout 0 128 } } }
	input3 { ap_memory {  { input3_address0 mem_address 1 8 }  { input3_ce0 mem_ce 1 1 }  { input3_q0 mem_dout 0 128 } } }
	input4 { ap_memory {  { input4_address0 mem_address 1 8 }  { input4_ce0 mem_ce 1 1 }  { input4_q0 mem_dout 0 128 } } }
	input5 { ap_memory {  { input5_address0 mem_address 1 8 }  { input5_ce0 mem_ce 1 1 }  { input5_q0 mem_dout 0 128 } } }
	input6 { ap_memory {  { input6_address0 mem_address 1 8 }  { input6_ce0 mem_ce 1 1 }  { input6_q0 mem_dout 0 128 } } }
	input7 { ap_memory {  { input7_address0 mem_address 1 8 }  { input7_ce0 mem_ce 1 1 }  { input7_q0 mem_dout 0 128 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 8 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 128 }  { output_r_q0 mem_dout 0 128 } } }
}
