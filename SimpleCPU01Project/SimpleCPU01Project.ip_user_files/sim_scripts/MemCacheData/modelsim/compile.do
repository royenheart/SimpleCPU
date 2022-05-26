vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/dist_mem_gen_v8_0_13
vlib modelsim_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_13 modelsim_lib/msim/dist_mem_gen_v8_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work dist_mem_gen_v8_0_13  -incr -mfcu \
"../../../../../Module/Storage/BlockDesign/MemCacheData/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/MemCacheData/ip/MemCacheData_dist_mem_gen_0_1/sim/MemCacheData_dist_mem_gen_0_1.v" \
"../../../bd/MemCacheData/sim/MemCacheData.v" \

vlog -work xil_defaultlib \
"glbl.v"

