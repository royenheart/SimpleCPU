// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Mar 21 22:18:10 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Git/SimpleCPU01/SimpleCPU01Project/SimpleCPU01Project.gen/sources_1/bd/SimpleCPU01_Design/ip/SimpleCPU01_Design_InstrMem_0_0/SimpleCPU01_Design_InstrMem_0_0_stub.v
// Design      : SimpleCPU01_Design_InstrMem_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "InstrMem,Vivado 2021.2" *)
module SimpleCPU01_Design_InstrMem_0_0(A, RD)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],RD[31:0]" */;
  input [31:0]A;
  output [31:0]RD;
endmodule
