//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Mon Mar 21 22:17:18 2022
//Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
//Command     : generate_target SimpleCPU01_Design.bd
//Design      : SimpleCPU01_Design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "SimpleCPU01_Design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SimpleCPU01_Design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "SimpleCPU01_Design.hwdef" *) 
module SimpleCPU01_Design
   (A_0,
    RD_0);
  input [31:0]A_0;
  output [31:0]RD_0;

  wire [31:0]A_0_1;
  wire [31:0]InstrMem_0_RD;

  assign A_0_1 = A_0[31:0];
  assign RD_0[31:0] = InstrMem_0_RD;
  SimpleCPU01_Design_InstrMem_0_0 InstrMem_0
       (.A(A_0_1),
        .RD(InstrMem_0_RD));
endmodule
