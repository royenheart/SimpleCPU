//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Thu May 26 19:06:27 2022
//Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
//Command     : generate_target MemCacheInstr.bd
//Design      : MemCacheInstr
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MemCacheInstr,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MemCacheInstr,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "MemCacheInstr.hwdef" *) 
module MemCacheInstr
   (a_0,
    clk_0,
    d_0,
    spo_0,
    we_0);
  input [8:0]a_0;
  input clk_0;
  input [31:0]d_0;
  output [31:0]spo_0;
  input we_0;

  wire [8:0]a_0_1;
  wire clk_0_1;
  wire [31:0]d_0_1;
  wire [31:0]dist_mem_gen_0_spo;
  wire we_0_1;

  assign a_0_1 = a_0[8:0];
  assign clk_0_1 = clk_0;
  assign d_0_1 = d_0[31:0];
  assign spo_0[31:0] = dist_mem_gen_0_spo;
  assign we_0_1 = we_0;
  MemCacheInstr_dist_mem_gen_0_0 dist_mem_gen_0
       (.a(a_0_1),
        .clk(clk_0_1),
        .d(d_0_1),
        .spo(dist_mem_gen_0_spo),
        .we(we_0_1));
endmodule
