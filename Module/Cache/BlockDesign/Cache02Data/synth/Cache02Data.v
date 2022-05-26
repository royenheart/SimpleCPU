//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Thu May 26 16:08:32 2022
//Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
//Command     : generate_target Cache02Data.bd
//Design      : Cache02Data
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Cache02Data,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Cache02Data,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Cache02Data.hwdef" *) 
module Cache02Data
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKA_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKA_0, CLK_DOMAIN Cache02Data_clka_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clka_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKB_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKB_0, CLK_DOMAIN Cache02Data_clkb_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clkb_0;
  input [69:0]dina_0;
  input [69:0]dinb_0;
  output [69:0]douta_0;
  output [69:0]doutb_0;
  input ena_0;
  input enb_0;
  input [0:0]wea_0;
  input [0:0]web_0;

  wire [69:0]Cache02Data_douta;
  wire [69:0]Cache02Data_doutb;
  wire [4:0]addra_0_1;
  wire [4:0]addrb_0_1;
  wire clka_0_1;
  wire clkb_0_1;
  wire [69:0]dina_0_1;
  wire [69:0]dinb_0_1;
  wire ena_0_1;
  wire enb_0_1;
  wire [0:0]wea_0_1;
  wire [0:0]web_0_1;

  assign addra_0_1 = addra_0[4:0];
  assign addrb_0_1 = addrb_0[4:0];
  assign clka_0_1 = clka_0;
  assign clkb_0_1 = clkb_0;
  assign dina_0_1 = dina_0[69:0];
  assign dinb_0_1 = dinb_0[69:0];
  assign douta_0[69:0] = Cache02Data_douta;
  assign doutb_0[69:0] = Cache02Data_doutb;
  assign ena_0_1 = ena_0;
  assign enb_0_1 = enb_0;
  assign wea_0_1 = wea_0[0];
  assign web_0_1 = web_0[0];
  Cache02Data_blk_mem_gen_0_0 Cache02Data
       (.addra(addra_0_1),
        .addrb(addrb_0_1),
        .clka(clka_0_1),
        .clkb(clkb_0_1),
        .dina(dina_0_1),
        .dinb(dinb_0_1),
        .douta(Cache02Data_douta),
        .doutb(Cache02Data_doutb),
        .ena(ena_0_1),
        .enb(enb_0_1),
        .wea(wea_0_1),
        .web(web_0_1));
endmodule
