set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 3 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "569",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_129"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_129", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_129", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_129", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_129.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 5}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "285", "Max" : "569"}
	, {"Name" : "Interval", "Min" : "285", "Max" : "569"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 3 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "569",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_146"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_146", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_146", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_146", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_146.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 5}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "285", "Max" : "569"}
	, {"Name" : "Interval", "Min" : "285", "Max" : "569"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 3 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "569",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_164"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_164", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_164", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_164", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_164.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 5}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "285", "Max" : "569"}
	, {"Name" : "Interval", "Min" : "285", "Max" : "569"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 0 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ output_r_address1 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ output_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_d1 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 4}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "159", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 }  { output_r_address1 MemPortADDR2 1 9 }  { output_r_ce1 MemPortCE2 1 1 }  { output_r_we1 MemPortWE2 1 1 }  { output_r_d1 MemPortDIN2 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 0 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ output_r_address1 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ output_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_d1 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 4}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "159", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 }  { output_r_address1 MemPortADDR2 1 9 }  { output_r_ce1 MemPortCE2 1 1 }  { output_r_we1 MemPortWE2 1 1 }  { output_r_d1 MemPortDIN2 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 0 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ output_r_address1 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ output_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_d1 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 4}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "159", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 }  { output_r_address1 MemPortADDR2 1 9 }  { output_r_ce1 MemPortCE2 1 1 }  { output_r_we1 MemPortWE2 1 1 }  { output_r_d1 MemPortDIN2 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 0 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ output_r_address1 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ output_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_d1 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 4}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "159", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 }  { output_r_address1 MemPortADDR2 1 9 }  { output_r_ce1 MemPortCE2 1 1 }  { output_r_we1 MemPortWE2 1 1 }  { output_r_d1 MemPortDIN2 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 0 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ output_r_address1 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ output_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_d1 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 4}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "159", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 }  { output_r_address1 MemPortADDR2 1 9 }  { output_r_ce1 MemPortCE2 1 1 }  { output_r_we1 MemPortWE2 1 1 }  { output_r_d1 MemPortDIN2 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 3 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "569",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_129"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_129", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_129", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_129", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_129.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 5}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "285", "Max" : "569"}
	, {"Name" : "Interval", "Min" : "285", "Max" : "569"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 3 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "569",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_146"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_146", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_146", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_146", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_146.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 5}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "285", "Max" : "569"}
	, {"Name" : "Interval", "Min" : "285", "Max" : "569"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 3 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "569",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_164"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_164", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_164", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_164", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_164.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 5}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "285", "Max" : "569"}
	, {"Name" : "Interval", "Min" : "285", "Max" : "569"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 0 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ output_r_address1 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ output_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_d1 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 4}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "159", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 }  { output_r_address1 MemPortADDR2 1 9 }  { output_r_ce1 MemPortCE2 1 1 }  { output_r_we1 MemPortWE2 1 1 }  { output_r_d1 MemPortDIN2 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 0 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ output_r_address1 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ output_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_d1 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 4}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "159", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 }  { output_r_address1 MemPortADDR2 1 9 }  { output_r_ce1 MemPortCE2 1 1 }  { output_r_we1 MemPortWE2 1 1 }  { output_r_d1 MemPortDIN2 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 0 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ output_r_address1 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ output_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_d1 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 4}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "159", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 }  { output_r_address1 MemPortADDR2 1 9 }  { output_r_ce1 MemPortCE2 1 1 }  { output_r_we1 MemPortWE2 1 1 }  { output_r_d1 MemPortDIN2 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 0 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ output_r_address1 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ output_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_d1 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 4}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "159", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 }  { output_r_address1 MemPortADDR2 1 9 }  { output_r_ce1 MemPortCE2 1 1 }  { output_r_we1 MemPortWE2 1 1 }  { output_r_d1 MemPortDIN2 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
set moduleName shake128_squeezebloc_1
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
set C_modelName {shake128_squeezebloc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_r int 8 regular {array 336 { 0 0 } 0 1 }  }
	{ nblocks int 3 regular  }
	{ state_s int 64 regular {array 25 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblocks", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "state_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_address0 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_r_we0 sc_out sc_logic 1 signal 0 } 
	{ output_r_d0 sc_out sc_lv 8 signal 0 } 
	{ output_r_address1 sc_out sc_lv 9 signal 0 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ output_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_d1 sc_out sc_lv 8 signal 0 } 
	{ nblocks sc_in sc_lv 3 signal 1 } 
	{ state_s_address0 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_s_we0 sc_out sc_logic 1 signal 2 } 
	{ state_s_d0 sc_out sc_lv 64 signal 2 } 
	{ state_s_q0 sc_in sc_lv 64 signal 2 } 
	{ state_s_address1 sc_out sc_lv 5 signal 2 } 
	{ state_s_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_s_we1 sc_out sc_logic 1 signal 2 } 
	{ state_s_d1 sc_out sc_lv 64 signal 2 } 
	{ state_s_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "nblocks", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "nblocks", "role": "default" }} , 
 	{ "name": "state_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address0" }} , 
 	{ "name": "state_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce0" }} , 
 	{ "name": "state_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we0" }} , 
 	{ "name": "state_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d0" }} , 
 	{ "name": "state_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q0" }} , 
 	{ "name": "state_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "state_s", "role": "address1" }} , 
 	{ "name": "state_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "ce1" }} , 
 	{ "name": "state_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_s", "role": "we1" }} , 
 	{ "name": "state_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "d1" }} , 
 	{ "name": "state_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake128_squeezebloc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "state"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePer_fu_207", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_207.KeccakF_RoundConstan_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake128_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 4}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "159", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_r { ap_memory {  { output_r_address0 mem_address 1 9 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 }  { output_r_address1 MemPortADDR2 1 9 }  { output_r_ce1 MemPortCE2 1 1 }  { output_r_we1 MemPortWE2 1 1 }  { output_r_d1 MemPortDIN2 1 8 } } }
	nblocks { ap_none {  { nblocks in_data 0 3 } } }
	state_s { ap_memory {  { state_s_address0 mem_address 1 5 }  { state_s_ce0 mem_ce 1 1 }  { state_s_we0 mem_we 1 1 }  { state_s_d0 mem_din 1 64 }  { state_s_q0 mem_dout 0 64 }  { state_s_address1 MemPortADDR2 1 5 }  { state_s_ce1 MemPortCE2 1 1 }  { state_s_we1 MemPortWE2 1 1 }  { state_s_d1 MemPortDIN2 1 64 }  { state_s_q1 MemPortDOUT2 0 64 } } }
}
