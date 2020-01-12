set moduleName crypto_sign
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
set C_modelName {crypto_sign}
set C_modelType { int 32 }
set C_modelArgList {
	{ sm int 8 regular {array 4787 { 2 3 } 1 1 }  }
	{ smlen int 64 regular {array 1 { 0 3 } 0 1 }  }
	{ m int 8 regular {array 3400 { 1 3 } 1 1 }  }
	{ mlen int 64 regular  }
	{ sk int 8 regular {array 2096 { 1 1 } 1 1 }  }
	{ keccak_count int 32 regular {pointer 2} {global 2}  }
	{ ntt_count int 32 regular {pointer 2} {global 2}  }
	{ montgomery_count int 32 regular {pointer 2} {global 2}  }
	{ invntt_count int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sm", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sm","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 4786,"step" : 1}]}]}]} , 
 	{ "Name" : "smlen", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "smlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "m","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3399,"step" : 1}]}]}]} , 
 	{ "Name" : "mlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "mlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2095,"step" : 1}]}]}]} , 
 	{ "Name" : "keccak_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keccak_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "ntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "montgomery_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "montgomery_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "invntt_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "invntt_count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sm_address0 sc_out sc_lv 13 signal 0 } 
	{ sm_ce0 sc_out sc_logic 1 signal 0 } 
	{ sm_we0 sc_out sc_logic 1 signal 0 } 
	{ sm_d0 sc_out sc_lv 8 signal 0 } 
	{ sm_q0 sc_in sc_lv 8 signal 0 } 
	{ smlen_address0 sc_out sc_lv 1 signal 1 } 
	{ smlen_ce0 sc_out sc_logic 1 signal 1 } 
	{ smlen_we0 sc_out sc_logic 1 signal 1 } 
	{ smlen_d0 sc_out sc_lv 64 signal 1 } 
	{ m_address0 sc_out sc_lv 12 signal 2 } 
	{ m_ce0 sc_out sc_logic 1 signal 2 } 
	{ m_q0 sc_in sc_lv 8 signal 2 } 
	{ mlen sc_in sc_lv 64 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
	{ keccak_count_i sc_in sc_lv 32 signal 5 } 
	{ keccak_count_o sc_out sc_lv 32 signal 5 } 
	{ keccak_count_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ ntt_count_i sc_in sc_lv 32 signal 6 } 
	{ ntt_count_o sc_out sc_lv 32 signal 6 } 
	{ ntt_count_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ montgomery_count_i sc_in sc_lv 32 signal 7 } 
	{ montgomery_count_o sc_out sc_lv 32 signal 7 } 
	{ montgomery_count_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ invntt_count_i sc_in sc_lv 32 signal 8 } 
	{ invntt_count_o sc_out sc_lv 32 signal 8 } 
	{ invntt_count_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sm_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "sm", "role": "address0" }} , 
 	{ "name": "sm_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "ce0" }} , 
 	{ "name": "sm_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "we0" }} , 
 	{ "name": "sm_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "d0" }} , 
 	{ "name": "sm_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "q0" }} , 
 	{ "name": "smlen_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "address0" }} , 
 	{ "name": "smlen_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "ce0" }} , 
 	{ "name": "smlen_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "we0" }} , 
 	{ "name": "smlen_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "smlen", "role": "d0" }} , 
 	{ "name": "m_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "m", "role": "address0" }} , 
 	{ "name": "m_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce0" }} , 
 	{ "name": "m_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m", "role": "q0" }} , 
 	{ "name": "mlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mlen", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }} , 
 	{ "name": "keccak_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "i" }} , 
 	{ "name": "keccak_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keccak_count", "role": "o" }} , 
 	{ "name": "keccak_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keccak_count", "role": "o_ap_vld" }} , 
 	{ "name": "ntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "i" }} , 
 	{ "name": "ntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ntt_count", "role": "o" }} , 
 	{ "name": "ntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "montgomery_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "i" }} , 
 	{ "name": "montgomery_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "montgomery_count", "role": "o" }} , 
 	{ "name": "montgomery_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "montgomery_count", "role": "o_ap_vld" }} , 
 	{ "name": "invntt_count_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "i" }} , 
 	{ "name": "invntt_count_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "invntt_count", "role": "o" }} , 
 	{ "name": "invntt_count_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "invntt_count", "role": "o_ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "32", "43", "54", "58", "61", "63", "65", "66", "68", "70", "72", "73", "75", "76", "78", "79"],
		"CDFG" : "crypto_sign",
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
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_challenge_fu_1116"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_uniform_gamma1m_fu_1127"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_uniform_fu_1141"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_absorb_2_fu_1156"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_squeezeblocks_fu_1168"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_squeezeblocks_fu_1168"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_invntt_frominvmont_1_fu_1178"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_invntt_frominvmont_1_fu_1178"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_invntt_frominvmont_1_fu_1178"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_invntt_frominvmont_fu_1193"},
			{"State" : "ap_ST_fsm_state98", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pack_sig_fu_1206"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyvecl_pointwise_a_fu_1215"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ntt_fu_1226"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ntt_fu_1226"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ntt_1_fu_1240"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ntt_1_fu_1240"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpack_sk_fu_1254"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ntt_2_fu_1268"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_pointwise_invmo_fu_1279"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_pointwise_invmo_fu_1279"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_absorb_3131_fu_1294"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyveck_chknorm_fu_1300"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyveck_chknorm_fu_1300"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyveck_csubq_fu_1308"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyveck_csubq_fu_1308"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyveck_csubq_fu_1308"}],
		"Port" : [
			{"Name" : "sm", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_keccak_absorb_2_fu_1156", "Port" : "m"},
					{"ID" : "65", "SubInstance" : "grp_pack_sig_fu_1206", "Port" : "sig"}]},
			{"Name" : "smlen", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_unpack_sk_fu_1254", "Port" : "sk"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_keccak_absorb_2_fu_1156", "Port" : "keccak_count"},
					{"ID" : "58", "SubInstance" : "grp_keccak_squeezeblocks_fu_1168", "Port" : "keccak_count"},
					{"ID" : "43", "SubInstance" : "grp_poly_uniform_fu_1141", "Port" : "keccak_count"},
					{"ID" : "21", "SubInstance" : "grp_challenge_fu_1116", "Port" : "keccak_count"},
					{"ID" : "32", "SubInstance" : "grp_poly_uniform_gamma1m_fu_1127", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_keccak_absorb_2_fu_1156", "Port" : "KeccakF_RoundConstan"},
					{"ID" : "58", "SubInstance" : "grp_keccak_squeezeblocks_fu_1168", "Port" : "KeccakF_RoundConstan"},
					{"ID" : "43", "SubInstance" : "grp_poly_uniform_fu_1141", "Port" : "KeccakF_RoundConstan"},
					{"ID" : "21", "SubInstance" : "grp_challenge_fu_1116", "Port" : "KeccakF_RoundConstan"},
					{"ID" : "32", "SubInstance" : "grp_poly_uniform_gamma1m_fu_1127", "Port" : "KeccakF_RoundConstan"}]},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_ntt_1_fu_1240", "Port" : "ntt_count"},
					{"ID" : "68", "SubInstance" : "grp_ntt_fu_1226", "Port" : "ntt_count"},
					{"ID" : "73", "SubInstance" : "grp_ntt_2_fu_1268", "Port" : "ntt_count"}]},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_ntt_1_fu_1240", "Port" : "zetas"},
					{"ID" : "68", "SubInstance" : "grp_ntt_fu_1226", "Port" : "zetas"},
					{"ID" : "73", "SubInstance" : "grp_ntt_2_fu_1268", "Port" : "zetas"}]},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_invntt_frominvmont_1_fu_1178", "Port" : "montgomery_count"},
					{"ID" : "75", "SubInstance" : "grp_poly_pointwise_invmo_fu_1279", "Port" : "montgomery_count"},
					{"ID" : "70", "SubInstance" : "grp_ntt_1_fu_1240", "Port" : "montgomery_count"},
					{"ID" : "68", "SubInstance" : "grp_ntt_fu_1226", "Port" : "montgomery_count"},
					{"ID" : "66", "SubInstance" : "grp_polyvecl_pointwise_a_fu_1215", "Port" : "montgomery_count"},
					{"ID" : "73", "SubInstance" : "grp_ntt_2_fu_1268", "Port" : "montgomery_count"},
					{"ID" : "63", "SubInstance" : "grp_invntt_frominvmont_fu_1193", "Port" : "montgomery_count"}]},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_invntt_frominvmont_1_fu_1178", "Port" : "invntt_count"},
					{"ID" : "63", "SubInstance" : "grp_invntt_frominvmont_fu_1193", "Port" : "invntt_count"}]},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_invntt_frominvmont_1_fu_1178", "Port" : "zetas_inv"},
					{"ID" : "63", "SubInstance" : "grp_invntt_frominvmont_fu_1193", "Port" : "zetas_inv"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_i10_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_i_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.seedbuf_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_coeffs_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chat_coeffs_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s1_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yhat_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s2_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w1_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w0_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cs2_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ct0_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1116", "Parent" : "0", "Child" : ["22", "23", "24", "25", "29"],
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
					{"ID" : "25", "SubInstance" : "grp_keccak_absorb_1_fu_350", "Port" : "keccak_count"},
					{"ID" : "29", "SubInstance" : "grp_keccak_squeezeblocks_fu_360", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_keccak_absorb_1_fu_350", "Port" : "KeccakF_RoundConstan"},
					{"ID" : "29", "SubInstance" : "grp_keccak_squeezeblocks_fu_360", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1116.inbuf_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1116.outbuf_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1116.state_s_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1116.grp_keccak_absorb_1_fu_350", "Parent" : "21", "Child" : ["26", "27"],
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
					{"ID" : "27", "SubInstance" : "grp_KeccakF1600_StatePer_fu_305", "Port" : "state"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_KeccakF1600_StatePer_fu_305", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_KeccakF1600_StatePer_fu_305", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1116.grp_keccak_absorb_1_fu_350.t_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1116.grp_keccak_absorb_1_fu_350.grp_KeccakF1600_StatePer_fu_305", "Parent" : "25", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1116.grp_keccak_absorb_1_fu_350.grp_KeccakF1600_StatePer_fu_305.KeccakF_RoundConstan_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1116.grp_keccak_squeezeblocks_fu_360", "Parent" : "21", "Child" : ["30"],
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
					{"ID" : "30", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1116.grp_keccak_squeezeblocks_fu_360.grp_KeccakF1600_StatePer_fu_120", "Parent" : "29", "Child" : ["31"],
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
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1116.grp_keccak_squeezeblocks_fu_360.grp_KeccakF1600_StatePer_fu_120.KeccakF_RoundConstan_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_gamma1m_fu_1127", "Parent" : "0", "Child" : ["33", "34", "35", "36", "39", "40", "42"],
		"CDFG" : "poly_uniform_gamma1m",
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
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_squeezeblocks_3_fu_210"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_squeezeblocks_3_fu_210"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_gamma1m1_fu_225"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_gamma1m1_fu_225"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_absorb_3_fu_240"}],
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_rej_gamma1m1_fu_225", "Port" : "a"}]},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_keccak_squeezeblocks_3_fu_210", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_keccak_squeezeblocks_3_fu_210", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_gamma1m_fu_1127.buf_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_gamma1m_fu_1127.state_s_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_gamma1m_fu_1127.output_assign_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_gamma1m_fu_1127.grp_keccak_squeezeblocks_3_fu_210", "Parent" : "32", "Child" : ["37"],
		"CDFG" : "keccak_squeezeblocks_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "241", "EstimateLatencyMax" : "1201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_145"}],
		"Port" : [
			{"Name" : "h", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_KeccakF1600_StatePer_fu_145", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_KeccakF1600_StatePer_fu_145", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_KeccakF1600_StatePer_fu_145", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_gamma1m_fu_1127.grp_keccak_squeezeblocks_3_fu_210.grp_KeccakF1600_StatePer_fu_145", "Parent" : "36", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_gamma1m_fu_1127.grp_keccak_squeezeblocks_3_fu_210.grp_KeccakF1600_StatePer_fu_145.KeccakF_RoundConstan_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_gamma1m_fu_1127.grp_rej_gamma1m1_fu_225", "Parent" : "32",
		"CDFG" : "rej_gamma1m1",
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
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buflen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_gamma1m_fu_1127.grp_keccak_absorb_3_fu_240", "Parent" : "32", "Child" : ["41"],
		"CDFG" : "keccak_absorb_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "589", "EstimateLatencyMax" : "589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_gamma1m_fu_1127.grp_keccak_absorb_3_fu_240.t_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_gamma1m_fu_1127.crypto_sign_urem_10ns_4ns_10_14_seq_1_U67", "Parent" : "32"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_fu_1141", "Parent" : "0", "Child" : ["44", "45", "46", "47", "50", "52", "53"],
		"CDFG" : "poly_uniform",
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
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_squeezeblocks_2_fu_215"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_squeezeblocks_2_fu_215"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_absorb_fu_230"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_236"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_uniform_fu_236"}],
		"Port" : [
			{"Name" : "a_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_rej_uniform_fu_236", "Port" : "a"}]},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_coeffs_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_keccak_squeezeblocks_2_fu_215", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_keccak_squeezeblocks_2_fu_215", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_fu_1141.buf_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_fu_1141.state_s_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_fu_1141.output_assign_U", "Parent" : "43"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_fu_1141.grp_keccak_squeezeblocks_2_fu_215", "Parent" : "43", "Child" : ["48"],
		"CDFG" : "keccak_squeezeblocks_2",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_145"}],
		"Port" : [
			{"Name" : "h", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_KeccakF1600_StatePer_fu_145", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_KeccakF1600_StatePer_fu_145", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_KeccakF1600_StatePer_fu_145", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_fu_1141.grp_keccak_squeezeblocks_2_fu_215.grp_KeccakF1600_StatePer_fu_145", "Parent" : "47", "Child" : ["49"],
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
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_fu_1141.grp_keccak_squeezeblocks_2_fu_215.grp_KeccakF1600_StatePer_fu_145.KeccakF_RoundConstan_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_fu_1141.grp_keccak_absorb_fu_230", "Parent" : "43", "Child" : ["51"],
		"CDFG" : "keccak_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "665", "EstimateLatencyMax" : "665",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_fu_1141.grp_keccak_absorb_fu_230.t_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_fu_1141.grp_rej_uniform_fu_236", "Parent" : "43",
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
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_uniform_fu_1141.crypto_sign_urem_9s_3ns_9_13_seq_1_U34", "Parent" : "43"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_2_fu_1156", "Parent" : "0", "Child" : ["55", "56"],
		"CDFG" : "keccak_absorb_2",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_308"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_KeccakF1600_StatePer_fu_308", "Port" : "state"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_KeccakF1600_StatePer_fu_308", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_KeccakF1600_StatePer_fu_308", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_2_fu_1156.t_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_2_fu_1156.grp_KeccakF1600_StatePer_fu_308", "Parent" : "54", "Child" : ["57"],
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
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_2_fu_1156.grp_KeccakF1600_StatePer_fu_308.KeccakF_RoundConstan_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_squeezeblocks_fu_1168", "Parent" : "0", "Child" : ["59"],
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
					{"ID" : "59", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakF1600_StatePer_fu_120", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_squeezeblocks_fu_1168.grp_KeccakF1600_StatePer_fu_120", "Parent" : "58", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_squeezeblocks_fu_1168.grp_KeccakF1600_StatePer_fu_120.KeccakF_RoundConstan_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_invntt_frominvmont_1_fu_1178", "Parent" : "0", "Child" : ["62"],
		"CDFG" : "invntt_frominvmont_1",
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
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_invntt_frominvmont_1_fu_1178.zetas_inv_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_invntt_frominvmont_fu_1193", "Parent" : "0", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_invntt_frominvmont_fu_1193.zetas_inv_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pack_sig_fu_1206", "Parent" : "0",
		"CDFG" : "pack_sig",
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
			{"Name" : "sig", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "z_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyvecl_pointwise_a_fu_1215", "Parent" : "0", "Child" : ["67"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3075", "EstimateLatencyMax" : "3075",
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
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_polyvecl_pointwise_a_fu_1215.t_coeffs_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ntt_fu_1226", "Parent" : "0", "Child" : ["69"],
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
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ntt_fu_1226.zetas_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ntt_1_fu_1240", "Parent" : "0", "Child" : ["71"],
		"CDFG" : "ntt_1",
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
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ntt_1_fu_1240.zetas_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unpack_sk_fu_1254", "Parent" : "0",
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2486", "EstimateLatencyMax" : "2486",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ntt_2_fu_1268", "Parent" : "0", "Child" : ["74"],
		"CDFG" : "ntt_2",
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
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ntt_2_fu_1268.zetas_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_pointwise_invmo_fu_1279", "Parent" : "0",
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
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_3131_fu_1294", "Parent" : "0", "Child" : ["77"],
		"CDFG" : "keccak_absorb_3131",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "649", "EstimateLatencyMax" : "649",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_3131_fu_1294.t_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyveck_chknorm_fu_1300", "Parent" : "0",
		"CDFG" : "polyveck_chknorm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "2321",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyveck_csubq_fu_1308", "Parent" : "0",
		"CDFG" : "polyveck_csubq",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2311", "EstimateLatencyMax" : "2311",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign {
		sm {Type IO LastRead 6 FirstWrite -1}
		smlen {Type O LastRead -1 FirstWrite 45}
		m {Type I LastRead 2 FirstWrite -1}
		mlen {Type I LastRead 1 FirstWrite -1}
		sk {Type I LastRead 11 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 41 FirstWrite 5}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}}
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
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	poly_uniform_gamma1m {
		a_coeffs {Type O LastRead -1 FirstWrite 4}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	keccak_squeezeblocks_3 {
		h {Type O LastRead -1 FirstWrite 5}
		h_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	rej_gamma1m1 {
		a {Type O LastRead -1 FirstWrite 4}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 4 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}
	keccak_absorb_3 {
		s {Type IO LastRead 6 FirstWrite 1}
		m {Type I LastRead 3 FirstWrite -1}}
	poly_uniform {
		a_coeffs {Type O LastRead -1 FirstWrite 3}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs_offset1 {Type I LastRead 0 FirstWrite -1}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	keccak_squeezeblocks_2 {
		h {Type O LastRead -1 FirstWrite 5}
		h_offset {Type I LastRead 0 FirstWrite -1}
		nblocks {Type I LastRead 0 FirstWrite -1}
		s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	keccak_absorb {
		s {Type IO LastRead 6 FirstWrite 1}
		m {Type I LastRead 3 FirstWrite -1}}
	rej_uniform {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}
	keccak_absorb_2 {
		s {Type IO LastRead 13 FirstWrite 1}
		m {Type I LastRead 5 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
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
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	invntt_frominvmont_1 {
		p {Type IO LastRead 6 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 10 FirstWrite 6}}
	invntt_frominvmont {
		p {Type IO LastRead 6 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 10 FirstWrite 6}}
	pack_sig {
		sig {Type IO LastRead 6 FirstWrite 3}
		z_vec_coeffs {Type I LastRead 4 FirstWrite -1}
		h_vec_coeffs {Type I LastRead 3 FirstWrite -1}
		c_coeffs {Type I LastRead 5 FirstWrite -1}}
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 3 FirstWrite 4}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		montgomery_count {Type IO LastRead 6 FirstWrite 5}}
	ntt {
		p {Type IO LastRead 10 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 11 FirstWrite 11}}
	ntt_1 {
		p {Type IO LastRead 10 FirstWrite 9}
		p_offset {Type I LastRead 0 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 11 FirstWrite 11}}
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 6}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 7}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	ntt_2 {
		p {Type IO LastRead 10 FirstWrite 9}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 11 FirstWrite 11}}
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		c_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 6 FirstWrite 6}}
	keccak_absorb_3131 {
		s {Type IO LastRead 6 FirstWrite 1}
		m {Type I LastRead 3 FirstWrite -1}}
	polyveck_chknorm {
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}}
	polyveck_csubq {
		v_vec_coeffs {Type IO LastRead 2 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sm { ap_memory {  { sm_address0 mem_address 1 13 }  { sm_ce0 mem_ce 1 1 }  { sm_we0 mem_we 1 1 }  { sm_d0 mem_din 1 8 }  { sm_q0 mem_dout 0 8 } } }
	smlen { ap_memory {  { smlen_address0 mem_address 1 1 }  { smlen_ce0 mem_ce 1 1 }  { smlen_we0 mem_we 1 1 }  { smlen_d0 mem_din 1 64 } } }
	m { ap_memory {  { m_address0 mem_address 1 12 }  { m_ce0 mem_ce 1 1 }  { m_q0 mem_dout 0 8 } } }
	mlen { ap_none {  { mlen in_data 0 64 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
	keccak_count { ap_ovld {  { keccak_count_i in_data 0 32 }  { keccak_count_o out_data 1 32 }  { keccak_count_o_ap_vld out_vld 1 1 } } }
	ntt_count { ap_ovld {  { ntt_count_i in_data 0 32 }  { ntt_count_o out_data 1 32 }  { ntt_count_o_ap_vld out_vld 1 1 } } }
	montgomery_count { ap_ovld {  { montgomery_count_i in_data 0 32 }  { montgomery_count_o out_data 1 32 }  { montgomery_count_o_ap_vld out_vld 1 1 } } }
	invntt_count { ap_ovld {  { invntt_count_i in_data 0 32 }  { invntt_count_o out_data 1 32 }  { invntt_count_o_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
