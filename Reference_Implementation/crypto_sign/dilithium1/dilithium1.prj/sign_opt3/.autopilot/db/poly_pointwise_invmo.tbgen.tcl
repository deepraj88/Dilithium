set moduleName poly_pointwise_invmo
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {poly_pointwise_invmo}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_coeffs int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ c_coeffs_offset int 2 regular  }
	{ a_coeffs int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ b_coeffs int 32 regular {array 768 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 2 regular  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ c_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ a_coeffs_address0 sc_out sc_lv 8 signal 2 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 3 } 
	{ b_coeffs_offset sc_in sc_lv 2 signal 4 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 5 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 5 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "c_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_pointwise_invmo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1537", "EstimateLatencyMax" : "1537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		c_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 5 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1537", "Max" : "1537"}
	, {"Name" : "Interval", "Min" : "1537", "Max" : "1537"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 10 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 } } }
	c_coeffs_offset { ap_none {  { c_coeffs_offset in_data 0 2 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 8 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 10 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 2 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
