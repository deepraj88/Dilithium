set moduleName challenge
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
set C_modelName {challenge}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_coeffs int 15 regular {array 256 { 2 3 } 1 1 }  }
	{ mu int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ w1_vec_coeffs int 4 regular {array 768 { 1 1 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_coeffs", "interface" : "memory", "bitwidth" : 15, "direction" : "READWRITE"} , 
 	{ "Name" : "mu", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1_vec_coeffs", "interface" : "memory", "bitwidth" : 4, "direction" : "READONLY"} , 
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
	{ c_coeffs_address0 sc_out sc_lv 8 signal 0 } 
	{ c_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ c_coeffs_d0 sc_out sc_lv 15 signal 0 } 
	{ c_coeffs_q0 sc_in sc_lv 15 signal 0 } 
	{ mu_address0 sc_out sc_lv 8 signal 1 } 
	{ mu_ce0 sc_out sc_logic 1 signal 1 } 
	{ mu_q0 sc_in sc_lv 8 signal 1 } 
	{ w1_vec_coeffs_address0 sc_out sc_lv 10 signal 2 } 
	{ w1_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ w1_vec_coeffs_q0 sc_in sc_lv 4 signal 2 } 
	{ w1_vec_coeffs_address1 sc_out sc_lv 10 signal 2 } 
	{ w1_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ w1_vec_coeffs_q1 sc_in sc_lv 4 signal 2 } 
	{ keccak_count_i sc_in sc_lv 32 signal 3 } 
	{ keccak_count_o sc_out sc_lv 32 signal 3 } 
	{ keccak_count_o_ap_vld sc_out sc_logic 1 outvld 3 } 
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
 	{ "name": "c_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "c_coeffs", "role": "d0" }} , 
 	{ "name": "c_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "c_coeffs", "role": "q0" }} , 
 	{ "name": "mu_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mu", "role": "address0" }} , 
 	{ "name": "mu_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mu", "role": "ce0" }} , 
 	{ "name": "mu_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mu", "role": "q0" }} , 
 	{ "name": "w1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "w1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "w1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "w1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "w1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "w1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "8"],
		"CDFG" : "challenge",
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
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_absorb_1_fu_350"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_squeezeblocks_fu_360"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_squeezeblocks_fu_360"}],
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mu", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_keccak_squeezeblocks_fu_360", "Port" : "keccak_count"},
					{"ID" : "4", "SubInstance" : "grp_keccak_absorb_1_fu_350", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_keccak_squeezeblocks_fu_360", "Port" : "KeccakF_RoundConstan"},
					{"ID" : "4", "SubInstance" : "grp_keccak_absorb_1_fu_350", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inbuf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outbuf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_1_fu_350", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "keccak_absorb_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1666", "EstimateLatencyMax" : "1666",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_305"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakF1600_StatePer_fu_305", "Port" : "state"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakF1600_StatePer_fu_305", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_KeccakF1600_StatePer_fu_305", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_1_fu_350.t_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_1_fu_350.grp_KeccakF1600_StatePer_fu_305", "Parent" : "4", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_1_fu_350.grp_KeccakF1600_StatePer_fu_305.KeccakF_RoundConstan_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_squeezeblocks_fu_360", "Parent" : "0", "Child" : ["9"],
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
					{"ID" : "9", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_squeezeblocks_fu_360.grp_KeccakF1600_StatePer_fu_120", "Parent" : "8", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_squeezeblocks_fu_360.grp_KeccakF1600_StatePer_fu_120.KeccakF_RoundConstan_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	challenge {
		c_coeffs {Type IO LastRead 12 FirstWrite 7}
		mu {Type I LastRead 1 FirstWrite -1}
		w1_vec_coeffs {Type I LastRead 4 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	keccak_absorb_1 {
		s {Type IO LastRead 13 FirstWrite 1}
		m {Type I LastRead 5 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_coeffs { ap_memory {  { c_coeffs_address0 mem_address 1 8 }  { c_coeffs_ce0 mem_ce 1 1 }  { c_coeffs_we0 mem_we 1 1 }  { c_coeffs_d0 mem_din 1 15 }  { c_coeffs_q0 mem_dout 0 15 } } }
	mu { ap_memory {  { mu_address0 mem_address 1 8 }  { mu_ce0 mem_ce 1 1 }  { mu_q0 mem_dout 0 8 } } }
	w1_vec_coeffs { ap_memory {  { w1_vec_coeffs_address0 mem_address 1 10 }  { w1_vec_coeffs_ce0 mem_ce 1 1 }  { w1_vec_coeffs_q0 mem_dout 0 4 }  { w1_vec_coeffs_address1 MemPortADDR2 1 10 }  { w1_vec_coeffs_ce1 MemPortCE2 1 1 }  { w1_vec_coeffs_q1 MemPortDOUT2 0 4 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
