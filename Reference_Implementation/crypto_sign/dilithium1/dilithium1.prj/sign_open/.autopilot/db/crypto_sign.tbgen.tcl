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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "35", "46", "49", "51", "53", "55", "56", "58", "60", "62", "63", "65", "66", "67", "70", "71", "72"],
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
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_challenge_fu_1746"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_expand_mat_fu_1757"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake256_squeezebloc_fu_1767"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake256_squeezebloc_fu_1767"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_1782"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_1782"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_1782"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_invntt_frominvmont_1_fu_1791"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_invntt_frominvmont_1_fu_1791"},
			{"State" : "ap_ST_fsm_state135", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_invntt_frominvmont_1_fu_1791"},
			{"State" : "ap_ST_fsm_state120", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_invntt_frominvmont_fu_1806"},
			{"State" : "ap_ST_fsm_state146", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pack_sig_fu_1819"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyvecl_pointwise_a_fu_1828"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ntt_fu_1839"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ntt_fu_1839"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ntt_1_fu_1853"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ntt_1_fu_1853"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_unpack_sk_fu_1867"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ntt_2_fu_1881"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_gamma1m1_fu_1892"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rej_gamma1m1_fu_1892"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_pointwise_invmo_fu_1907"},
			{"State" : "ap_ST_fsm_state133", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_pointwise_invmo_fu_1907"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake256_stream_init_fu_1922"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyveck_chknorm_fu_1930"},
			{"State" : "ap_ST_fsm_state138", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyveck_chknorm_fu_1930"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyveck_csubq_fu_1938"},
			{"State" : "ap_ST_fsm_state136", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyveck_csubq_fu_1938"},
			{"State" : "ap_ST_fsm_state142", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyveck_csubq_fu_1938"}],
		"Port" : [
			{"Name" : "sm", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_pack_sig_fu_1819", "Port" : "sig"}]},
			{"Name" : "smlen", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_unpack_sk_fu_1867", "Port" : "sk"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_KeccakF1600_StatePer_fu_1782", "Port" : "keccak_count"},
					{"ID" : "46", "SubInstance" : "grp_shake256_squeezebloc_fu_1767", "Port" : "keccak_count"},
					{"ID" : "25", "SubInstance" : "grp_challenge_fu_1746", "Port" : "keccak_count"},
					{"ID" : "35", "SubInstance" : "grp_expand_mat_fu_1757", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_KeccakF1600_StatePer_fu_1782", "Port" : "KeccakF_RoundConstan"},
					{"ID" : "46", "SubInstance" : "grp_shake256_squeezebloc_fu_1767", "Port" : "KeccakF_RoundConstan"},
					{"ID" : "25", "SubInstance" : "grp_challenge_fu_1746", "Port" : "KeccakF_RoundConstan"},
					{"ID" : "35", "SubInstance" : "grp_expand_mat_fu_1757", "Port" : "KeccakF_RoundConstan"}]},
			{"Name" : "ntt_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_ntt_2_fu_1881", "Port" : "ntt_count"},
					{"ID" : "60", "SubInstance" : "grp_ntt_1_fu_1853", "Port" : "ntt_count"},
					{"ID" : "58", "SubInstance" : "grp_ntt_fu_1839", "Port" : "ntt_count"}]},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_ntt_2_fu_1881", "Port" : "zetas"},
					{"ID" : "60", "SubInstance" : "grp_ntt_1_fu_1853", "Port" : "zetas"},
					{"ID" : "58", "SubInstance" : "grp_ntt_fu_1839", "Port" : "zetas"}]},
			{"Name" : "montgomery_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_invntt_frominvmont_fu_1806", "Port" : "montgomery_count"},
					{"ID" : "66", "SubInstance" : "grp_poly_pointwise_invmo_fu_1907", "Port" : "montgomery_count"},
					{"ID" : "63", "SubInstance" : "grp_ntt_2_fu_1881", "Port" : "montgomery_count"},
					{"ID" : "60", "SubInstance" : "grp_ntt_1_fu_1853", "Port" : "montgomery_count"},
					{"ID" : "56", "SubInstance" : "grp_polyvecl_pointwise_a_fu_1828", "Port" : "montgomery_count"},
					{"ID" : "51", "SubInstance" : "grp_invntt_frominvmont_1_fu_1791", "Port" : "montgomery_count"},
					{"ID" : "58", "SubInstance" : "grp_ntt_fu_1839", "Port" : "montgomery_count"}]},
			{"Name" : "invntt_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_invntt_frominvmont_fu_1806", "Port" : "invntt_count"},
					{"ID" : "51", "SubInstance" : "grp_invntt_frominvmont_1_fu_1791", "Port" : "invntt_count"}]},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_invntt_frominvmont_fu_1806", "Port" : "zetas_inv"},
					{"ID" : "51", "SubInstance" : "grp_invntt_frominvmont_1_fu_1791", "Port" : "zetas_inv"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_12_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_i7_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_i_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.seedbuf_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_coeffs_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chat_coeffs_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s1_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yhat_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s2_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w1_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w0_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cs2_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ct0_vec_coeffs_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1746", "Parent" : "0", "Child" : ["26", "27", "28", "29", "30", "33"],
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
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake256_squeezebloc_1_fu_635"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_shake256_squeezebloc_1_fu_635"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_645"}],
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mu", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakF1600_StatePer_fu_645", "Port" : "keccak_count"},
					{"ID" : "30", "SubInstance" : "grp_shake256_squeezebloc_1_fu_635", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_KeccakF1600_StatePer_fu_645", "Port" : "KeccakF_RoundConstan"},
					{"ID" : "30", "SubInstance" : "grp_shake256_squeezebloc_1_fu_635", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1746.t_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1746.inbuf_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1746.outbuf_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1746.state_s_U", "Parent" : "25"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1746.grp_shake256_squeezebloc_1_fu_635", "Parent" : "25", "Child" : ["31"],
		"CDFG" : "shake256_squeezebloc_1",
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
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakF1600_StatePer_fu_124", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakF1600_StatePer_fu_124", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_KeccakF1600_StatePer_fu_124", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1746.grp_shake256_squeezebloc_1_fu_635.grp_KeccakF1600_StatePer_fu_124", "Parent" : "30", "Child" : ["32"],
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
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1746.grp_shake256_squeezebloc_1_fu_635.grp_KeccakF1600_StatePer_fu_124.KeccakF_RoundConstan_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1746.grp_KeccakF1600_StatePer_fu_645", "Parent" : "25", "Child" : ["34"],
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
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_challenge_fu_1746.grp_KeccakF1600_StatePer_fu_645.KeccakF_RoundConstan_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_expand_mat_fu_1757", "Parent" : "0", "Child" : ["36", "37", "38", "41", "44", "45"],
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
					{"ID" : "44", "SubInstance" : "grp_rej_uniform_fu_198", "Port" : "a"}]},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_shake128_stream_init_fu_190", "Port" : "seed"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_shake128_squeezebloc_fu_175", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expand_mat_fu_1757.state_s_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expand_mat_fu_1757.empty_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expand_mat_fu_1757.grp_shake128_squeezebloc_fu_175", "Parent" : "35", "Child" : ["39"],
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
					{"ID" : "39", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expand_mat_fu_1757.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_149", "Parent" : "38", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_expand_mat_fu_1757.grp_shake128_squeezebloc_fu_175.grp_KeccakF1600_StatePer_fu_149.KeccakF_RoundConstan_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expand_mat_fu_1757.grp_shake128_stream_init_fu_190", "Parent" : "35", "Child" : ["42", "43"],
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
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expand_mat_fu_1757.grp_shake128_stream_init_fu_190.t_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_expand_mat_fu_1757.grp_shake128_stream_init_fu_190.buf_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expand_mat_fu_1757.grp_rej_uniform_fu_198", "Parent" : "35",
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
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expand_mat_fu_1757.crypto_sign_urem_9s_3ns_9_13_seq_1_U26", "Parent" : "35"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake256_squeezebloc_fu_1767", "Parent" : "0", "Child" : ["47"],
		"CDFG" : "shake256_squeezebloc",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "state"}]},
			{"Name" : "keccak_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "keccak_count"}]},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_KeccakF1600_StatePer_fu_149", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake256_squeezebloc_fu_1767.grp_KeccakF1600_StatePer_fu_149", "Parent" : "46", "Child" : ["48"],
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake256_squeezebloc_fu_1767.grp_KeccakF1600_StatePer_fu_149.KeccakF_RoundConstan_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_1782", "Parent" : "0", "Child" : ["50"],
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
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_1782.KeccakF_RoundConstan_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_invntt_frominvmont_1_fu_1791", "Parent" : "0", "Child" : ["52"],
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
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_invntt_frominvmont_1_fu_1791.zetas_inv_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_invntt_frominvmont_fu_1806", "Parent" : "0", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_invntt_frominvmont_fu_1806.zetas_inv_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pack_sig_fu_1819", "Parent" : "0",
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
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyvecl_pointwise_a_fu_1828", "Parent" : "0", "Child" : ["57"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2820", "EstimateLatencyMax" : "2820",
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
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_polyvecl_pointwise_a_fu_1828.t_coeffs_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ntt_fu_1839", "Parent" : "0", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ntt_fu_1839.zetas_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ntt_1_fu_1853", "Parent" : "0", "Child" : ["61"],
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
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ntt_1_fu_1853.zetas_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unpack_sk_fu_1867", "Parent" : "0",
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1649", "EstimateLatencyMax" : "1649",
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
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ntt_2_fu_1881", "Parent" : "0", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ntt_2_fu_1881.zetas_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rej_gamma1m1_fu_1892", "Parent" : "0",
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
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_pointwise_invmo_fu_1907", "Parent" : "0",
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
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake256_stream_init_fu_1922", "Parent" : "0", "Child" : ["68", "69"],
		"CDFG" : "shake256_stream_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "686", "EstimateLatencyMax" : "686",
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
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake256_stream_init_fu_1922.t_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake256_stream_init_fu_1922.buf_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyveck_chknorm_fu_1930", "Parent" : "0",
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
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyveck_csubq_fu_1938", "Parent" : "0",
		"CDFG" : "polyveck_csubq",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1543", "EstimateLatencyMax" : "1543",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_10ns_4ns_10_14_seq_1_U98", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign {
		sm {Type IO LastRead 8 FirstWrite 3}
		smlen {Type O LastRead -1 FirstWrite 58}
		m {Type I LastRead 2 FirstWrite -1}
		mlen {Type I LastRead 1 FirstWrite -1}
		sk {Type I LastRead 13 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 52 FirstWrite 5}
		invntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas_inv {Type I LastRead -1 FirstWrite -1}}
	challenge {
		c_coeffs {Type IO LastRead 17 FirstWrite 12}
		mu {Type I LastRead 1 FirstWrite -1}
		w1_vec_coeffs {Type I LastRead 3 FirstWrite -1}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	shake256_squeezebloc_1 {
		output_r {Type O LastRead -1 FirstWrite 5}
		state_s {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 14}
		keccak_count {Type IO LastRead 13 FirstWrite 13}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
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
		buflen {Type I LastRead 0 FirstWrite -1}}
	shake256_squeezebloc {
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
		sig {Type IO LastRead 7 FirstWrite 3}
		z_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		h_vec_coeffs {Type I LastRead 4 FirstWrite -1}
		c_coeffs {Type I LastRead 6 FirstWrite -1}}
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
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 5}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 7}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 10}
		sk {Type I LastRead 13 FirstWrite -1}}
	ntt_2 {
		p {Type IO LastRead 10 FirstWrite 9}
		ntt_count {Type IO LastRead 0 FirstWrite 0}
		zetas {Type I LastRead -1 FirstWrite -1}
		montgomery_count {Type IO LastRead 11 FirstWrite 11}}
	rej_gamma1m1 {
		a {Type O LastRead -1 FirstWrite 3}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 4 FirstWrite -1}
		buflen {Type I LastRead 0 FirstWrite -1}}
	poly_pointwise_invmo {
		c_coeffs {Type O LastRead -1 FirstWrite 6}
		c_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs {Type I LastRead 1 FirstWrite -1}
		b_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		montgomery_count {Type IO LastRead 6 FirstWrite 6}}
	shake256_stream_init {
		state_s {Type IO LastRead 7 FirstWrite 2}
		seed {Type I LastRead 1 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}}
	polyveck_chknorm {
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}}
	polyveck_csubq {
		v_vec_coeffs {Type IO LastRead 2 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
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
