// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Mar 21 22:18:10 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Git/SimpleCPU01/SimpleCPU01Project/SimpleCPU01Project.gen/sources_1/bd/SimpleCPU01_Design/ip/SimpleCPU01_Design_InstrMem_0_0/SimpleCPU01_Design_InstrMem_0_0_sim_netlist.v
// Design      : SimpleCPU01_Design_InstrMem_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SimpleCPU01_Design_InstrMem_0_0,InstrMem,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "InstrMem,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module SimpleCPU01_Design_InstrMem_0_0
   (A,
    RD);
  input [31:0]A;
  output [31:0]RD;

  wire \<const0> ;

  assign RD[31] = \<const0> ;
  assign RD[30] = \<const0> ;
  assign RD[29] = \<const0> ;
  assign RD[28] = \<const0> ;
  assign RD[27] = \<const0> ;
  assign RD[26] = \<const0> ;
  assign RD[25] = \<const0> ;
  assign RD[24] = \<const0> ;
  assign RD[23] = \<const0> ;
  assign RD[22] = \<const0> ;
  assign RD[21] = \<const0> ;
  assign RD[20] = \<const0> ;
  assign RD[19] = \<const0> ;
  assign RD[18] = \<const0> ;
  assign RD[17] = \<const0> ;
  assign RD[16] = \<const0> ;
  assign RD[15] = \<const0> ;
  assign RD[14] = \<const0> ;
  assign RD[13] = \<const0> ;
  assign RD[12] = \<const0> ;
  assign RD[11] = \<const0> ;
  assign RD[10] = \<const0> ;
  assign RD[9] = \<const0> ;
  assign RD[8] = \<const0> ;
  assign RD[7] = \<const0> ;
  assign RD[6] = \<const0> ;
  assign RD[5] = \<const0> ;
  assign RD[4] = \<const0> ;
  assign RD[3] = \<const0> ;
  assign RD[2] = \<const0> ;
  assign RD[1] = \<const0> ;
  assign RD[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
