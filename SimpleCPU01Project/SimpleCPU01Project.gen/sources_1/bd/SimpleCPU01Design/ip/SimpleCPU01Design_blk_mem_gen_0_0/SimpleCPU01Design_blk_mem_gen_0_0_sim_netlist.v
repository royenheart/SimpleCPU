// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Mar 22 11:07:50 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Git/SimpleCPU01/SimpleCPU01Project/SimpleCPU01Project.gen/sources_1/bd/SimpleCPU01Design/ip/SimpleCPU01Design_blk_mem_gen_0_0/SimpleCPU01Design_blk_mem_gen_0_0_sim_netlist.v
// Design      : SimpleCPU01Design_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SimpleCPU01Design_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module SimpleCPU01Design_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    addra,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.8711 mW" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "SimpleCPU01Design_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  SimpleCPU01Design_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51440)
`pragma protect data_block
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
gPE75ttf5HXT44r38CDsrFpuAdFrfjQdPsQ=
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
