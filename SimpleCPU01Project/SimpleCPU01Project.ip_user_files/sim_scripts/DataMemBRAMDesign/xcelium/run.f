-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../SimpleCPU01Project.gen/sources_1/bd/DataMemBRAMDesign/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DataMemBRAMDesign/ip/DataMemBRAMDesign_blk_mem_gen_0_0/sim/DataMemBRAMDesign_blk_mem_gen_0_0.v" \
  "../../../bd/DataMemBRAMDesign/sim/DataMemBRAMDesign.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib
