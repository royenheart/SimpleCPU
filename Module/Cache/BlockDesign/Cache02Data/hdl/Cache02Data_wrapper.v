//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Thu May 26 16:08:32 2022
//Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
//Command     : generate_target Cache02Data_wrapper.bd
//Design      : Cache02Data_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Cache02Data_wrapper
   (addra_0,
    addrb_0,
    clka_0,
    clkb_0,
    dina_0,
    dinb_0,
    douta_0,
    doutb_0,
    ena_0,
    enb_0,
    wea_0,
    web_0);
  input [4:0]addra_0;
  input [4:0]addrb_0;
  input clka_0;
  input clkb_0;
  input [69:0]dina_0;
  input [69:0]dinb_0;
  output [69:0]douta_0;
  output [69:0]doutb_0;
  input ena_0;
  input enb_0;
  input [0:0]wea_0;
  input [0:0]web_0;

  wire [4:0]addra_0;
  wire [4:0]addrb_0;
  wire clka_0;
  wire clkb_0;
  wire [69:0]dina_0;
  wire [69:0]dinb_0;
  wire [69:0]douta_0;
  wire [69:0]doutb_0;
  wire ena_0;
  wire enb_0;
  wire [0:0]wea_0;
  wire [0:0]web_0;

  Cache02Data Cache02Data_i
       (.addra_0(addra_0),
        .addrb_0(addrb_0),
        .clka_0(clka_0),
        .clkb_0(clkb_0),
        .dina_0(dina_0),
        .dinb_0(dinb_0),
        .douta_0(douta_0),
        .doutb_0(doutb_0),
        .ena_0(ena_0),
        .enb_0(enb_0),
        .wea_0(wea_0),
        .web_0(web_0));
endmodule
