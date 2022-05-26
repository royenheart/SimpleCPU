//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Thu May 26 18:53:48 2022
//Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
//Command     : generate_target MemCacheData_wrapper.bd
//Design      : MemCacheData_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MemCacheData_wrapper
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

  wire [8:0]a_0;
  wire clk_0;
  wire [31:0]d_0;
  wire [31:0]spo_0;
  wire we_0;

  MemCacheData MemCacheData_i
       (.a_0(a_0),
        .clk_0(clk_0),
        .d_0(d_0),
        .spo_0(spo_0),
        .we_0(we_0));
endmodule
