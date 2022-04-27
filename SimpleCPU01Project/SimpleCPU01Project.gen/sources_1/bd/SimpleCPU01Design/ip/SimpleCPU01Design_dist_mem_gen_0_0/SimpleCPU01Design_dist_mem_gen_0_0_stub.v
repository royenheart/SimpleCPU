// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Mar 23 18:39:54 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top SimpleCPU01Design_dist_mem_gen_0_0 -prefix
//               SimpleCPU01Design_dist_mem_gen_0_0_ SimpleCPU01Design_dist_mem_gen_0_0_stub.v
// Design      : SimpleCPU01Design_dist_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.2" *)
module SimpleCPU01Design_dist_mem_gen_0_0(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[9:0],spo[7:0]" */;
  input [9:0]a;
  output [7:0]spo;
endmodule
