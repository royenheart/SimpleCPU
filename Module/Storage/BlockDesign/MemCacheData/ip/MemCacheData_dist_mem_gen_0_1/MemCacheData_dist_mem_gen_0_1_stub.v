// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu May 26 18:54:45 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top MemCacheData_dist_mem_gen_0_1 -prefix
//               MemCacheData_dist_mem_gen_0_1_ MemCacheData_dist_mem_gen_0_1_stub.v
// Design      : MemCacheData_dist_mem_gen_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.2" *)
module MemCacheData_dist_mem_gen_0_1(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[8:0],d[31:0],clk,we,spo[31:0]" */;
  input [8:0]a;
  input [31:0]d;
  input clk;
  input we;
  output [31:0]spo;
endmodule
