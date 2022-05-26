// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu May 26 16:10:47 2022
// Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Cache02Instr_blk_mem_gen_0_0_sim_netlist.v
// Design      : Cache02Instr_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Cache02Instr_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47648)
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
