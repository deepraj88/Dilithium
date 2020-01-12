set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_377", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_377", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 130 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 10 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 11 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 10 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 11 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 18 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 11 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 34 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 11 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_249", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_249", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 66 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_377", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_377", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 130 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state137", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state145", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state153", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state161", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state169", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state177", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state185", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state193", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state201", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state209", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state217", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state225", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state233", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state241", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state249", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state257", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_633", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_633", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 258 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state137", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state145", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state153", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state161", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state169", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state177", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state185", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state193", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state201", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state209", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state217", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state225", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state233", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state241", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state249", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state257", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state265", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state273", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state281", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state289", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state297", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state305", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state313", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state321", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state329", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state337", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state345", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state353", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state361", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state369", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state377", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state385", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state393", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state401", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state409", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state417", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state425", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state433", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state441", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state449", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state457", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state465", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state473", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state481", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state489", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state497", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state505", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state513", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_1145", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_1145", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 514 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state137", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state145", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state153", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state161", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state169", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state177", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state185", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state193", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state201", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state209", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state217", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state225", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state233", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state241", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state249", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state257", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state265", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state273", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state281", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state289", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state297", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state305", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state313", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state321", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state329", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state337", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state345", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state353", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state361", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state369", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state377", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state385", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state393", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state401", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state409", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state417", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state425", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state433", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state441", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state449", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state457", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state465", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state473", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state481", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state489", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state497", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state505", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state513", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state521", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state529", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state537", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state545", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state553", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state569", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state577", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state585", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state593", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state601", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state609", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state617", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state625", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state633", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state641", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state649", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state657", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state665", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state673", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state681", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state689", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state697", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state705", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state713", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state721", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state729", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state737", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state745", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state753", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state761", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state769", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state777", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state785", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state793", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state801", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state809", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state817", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state825", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state833", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state841", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state849", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state857", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state865", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state873", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state881", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state889", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state897", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state905", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state913", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state921", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state929", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state937", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state945", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state953", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state961", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state969", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state977", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state985", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state993", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state1001", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state1009", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state1017", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state1025", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_2169", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_2169", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 1026 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 10 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 11 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 18 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 11 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 34 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 11 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_249"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_249", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_249", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 66 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_377"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_377", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_377", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 130 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state137", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state145", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state153", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state161", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state169", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state177", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state185", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state193", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state201", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state209", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state217", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state225", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state233", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state241", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state249", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"},
			{"State" : "ap_ST_fsm_state257", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_633"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_633", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_633", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 258 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state137", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state145", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state153", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state161", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state169", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state177", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state185", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state193", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state201", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state209", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state217", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state225", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state233", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state241", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state249", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state257", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state265", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state273", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state281", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state289", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state297", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state305", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state313", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state321", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state329", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state337", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state345", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state353", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state361", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state369", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state377", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state385", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state393", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state401", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state409", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state417", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state425", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state433", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state441", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state449", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state457", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state465", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state473", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state481", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state489", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state497", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state505", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"},
			{"State" : "ap_ST_fsm_state513", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1145"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_1145", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_1145", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 514 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName ntt
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
set C_modelName {ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 9 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ ntt_count_i sc_in sc_lv 32 signal 2 } 
	{ ntt_count_o sc_out sc_lv 32 signal 2 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 3 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 3 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state137", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state145", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state153", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state161", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state169", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state177", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state185", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state193", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state201", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state209", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state217", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state225", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state233", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state241", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state249", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state257", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state265", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state273", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state281", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state289", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state297", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state305", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state313", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state321", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state329", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state337", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state345", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state353", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state361", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state369", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state377", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state385", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state393", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state401", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state409", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state417", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state425", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state433", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state441", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state449", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state457", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state465", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state473", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state481", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state489", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state497", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state505", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state513", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state521", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state529", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state537", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state545", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state553", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state569", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state577", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state585", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state593", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state601", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state609", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state617", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state625", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state633", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state641", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state649", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state657", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state665", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state673", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state681", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state689", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state697", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state705", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state713", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state721", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state729", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state737", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state745", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state753", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state761", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state769", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state777", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state785", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state793", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state801", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state809", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state817", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state825", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state833", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state841", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state849", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state857", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state865", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state873", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state881", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state889", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state897", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state905", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state913", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state921", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state929", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state937", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state945", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state953", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state961", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state969", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state977", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state985", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state993", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state1001", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state1009", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state1017", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"},
			{"State" : "ap_ST_fsm_state1025", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2169"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_2169", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_2169", "Parent" : "0",
		"CDFG" : "montgomery_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ntt {
		p {Type IO LastRead 1026 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}
	montgomery_reduce {
		a {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 9 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
