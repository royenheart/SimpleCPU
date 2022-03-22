// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Mar 22 15:23:44 2022
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
       (.a({1'b0,1'b0,1'b0,1'b0,1'b0,a[4:0]}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4672)
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
