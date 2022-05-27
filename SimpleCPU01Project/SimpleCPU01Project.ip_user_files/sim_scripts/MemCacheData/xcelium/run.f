-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_13 \
  "../../../../../Module/Storage/BlockDesign/MemCacheData/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/MemCacheData/ip/MemCacheData_dist_mem_gen_0_1/sim/MemCacheData_dist_mem_gen_0_1.v" \
  "../../../bd/MemCacheData/sim/MemCacheData.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

