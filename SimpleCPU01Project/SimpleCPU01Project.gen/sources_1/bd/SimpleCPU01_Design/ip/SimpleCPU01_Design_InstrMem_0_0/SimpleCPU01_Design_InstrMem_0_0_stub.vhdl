-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Mon Mar 21 22:18:10 2022
-- Host        : LAPTOP-TDKNUURL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Git/SimpleCPU01/SimpleCPU01Project/SimpleCPU01Project.gen/sources_1/bd/SimpleCPU01_Design/ip/SimpleCPU01_Design_InstrMem_0_0/SimpleCPU01_Design_InstrMem_0_0_stub.vhdl
-- Design      : SimpleCPU01_Design_InstrMem_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SimpleCPU01_Design_InstrMem_0_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RD : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end SimpleCPU01_Design_InstrMem_0_0;

architecture stub of SimpleCPU01_Design_InstrMem_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[31:0],RD[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "InstrMem,Vivado 2021.2";
begin
end;
