// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Mar 23 20:04:36 2022
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12816)
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
