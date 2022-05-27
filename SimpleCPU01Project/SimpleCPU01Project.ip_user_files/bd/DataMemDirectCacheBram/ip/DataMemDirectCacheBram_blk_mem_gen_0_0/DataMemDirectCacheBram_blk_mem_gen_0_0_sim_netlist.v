// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri May 27 21:38:43 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Git/SimpleCPU/Module/Cache/BlockDesign/DataMemDirectCacheBram/ip/DataMemDirectCacheBram_blk_mem_gen_0_0/DataMemDirectCacheBram_blk_mem_gen_0_0_sim_netlist.v
// Design      : DataMemDirectCacheBram_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DataMemDirectCacheBram_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module DataMemDirectCacheBram_blk_mem_gen_0_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [72:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [72:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [72:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [72:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [72:0]dina;
  wire [72:0]dinb;
  wire [72:0]douta;
  wire [72:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [72:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     14.611101 mW" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE_NAME = "DataMemDirectCacheBram_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "73" *) 
  (* C_READ_WIDTH_B = "73" *) 
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
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "73" *) 
  (* C_WRITE_WIDTH_B = "73" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  DataMemDirectCacheBram_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[72:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61888)
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
