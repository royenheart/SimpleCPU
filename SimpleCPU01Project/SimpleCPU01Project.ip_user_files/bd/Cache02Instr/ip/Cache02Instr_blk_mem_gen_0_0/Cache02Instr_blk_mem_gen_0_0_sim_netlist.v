// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu May 26 16:10:48 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Git/SimpleCPU/Module/Cache/BlockDesign/Cache02Instr/ip/Cache02Instr_blk_mem_gen_0_0/Cache02Instr_blk_mem_gen_0_0_sim_netlist.v
// Design      : Cache02Instr_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Cache02Instr_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module Cache02Instr_blk_mem_gen_0_0
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
  (* C_INIT_FILE_NAME = "Cache02Instr_blk_mem_gen_0_0.mif" *) 
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
  Cache02Instr_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47744)
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
