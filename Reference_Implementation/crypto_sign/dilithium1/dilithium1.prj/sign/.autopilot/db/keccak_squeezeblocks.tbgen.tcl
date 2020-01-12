set moduleName keccak_squeezeblocks
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
set C_modelName {keccak_squeezeblocks}
set C_modelType { void 0 }
set C_modelArgList {
	{ h int 8 regular {array 136 { 0 3 } 0 1 }  }
	{ s int 64 regular {array 25 { 2 2 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "h", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ h_address0 sc_out sc_lv 8 signal 0 } 
	{ h_ce0 sc_out sc_logic 1 signal 0 } 
	{ h_we0 sc_out sc_logic 1 signal 0 } 
	{ h_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 5 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 64 signal 1 } 
	{ s_q0 sc_in sc_lv 64 signal 1 } 
	{ s_address1 sc_out sc_lv 5 signal 1 } 
	{ s_ce1 sc_out sc_logic 1 signal 1 } 
	{ s_we1 sc_out sc_logic 1 signal 1 } 
	{ s_d1 sc_out sc_lv 64 signal 1 } 
	{ s_q1 sc_in sc_lv 64 signal 1 } 
	{ keccak_count_i sc_in sc_lv 32 signal 2 } 
	{ keccak_count_o sc_out sc_lv 32 signal 2 } 
	{ keccak_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "h_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h", "role": "address0" }} , 
 	{ "name": "h_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "ce0" }} , 
 	{ "name": "h_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "we0" }} , 
 	{ "name": "h_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "q0" }} , 
 	{ "name": "s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address1" }} , 
 	{ "name": "s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce1" }} , 
 	{ "name": "s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we1" }} , 
 	{ "name": "s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "d1" }} , 
 	{ "name": "s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "q1" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "keccak_squeezeblocks",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "241", "EstimateLatencyMax" : "241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120"}],
		"Port" : [
			{"Name" : "h", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_120", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "KeccakF1600_StatePer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_120.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	keccak_squeezeblocks {
		h {Type O LastRead -1 FirstWrite 5}
		s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "241", "Max" : "241"}
	, {"Name" : "Interval", "Min" : "241", "Max" : "241"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	h { ap_memory {  { h_address0 mem_address 1 8 }  { h_ce0 mem_ce 1 1 }  { h_we0 mem_we 1 1 }  { h_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 5 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 64 }  { s_q0 mem_dout 0 64 }  { s_address1 MemPortADDR2 1 5 }  { s_ce1 MemPortCE2 1 1 }  { s_we1 MemPortWE2 1 1 }  { s_d1 MemPortDIN2 1 64 }  { s_q1 MemPortDOUT2 0 64 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName keccak_squeezeblocks
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
set C_modelName {keccak_squeezeblocks}
set C_modelType { void 0 }
set C_modelArgList {
	{ h int 8 regular {array 136 { 0 3 } 0 1 }  }
	{ s int 64 regular {array 25 { 2 2 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "h", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ h_address0 sc_out sc_lv 8 signal 0 } 
	{ h_ce0 sc_out sc_logic 1 signal 0 } 
	{ h_we0 sc_out sc_logic 1 signal 0 } 
	{ h_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 5 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 64 signal 1 } 
	{ s_q0 sc_in sc_lv 64 signal 1 } 
	{ s_address1 sc_out sc_lv 5 signal 1 } 
	{ s_ce1 sc_out sc_logic 1 signal 1 } 
	{ s_we1 sc_out sc_logic 1 signal 1 } 
	{ s_d1 sc_out sc_lv 64 signal 1 } 
	{ s_q1 sc_in sc_lv 64 signal 1 } 
	{ keccak_count_i sc_in sc_lv 32 signal 2 } 
	{ keccak_count_o sc_out sc_lv 32 signal 2 } 
	{ keccak_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "h_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h", "role": "address0" }} , 
 	{ "name": "h_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "ce0" }} , 
 	{ "name": "h_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "we0" }} , 
 	{ "name": "h_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "q0" }} , 
 	{ "name": "s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address1" }} , 
 	{ "name": "s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce1" }} , 
 	{ "name": "s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we1" }} , 
 	{ "name": "s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "d1" }} , 
 	{ "name": "s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "q1" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "keccak_squeezeblocks",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "241", "EstimateLatencyMax" : "241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_124"}],
		"Port" : [
			{"Name" : "h", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_124", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_124", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_124", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_124", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "KeccakF1600_StatePer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_124.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	keccak_squeezeblocks {
		h {Type O LastRead -1 FirstWrite 5}
		s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "241", "Max" : "241"}
	, {"Name" : "Interval", "Min" : "241", "Max" : "241"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	h { ap_memory {  { h_address0 mem_address 1 8 }  { h_ce0 mem_ce 1 1 }  { h_we0 mem_we 1 1 }  { h_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 5 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 64 }  { s_q0 mem_dout 0 64 }  { s_address1 MemPortADDR2 1 5 }  { s_ce1 MemPortCE2 1 1 }  { s_we1 MemPortWE2 1 1 }  { s_d1 MemPortDIN2 1 64 }  { s_q1 MemPortDOUT2 0 64 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName keccak_squeezeblocks
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
set C_modelName {keccak_squeezeblocks}
set C_modelType { void 0 }
set C_modelArgList {
	{ h int 8 regular {array 136 { 0 3 } 0 1 }  }
	{ s int 64 regular {array 25 { 2 2 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "h", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ h_address0 sc_out sc_lv 8 signal 0 } 
	{ h_ce0 sc_out sc_logic 1 signal 0 } 
	{ h_we0 sc_out sc_logic 1 signal 0 } 
	{ h_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 5 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 64 signal 1 } 
	{ s_q0 sc_in sc_lv 64 signal 1 } 
	{ s_address1 sc_out sc_lv 5 signal 1 } 
	{ s_ce1 sc_out sc_logic 1 signal 1 } 
	{ s_we1 sc_out sc_logic 1 signal 1 } 
	{ s_d1 sc_out sc_lv 64 signal 1 } 
	{ s_q1 sc_in sc_lv 64 signal 1 } 
	{ keccak_count_i sc_in sc_lv 32 signal 2 } 
	{ keccak_count_o sc_out sc_lv 32 signal 2 } 
	{ keccak_count_o_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "h_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h", "role": "address0" }} , 
 	{ "name": "h_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "ce0" }} , 
 	{ "name": "h_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "we0" }} , 
 	{ "name": "h_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "q0" }} , 
 	{ "name": "s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address1" }} , 
 	{ "name": "s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce1" }} , 
 	{ "name": "s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we1" }} , 
 	{ "name": "s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "d1" }} , 
 	{ "name": "s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "q1" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "keccak_squeezeblocks",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "241", "EstimateLatencyMax" : "241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_124"}],
		"Port" : [
			{"Name" : "h", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_124", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_124", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_124", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_124", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "KeccakF1600_StatePer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_124.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	keccak_squeezeblocks {
		h {Type O LastRead -1 FirstWrite 5}
		s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "241", "Max" : "241"}
	, {"Name" : "Interval", "Min" : "241", "Max" : "241"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	h { ap_memory {  { h_address0 mem_address 1 8 }  { h_ce0 mem_ce 1 1 }  { h_we0 mem_we 1 1 }  { h_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 5 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 64 }  { s_q0 mem_dout 0 64 }  { s_address1 MemPortADDR2 1 5 }  { s_ce1 MemPortCE2 1 1 }  { s_we1 MemPortWE2 1 1 }  { s_d1 MemPortDIN2 1 64 }  { s_q1 MemPortDOUT2 0 64 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
