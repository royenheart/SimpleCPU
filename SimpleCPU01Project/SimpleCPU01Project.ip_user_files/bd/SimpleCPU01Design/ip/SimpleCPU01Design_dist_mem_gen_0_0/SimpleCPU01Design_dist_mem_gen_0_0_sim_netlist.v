// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Mar 22 15:06:24 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Git/SimpleCPU01/SimpleCPU01Project/SimpleCPU01Project.gen/sources_1/bd/SimpleCPU01Design/ip/SimpleCPU01Design_dist_mem_gen_0_0/SimpleCPU01Design_dist_mem_gen_0_0_sim_netlist.v
// Design      : SimpleCPU01Design_dist_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SimpleCPU01Design_dist_mem_gen_0_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module SimpleCPU01Design_dist_mem_gen_0_0
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [9:0]a;
  wire [30:1]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [31:0]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \<const0> ;
  assign spo[30:28] = \^spo [30:28];
  assign spo[27] = \<const0> ;
  assign spo[26:24] = \^spo [26:24];
  assign spo[23] = \<const0> ;
  assign spo[22:20] = \^spo [22:20];
  assign spo[19] = \<const0> ;
  assign spo[18:16] = \^spo [18:16];
  assign spo[15] = \<const0> ;
  assign spo[14:12] = \^spo [14:12];
  assign spo[11] = \<const0> ;
  assign spo[10:1] = \^spo [10:1];
  assign spo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "virtex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "SimpleCPU01Design_dist_mem_gen_0_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  SimpleCPU01Design_dist_mem_gen_0_0_dist_mem_gen_v8_0_13 U0
       (.a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[2:0]}),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[31],\^spo ,NLW_U0_spo_UNCONNECTED[0]}),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qBHgXmwbTbZKEU9tcjZbsi+ExctvD8XefVx14BkxLFOTaColWRgtKU9vhojRxOADVyuCsE7IUw5/
fIBh9Lwwg/1gRLE7njxHZhWAz9S1sVJTpj4NzEQ/HyJYMIoxPpczRyPcn1WxmVNQqNuYI1QUkQdA
njnTdD+zeIXLmFmD1F8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V/TizgGPju21MuRFF7y/ABvr1JqliOqk4fYco5uCOBoyUST+UXZx+hvy+kbS/LIOoofVkSPNsgIB
cZoZuq7YCpk/jDm/+3eTRWDEB56vO8JkeH1jwR7EzYU3QoipBAujdnlLacwL/Qy/9BMtpw8ZC+MO
wBnu3Kj0Q1dJVGnfxGEY6YDPJ+d21AYrk0MUpKHc8NVxv4Hojk39AhtxcEVXw2v2A/fQ9jZC/Ndf
05gPeW4R8LQP/EGbOdtsgq9I5dfdsNv7iKW511rAce2zY8b2yC3vfsAK+YvJlJhR9xErRgfrNVjL
Wf/LCVNpz2k1nBpoU73eFFZpZpBgcK2RDNk23w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Bq6b1vbyY3ChcNU6TEnpKgFXql2W7SCpYB5BjNQXc3pXJDMmVkEfYRRu3dus6SDMFXRHG0YcdGWS
/wS2NHW3Y4jbYKRazEyz7v6YOZcyrun1KL6tR+AG/wFDOveXfxNNB+zhBzCpD4rjZneOXH/S238v
1RhzzAtXry9bFvLFEvM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bYFsVmVVlPDgpJA7LNUGgEzYGUdTNv5Vsc3Jwzl3M7dMROVIX3hQvamUB9EXDcek0Zh/sGPCLhKi
ldQUStkE/1cexALf6/IyDRsZwk6TfIOli5xAX33R98gH53kMGqm4LeMSjvxdw1HFasq3DFQf9MFS
2Vd3MBk2RQ7oHEiynkyQ6u6rVzyv/fEvYXD4vddz2P59pyQWGFNkNK2IO+xY995zx5+zEWsxRbhY
BiKHBy3THjpQOfIu9GAuI55cn3CQjjpvKXcx+Y3heO9CKpqZLGfEqa24KfEbqGfiApu6kTIVexUg
dDBIIdD+N8LJltHRpZ+jbHfXPp+zcquX5mHHjw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qj/0qDRoIRfY71MSM/IDZuivT67/prQAAFtf0lEbUPKKco5uVYjUx2y9eBkAfFGhs2fZalRebtNk
xUbSGT68uQ1coh2Q6nhS4cdo4YPsspTH1Nhu4RIhtPgRxdUttXHYX/Gr97N9TcXoMsfDghFW64X1
k5hEWEfn83fPzGIjm+7kdnV/4img9Fa3ZxxYUrgr5ny+/n9TADBfPj0nanLXP9IfpXIXFMO4cZ0z
Bn1eYo5PYUkIMm2NtSetwGM6Rot106wWg5O8rFVPs19cOE8+1EqXo7dNBHsY+L8Kc+GyZSZKYJeV
JveQ0goTcw48qT7c20RAD9/7ios9uAXp0PTvpQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
n4eN8OcgE2ytgAerPG7drDMcMy/2Ng9XyKzdLoueXaLeh19zquDnQa2TeOOi0kQM7hGEW4N0KSLe
m6/JDweeF+Zh9xzzoNG/7KoO99Lq3PLQiMZJ59hyawaj7oI6PxjJXrmtNuERK3VaiwAJCkdIROIA
KQWVzBm/UM8v21JbncRVWz79jVq9PoB0JyDeHd8yQSMkqhlQuqJk6w0/g6hvk6v0eZ8cm+YQPd0g
lcExsPMEJVUIstZmgw7cO9bw9rbVgiwyICyHMF9e9m+Fe/Erm8j76lm7U0ARiW5L4G85A2pA7Npy
R4KxewsytXQLOLLLVKSJgeQsFsNGQkjyZbzRJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xr27ZXCB8OnsIkHZpOeCueAdq2OspASj7YxAKEG4q8NqrecPF23quvvBjuwcB49ClOEqtHMTy8Wx
weKE0jw+n98eLI9Twla9KkITonZCHdMyBRODorH0IaSSb4J6rlebTz4yIeDkU+T39FfS19iVrJv9
YqXU3m1SGEsOT1DI4s/uVoxGxOXgwU9vp+nGCLp4cWSDJ5NmNma3Bkvy1AofNpsy04s51ATfy536
dpOLpy/2AJscmf6UromXJmy3AjFYU5O9tgB+VG+ew3ZTMKUxBUQgIg6qI3jmIkWZ3kN/k2X52CIU
cKg6JWkdfO6Yk9nM2sROGf/SLG8ybirlacy0SQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
R2nz22UK9YsaRdZIY3kGldutQifE5DDy7NbJzgHH9NuMVkNCseU6780lVUn1OPAvaNVfCBMh5aZB
Qa0UQVeAStJarB7+LT6a3OM60oJ6FEegSw1JKYWlpr0J4bm0S8AP9vR86sm2qfGICS2ZYl4qJmT8
m4T3EkhhzBehr+YTSE5DVzXiDX1G5ichGCmCZeSTKbpaMUP4CxdLB3GXI3i/Q8iml9J42mVCnpUw
iemH4c94zF6h8A9D4QXZyzCcG7ls+jKtBjHptjiIu8+V0cg9S7zgQsphkLKIetlWBVuL7zqnpbWe
8s/b5fnpCatZemVgKkFuy8UKlkzOt0yBn4MFWqFhLaoZWztlyHiXcUuSgmaIK7C0o6rpozCRxgkr
/krI39PGhNLvh9r+dLgiXtDNHEPG7Rc1kGWMV4Tv/wTcuizsdwyK5ULiX9zDkm9Wp8wc2FmonXXs
zUMW2MTsj6qNgl3ly6aR71kz80w3HEm6vpYE0PgIioLUHtXSJrNI0YZH

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KxbkAZO3A4DCLBukfrGMdxDyiqe7FeV3hRi5vLrwE66pgRsrzhpdsdVNVm9GBFGyirgfJc8Msa9K
Y4YDSFDYTsg59E8GFTF+GyDnevyA+S2gpVNFB0n2xfXaYhsh3iGMlmbrfQJILt4u+8Vuch+DunTO
8I4THbi625TC6yg0oe4r3JPCuc0C+w0RF2tsnPzM8RExC1kOIqKZaY9q1/wcBS5yGvCu13nNJIh8
IjjeDlgUK3GKB5FLzKJjUN79rMWT/qzH5OvgP7qaduyP5OfGm9E21O9eYtZEDGyGoM6ob08/TjSI
IIIPgVDQr6hOVM58Dogadky8yVeXSxHRau5RRA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9536)
`pragma protect data_block
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
JaITwPh/73wYhlRNaolKY88=
`pragma protect end_protected
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
