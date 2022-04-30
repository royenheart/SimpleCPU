// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Mar 23 20:04:36 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top SimpleCPU01Design_dist_mem_gen_0_0 -prefix
//               SimpleCPU01Design_dist_mem_gen_0_0_ SimpleCPU01Design_dist_mem_gen_0_0_sim_netlist.v
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
  output [7:0]spo;

  wire [9:0]a;
  wire [7:0]spo;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_width = "8" *) 
  (* is_du_within_envelope = "true" *) 
  SimpleCPU01Design_dist_mem_gen_0_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12688)
`pragma protect data_block
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
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
