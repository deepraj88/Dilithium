set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 1536 { 2 3 } 1 1 }  }
	{ w_coeffs_offset int 3 regular  }
	{ u_vec_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 3 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 13 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9742", "EstimateLatencyMax" : "9742",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 4 FirstWrite 5}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 3 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9742", "Max" : "9742"}
	, {"Name" : "Interval", "Min" : "9742", "Max" : "9742"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 11 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 3 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 13 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 11 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 1536 { 2 3 } 1 1 }  }
	{ w_coeffs_offset int 3 regular  }
	{ u_vec_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 3 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 13 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9742", "EstimateLatencyMax" : "9742",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 4 FirstWrite 5}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 3 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9742", "Max" : "9742"}
	, {"Name" : "Interval", "Min" : "9742", "Max" : "9742"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 11 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 3 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 13 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 11 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 1536 { 2 3 } 1 1 }  }
	{ w_coeffs_offset int 3 regular  }
	{ u_vec_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 3 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 13 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9742", "EstimateLatencyMax" : "9742",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 4 FirstWrite 5}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 3 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9742", "Max" : "9742"}
	, {"Name" : "Interval", "Min" : "9742", "Max" : "9742"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 11 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 3 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 13 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 11 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 1536 { 2 3 } 1 1 }  }
	{ w_coeffs_offset int 3 regular  }
	{ u_vec_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 3 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 13 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9740", "EstimateLatencyMax" : "9740",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 6 FirstWrite 5}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 5 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9740", "Max" : "9740"}
	, {"Name" : "Interval", "Min" : "9740", "Max" : "9740"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 11 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 3 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 13 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 11 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 1536 { 2 0 } 1 1 }  }
	{ w_coeffs_offset int 3 regular  }
	{ u_vec_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 11 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 3 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 13 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8722", "EstimateLatencyMax" : "8722",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 4 FirstWrite 5}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 3 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8722", "Max" : "8722"}
	, {"Name" : "Interval", "Min" : "8722", "Max" : "8722"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 11 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 MemPortADDR2 1 11 }  { w_coeffs_ce1 MemPortCE2 1 1 }  { w_coeffs_we1 MemPortWE2 1 1 }  { w_coeffs_d1 MemPortDIN2 1 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 3 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 13 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 11 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 1536 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 3 regular  }
	{ u_vec_coeffs int 23 regular {array 7680 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 1280 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 11 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 3 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 13 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8720", "EstimateLatencyMax" : "8720",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 7 FirstWrite 5}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8720", "Max" : "8720"}
	, {"Name" : "Interval", "Min" : "8720", "Max" : "8720"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 11 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 MemPortADDR2 1 11 }  { w_coeffs_ce1 MemPortCE2 1 1 }  { w_coeffs_we1 MemPortWE2 1 1 }  { w_coeffs_d1 MemPortDIN2 1 32 }  { w_coeffs_q1 MemPortDOUT2 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 3 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 13 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 11 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
