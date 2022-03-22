//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Tue Mar 22 15:05:27 2022
//Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
//Command     : generate_target SimpleCPU01Design_wrapper.bd
//Design      : SimpleCPU01Design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SimpleCPU01Design_wrapper
   (a_0,
    spo_0);
  input [9:0]a_0;
  output [31:0]spo_0;

  wire [9:0]a_0;
  wire [31:0]spo_0;

  SimpleCPU01Design SimpleCPU01Design_i
       (.a_0(a_0),
        .spo_0(spo_0));
endmodule
