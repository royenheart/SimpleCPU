//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Wed Apr 27 12:29:01 2022
//Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
//Command     : generate_target SimpleCPU01Design.bd
//Design      : SimpleCPU01Design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "SimpleCPU01Design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SimpleCPU01Design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "SimpleCPU01Design.hwdef" *) 
module SimpleCPU01Design
   (a_0,
    spo_0);
  input [9:0]a_0;
  output [7:0]spo_0;

  wire [9:0]a_0_1;
  wire [7:0]dist_mem_gen_0_spo;

  assign a_0_1 = a_0[9:0];
  assign spo_0[7:0] = dist_mem_gen_0_spo;
  SimpleCPU01Design_dist_mem_gen_0_0 dist_mem_gen_0
       (.a(a_0_1),
        .spo(dist_mem_gen_0_spo));
endmodule
