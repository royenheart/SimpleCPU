vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/blk_mem_gen_v8_4_5
vlib modelsim_lib/msim/xil_defaultlib

vmap blk_mem_gen_v8_4_5 modelsim_lib/msim/blk_mem_gen_v8_4_5
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu \
"../../../../../Module/Cache/BlockDesign/Cache02Data/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/Cache02Data/ip/Cache02Data_blk_mem_gen_0_0/sim/Cache02Data_blk_mem_gen_0_0.v" \
"../../../bd/Cache02Data/sim/Cache02Data.v" \

vlog -work xil_defaultlib \
"glbl.v"

