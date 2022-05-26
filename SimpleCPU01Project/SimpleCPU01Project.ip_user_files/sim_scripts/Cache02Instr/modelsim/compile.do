vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/blk_mem_gen_v8_4_5
vlib modelsim_lib/msim/xil_defaultlib

vmap blk_mem_gen_v8_4_5 modelsim_lib/msim/blk_mem_gen_v8_4_5
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu \
"../../../../../Module/Cache/BlockDesign/Cache02Instr/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/Cache02Instr/ip/Cache02Instr_blk_mem_gen_0_0/sim/Cache02Instr_blk_mem_gen_0_0.v" \
"../../../bd/Cache02Instr/sim/Cache02Instr.v" \

vlog -work xil_defaultlib \
"glbl.v"

