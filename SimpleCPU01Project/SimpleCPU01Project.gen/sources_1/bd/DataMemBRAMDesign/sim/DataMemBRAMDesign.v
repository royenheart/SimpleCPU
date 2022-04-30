//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Thu Apr 28 15:07:54 2022
//Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
//Command     : generate_target DataMemBRAMDesign.bd
//Design      : DataMemBRAMDesign
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "DataMemBRAMDesign,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DataMemBRAMDesign,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "DataMemBRAMDesign.hwdef" *) 
module DataMemBRAMDesign
   (addra_0,
    clka_0,
    dina_0,
    douta_0,
    ena_0,
    wea_0);
  input [8:0]addra_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKA_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKA_0, CLK_DOMAIN DataMemBRAMDesign_clka_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clka_0;
  input [7:0]dina_0;
  output [7:0]douta_0;
  input ena_0;
  input [0:0]wea_0;

  wire [8:0]addra_0_1;
  wire [7:0]blk_mem_gen_0_douta;
  wire clka_0_1;
  wire [7:0]dina_0_1;
  wire [0:0]wea_0_1;

  assign addra_0_1 = addra_0[8:0];
  assign clka_0_1 = clka_0;
  assign dina_0_1 = dina_0[7:0];
  assign douta_0[7:0] = blk_mem_gen_0_douta;
  assign wea_0_1 = wea_0[0];
  DataMemBRAMDesign_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(addra_0_1),
        .clka(clka_0_1),
        .dina(dina_0_1),
        .douta(blk_mem_gen_0_douta),
        .wea(wea_0_1));
endmodule
