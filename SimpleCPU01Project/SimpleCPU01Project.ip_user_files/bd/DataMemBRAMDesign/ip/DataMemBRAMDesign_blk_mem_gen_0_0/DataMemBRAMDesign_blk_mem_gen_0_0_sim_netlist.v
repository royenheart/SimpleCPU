// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Apr 28 14:45:44 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top DataMemBRAMDesign_blk_mem_gen_0_0 -prefix
//               DataMemBRAMDesign_blk_mem_gen_0_0_ DataMemBRAMDesign_blk_mem_gen_0_0_sim_netlist.v
// Design      : DataMemBRAMDesign_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DataMemBRAMDesign_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module DataMemBRAMDesign_blk_mem_gen_0_0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "DataMemBRAMDesign_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  DataMemBRAMDesign_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20608)
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
