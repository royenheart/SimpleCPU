// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu May 26 16:10:21 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Git/SimpleCPU/Module/Cache/BlockDesign/Cache02Data/ip/Cache02Data_blk_mem_gen_0_0/Cache02Data_blk_mem_gen_0_0_sim_netlist.v
// Design      : Cache02Data_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Cache02Data_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module Cache02Data_blk_mem_gen_0_0
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [69:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [69:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [69:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [69:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire clkb;
  wire [69:0]dina;
  wire [69:0]dinb;
  wire [69:0]douta;
  wire [69:0]doutb;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [69:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     12.0198 mW" *) 
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
  (* C_INIT_FILE_NAME = "Cache02Data_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "70" *) 
  (* C_READ_WIDTH_B = "70" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "70" *) 
  (* C_WRITE_WIDTH_B = "70" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Cache02Data_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[69:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47728)
`pragma protect data_block
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
WqKXqWqQyzlsLgYBC/fmNXz2jA==
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
