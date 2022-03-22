//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Mon Mar 21 22:17:18 2022
//Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
//Command     : generate_target SimpleCPU01_Design_wrapper.bd
//Design      : SimpleCPU01_Design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SimpleCPU01_Design_wrapper
   (A_0,
    RD_0);
  input [31:0]A_0;
  output [31:0]RD_0;

  wire [31:0]A_0;
  wire [31:0]RD_0;

  SimpleCPU01_Design SimpleCPU01_Design_i
       (.A_0(A_0),
        .RD_0(RD_0));
endmodule
