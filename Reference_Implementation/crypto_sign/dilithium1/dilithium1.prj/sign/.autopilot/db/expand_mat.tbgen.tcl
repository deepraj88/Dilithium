set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_149", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_149.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "730", "EstimateLatencyMax" : "730",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_150", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_150.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "562", "EstimateLatencyMax" : "562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_178", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_178.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "520", "EstimateLatencyMax" : "520",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_149", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_149.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "730", "EstimateLatencyMax" : "730",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_150", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_150.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "562", "EstimateLatencyMax" : "562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_178", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_178.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "520", "EstimateLatencyMax" : "520",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_149", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_149.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "730", "EstimateLatencyMax" : "730",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_150", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_150.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "562", "EstimateLatencyMax" : "562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_178", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_178.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "520", "EstimateLatencyMax" : "520",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_150"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_173"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_173", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_165", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_150.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_165.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_173", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_149", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_149.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "730", "EstimateLatencyMax" : "730",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_150", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_150", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_150.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "562", "EstimateLatencyMax" : "562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "285", "EstimateLatencyMax" : "1421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_178", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_178", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_178.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "520", "EstimateLatencyMax" : "520",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 5}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
set moduleName expand_mat
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
set C_modelName {expand_mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_vec_coeffs int 23 regular {array 1536 { 0 3 } 0 1 }  }
	{ rho int 8 regular {array 208 { 1 3 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_vec_coeffs_address0 sc_out sc_lv 11 signal 0 } 
	{ mat_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ mat_vec_coeffs_d0 sc_out sc_lv 23 signal 0 } 
	{ rho_address0 sc_out sc_lv 8 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "mat_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "address0" }} , 
 	{ "name": "mat_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "mat_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "we0" }} , 
 	{ "name": "mat_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "mat_vec_coeffs", "role": "d0" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "10"],
		"CDFG" : "expand_mat",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_squeezebloc_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake128_stream_init_fu_190"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_198"}],
		"Port" : [
			{"Name" : "mat_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "shake128_squeezebloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "1211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeccakF1600_StatePer_fu_226", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_226.KeccakF_RoundConstan_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "shake128_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "436", "EstimateLatencyMax" : "436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.t_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_uniform_fu_198", "Parent" : "0",
		"CDFG" : "rej_uniform",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expand_mat {
		mat_vec_coeffs {Type O LastRead -1 FirstWrite 3}
		rho {Type I LastRead 1 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_squeezebloc {
		output_r {Type O LastRead -1 FirstWrite 4}
		output_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake128_stream_init {
		state_s {Type IO LastRead 9 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_vec_coeffs { ap_memory {  { mat_vec_coeffs_address0 mem_address 1 11 }  { mat_vec_coeffs_ce0 mem_ce 1 1 }  { mat_vec_coeffs_we0 mem_we 1 1 }  { mat_vec_coeffs_d0 mem_din 1 23 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
}
