-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Mon Mar 21 22:18:10 2022
-- Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Git/SimpleCPU01/SimpleCPU01Project/SimpleCPU01Project.gen/sources_1/bd/SimpleCPU01_Design/ip/SimpleCPU01_Design_InstrMem_0_0/SimpleCPU01_Design_InstrMem_0_0_sim_netlist.vhdl
-- Design      : SimpleCPU01_Design_InstrMem_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SimpleCPU01_Design_InstrMem_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RD : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SimpleCPU01_Design_InstrMem_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SimpleCPU01_Design_InstrMem_0_0 : entity is "SimpleCPU01_Design_InstrMem_0_0,InstrMem,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of SimpleCPU01_Design_InstrMem_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of SimpleCPU01_Design_InstrMem_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of SimpleCPU01_Design_InstrMem_0_0 : entity is "InstrMem,Vivado 2021.2";
end SimpleCPU01_Design_InstrMem_0_0;

architecture STRUCTURE of SimpleCPU01_Design_InstrMem_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  RD(31) <= \<const0>\;
  RD(30) <= \<const0>\;
  RD(29) <= \<const0>\;
  RD(28) <= \<const0>\;
  RD(27) <= \<const0>\;
  RD(26) <= \<const0>\;
  RD(25) <= \<const0>\;
  RD(24) <= \<const0>\;
  RD(23) <= \<const0>\;
  RD(22) <= \<const0>\;
  RD(21) <= \<const0>\;
  RD(20) <= \<const0>\;
  RD(19) <= \<const0>\;
  RD(18) <= \<const0>\;
  RD(17) <= \<const0>\;
  RD(16) <= \<const0>\;
  RD(15) <= \<const0>\;
  RD(14) <= \<const0>\;
  RD(13) <= \<const0>\;
  RD(12) <= \<const0>\;
  RD(11) <= \<const0>\;
  RD(10) <= \<const0>\;
  RD(9) <= \<const0>\;
  RD(8) <= \<const0>\;
  RD(7) <= \<const0>\;
  RD(6) <= \<const0>\;
  RD(5) <= \<const0>\;
  RD(4) <= \<const0>\;
  RD(3) <= \<const0>\;
  RD(2) <= \<const0>\;
  RD(1) <= \<const0>\;
  RD(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
