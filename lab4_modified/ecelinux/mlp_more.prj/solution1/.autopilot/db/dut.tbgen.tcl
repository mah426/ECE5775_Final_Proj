set C_TypeInfoList {{ 
"dut" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"strm_in": [[], {"reference": "0"}] }, {"strm_out": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_uint<32> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName dut
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut}
set C_modelType { void 0 }
set C_modelArgList {
	{ strm_in_V_V int 32 regular {fifo 0 volatile }  }
	{ strm_out_V_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "strm_in_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_in.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "strm_out_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_out.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ strm_in_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ strm_in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ strm_in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ strm_out_V_V_din sc_out sc_lv 32 signal 1 } 
	{ strm_out_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ strm_out_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "strm_in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "dout" }} , 
 	{ "name": "strm_in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "empty_n" }} , 
 	{ "name": "strm_in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "read" }} , 
 	{ "name": "strm_out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "din" }} , 
 	{ "name": "strm_out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "full_n" }} , 
 	{ "name": "strm_out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "30", "41", "53", "60", "66", "70"], "CDFG" : "dut", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_in_V_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "strm_in_V_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "strm_out_V_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "strm_out_V_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "conv1_weight", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_conv1_1_fu_278", "Port" : "conv1_weight"}]}, 
		{"Name" : "conv2_weight", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_conv1_fu_256", "Port" : "conv2_weight"}]}, 
		{"Name" : "fc1_weight", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_dense_mlp_2_fu_319", "Port" : "fc1_weight"}]}, 
		{"Name" : "fc1_bias", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_dense_mlp_2_fu_319", "Port" : "fc1_bias"}]}, 
		{"Name" : "fc2_weight", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_dense_mlp_1_fu_336", "Port" : "fc2_weight"}]}, 
		{"Name" : "fc2_bias", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_dense_mlp_1_fu_336", "Port" : "fc2_bias"}]}, 
		{"Name" : "fc3_weight", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_dense_mlp_fu_346", "Port" : "fc3_weight"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st8_fsm_7", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_conv1_fu_256"},
		{"State" : "ap_ST_st4_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_conv1_1_fu_278"},
		{"State" : "ap_ST_st6_fsm_5", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_max_pool_fu_293"},
		{"State" : "ap_ST_st10_fsm_9", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_max_pool_fu_293"},
		{"State" : "ap_ST_st12_fsm_11", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_dense_mlp_2_fu_319"},
		{"State" : "ap_ST_st14_fsm_13", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_dense_mlp_1_fu_336"},
		{"State" : "ap_ST_st16_fsm_15", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_dense_mlp_fu_346"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_4_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_5_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_6_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_7_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_4_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_5_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_6_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_7_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256", "Parent" : "0", "Child" : ["19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"], "CDFG" : "dut_conv1", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
		{"Name" : "conv2_weight", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256.conv2_weight_U", "Parent" : "18", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256.dut_fadd_32ns_32ns_32_5_full_dsp_U49", "Parent" : "18", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256.dut_fmul_32ns_32ns_32_4_max_dsp_U50", "Parent" : "18", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256.dut_urem_11ns_9ns_11_15_seq_U51", "Parent" : "18", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256.dut_urem_12ns_12ns_11_16_seq_U52", "Parent" : "18", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256.dut_urem_11ns_9ns_11_15_seq_U53", "Parent" : "18", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256.dut_mux_8to1_sel14_128_1_U54", "Parent" : "18", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256.dut_mux_8to1_sel14_128_1_U55", "Parent" : "18", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256.dut_mul_mul_14ns_16ns_30_1_U56", "Parent" : "18", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256.dut_mul_mul_11ns_13ns_24_1_U57", "Parent" : "18", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_fu_256.dut_mul_mul_13ns_11ns_24_1_U58", "Parent" : "18", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_1_fu_278", "Parent" : "0", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40"], "CDFG" : "dut_conv1_1", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_0", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_1", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_2", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_3", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_4", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_5", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_6", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_7", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "conv1_weight", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_1_fu_278.conv1_weight_U", "Parent" : "30", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_1_fu_278.dut_fadd_32ns_32ns_32_5_full_dsp_U1", "Parent" : "30", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_1_fu_278.dut_fmul_32ns_32ns_32_4_max_dsp_U2", "Parent" : "30", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_1_fu_278.dut_urem_14ns_12ns_11_18_seq_U3", "Parent" : "30", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_1_fu_278.dut_urem_12ns_12ns_12_16_seq_U4", "Parent" : "30", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_1_fu_278.dut_urem_11ns_9ns_11_15_seq_U5", "Parent" : "30", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_1_fu_278.dut_mux_8to1_sel14_128_1_U6", "Parent" : "30", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_1_fu_278.dut_mul_mul_14ns_12ns_26_1_U7", "Parent" : "30", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_1_fu_278.dut_mul_mul_14ns_16ns_30_1_U8", "Parent" : "30", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_conv1_1_fu_278.dut_mul_mul_11ns_13ns_24_1_U9", "Parent" : "30", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293", "Parent" : "0", "Child" : ["42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"], "CDFG" : "dut_max_pool", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293.dut_fcmp_32ns_32ns_1_1_U20", "Parent" : "41", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293.dut_urem_12ns_12ns_11_16_seq_U21", "Parent" : "41", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293.dut_urem_14ns_12ns_11_18_seq_U22", "Parent" : "41", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293.dut_urem_11ns_9ns_11_15_seq_U23", "Parent" : "41", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293.dut_mux_8to1_sel14_128_1_U24", "Parent" : "41", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293.dut_urem_11ns_9ns_11_15_seq_U25", "Parent" : "41", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293.dut_mux_8to1_sel14_128_1_U26", "Parent" : "41", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293.dut_mul_mul_13ns_11ns_24_1_U27", "Parent" : "41", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293.dut_mul_mul_14ns_12ns_26_1_U28", "Parent" : "41", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293.dut_mul_mul_11ns_13ns_24_1_U29", "Parent" : "41", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_max_pool_fu_293.dut_mul_mul_14ns_16ns_30_1_U30", "Parent" : "41", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_2_fu_319", "Parent" : "0", "Child" : ["54", "55", "56", "57", "58", "59"], "CDFG" : "dut_dense_mlp_2", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_2_fu_319.fc1_weight_U", "Parent" : "53", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_2_fu_319.fc1_bias_U", "Parent" : "53", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_2_fu_319.dut_fadd_32ns_32ns_32_5_full_dsp_U76", "Parent" : "53", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_2_fu_319.dut_fmul_32ns_32ns_32_4_max_dsp_U77", "Parent" : "53", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_2_fu_319.dut_fcmp_32ns_32ns_1_1_U78", "Parent" : "53", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_2_fu_319.dut_mux_8to1_sel14_128_1_U79", "Parent" : "53", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_1_fu_336", "Parent" : "0", "Child" : ["61", "62", "63", "64", "65"], "CDFG" : "dut_dense_mlp_1", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "fc2_weight", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "fc2_bias", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_1_fu_336.fc2_weight_U", "Parent" : "60", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_1_fu_336.fc2_bias_U", "Parent" : "60", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_1_fu_336.dut_fadd_32ns_32ns_32_5_full_dsp_U91", "Parent" : "60", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_1_fu_336.dut_fmul_32ns_32ns_32_4_max_dsp_U92", "Parent" : "60", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_1_fu_336.dut_fcmp_32ns_32ns_1_1_U93", "Parent" : "60", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_fu_346", "Parent" : "0", "Child" : ["67", "68", "69"], "CDFG" : "dut_dense_mlp", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_0", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "fc3_weight", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_fu_346.fc3_weight_U", "Parent" : "66", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_fu_346.dut_fadd_32ns_32ns_32_5_full_dsp_U98", "Parent" : "66", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_dense_mlp_fu_346.dut_fmul_32ns_32ns_32_4_max_dsp_U99", "Parent" : "66", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fcmp_32ns_32ns_1_1_U103", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20187331", "Max" : "21322827"}
	, {"Name" : "Interval", "Min" : "20187332", "Max" : "21322828"}
]}

set Spec2ImplPortList { 
	strm_in_V_V { ap_fifo {  { strm_in_V_V_dout fifo_data 0 32 }  { strm_in_V_V_empty_n fifo_status 0 1 }  { strm_in_V_V_read fifo_update 1 1 } } }
	strm_out_V_V { ap_fifo {  { strm_out_V_V_din fifo_data 1 32 }  { strm_out_V_V_full_n fifo_status 0 1 }  { strm_out_V_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	strm_in_V_V { fifo_read 3072 no_conditional }
	strm_out_V_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
