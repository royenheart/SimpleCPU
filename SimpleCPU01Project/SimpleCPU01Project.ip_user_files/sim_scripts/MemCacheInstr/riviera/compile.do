vlib work
vlib riviera

vlib riviera/dist_mem_gen_v8_0_13
vlib riviera/xil_defaultlib

vmap dist_mem_gen_v8_0_13 riviera/dist_mem_gen_v8_0_13
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work dist_mem_gen_v8_0_13  -v2k5 \
"../../../../../Module/Storage/BlockDesign/MemCacheInstr/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/MemCacheInstr/ip/MemCacheInstr_dist_mem_gen_0_0/sim/MemCacheInstr_dist_mem_gen_0_0.v" \
"../../../bd/MemCacheInstr/sim/MemCacheInstr.v" \

vlog -work xil_defaultlib \
"glbl.v"

