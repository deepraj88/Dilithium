set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
set moduleName pack_sk
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
set C_modelName {pack_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ sk int 8 regular {array 2800 { 0 0 } 0 1 }  }
	{ rho int 8 regular {array 96 { 1 3 } 1 1 }  }
	{ tr int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ s1_vec_coeffs int 23 regular {array 768 { 1 1 } 1 1 }  }
	{ s2_vec_coeffs int 23 regular {array 1024 { 1 1 } 1 1 }  }
	{ t0_vec_coeffs int 24 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rho", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "s2_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "t0_vec_coeffs", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_address0 sc_out sc_lv 12 signal 0 } 
	{ sk_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_we0 sc_out sc_logic 1 signal 0 } 
	{ sk_d0 sc_out sc_lv 8 signal 0 } 
	{ sk_address1 sc_out sc_lv 12 signal 0 } 
	{ sk_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_we1 sc_out sc_logic 1 signal 0 } 
	{ sk_d1 sc_out sc_lv 8 signal 0 } 
	{ rho_address0 sc_out sc_lv 7 signal 1 } 
	{ rho_ce0 sc_out sc_logic 1 signal 1 } 
	{ rho_q0 sc_in sc_lv 8 signal 1 } 
	{ tr_address0 sc_out sc_lv 6 signal 2 } 
	{ tr_ce0 sc_out sc_logic 1 signal 2 } 
	{ tr_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_vec_coeffs_address0 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q0 sc_in sc_lv 23 signal 3 } 
	{ s1_vec_coeffs_address1 sc_out sc_lv 10 signal 3 } 
	{ s1_vec_coeffs_ce1 sc_out sc_logic 1 signal 3 } 
	{ s1_vec_coeffs_q1 sc_in sc_lv 23 signal 3 } 
	{ s2_vec_coeffs_address0 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce0 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q0 sc_in sc_lv 23 signal 4 } 
	{ s2_vec_coeffs_address1 sc_out sc_lv 10 signal 4 } 
	{ s2_vec_coeffs_ce1 sc_out sc_logic 1 signal 4 } 
	{ s2_vec_coeffs_q1 sc_in sc_lv 23 signal 4 } 
	{ t0_vec_coeffs_address0 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce0 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q0 sc_in sc_lv 24 signal 5 } 
	{ t0_vec_coeffs_address1 sc_out sc_lv 10 signal 5 } 
	{ t0_vec_coeffs_ce1 sc_out sc_logic 1 signal 5 } 
	{ t0_vec_coeffs_q1 sc_in sc_lv 24 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "rho_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rho", "role": "address0" }} , 
 	{ "name": "rho_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rho", "role": "ce0" }} , 
 	{ "name": "rho_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rho", "role": "q0" }} , 
 	{ "name": "tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tr", "role": "address0" }} , 
 	{ "name": "tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tr", "role": "ce0" }} , 
 	{ "name": "tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tr", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s1_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s1_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s1_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s1_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s1_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s1_vec_coeffs", "role": "q1" }} , 
 	{ "name": "s2_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address0" }} , 
 	{ "name": "s2_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "s2_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q0" }} , 
 	{ "name": "s2_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "address1" }} , 
 	{ "name": "s2_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "s2_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "s2_vec_coeffs", "role": "q1" }} , 
 	{ "name": "t0_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address0" }} , 
 	{ "name": "t0_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "t0_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q0" }} , 
 	{ "name": "t0_vec_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "address1" }} , 
 	{ "name": "t0_vec_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "ce1" }} , 
 	{ "name": "t0_vec_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "t0_vec_coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pack_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3324", "EstimateLatencyMax" : "3324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rho", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s2_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t0_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_sk {
		sk {Type O LastRead -1 FirstWrite 2}
		rho {Type I LastRead 2 FirstWrite -1}
		tr {Type I LastRead 3 FirstWrite -1}
		s1_vec_coeffs {Type I LastRead 6 FirstWrite -1}
		s2_vec_coeffs {Type I LastRead 7 FirstWrite -1}
		t0_vec_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3324", "Max" : "3324"}
	, {"Name" : "Interval", "Min" : "3324", "Max" : "3324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 } } }
	rho { ap_memory {  { rho_address0 mem_address 1 7 }  { rho_ce0 mem_ce 1 1 }  { rho_q0 mem_dout 0 8 } } }
	tr { ap_memory {  { tr_address0 mem_address 1 6 }  { tr_ce0 mem_ce 1 1 }  { tr_q0 mem_dout 0 8 } } }
	s1_vec_coeffs { ap_memory {  { s1_vec_coeffs_address0 mem_address 1 10 }  { s1_vec_coeffs_ce0 mem_ce 1 1 }  { s1_vec_coeffs_q0 mem_dout 0 23 }  { s1_vec_coeffs_address1 MemPortADDR2 1 10 }  { s1_vec_coeffs_ce1 MemPortCE2 1 1 }  { s1_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	s2_vec_coeffs { ap_memory {  { s2_vec_coeffs_address0 mem_address 1 10 }  { s2_vec_coeffs_ce0 mem_ce 1 1 }  { s2_vec_coeffs_q0 mem_dout 0 23 }  { s2_vec_coeffs_address1 MemPortADDR2 1 10 }  { s2_vec_coeffs_ce1 MemPortCE2 1 1 }  { s2_vec_coeffs_q1 MemPortDOUT2 0 23 } } }
	t0_vec_coeffs { ap_memory {  { t0_vec_coeffs_address0 mem_address 1 10 }  { t0_vec_coeffs_ce0 mem_ce 1 1 }  { t0_vec_coeffs_q0 mem_dout 0 24 }  { t0_vec_coeffs_address1 MemPortADDR2 1 10 }  { t0_vec_coeffs_ce1 MemPortCE2 1 1 }  { t0_vec_coeffs_q1 MemPortDOUT2 0 24 } } }
}
