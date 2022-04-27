// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Mar 23 18:39:54 2022
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12304)
`pragma protect data_block
4F/oL13cDw/Fm8eOB+Bsb86EdgadZ1EU1/1Fl9NLMWXfSu3M1sI6h7N8uuBvUWREW31KlDqqO7bN
XeFAd6ES4pTSQYQrbbfnH6kTa78mB3NhZfU3GKdSt7NlhmXRa/ZH/OOBh78osa02vxsJUy1HpSIN
cLY8s/KlI3BPIkhIEycULH+k4Ia+VZ/o9+qYs4eQ828nXwMbS/7f0K4rifNJhYhLb7xObg/oajcZ
aWWmBNEFRF1ryG7y3T2/5AQjxOid9FNMAySkbSGI5UjXJYE0yPRLafG0Ldpu74HO0Dm+dneauaUm
j9R6d9GmrHlc0zGCl0hHF4ep6AfCVEHRXh4BBPORm0rE2oM4/tcCvRbf193e0aT4CsYoA9qPvFd4
n+3AmJ51Ax8tE/A814Adj0/6LtWaM8UJVN3C9ELD/FqzPWFa/Q+mTS442iMnM8fK9zwYP0TgIK0W
ly91sBEJmzrefDQmvp00CC5jVfxjbkW3+K47hqiOFzHXW84AXnjvcT25JJj3qse06hmRYy79ZuFX
v507Lct+2fNDbHYEwt3e2cjiGqTtO5CNScYgubRliKcJ7BQzIhPX4uJe8M125fwSJ1a5O7h8iIha
I6Pzs1FfVaEd4xMVu+d+tYXjt9PK7azZUF+GAsTdxc1Z4YW0U0qXEYntWvE0shl9tVMr0J1mic5u
YMQa+t1zogpLXM5C6Bo3IoTp6hxiPXyCpspt85UsoHhMwSRIUZw0nainq1nf9/1F1/FWB8XYihxu
JdUFtQ8LqceTCl3S2B1KWBqLU7twdC4DuxE1uo+lKxNOz75+mjSO9DqEXDLzORuX+sfsOcnT2nzZ
PZHClp368K7TmcdmZjrxk9239M00thcd/kxxTa5AMIdq/7ZOEdo7VNDDj/7Y8Bc1mQ9ra1oK9Vge
IXRHRpBdk63sWE/2bH93jimIOhP69RBeX2qwbnGHJ6a0NyXbHz541tb1WZD8s9BHNu7qr7LKzQ0m
kNSZvpn7Rlud/bhNl/0OIfohcq8LokK7a1ot1jhAowgBGYQvFmqKN2wgleexM0qTSOkodcc9s6AS
TpOHimzjQKBd1J4Nue1ALKc/7ccpQg9e/wF0sxu/aHAonbz5ZseXmXzom7jFG5gD2ZOn5mqxaun5
vwh6jbd08x8nHatNNNwmQuxCGXVJTLHlq08So5gskost7eCo+j2JEMZZMwb9R3I1jjY7TDOevG5p
KpyLlQuqA/epqM9YUh6EI0ILv9sPrDygHVGaI29KylYsiIwMcTEIS4lefZKeRzGWlWUQftjWRtcO
UY7LGpnsMTBmSlByfagw9nd3O4nxMs2wwU5bX6+4Jm9HXkeeSdhtV8SNIRqQcNhMY/ijl+In1FDB
ZfSfimeqYeIm4XJRHsFPiCmvGXZSvYVx+Y/ZowjJ2Xcn6LX/7jQeE7zHaqSyxIs9Wszkg9l6AtHK
IXI8YmW+bsPey07JMW0QeWcV1h5sXj9Ox0mTJe7Fu9hvUbpRLMgKZ5i2A+FfJkN0DyUVQTuITsVB
fqF/6IUoxpF3lipv7LQlZpx3FBaIHU8CWo03wlN7G713rfOsWu1bIhnkQpTU2sNffnJ8a4bwlkiV
d2BhvePQVChVr8eOiYwrapuIVHNInJwYDdF3lhdbXqx078oWDm+4W6TP1fXPV2WBvdYvXECIacE3
PomfV2Da4eiGeFp4y8JslYoTwIzgp4M8EsyXcEpQmTOhQeAtaBlDlGciIgSYCmVHmV4YYAwCB3Pp
ZVzXB+a9HKj9NyNrkvyH2tPGkW43FNbJhIGFzUn7hWEr2e0Oibd7dexo/E/6pfEym78aB0M1Uu95
7gusKa8XS1STgbCPL3QQTLLMelkuHaYyErIuwTUwk4sN/yX5JM6XFyeSSdz6FVQt9zsG9q4+gSA7
jlPOzddnW58Ypu3v97C0FZZgkXIIxdL5fUgY/361jMUPczxoWw8pyMQ7AjehdTEVpIungbGVpAyp
ZU8H4xU70P4mvrlrkb1Qfb0oFB/OzgZ/qoEsoIntY6+mUmnIQxFv5lV19lAdRGlx05tEIwFjIUhi
2t+MttLh32MKuQ9RvpdgY2KxCtF84/W34bgw9kPd4kCAkHEK9dGwA//PpEBjE977oHos4cD7e5vX
g6vKC758mejv1aYq5yqSxC8Z1J0gQkiXiS6b6NPMNsZuwTQBgmeb1GzWYWKMF/2aOlak4I5yr9mx
rjigj/Z7SijV1MVYb0YHAQBn9rIwV/JGXhAbcpXU41E0s23vsIprbLHyG8egpvKZC08hur3e7RcS
A77C6eWIEgBst3BYbQX03hkfX4Y1jsNooYS/dU+2wWmbMCdEWP2pOs+ztZOzUES3+DLOl+C5oBKk
imJsHJa8tdyBBueuJZ+GNE/ZTQp9zQasOhJySFHDbMRlu0U+q5CJlkUpo6DfS5t1AlQFZ/TodJju
WnfRYafXnVqGqvHf9FHUrEFzs0Rit7w/SpDDhFpn20lFV6YI5VpO+ToWKjC3WHvI5Xh8/gvzee+o
GwlgjasD+b/sini2ZVcy+q+644/uZndVwShjgfGhuXKdf5cPElhHqjC086VlhcPbSrFw2zZZaQtC
j38Py/6bqUmuPYstRSH6Xvl8vgHOHyz5chvrr6EPVcnzv/BIMud8s7HLd6rpAW49Wfbi8GvG0K7M
q6C41mdgCrf8CvJfyBRDM6CWwQMqArD6IdFA8KkVYCZeSmXr54tHw+Vn8mVUPwE5UDbOOJquEi4v
MXgAJNUEXQzGTnp1ZQeVu05nBdkky8nWiIdsAynQbw6uf0asQuaRn6ParLHdWR7gvYdLAzjT5KFe
Cpb2etRwbn+Duvd/5yFNSlKPrIEGu28gsA+L4mOIDId/ltL20jAhUmbgHdZpsqGQDE+z3k/i8Oeh
jY2uqGguD1emnvk41UsUypX1lmpMjBZoS+TLFdIZg/evQmfjpoe4tu5C/IjtVwAUoD3JAssI2VKa
JTucTSX3Sn/T0Ddjsb1YwHzFgWayeKTZO8/L+m16VwLwSoGQx1keeNl9bAm3lkmCHDE+bd+K7d67
zIfJ4Jm64NCI1d06xAJCAOYtdYUzOYnhviDBo3k0z2i2d+1bWRAhaWBmXx7OuPuRIhRjeiuT7/B3
swIH1PWsr6d31CrMnzz4wpoPHM5wI1DL1a5Xj4K4xDs2mMPMqBPf7WWFJnPsDQjKHfnYPaMvl7AH
Smto+HE1y3j9htU9RelxRbMc/rdmNqLYNNj87VavbgowiGE4JzlF3yPzVT1xcsBg+Zzn4DfzHyVN
1/0C85a9PfLjTfg893WvIFrAUwcza97KaFpisZvfb4vyIhn9Bz9t3u1ViDup05zWFpj8SKa7sQSR
/xEtgu57yNUERnSnNojRSfz8ONStsGunw3X7eMH+cfzHHKDX6jekZT6DlDTsh17urJmHTsV0ELPo
lUKA9tUjoywImRbJZLWBp9pO7TkD8+y+Ma9mnEYsqpJ4LnmfCho6+FAnLUPaUVVHA4XprHc0lyD2
n7h/518uZUUly8e1EueQYXVYLNsZF0j4rYWMjpvKh94WJ3uZSwsiflvtcgYB6VMmXwZGE6sK8LDS
Bfxs+CXgldaMSL2bADsICW/g5MbVyN4RbYLkkDLYdHGJoW00elo2u3x3B7jT9o+i4OfvY36U8Z07
ddEi54rjHJ8hYtab4KFpfu6GMVBFKVwWjbnx8niHR4huCHhRpepIXgpLgWIVfYcdwGHYe1PvUloW
bTZtEHd7UNiGVEIYTUY1LEHCe08S2jCnrYq7zN038k/ny7Mya1hskxIlzFil0Ko9DIQwVv2Rh/pn
uQc/M6f0XeY6aGMij6iSNmUzNJZMu5660fCVimFJ5xZHXe4Bp3L9x6LqRYbQXh24Fdu1bp5c7zzV
MPrNymgAWHqqGLi/KhoNVWloSaxrb2Jje1l/u3ouECM9yXD5XRpfArXHnmtD0v0pzeVRyRVTKFOf
Sljhr3ro2zxbKwFMfoqQ3J4/FIIkPCeCADFgbrq2eTarWfxTf7eOZ/HmvrQJOzLLQDSW46F0jtgI
8KKLES2u9YejBLZCEWJLbmPOeXwtOJ1pO7rzY7bseaDzbxBuQOzos7yrzFfCkh6cEULLH/D4s1oB
Qw31hF+cIjc2bl6ylCIuIOvDVCpgwO8iWJUnR6lQQCrUxmg6GVV2lIu8ejxZU0VTqHgIHV+K4gkA
0dv8SRixGh+usP/fgVU38/H30i0JRiXeSjjW6eqgQ+66vt90j9r9YNi4ReIDO/146khKQunBPlj1
UoFT3HH0tYu0zefdjSSK/ZI6ejuV32iwlEOLEa+vwURZuhRpDXovrEWcqWTPBepc0UrifLBI26Tb
/lVUEQbCUPe3vqSiF/wuX8//JoBk6YLzmnmsueWzYhj776rGiuvin6C6sSPAMQ0Btp8KgyTGN2jA
h9Wyjz18XFvlonK8NG5GZ6RKoa5R5I9+uGkC8Mlqu/CT8X5XQEaxynKYFIcBSqckhTXIOgPRehVi
IGhEIeRBHUKiji8w9KEfmKpFWTNZNqpOxixk8gig7JXl/qN+FIf5fUXvgLertvv3mrcwLLLHZ/EG
mUlCfvbJCjWYkVof/wSGTApwlHThqLLzipDeDxZ8Gbh1ZYbYhyRR8WvtC+aBW9gLyw4OXxsSCu03
KyzlRfT2iGHzcqx8ZOgtK6mIKyOKx4J35ovGH0wI9M0sXM+YYbGvrv1RrJiX/hNLPPV6VmJPu85H
qOuV52vMIpy9Su2Ksi74FaS9sS7ZbTsLd1ewg3D3HxmjuifybKkVphRYzaLoPpnd3XAm18oYAwQp
gHOESd+Y9+vp9gW5sMG/bH5koqObwY6L+aM27g2UToQ9GZUIXOEUrOI76MpNOKJkxS6C9+W9+F/h
SrHQoc70N2qUbHPTsTzO5lNjf7CrnsUq+SWQ/vD7xUIMDaFcj+SlM9OPrZS5kFd3dAz9tsiSkl9q
qmaCl6RgH89ilu9A5Oy5ObX/nyndnFNMUzpsA4Djxq16ErHqHsrWUw+3SV3JTcA5eeissmhK3iYU
CoLpQpbA9ZG4Ydme1PdfXWxXnSCak51Z3rUJLHJkb3h7nnq+sUInFI5PIWAxbkVZnkZ7+qJWSqpy
7vxBTFEX2XrEnCueSRffggBVDSksUH3w6M5VjG5gWu2SUUHeYUJTzWK6g457ypdOswhGauXfETD9
cZKkeR03XFny4DULv28LHv9OB+RqYUmoO8ykiyJnj6/qMsEA66TcXf11I3pLiQ0bJQj+VJclO9Ad
Wwmtn+OC32J3vWpQ9tve+gPEReP3hUp8KO8WVqTp0+ov4vOGT1ekm9FVNRW1RY4T25pvKOxYXF+q
06h2+HPgjafQjGZbr42S4pqx8M3Im+3FVoAxTTyHKKfRj8WnHbBTQX8WrGc7PAQk0UTt90+mPQ47
nDmCnel8dy3LJgfvk0jX2VUWv5QO+gK1OkDtDK/3kgpjWsvA1Y4qvvV5F6jnxCzMLDz0kBPm18aE
t9f+3TwYsaiGM5UB8nHSUJnSg2W+wvjE4BDPhAG4vJaiJYI8ntq43JXvN/5VykklI2YTTSefPbKm
rZxtmBH66YumMDBYkyyeePqQEOGswws8mcoeCjHgfYkJumdh/kyMi1HjNRLQWsj2qwaYeT9ANu7X
7tgpMZMA7VGUtcsUcqhw/yMmBYjd9tnZx6iyHc0P1sh7yJGlcOnruuHs6zG1Ug6NVU1CjZsjr4HO
/YUdXwgvYY/jtDmMj6EhYfAY25GrcFCMgfxlmt2A/E+njx2Pc7W1908nP3ymQP6H3im9E16mZZlY
UCfM6gJtVrE6+kji/VYWND7C9oANnRt+kqm48O3P/1FH2yAOXZCKa8IhMRs+/F/iB44UYaWYBGit
/7fet00A8O9bAtdvVfAGF0Adgyrx2QF7MlOSfrHcerrCOtjeEORSzM2gFzGF/JLwcV2kz4Pd2KzH
5j3bggSgTfuXFed0YjHYXQ+scUmEhG4GPGJx47TqN72OP0PXA+S9ZuBsdPEnK4KqGYU7Lt1jT66a
ol17U4vocsLKXtB9QKFjecIHiaLSkC+sX7kzvkhRcl2mGO0qxBi6rE7Jzzudwf6uCgXmonP2Zvw5
1IKVHGjOu5+PJjAW3wRbpPDMMdzOJL0cAmAkduUqmrH9vDMzz60S5FdWpLdT3JO3iSgyxFVIV7vN
7DkS4LSljUrT17bwwFqml6u3POk1a+94nKa4IFu/UBTrBG+MWKIUf5NbtBtpBMNCkCNbVHDSECD+
7baZyjOVfIeDHaQTSePLxYzQrHPjxu5z3GsC8XTbF/ZagAF2Um1RwlFi9mOq0LCPcEdxRardH/DV
3jCHvZc/Rexb944rU5IObK5HLw+IFR3GWoi4GcN4p1wKdNbW0HOWC7do909ezOF6gq2N1MxqfuA5
uGmeobykHncpwe3E8rvWnwH7QRriXb21sT4rftcilh+3cmzTIw1z+E6oZrv7lJt2vIcMulJR8rxE
9BUgOc2VSkLIoQb8FaRPGk4mYIto7y/gVAvRi5Vq5BKdnxqRvi99NpxlxR0scUM1iMhOXyqbbzgM
gUNYcUqW1nh8ESUgbBeo1X+ggcXyN4585/R2qgOD6WJ323V/OE3oOF0KN3sEW8URyRR8U0s3+pWr
nJzv6OGogBygsEhWOZI/tp2AOuvQAivvt+DVW6m15+H1p47W2TUrrs6CblN14wAqmTttGT8AanyK
MMgJUz0jPSHcH5hpHKc0jw+t9QZy1ltCtvIpnESjCeh2ETY5RbkHp3Kd0T76irg5zlo6x10eW9fe
jzJ7Wt9T48L/zEiM0MOw0lSKqrkoDYw44BGlzFukM7scilY36xkcGicCnmPvyKK8eKcJDz2EqJhJ
6enQ5DwZHhXH6T2/Jv7Ahmrb1kz4Ujv1qJBlw9XHNDncWKXH0VqSVL4dO7GjAR76NG+OskwSiBTE
57ZMoW9nNBp1LhDcaRF9kIvmGNPmYigI0SUHDfXcW57Fqbb53IdqhTrR/dfwREg0wt2XQloRifbs
hqwm5ADJVVVUBUHJA0Ce5D5WhqRa5ZsEv0aRU1fgFhKGcVH1Mps22nAq4p70IJwC0JYpr/wFYPz6
MkjcAKJrBm8Xh5EO9hymITpAbhkkgc5VTsRuZ0ZoGEMjKdfVXg/WvN86XIemMnJ5suOpPju5Q6Mu
3uP9Lq1/QZMXAsg4YEo2G9Dx2m7w5a49mpXo5QkRsiEgk7Nk+CaI0/o+Tgg8kTlikxFG5QsOnBP9
/ZLKJJUbyw7AF4q56/71Wj6fHSPy8mY5hfd1lIY4xkTxRXHfav6dKkFmoF8GEBZFENu0TGVdEUm+
QrKBHe7w11FuOERxEZ/vejLTbM+4epN1cB1Pdnwj2s0Rlgru0ILtZGxqwgosPawERa1MMzOFo2+n
X32IpQ0ungwt1h+FUFUYSwkUkZd6oeLY4Z0ZvjlPHPXK/6ar/Jd3VSOaMKUwac7/GsWMj58IE5JF
0xyS/M5n0/1XRBjMaV9LG8lEhpEhsvQUwU2HvtkYFFTpIKkbTgYd2Sxh9zHCaE+LcBZmUtHiRD2B
fK2y5RXzV5WBUD80Sikbt+v6mIQMW8t4krKNoel4lMr4RVEWvZqlpxa+NnJ6EPcwC7slhRlGMYwu
rNYQaivCjGs9XqaJvT1/CLN0j8D4XK4eNiuc5pzAmxeLLtNyInD5KdMNyUbQbu0sunPMlOrj/xDf
EyYePMf7OfyAyalwGMSnC59VDbmIvnxcroz3M5odwjeM36aHlg7fKXOvu54gUHuJE8rjnj92kJse
EPnCVMvwRaPk2vFtb/w5RPQD1iHtsmkL0KEERfQxaPxSL2xv84eHFKF/uURUc+Z2nrzg3MedHxim
X7CqxGVGvITryMV2vBYtps6Q2tmiSe/SwlNLaUr9aW0Wr7VmkZr04JZNN8mVH04Y0UMm4liRoJq4
Mbp6wYMtW8vjfBCdJOUyB4RxPgbW8uBxjiTT378FtqKzkj0Wsb+6q2RNOtOiaH1lEsQWufeXEp7G
W9YiFGIKmj1gGqAF2TBHJxsK+sY6d4f2ar36P+iyLt8kXocEAsdCs82CUyhNRe7DJzozHUHXcvpt
+h6JIbTE/+dC85smYyFxjYUTbUT+WZiIorX0pMkedqoYd+bKXCMiE9dOhLfZ6JusQSlz8yyTFvaR
sTZxo9VViKISKrqaMvhDZVXXfS4xVbenW/vYriB7N1UaXxZwLB5tmxx7byA1q/qidChaWGfk/Bp0
9yPdil8hDyrFa+dv7DN7I9pOWybvwr8ci98XfoRZggRnyRI00HQz4GA2kh5E42V/zaQ2YhQmOlo9
sUabZikXxVdJ/zgyUe/bOCWU8vOp2Kf4qscXq77kDhmHYt+OrsYK1r/uoS/P+6d316AzdmXMKvU/
DEwyDhcljHvSKYD8DLk0AHyOc0byvyVJVMJY5qtGsf70E3kmdGN3dI0oL8/k0HLVR2zhn9AkmDM/
QNRLCS7xvUjLTifzre5zDx+rTiefwXL6Ym+IQq1n0kbbCIxQ7Gx2ynt05KSiZcE+q6SVFFRdIEGR
zZ2itXHgQC9A58vvN2EZv6P0/5XIgg2aJ+dKCudWwI650BtRKW0vv+HoFqOEbUwELpZfEha87WSG
HAnhBNyoOn+lZFmmBqOzTWWWGUo5yX9fm0f8tkMS0nZY3LY1r7IsCc/dCaj3ShqYhXNvvbk2oSA+
wDgjq4vMFK292lsdr6y0PpeSdO3Mwqi1BEUOPfIafWgfWagmZJbKOlpoD1vum9dXz1sXCPFL+yw2
heMmyMaSE2bDX2+lqVNfK6nur7thCHooEQnmmO6oGLjpbv9WbAwwZZffEcyZO3NpingtFY5aKkq2
3f9kSNOJNu/UUECiuiH9AqXTh/IQtei1oRf5gY9bWC6/C84egpryiV4c9bh97oFFhSUCFOYjY4Ji
WGVdK2y28ytZQFIXmNVjCnZLPnu+Jg64KMXqzXa7RaSf4VoMmzsPnG599fHL7uK1bEdTvroXO6MK
VZmWim94/ogK6+i+9aoqXlzZGNgDHdM464v6OIhJLWWUF4x9MfS71yPRvYcOD78SLMA6PYsT1XNr
CHfohBVWe3iN/lu9V9MUapKfLCpeMCYg6Yg3M9NCcODpsweGKRUQmUrqHPCPpZ5sBIMf2Ag0bQXz
6jCNQvDiepgLq6ZzJ1fmxgLhvySyOosANma6XTdQ4bOdPtHg3CQoDjs5ZAwsUtr3EDDyO8z+yp5Z
tv5FNaqbQYcl4pblf/H/MBEwmRQuI55QfL9oQ3xdgOuwvo1wOecptX/iUPi/yj2MkFBppWdI1v4Q
vBVr74tnxbdoDFGkvK3hOt7fCjnY5wf4WyWSqerPl82xeQr6ts5LxSpACkAVKC12aIao8GmO3Y3a
ure30oqHYBFuFesMCyxTc+7JjttPDMkLkJElOFbV10jzjxXJl8mSFmsphGe7P9y6TKV1Jdg8jUmU
QC0mtKMWIWwVbnaunlNOZJ3vf5PmCWssU4IzO/7QpvjcPqvBAF5coG1rqkLSOFmDycE8mZkBz/EA
6NTNnI7l2dIodEbPEMFtpYk83VKyq0SHz3FUWFsgCYL72jlhVVa3DeLk+6E3uv1ggDxfmp6u14cS
k5Kc8JzBQwqDDU4ikx3Y6qfgXUmDz5gb2uVEC0Qp7zbZE7U+xBXWxMWyEWtrVP5WZOPd7h1/gMZ3
iC7B0XDL4H5H92kRJ7ImUgpeE6l/sHDCPkzQtMpKceHI+Xox4aDUnH9hayEB0bWkBhm+uXNiC8vJ
8pvpFoUq24kkC8xz1vF9gYKV/XTCaCBOY6Oo4nlMA/FsteQnyL/OQgYQ07SZpf0j6oBr0mp1vJgK
jPaWj3CxKBTyTLJSo4WQYEo67DOAs1M7cirF+WmBleoNKIEi4Wsqv6Bg7Iuo+XbXEW02pmPsuCRm
P3hbWFTR1ZNoDD/0AbnEQNJO5C1G/XdiQ8/61wBuv0NYWYPxiwEI+vv3GflhcvO1EDaPb4CzQJbX
ndo2QBMAJwmS2ox9pLqbPYyjz0xrA3KwGu+aSRhDlzmQwMCwKimdXsb+Qfd2mn9jKe4CxRl4RfLN
csXOtzI9I4yzhP8478uMqMYcIG8UcgeeLo+DCHea3O2xfdne9p4kqCHgdHtEsM2YJYMqywksL3i6
Y7/mzTbwDb7RSmpN1GSoS3rUMoTzw1QVMwVEZtpKFfRiBRtEYIO55Q3mYfxwS75IY0/xK2dW+4Cm
gfOqfqu5dZXK4Wqf2b5TFLZghv0O9u58kQfCAdW6ac+Th34Kr4ziwcJyikMJ1fSV8GszMeIGSGXT
t1IZWkCFeI9ca7TugATaLidqUfS5n1YYGPFfInCCsD0nNebhcMBUhQNokr5r1pKLTsFrr27djbgK
qnNiy52bPrKqFBehHsfIPIbgZ0YyhEznZX4+jBCC+4yrmALPM13gF1ct2B5Lhl9ejXfbuUeU9s5i
WM7ffwrbgAzAPOWgc8PCeAh8xM+1ZNFjVNpZa9ecUtIzTspn/cCVi45V0LMGFE2SuGI7d07Y4F5M
N9LyUsmmmdhnMM9iRgunpOesHeRw7+vBNeEb7EnG0n3XQreUUQYbWfyVvyiXeHDbfjz3S6mTTa0i
rRY879s0jfXchb9txS9Sm11pnqewF54dNHPVE8qF3aVdkhMKDC37SjQoO7BB6eVpUXJQzwJ3irxb
ZtOTqBNDRrrDC0iU/wK4nHBm8Cti3pd8maGXoYXz0cTd9uk/60mii4cesMCsbqmzIMdwYI3VmH7T
3T+dm3F8sOF0jXT1N7uEbhxq5DToqTqI/JX3/wPc8LMhNkmJHsaEJtT+SCHf0jfLVs+s+YWi2ZE2
G9qcPSnhpHZw1wIuG/LwTyXXZW5U3vwiHb9puCz5Zy05P5cHYwn1Bwq5fojqbwqf3rycYM7JW8at
LwavZ7UaFxiySB3Q6PkTN++XO0hQapvB64gPbC/8WPGcqL/yq0OhvG14WAiImDW7mYjBgYRzidHe
klAL8dv5ZJeLuRtKi6G/kvI7tIjNMf6u7Sc7QRHRtDZvQpicvThpdNfFzYmSord14FgQpziZpcAj
Ttegd9gbTPanBrn6KhD74BkTWzdaBnGIPSiGnhb1uAiweRvmjTwCdMHG+7EVFMCiK7p8zsoReJn3
9468bLXaDZOJ5SsOBWwW1tyHcIrpnPFzhHmnXMjEcoA0IP+Q4CK5HX7im6ceMQfF2USe7WDdY64S
6vW/oUeALd5CYPCypj4vld+UgerCNLVMiul3vV9ZINX2hFHZdKbEhnDBkv3rqhA1uzLgcthhI7n0
f5oQjxig3znHPepfS4g1is2DOnsqfPUBcTfnNMq6swxDTTV6oBcrZHt756AW0MIdK74Oy0JYBjea
vbspDEQOjMkIU6KkIX4Qk4lC6zv95GdoHl8wHnB05ksbmpoQK5gRY8BZeGeNzQYe7E7ObZ47Tn0J
kQnIMXtZB3rCgWCFYLBbchhMMpvwQ+bqS9pCW3bVDOuvnjprc8BOkj5d1EpbIUMhN+ltHrzo31uq
CWibE3m5PYhq86WhGeuCnYob514JvF0VA/vbPSsFtkOXzrjBOXW0WySF/HPRGYkaGgykrBlbfrQC
li2j4W3fPFTVok4dFri4Nc4r2XcVFYWWYWjcfTmdY1IMG6Zo0yewkCsCoRaqIPjO3jAhuDLxgF6W
9QnrUFuKJZhePGRnAi9fSKNwvgEipTtpH6+m/aR/KUoxTbyLSLhnPMvWm3BnjEk7VLUvzYfW7Bjr
P+xmEoLyZVSzutHlV8Nb/m1ZA5R043eoWPIytXwLWDqVuj8JPyP5qxgTa6Kwvx2BVKZzHmanev4g
VJ9poWxvFYZP7fRIobAyioBk892acYpXGcFpeVG+vqTLeqQla2QcKTczonG0EpgPRHdLg8DjvX9O
dYMGLShdZM1hrQ1To4FCc3Lrg/RCGKQSQXVaLaCIgHMnUL50Z8FCV9YiA4rDsiV+Tt4UogbzqyVg
v9GfUviqtLxjus9KYrq2ph8m8/p7UI7LiJ/xJnzWzfuJWYCKIoFK1AnqcPN61f1qVHzmcJ7YBfvG
F/t9T0B4SqosnM2mWkzkvEL2iW4CoECnVV7jhj1LJItqdnX64jO493uumyGAL/Mms/oJxoJy6ICq
iH3qPZQR0WOWq0jU79MQmZlMSWx8Zk/xi4U9q8+sraajdqXhurkKTwQLhIJdf+e/aVintfvAK1qA
82p/oBDtKsC1Yq99H1s+EpVWMBgq5cH/cdYMUaFjB7s3YC2omwbUO95PGv7EeVJnHFuOx0Yv6DaC
n85NkKADP/Tm78w2d5/yc/MHZSiVeH55giPOCrV2F+GalnTDceda2k+QA5GEIzKrCkBqtA9vUKGb
k3gVkaMMy7r18UhP3HqQSwzQqVucU2vUke3lxSKgq+O7wuYlxEqiHYi2s/YZFMGln3iByI+I7yFi
Tan9NvaZx72anY57ofWL+dlUM12H/26JkG1NRKYn3/1uWFSlb5m1MvAy7QOp5JzGjsnjP6cyO1gN
eIsU3P8FNLmKsgWqCIOM73NerFM8YAJhqQ8g8nmL+ew3Hxj7AHmFe5yDzC4u8a/Adww8oASvbewI
imE4yP3HW4kU7NiY/2TKH8SPGzPpDvaYAbiKT/HMrUY6uVYOLNmV86R51z/ghmQb+Ch+FECVINhp
EwREGjmScaUzleMjLHUa87tVtsn/oRyNcVwCsX1Xuwmv7V96iDY7oRwP4WjgQ0NzVgVHKAP58uUi
2TaxO4sToGIMMLFzXu7r+/QmcutuvxnxO+RpJ6rNHw6pU+5QASBzpZn8bOeJ89Atb9CfDFu9SuvT
pyFSu1gxMVYQhWI4QC+kkiSkiSNbryjVAQxMvE273AcyCYsOeDyIFvJV2glfaaggU5A9qzcFjwxu
Ftb98muF5ylRhKHHqJTDb2AMkpvvdycNswTcfdw/BY6TpCQqDDDfofzR7zYpPtXpawgtu1l0D7aP
CJjThxFHdtHcyhszpErGif3N/+QFuo8GfgUPX+FrqDwmYPqGAxtPaztDpivTFztARcKOcslZvfHM
DSsZ83bSChSLB5MyzvsCkeUspU20FWcEuP0IUTTS5qsVdX1PPuratWKCXK7zPORm7HsMAk+5BqV6
EL2g01IRs8RIq5wmC9W8NP/b8H6m9GE1Yj2x7bCTTDR6kmQSsIU/MVBGjb4E4eYgrdt9FCJ65tID
WGDU9ePIhGEz7F0dN8LMWDizwm/3VkeHYUtpLHbj2ZD2ufwnnWTyJ9xlYeRVKQgQ05ejULaEVaTI
cd/myA+x1CuVH7VRR+Ti82eVI9TDFieet08fmpF6Gg/jU0Uq0Zw5etIsbkQgU4gqN2SurCdMOn8c
CX6naBnuiHiHSomRLY34yXB0avBCTIVQFKA2qVYpdBrlPBTZiJbfmgLe7EM4LVVzTigpEyoGVRRr
TWiVG4gFitHvuI3J//ZDw9lCbHiWM/cgKcO2vpaoR3i8zw7pH6A6sxlj2/jH9w0EU8er8WsAykfs
LJOHys35T+hYTMC0459yzeuEZaABzRR9L1EtvBLVqfy9kCNz7aK1S2r7i5312/MQ77xUgjNovECe
OYOFO7OLvCr/MVyzsETjMGQstWOl/xg+X6CjvNi8oewklSuOlPGjV0TBC0j3TJXHwXcS/44FzOse
WpoXm/2224SeicLfcO+ICQF884s56FjfaPr01D+FozW/68Ixi+nwRRbyUZ9VwxayHEAwCMD6/8gy
x82uGWOJxgXmIdlvWJEa0K/xrKwBus49p6iMGVinukv1IIdbWey6qfheX3dgR5RzXap+lxogmwud
+ch1oRXnwpZmVYz0/dbRcKKprifI3OEoqX8icyo8ZReXvkUq4H/RDqADX6YKu/G1scOPOowAqVog
06epVsUiJ740+wIKadbfzBRRa32/ZSzjcas4NydvdTQqX8x0EqusMxGE5kCaoxq4l06U9RvO1MUa
4Ics66JSiTqJyfAKk9STf1jYoumtqr6THuFk4K5uE3n0VnVKFwrV/BRiR8oNTvPv2YoA+Fc6N37M
9SnFSfck4t6xQ0N1HzSMJ3dJ5IRa0tFEb2SxeRySTkeJWBaLcKCQzT/us1iE1JMVIU8zKwUbAS8I
NtoXAVLGTbRK0KuKHnOuMPEH+Gy5ZPefSQIYp6VvW0f4UKHE3a/xN5u7msfwY4weOntHgrdtqAeW
t+MBZBOGsfc7Rxm5ImGKVoRaqVzKlkxQRC9fYAbfWKYHMkMYFGOcc5f1YGKiE2yLBu8gGjuAH52n
EPZ3iT00aJHgAz+ZJFM6jbWRgfqNcm1Uusy6/b0jZRF6RTX9TceNx/8W0hTn0+aYtLVMSLs/J3Th
tM2tnOW3HzBIwE3wRqPA5zU/58C7VYM7dQPkUHK8sRycogRbLHf568X48Xq/S3AGigxRbmHxZ9nI
kFledbuIkvGoVBxUUnOeIFIbQXX4/4AFsTerxKy4hXktRVagxhlyif8khIyLnWrrSrui26ku8xfN
voEYyBcCKdF5BbfYymGfGrVeNyHJFCTx/nucgW0FS3b+79Z9wear+9v56reysvaq7nVTNHnav0Bz
bHIl/FgUDGl5fODrWvmB/DcuLqsJr1tJLX6iPaHUh7fMgzxRCmVQLJCnxitQ0Khinr8bh7lYP5DC
Whee7V976c4MXnNrE1uL7VUejKtQ+kaf9ZpWE+3KFd5beEpwTraAJVHYACUvZqb606v3Ap3B5P4j
VRgITs1b2Blks3qFONcN/T6QWqyDUM2RdO+lovkysmpiD1yG+E0mphuKArXKiKUq5Sns7y/Q9MUx
YDpy4GlOfQy9SqBsD2kELx14tAOephaCtxdYC+HCyqPJuF6rzqDEefcAb04V8kkMVEOynjN4XRK0
7XZgopD+fh8d+oj5TZi/MuGM8a7Y5K8qrIWMdabHxhOlOG9UdTP29omQYmJpwmJnwi9sKl8pEFEM
MclXK6ZunkkK8Ustves+CiV+iYiPWviron0RFymKUEKdwetdOLynpaTHhujuBX1odWw+6rKw3JO1
qcZ4eMUybRI0hc321Nx6PyIvsJ8dMfPrOR2BNYcgtsxFeGmuFIvCXPGqOp/ZGsWeLVmWRWi6ar+K
tCcTHp7Fw0wq8z4bT6MrP54EA1FbSgJd1RDuf44glmjjtYbKqZlf6ZCf4m8m1WxF4xAbFpvQaRm2
wJm9fRlR0twURHFXCpOA0oN7gecJmnrIM3n/q2uj9xvzvlyDYCqTxFKOnnE7ZK749tmSzQSf2t4f
jnlhGGYXH8Ee2woXnFSW95vFQg9yFbKZPqSe3yoPFKl/nQsLKE8/JsHv0Cf111csUKxxH3V4N6tC
Zf/kfiCvM9wjTTK26KWLUYJF7VpPa/SHVGFFpT+ACibkx+r4xyAxHW8J7hnD+/JGlgIGkXjre4GE
clYfCM5C8L4BEoyjepStUpgqbxWLfCFYQavNAr55hz5HB5LSUaaYAFXhI+/rv36sZmByA3DeYTXp
Je+MCJ0YW6Ll4S/LnZ+v9o/K2G0rZMLDz2uxEVNeDwtKliuvJocQxwLQV/LI3j/yjI5bletpKoiM
ji7PME8DWZ/6JZi5TG3GHCjh9N3Iaw7/BCFB/qNezDvRu3Ec1s01liYMTTRs6BHqSA/c2oObYAzX
jd+L6b5Q2TiMaEiDLirQiMfn+9xzAiMoYh+c3Fo3ax4OUCJajSDzkN4hJxGihmKCSmZJJGqHOyJU
6wPwBQY6JUvQTlS+HFKLfXN0msQYoQh67FtF2+N9FBN8tZyRL1CSTlJXp4UAXReVlDL6VZsRwPkK
C/HT5cA7y0VeySB6lbN8r8jOHHfWKOIp7d/k7ABkfZ03OXUhrZg6oBoQoFrRTMzw+YMEhP2bTW0U
WFRQpx43ptcGRMVLV9ASbMTG5qR32nY4hIhy1Ow9PnNDYbUEqW7CKFS1DH53Q8YmUm5QLXa2+Gn4
RIE2FcaGhtzSnnyuLdi+g6RdsiDhoS5frTqMORHXgq49DETjYouot2GQ4fluyydiEqvX35ldL0ug
dpq5f7+/rCliRHrhuSk/eBeYK0Ud6SU2Kljm+x9j4uHraOnYdP5WfNZfn/f7QugAF1Esb/xP0Iyz
MozJ/7DhoPumdyBgDccRqrx718Y0nAw77/OJjMZYbVp+T3enY/SiT7VllW/sHwvDx8EjppUfYdiK
72z761avihJFIFv2fyKl9zPPTjdMxucDF8eT0J9QNZXkOY+x095ADMx1O9GGKSt26d1bpXwgxA3J
vUE7a6yq687LiGgOOm3Mj1n4IUNRdm7QZuXPD4R79gMstcdF9A15wi0tpeuYvWeH97uNnr2n5drJ
Ufy6eXWQRRaU2Sn49jaT7TnNPGGkcwlXwpiMDf3a72pWXAi3Ay8d5XyW4dasim4ykxkHA/We+3Qu
eZqpLdrh8unRrh0UfLrtiA4uOGfJmRRU8DACPEcgpSCTiAPOEtpa/hUi+OEqkl0mFQ==
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
