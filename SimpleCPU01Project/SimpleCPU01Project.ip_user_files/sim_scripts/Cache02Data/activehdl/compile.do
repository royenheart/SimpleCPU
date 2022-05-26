vlib work
vlib activehdl

vlib activehdl/blk_mem_gen_v8_4_5
vlib activehdl/xil_defaultlib

vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work blk_mem_gen_v8_4_5  -v2k5 \
"../../../../../Module/Cache/BlockDesign/Cache02Data/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Cache02Data/ip/Cache02Data_blk_mem_gen_0_0/sim/Cache02Data_blk_mem_gen_0_0.v" \
"../../../bd/Cache02Data/sim/Cache02Data.v" \

vlog -work xil_defaultlib \
"glbl.v"

