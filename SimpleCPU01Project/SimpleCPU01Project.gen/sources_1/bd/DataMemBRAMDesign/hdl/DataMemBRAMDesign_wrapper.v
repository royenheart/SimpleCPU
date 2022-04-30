//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Thu Apr 28 15:07:54 2022
//Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
//Command     : generate_target DataMemBRAMDesign_wrapper.bd
//Design      : DataMemBRAMDesign_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DataMemBRAMDesign_wrapper
   (addra_0,
    clka_0,
    dina_0,
    douta_0,
    ena_0,
    wea_0);
  input [8:0]addra_0;
  input clka_0;
  input [7:0]dina_0;
  output [7:0]douta_0;
  input ena_0;
  input [0:0]wea_0;

  wire [8:0]addra_0;
  wire clka_0;
  wire [7:0]dina_0;
  wire [7:0]douta_0;
  wire ena_0;
  wire [0:0]wea_0;

  DataMemBRAMDesign DataMemBRAMDesign_i
       (.addra_0(addra_0),
        .clka_0(clka_0),
        .dina_0(dina_0),
        .douta_0(douta_0),
        .ena_0(ena_0),
        .wea_0(wea_0));
endmodule
