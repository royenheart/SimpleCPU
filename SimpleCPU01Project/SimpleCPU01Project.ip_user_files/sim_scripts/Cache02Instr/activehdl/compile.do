vlib work
vlib activehdl

vlib activehdl/blk_mem_gen_v8_4_5
vlib activehdl/xil_defaultlib

vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work blk_mem_gen_v8_4_5  -v2k5 \
"../../../../../Module/Cache/BlockDesign/Cache02Instr/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Cache02Instr/ip/Cache02Instr_blk_mem_gen_0_0/sim/Cache02Instr_blk_mem_gen_0_0.v" \
"../../../bd/Cache02Instr/sim/Cache02Instr.v" \

vlog -work xil_defaultlib \
"glbl.v"
