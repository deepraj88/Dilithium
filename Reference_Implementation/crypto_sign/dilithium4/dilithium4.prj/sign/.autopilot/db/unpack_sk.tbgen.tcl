set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3955", "EstimateLatencyMax" : "3955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_376"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_387"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_376", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_387", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_376", "Port" : "a"},
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_387", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_376", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_387", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3955", "Max" : "3955"}
	, {"Name" : "Interval", "Min" : "3955", "Max" : "3955"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3955", "EstimateLatencyMax" : "3955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_380"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_391"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "a"},
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_380", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_391", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3955", "Max" : "3955"}
	, {"Name" : "Interval", "Min" : "3955", "Max" : "3955"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3955", "EstimateLatencyMax" : "3955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_380"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_391"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "a"},
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_380", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_391", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3955", "Max" : "3955"}
	, {"Name" : "Interval", "Min" : "3955", "Max" : "3955"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3955", "EstimateLatencyMax" : "3955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_380"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_391"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "a"},
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_380", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_391", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3955", "Max" : "3955"}
	, {"Name" : "Interval", "Min" : "3955", "Max" : "3955"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3955", "EstimateLatencyMax" : "3955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_380"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_391"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "a"},
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_380", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_391", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3955", "Max" : "3955"}
	, {"Name" : "Interval", "Min" : "3955", "Max" : "3955"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3955", "EstimateLatencyMax" : "3955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_380"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_391"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "a"},
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_380", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_391", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3955", "Max" : "3955"}
	, {"Name" : "Interval", "Min" : "3955", "Max" : "3955"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3955", "EstimateLatencyMax" : "3955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_380"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_391"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "a"},
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_380", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_391", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3955", "Max" : "3955"}
	, {"Name" : "Interval", "Min" : "3955", "Max" : "3955"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3955", "EstimateLatencyMax" : "3955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_380"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_391"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "a"},
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_380", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_391", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3955", "Max" : "3955"}
	, {"Name" : "Interval", "Min" : "3955", "Max" : "3955"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3955", "EstimateLatencyMax" : "3955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_380"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_391"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "a"},
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_380", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_391", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3955", "Max" : "3955"}
	, {"Name" : "Interval", "Min" : "3955", "Max" : "3955"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3955", "EstimateLatencyMax" : "3955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_380"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_391"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_380", "Port" : "a"},
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_391", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_380", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_391", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3955", "Max" : "3955"}
	, {"Name" : "Interval", "Min" : "3955", "Max" : "3955"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3236", "EstimateLatencyMax" : "3236",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_394"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_405"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "a"},
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_394", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_405", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3236", "Max" : "3236"}
	, {"Name" : "Interval", "Min" : "3236", "Max" : "3236"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3236", "EstimateLatencyMax" : "3236",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_394"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_405"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "a"},
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_394", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_405", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3236", "Max" : "3236"}
	, {"Name" : "Interval", "Min" : "3236", "Max" : "3236"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3236", "EstimateLatencyMax" : "3236",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_394"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_405"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "a"},
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_394", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_405", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3236", "Max" : "3236"}
	, {"Name" : "Interval", "Min" : "3236", "Max" : "3236"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3236", "EstimateLatencyMax" : "3236",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_394"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_405"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "a"},
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_394", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_405", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3236", "Max" : "3236"}
	, {"Name" : "Interval", "Min" : "3236", "Max" : "3236"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3236", "EstimateLatencyMax" : "3236",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_394"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_405"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "a"},
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_394", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_405", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3236", "Max" : "3236"}
	, {"Name" : "Interval", "Min" : "3236", "Max" : "3236"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3236", "EstimateLatencyMax" : "3236",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_394"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_405"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "a"},
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_394", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_405", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3236", "Max" : "3236"}
	, {"Name" : "Interval", "Min" : "3236", "Max" : "3236"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3236", "EstimateLatencyMax" : "3236",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_394"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_405"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "a"},
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_394", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_405", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3236", "Max" : "3236"}
	, {"Name" : "Interval", "Min" : "3236", "Max" : "3236"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
set moduleName unpack_sk
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
set C_modelName {unpack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ rho int 8 regular {array 208 { 0 3 } 0 1 }  }
	{ s1_vec_coeffs int 32 regular {array 1280 { 0 0 } 0 1 }  }
	{ s2_vec_coeffs int 32 regular {array 1536 { 0 0 } 0 1 }  }
	{ t0_vec_coeffs int 32 regular {array 1536 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 3856 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rho_address0 sc_out sc_lv 8 signal 0 } 
	{ rho_ce0 sc_out sc_logic 1 signal 0 } 
	{ rho_we0 sc_out sc_logic 1 signal 0 } 
	{ rho_d0 sc_out sc_lv 8 signal 0 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d0 sc_out sc_lv 32 signal 1 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 11 signal 1 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ s1_vec_coeffs_d1 sc_out sc_lv 32 signal 1 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we0 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d0 sc_out sc_lv 32 signal 2 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 11 signal 2 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_we1 sc_out sc_logic 1 signal 2 } 
	{ s2_vec_coeffs_d1 sc_out sc_lv 32 signal 2 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 11 signal 3 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_we0 sc_out sc_logic 1 signal 3 } 
	{ t0_vec_coeffs_d0 sc_out sc_lv 32 signal 3 } 
	{ sk_address0 sc_out sc_lv 12 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 12 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "we0" }} , 
 	{ "name": "rho_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s1_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s1_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "d1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we0" }} , 
 	{ "name": "s2_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "we1" }} , 
 	{ "name": "s2_vec_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "d1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "we0" }} , 
 	{ "name": "t0_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unpack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3236", "EstimateLatencyMax" : "3236",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_1_fu_394"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_polyeta_unpack_fu_405"}],
		"Port" : [
			{"Name" : "rho", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "r_coeffs"}]},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "r_coeffs"}]},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_polyeta_unpack_1_fu_394", "Port" : "a"},
					{"ID" : "2", "SubInstance" : "grp_polyeta_unpack_fu_405", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_1_fu_394", "Parent" : "0",
		"CDFG" : "polyeta_unpack_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_polyeta_unpack_fu_405", "Parent" : "0",
		"CDFG" : "polyeta_unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	unpack_sk {
		rho {Type O LastRead -1 FirstWrite 2}
		s1_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		s2_vec_coeffs {Type O LastRead -1 FirstWrite 2}
		t0_vec_coeffs {Type O LastRead -1 FirstWrite 8}
		sk {Type I LastRead 11 FirstWrite -1}}
	polyeta_unpack_1 {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}
	polyeta_unpack {
		r_coeffs {Type O LastRead -1 FirstWrite 2}
		r_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3236", "Max" : "3236"}
	, {"Name" : "Interval", "Min" : "3236", "Max" : "3236"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rho { ap_memory {  { rho_address0 mem_address 1 8 }  { rho_ce0 mem_ce 1 1 }  { rho_we0 mem_we 1 1 }  { rho_d0 mem_din 1 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 11 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_we0 mem_we 1 1 }  { s1_vec_coeffs_d0 mem_din 1 32 }  { s1_vec_coeffs_address1 MemPortADDR2 1 11 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_we1 MemPortWE2 1 1 }  { s1_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 11 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_we0 mem_we 1 1 }  { s2_vec_coeffs_d0 mem_din 1 32 }  { s2_vec_coeffs_address1 MemPortADDR2 1 11 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_we1 MemPortWE2 1 1 }  { s2_vec_coeffs_d1 MemPortDIN2 1 32 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 11 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_we0 mem_we 1 1 }  { t0_vec_coeffs_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
}
