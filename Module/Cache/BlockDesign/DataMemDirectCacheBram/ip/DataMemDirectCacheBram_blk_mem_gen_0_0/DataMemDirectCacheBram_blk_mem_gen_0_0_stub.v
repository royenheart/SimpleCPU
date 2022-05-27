// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri May 27 21:38:43 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Git/SimpleCPU/Module/Cache/BlockDesign/DataMemDirectCacheBram/ip/DataMemDirectCacheBram_blk_mem_gen_0_0/DataMemDirectCacheBram_blk_mem_gen_0_0_stub.v
// Design      : DataMemDirectCacheBram_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *)
module DataMemDirectCacheBram_blk_mem_gen_0_0(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[3:0],dina[72:0],douta[72:0],clkb,enb,web[0:0],addrb[3:0],dinb[72:0],doutb[72:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [3:0]addra;
  input [72:0]dina;
  output [72:0]douta;
  input clkb;
  input enb;
  input [0:0]web;
  input [3:0]addrb;
  input [72:0]dinb;
  output [72:0]doutb;
endmodule
