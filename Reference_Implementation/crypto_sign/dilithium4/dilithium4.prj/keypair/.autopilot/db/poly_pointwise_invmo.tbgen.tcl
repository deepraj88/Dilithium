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
	{ c_coeffs int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

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
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		a_coeffs {Type I LastRead 1 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1537", "Max" : "1537"}
	, {"Name" : "Interval", "Min" : "1537", "Max" : "1537"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
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
	{ c_coeffs int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

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
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		a_coeffs {Type I LastRead 1 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1537", "Max" : "1537"}
	, {"Name" : "Interval", "Min" : "1537", "Max" : "1537"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
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
	{ c_coeffs int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

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
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		a_coeffs {Type I LastRead 1 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1537", "Max" : "1537"}
	, {"Name" : "Interval", "Min" : "1537", "Max" : "1537"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
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
	{ c_coeffs int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

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
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		a_coeffs {Type I LastRead 1 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1537", "Max" : "1537"}
	, {"Name" : "Interval", "Min" : "1537", "Max" : "1537"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
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
	{ c_coeffs int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

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
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		a_coeffs {Type I LastRead 1 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1537", "Max" : "1537"}
	, {"Name" : "Interval", "Min" : "1537", "Max" : "1537"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
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
	{ c_coeffs int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

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
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		a_coeffs {Type I LastRead 1 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1537", "Max" : "1537"}
	, {"Name" : "Interval", "Min" : "1537", "Max" : "1537"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
set moduleName poly_pointwise_invmo
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {poly_pointwise_invmo}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_coeffs int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 1 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 3 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ c_coeffs_address1 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_address1 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q1 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 3 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_address1 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q1 sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "c_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address1" }} , 
 	{ "name": "c_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce1" }} , 
 	{ "name": "c_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we1" }} , 
 	{ "name": "c_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d1" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address1" }} , 
 	{ "name": "a_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce1" }} , 
 	{ "name": "a_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q1" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address1" }} , 
 	{ "name": "b_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce1" }} , 
 	{ "name": "b_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "poly_pointwise_invmo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "128",
		"VariableLatency" : "0", "ExactLatency" : "133", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_7999", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8005", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		a_coeffs {Type I LastRead 128 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 128 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "133", "Max" : "133"}
	, {"Name" : "Interval", "Min" : "128", "Max" : "128"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 }  { c_coeffs_address1 MemPortADDR2 1 8 }  { c_coeffs_ce1 MemPortCE2 1 1 }  { c_coeffs_we1 MemPortWE2 1 1 }  { c_coeffs_d1 MemPortDIN2 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 }  { a_coeffs_address1 MemPortADDR2 1 13 }  { a_coeffs_ce1 MemPortCE2 1 1 }  { a_coeffs_q1 MemPortDOUT2 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 3 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 }  { b_coeffs_address1 MemPortADDR2 1 11 }  { b_coeffs_ce1 MemPortCE2 1 1 }  { b_coeffs_q1 MemPortDOUT2 0 32 } } }
}
set moduleName poly_pointwise_invmo
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {poly_pointwise_invmo}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_coeffs int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 1 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 3 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 1 } 1 1 }  }
	{ b_coeffs_offset int 3 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ c_coeffs_address1 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_address1 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q1 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 3 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_address1 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q1 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 3 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "c_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address1" }} , 
 	{ "name": "c_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce1" }} , 
 	{ "name": "c_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we1" }} , 
 	{ "name": "c_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d1" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address1" }} , 
 	{ "name": "a_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce1" }} , 
 	{ "name": "a_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q1" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address1" }} , 
 	{ "name": "b_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce1" }} , 
 	{ "name": "b_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q1" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "poly_pointwise_invmo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "128",
		"VariableLatency" : "0", "ExactLatency" : "133", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8007", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8013", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		a_coeffs {Type I LastRead 128 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 128 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "133", "Max" : "133"}
	, {"Name" : "Interval", "Min" : "128", "Max" : "128"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 }  { c_coeffs_address1 MemPortADDR2 1 8 }  { c_coeffs_ce1 MemPortCE2 1 1 }  { c_coeffs_we1 MemPortWE2 1 1 }  { c_coeffs_d1 MemPortDIN2 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 }  { a_coeffs_address1 MemPortADDR2 1 13 }  { a_coeffs_ce1 MemPortCE2 1 1 }  { a_coeffs_q1 MemPortDOUT2 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 3 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 }  { b_coeffs_address1 MemPortADDR2 1 11 }  { b_coeffs_ce1 MemPortCE2 1 1 }  { b_coeffs_q1 MemPortDOUT2 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 3 } } }
}
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
	{ c_coeffs int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 1 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 1 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ c_coeffs_address1 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_address1 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q1 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_address1 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q1 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "c_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address1" }} , 
 	{ "name": "c_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce1" }} , 
 	{ "name": "c_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we1" }} , 
 	{ "name": "c_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d1" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address1" }} , 
 	{ "name": "a_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce1" }} , 
 	{ "name": "a_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q1" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address1" }} , 
 	{ "name": "b_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce1" }} , 
 	{ "name": "b_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q1" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "poly_pointwise_invmo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state78", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state98", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state100", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state102", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state104", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state106", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state108", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state109", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state110", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state111", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state114", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state116", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state117", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state118", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state119", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state120", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state122", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state124", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state125", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state126", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state127", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state128", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state130", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state132", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state78", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state98", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state100", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state102", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state104", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state106", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state108", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state109", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state110", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state111", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state114", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state116", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state117", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state118", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state119", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state120", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state122", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state124", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state125", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state126", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state127", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state128", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state130", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state132", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"}],
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8009", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8015", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 4}
		a_coeffs {Type I LastRead 128 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 128 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "515", "Max" : "515"}
	, {"Name" : "Interval", "Min" : "515", "Max" : "515"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 }  { c_coeffs_address1 MemPortADDR2 1 8 }  { c_coeffs_ce1 MemPortCE2 1 1 }  { c_coeffs_we1 MemPortWE2 1 1 }  { c_coeffs_d1 MemPortDIN2 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 }  { a_coeffs_address1 MemPortADDR2 1 13 }  { a_coeffs_ce1 MemPortCE2 1 1 }  { a_coeffs_q1 MemPortDOUT2 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 }  { b_coeffs_address1 MemPortADDR2 1 11 }  { b_coeffs_ce1 MemPortCE2 1 1 }  { b_coeffs_q1 MemPortDOUT2 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
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
	{ c_coeffs int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 1 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 1 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ c_coeffs_address1 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_address1 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q1 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_address1 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q1 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "c_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address1" }} , 
 	{ "name": "c_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce1" }} , 
 	{ "name": "c_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we1" }} , 
 	{ "name": "c_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d1" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address1" }} , 
 	{ "name": "a_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce1" }} , 
 	{ "name": "a_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q1" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address1" }} , 
 	{ "name": "b_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce1" }} , 
 	{ "name": "b_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q1" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "poly_pointwise_invmo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state78", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state98", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state100", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state102", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state104", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state106", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state108", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state109", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state110", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state111", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state114", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state116", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state117", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state118", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state119", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state120", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state122", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state124", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state125", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state126", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state127", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state128", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state130", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state132", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state78", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state98", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state100", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state102", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state104", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state106", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state108", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state109", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state110", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state111", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state114", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state116", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state117", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state118", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state119", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state120", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state122", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state124", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state125", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state126", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state127", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state128", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state130", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state132", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"}],
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8009", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8015", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 4}
		a_coeffs {Type I LastRead 128 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 128 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "515", "Max" : "515"}
	, {"Name" : "Interval", "Min" : "515", "Max" : "515"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 }  { c_coeffs_address1 MemPortADDR2 1 8 }  { c_coeffs_ce1 MemPortCE2 1 1 }  { c_coeffs_we1 MemPortWE2 1 1 }  { c_coeffs_d1 MemPortDIN2 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 }  { a_coeffs_address1 MemPortADDR2 1 13 }  { a_coeffs_ce1 MemPortCE2 1 1 }  { a_coeffs_q1 MemPortDOUT2 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 }  { b_coeffs_address1 MemPortADDR2 1 11 }  { b_coeffs_ce1 MemPortCE2 1 1 }  { b_coeffs_q1 MemPortDOUT2 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
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
	{ c_coeffs int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 1 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 1 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ c_coeffs_address1 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_address1 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q1 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_address1 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q1 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "c_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address1" }} , 
 	{ "name": "c_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce1" }} , 
 	{ "name": "c_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we1" }} , 
 	{ "name": "c_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d1" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address1" }} , 
 	{ "name": "a_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce1" }} , 
 	{ "name": "a_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q1" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address1" }} , 
 	{ "name": "b_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce1" }} , 
 	{ "name": "b_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q1" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "poly_pointwise_invmo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state78", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state98", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state100", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state102", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state104", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state106", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state108", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state109", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state110", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state111", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state114", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state116", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state117", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state118", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state119", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state120", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state122", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state124", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state125", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state126", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state127", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state128", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state130", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state132", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8009"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state78", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state98", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state100", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state102", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state104", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state106", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state108", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state109", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state110", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state111", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state114", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state116", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state117", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state118", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state119", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state120", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state122", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state124", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state125", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state126", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state127", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state128", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state130", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"},
			{"State" : "ap_ST_fsm_state132", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_8015"}],
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8009", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8015", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 4}
		a_coeffs {Type I LastRead 128 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 128 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "515", "Max" : "515"}
	, {"Name" : "Interval", "Min" : "515", "Max" : "515"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 }  { c_coeffs_address1 MemPortADDR2 1 8 }  { c_coeffs_ce1 MemPortCE2 1 1 }  { c_coeffs_we1 MemPortWE2 1 1 }  { c_coeffs_d1 MemPortDIN2 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 }  { a_coeffs_address1 MemPortADDR2 1 13 }  { a_coeffs_ce1 MemPortCE2 1 1 }  { a_coeffs_q1 MemPortDOUT2 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 }  { b_coeffs_address1 MemPortADDR2 1 11 }  { b_coeffs_ce1 MemPortCE2 1 1 }  { b_coeffs_q1 MemPortDOUT2 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
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
	{ c_coeffs int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 1 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 1 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ c_coeffs_address1 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_address1 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q1 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_address1 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q1 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "c_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address1" }} , 
 	{ "name": "c_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce1" }} , 
 	{ "name": "c_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we1" }} , 
 	{ "name": "c_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d1" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address1" }} , 
 	{ "name": "a_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce1" }} , 
 	{ "name": "a_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q1" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address1" }} , 
 	{ "name": "b_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce1" }} , 
 	{ "name": "b_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q1" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "poly_pointwise_invmo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8009", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8015", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		a_coeffs {Type I LastRead 128 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 128 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "133", "Max" : "133"}
	, {"Name" : "Interval", "Min" : "133", "Max" : "133"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 }  { c_coeffs_address1 MemPortADDR2 1 8 }  { c_coeffs_ce1 MemPortCE2 1 1 }  { c_coeffs_we1 MemPortWE2 1 1 }  { c_coeffs_d1 MemPortDIN2 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 }  { a_coeffs_address1 MemPortADDR2 1 13 }  { a_coeffs_ce1 MemPortCE2 1 1 }  { a_coeffs_q1 MemPortDOUT2 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 }  { b_coeffs_address1 MemPortADDR2 1 11 }  { b_coeffs_ce1 MemPortCE2 1 1 }  { b_coeffs_q1 MemPortDOUT2 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
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
	{ c_coeffs int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 1 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 1 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ c_coeffs_address1 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_address1 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q1 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_address1 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q1 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "c_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address1" }} , 
 	{ "name": "c_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce1" }} , 
 	{ "name": "c_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we1" }} , 
 	{ "name": "c_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d1" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address1" }} , 
 	{ "name": "a_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce1" }} , 
 	{ "name": "a_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q1" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address1" }} , 
 	{ "name": "b_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce1" }} , 
 	{ "name": "b_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q1" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "poly_pointwise_invmo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8009", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8015", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		a_coeffs {Type I LastRead 128 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 128 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "133", "Max" : "133"}
	, {"Name" : "Interval", "Min" : "133", "Max" : "133"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 }  { c_coeffs_address1 MemPortADDR2 1 8 }  { c_coeffs_ce1 MemPortCE2 1 1 }  { c_coeffs_we1 MemPortWE2 1 1 }  { c_coeffs_d1 MemPortDIN2 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 }  { a_coeffs_address1 MemPortADDR2 1 13 }  { a_coeffs_ce1 MemPortCE2 1 1 }  { a_coeffs_q1 MemPortDOUT2 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 }  { b_coeffs_address1 MemPortADDR2 1 11 }  { b_coeffs_ce1 MemPortCE2 1 1 }  { b_coeffs_q1 MemPortDOUT2 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
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
	{ c_coeffs int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ a_coeffs int 23 regular {array 7680 { 1 1 } 1 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ a_coeffs_offset1 int 4 regular  }
	{ b_coeffs int 32 regular {array 1280 { 1 1 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_coeffs_offset1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ c_coeffs_address1 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ a_coeffs_address0 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q0 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_address1 sc_out sc_lv 13 signal 1 } 
	{ a_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ a_coeffs_q1 sc_in sc_lv 23 signal 1 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 2 } 
	{ a_coeffs_offset1 sc_in sc_lv 4 signal 3 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_address1 sc_out sc_lv 11 signal 4 } 
	{ b_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ b_coeffs_q1 sc_in sc_lv 32 signal 4 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address0" }} , 
 	{ "name": "c_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce0" }} , 
 	{ "name": "c_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we0" }} , 
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "c_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_coeffs", "role": "address1" }} , 
 	{ "name": "c_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "ce1" }} , 
 	{ "name": "c_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_coeffs", "role": "we1" }} , 
 	{ "name": "c_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d1" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q0" }} , 
 	{ "name": "a_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address1" }} , 
 	{ "name": "a_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce1" }} , 
 	{ "name": "a_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "a_coeffs", "role": "q1" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "a_coeffs_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset1", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address1" }} , 
 	{ "name": "b_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce1" }} , 
 	{ "name": "b_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q1" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "poly_pointwise_invmo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8009", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_8015", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		a_coeffs {Type I LastRead 128 FirstWrite -1}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 128 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "133", "Max" : "133"}
	, {"Name" : "Interval", "Min" : "133", "Max" : "133"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 32 }  { c_coeffs_address1 MemPortADDR2 1 8 }  { c_coeffs_ce1 MemPortCE2 1 1 }  { c_coeffs_we1 MemPortWE2 1 1 }  { c_coeffs_d1 MemPortDIN2 1 32 } } }
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 13 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_q0 mem_dout 0 23 }  { a_coeffs_address1 MemPortADDR2 1 13 }  { a_coeffs_ce1 MemPortCE2 1 1 }  { a_coeffs_q1 MemPortDOUT2 0 23 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	a_coeffs_offset1 { ap_none {  { a_coeffs_offset1 in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 }  { b_coeffs_address1 MemPortADDR2 1 11 }  { b_coeffs_ce1 MemPortCE2 1 1 }  { b_coeffs_q1 MemPortDOUT2 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
}
