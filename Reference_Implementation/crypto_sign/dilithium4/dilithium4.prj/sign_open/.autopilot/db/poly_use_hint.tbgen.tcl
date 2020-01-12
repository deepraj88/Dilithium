set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 3 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 3 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 3 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 3 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 3 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 3 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 32 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 32 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 32 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 32 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 32 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 32 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 32 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 4 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 4 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 4 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 4 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 4 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 4 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 4 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 4 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 4 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 4 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 4 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 4 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 4 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 4 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 4 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 3 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 3 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 3 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 3 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 3 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 3 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 3 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 3 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 3 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 32 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 32 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 32 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 32 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 32 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 32 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 32 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 4 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 4 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 4 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 4 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 4 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 4 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 4 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 4 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 4 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 4 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 4 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 4 } } }
}
set moduleName poly_use_hint
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
set C_modelName {poly_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_coeffs int 4 regular {array 1536 { 0 3 } 0 1 }  }
	{ a_coeffs_offset int 4 regular  }
	{ b_coeffs int 32 regular {array 1536 { 1 3 } 1 1 }  }
	{ b_coeffs_offset int 4 regular  }
	{ h_coeffs int 1 regular {array 1536 { 1 3 } 1 1 }  }
	{ h_coeffs_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_coeffs_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ a_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ a_coeffs_d0 sc_out sc_lv 4 signal 0 } 
	{ a_coeffs_offset sc_in sc_lv 4 signal 1 } 
	{ b_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ b_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_coeffs_q0 sc_in sc_lv 32 signal 2 } 
	{ b_coeffs_offset sc_in sc_lv 4 signal 3 } 
	{ h_coeffs_address0 sc_out sc_lv 11 signal 4 } 
	{ h_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_coeffs_q0 sc_in sc_lv 1 signal 4 } 
	{ h_coeffs_offset sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_coeffs", "role": "address0" }} , 
 	{ "name": "a_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "ce0" }} , 
 	{ "name": "a_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_coeffs", "role": "we0" }} , 
 	{ "name": "a_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs", "role": "d0" }} , 
 	{ "name": "a_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_coeffs_offset", "role": "default" }} , 
 	{ "name": "b_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b_coeffs", "role": "address0" }} , 
 	{ "name": "b_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_coeffs", "role": "ce0" }} , 
 	{ "name": "b_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_coeffs", "role": "q0" }} , 
 	{ "name": "b_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_coeffs_offset", "role": "default" }} , 
 	{ "name": "h_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "h_coeffs", "role": "address0" }} , 
 	{ "name": "h_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "ce0" }} , 
 	{ "name": "h_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_coeffs", "role": "q0" }} , 
 	{ "name": "h_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "h_coeffs_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "poly_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1281", "EstimateLatencyMax" : "1281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_coeffs_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	poly_use_hint {
		a_coeffs {Type O LastRead -1 FirstWrite 5}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		h_coeffs {Type I LastRead 1 FirstWrite -1}
		h_coeffs_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1281", "Max" : "1281"}
	, {"Name" : "Interval", "Min" : "1281", "Max" : "1281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_coeffs { ap_memory {  { a_coeffs_address0 mem_address 1 11 }  { a_coeffs_ce0 mem_ce 1 1 }  { a_coeffs_we0 mem_we 1 1 }  { a_coeffs_d0 mem_din 1 4 } } }
	a_coeffs_offset { ap_none {  { a_coeffs_offset in_data 0 4 } } }
	b_coeffs { ap_memory {  { b_coeffs_address0 mem_address 1 11 }  { b_coeffs_ce0 mem_ce 1 1 }  { b_coeffs_q0 mem_dout 0 32 } } }
	b_coeffs_offset { ap_none {  { b_coeffs_offset in_data 0 4 } } }
	h_coeffs { ap_memory {  { h_coeffs_address0 mem_address 1 11 }  { h_coeffs_ce0 mem_ce 1 1 }  { h_coeffs_q0 mem_dout 0 1 } } }
	h_coeffs_offset { ap_none {  { h_coeffs_offset in_data 0 4 } } }
}
