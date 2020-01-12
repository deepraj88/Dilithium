set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "invntt_frominvmont",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state138", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_393", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_393", "Parent" : "0",
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
	invntt_frominvmont {
		p {Type IO LastRead 126 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
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
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 1 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
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
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "invntt_frominvmont",
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
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	invntt_frominvmont {
		p {Type IO LastRead 6 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 10 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 1 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
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
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "invntt_frominvmont",
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
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	invntt_frominvmont {
		p {Type IO LastRead 6 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 10 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "invntt_frominvmont",
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
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	invntt_frominvmont {
		p {Type IO LastRead 13 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 10 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "invntt_frominvmont",
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
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	invntt_frominvmont {
		p {Type IO LastRead 27 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 10 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "invntt_frominvmont",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_267", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_267", "Parent" : "0",
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
	invntt_frominvmont {
		p {Type IO LastRead 62 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
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
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "invntt_frominvmont",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state138", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_393", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_393", "Parent" : "0",
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
	invntt_frominvmont {
		p {Type IO LastRead 126 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
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
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "invntt_frominvmont",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state139", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state147", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state155", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state163", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state171", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state179", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state187", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state195", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state203", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state211", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state219", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state227", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state235", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state243", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state251", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state259", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state266", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_649", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_649", "Parent" : "0",
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
	invntt_frominvmont {
		p {Type IO LastRead 254 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
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
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "invntt_frominvmont",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state139", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state147", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state155", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state163", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state171", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state179", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state187", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state195", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state203", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state211", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state219", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state227", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state235", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state243", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state251", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state259", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state267", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state275", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state283", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state291", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state299", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state307", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state315", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state323", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state331", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state339", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state347", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state355", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state363", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state371", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state379", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state387", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state395", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state403", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state411", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state419", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state427", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state435", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state443", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state451", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state459", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state467", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state475", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state483", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state491", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state499", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state507", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state515", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state522", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_1161", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_1161", "Parent" : "0",
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
	invntt_frominvmont {
		p {Type IO LastRead 510 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
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
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "invntt_frominvmont",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state139", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state147", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state155", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state163", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state171", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state179", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state187", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state195", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state203", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state211", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state219", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state227", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state235", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state243", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state251", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state259", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state267", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state275", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state283", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state291", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state299", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state307", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state315", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state323", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state331", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state339", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state347", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state355", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state363", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state371", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state379", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state387", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state395", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state403", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state411", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state419", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state427", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state435", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state443", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state451", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state459", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state467", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state475", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state483", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state491", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state499", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state507", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state515", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state523", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state531", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state539", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state547", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state555", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state563", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state571", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state579", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state587", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state595", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state603", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state611", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state619", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state627", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state635", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state643", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state651", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state659", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state667", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state675", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state683", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state691", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state699", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state707", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state715", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state723", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state731", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state739", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state747", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state755", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state763", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state771", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state779", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state787", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state795", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state803", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state811", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state819", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state827", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state835", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state843", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state851", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state859", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state867", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state875", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state883", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state891", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state899", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state907", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state915", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state923", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state931", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state939", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state947", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state955", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state963", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state971", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state979", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state987", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state995", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state1003", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state1011", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state1019", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state1027", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state1034", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_2185", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_2185", "Parent" : "0",
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
	invntt_frominvmont {
		p {Type IO LastRead 1022 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
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
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 1 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
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
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "invntt_frominvmont",
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
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	invntt_frominvmont {
		p {Type IO LastRead 6 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 10 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "invntt_frominvmont",
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
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	invntt_frominvmont {
		p {Type IO LastRead 13 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 10 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "invntt_frominvmont",
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
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	invntt_frominvmont {
		p {Type IO LastRead 27 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 10 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "invntt_frominvmont",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_267"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_267", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_267", "Parent" : "0",
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
	invntt_frominvmont {
		p {Type IO LastRead 62 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
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
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "invntt_frominvmont",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"},
			{"State" : "ap_ST_fsm_state138", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_393"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_393", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_393", "Parent" : "0",
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
	invntt_frominvmont {
		p {Type IO LastRead 126 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
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
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "invntt_frominvmont",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state139", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state147", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state155", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state163", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state171", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state179", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state187", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state195", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state203", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state211", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state219", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state227", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state235", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state243", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state251", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state259", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"},
			{"State" : "ap_ST_fsm_state266", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_649"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_649", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_649", "Parent" : "0",
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
	invntt_frominvmont {
		p {Type IO LastRead 254 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
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
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "invntt_frominvmont",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state139", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state147", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state155", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state163", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state171", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state179", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state187", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state195", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state203", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state211", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state219", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state227", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state235", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state243", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state251", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state259", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state267", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state275", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state283", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state291", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state299", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state307", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state315", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state323", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state331", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state339", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state347", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state355", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state363", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state371", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state379", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state387", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state395", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state403", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state411", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state419", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state427", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state435", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state443", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state451", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state459", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state467", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state475", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state483", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state491", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state499", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state507", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state515", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"},
			{"State" : "ap_ST_fsm_state522", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_1161"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_1161", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_1161", "Parent" : "0",
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
	invntt_frominvmont {
		p {Type IO LastRead 510 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
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
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName invntt_frominvmont
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
set C_modelName {invntt_frominvmont}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ invntt_count_i sc_in sc_lv 32 signal 2 } 
	{ invntt_count_o sc_out sc_lv 32 signal 2 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "invntt_frominvmont",
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
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state139", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state147", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state155", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state163", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state171", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state179", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state187", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state195", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state203", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state211", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state219", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state227", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state235", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state243", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state251", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state259", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state267", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state275", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state283", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state291", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state299", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state307", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state315", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state323", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state331", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state339", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state347", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state355", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state363", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state371", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state379", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state387", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state395", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state403", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state411", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state419", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state427", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state435", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state443", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state451", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state459", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state467", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state475", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state483", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state491", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state499", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state507", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state515", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state523", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state531", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state539", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state547", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state555", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state563", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state571", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state579", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state587", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state595", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state603", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state611", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state619", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state627", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state635", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state643", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state651", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state659", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state667", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state675", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state683", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state691", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state699", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state707", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state715", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state723", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state731", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state739", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state747", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state755", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state763", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state771", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state779", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state787", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state795", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state803", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state811", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state819", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state827", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state835", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state843", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state851", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state859", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state867", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state875", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state883", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state891", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state899", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state907", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state915", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state923", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state931", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state939", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state947", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state955", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state963", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state971", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state979", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state987", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state995", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state1003", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state1011", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state1019", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state1027", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"},
			{"State" : "ap_ST_fsm_state1034", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montgomery_reduce_fu_2185"}],
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_montgomery_reduce_fu_2185", "Port" : "montgomery_count"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montgomery_reduce_fu_2185", "Parent" : "0",
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
	invntt_frominvmont {
		p {Type IO LastRead 1022 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
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
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 MemPortADDR2 1 10 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 32 }  { p_q1 MemPortDOUT2 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
}
