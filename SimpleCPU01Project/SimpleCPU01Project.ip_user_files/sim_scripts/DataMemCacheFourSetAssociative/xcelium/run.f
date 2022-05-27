-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../../Module/Cache/BlockDesign/DataMemCacheFourSetAssociative/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/DataMemCacheFourSetAssociative/ip/DataMemCacheFourSetAssociative_blk_mem_gen_0_0/sim/DataMemCacheFourSetAssociative_blk_mem_gen_0_0.v" \
  "../../../bd/DataMemCacheFourSetAssociative/sim/DataMemCacheFourSetAssociative.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

