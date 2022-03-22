vlib work
vlib riviera

vlib riviera/dist_mem_gen_v8_0_13
vlib riviera/xil_defaultlib

vmap dist_mem_gen_v8_0_13 riviera/dist_mem_gen_v8_0_13
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work dist_mem_gen_v8_0_13  -v2k5 \
"../../../../SimpleCPU01Project.gen/sources_1/bd/SimpleCPU01Design/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/SimpleCPU01Design/ip/SimpleCPU01Design_dist_mem_gen_0_0/sim/SimpleCPU01Design_dist_mem_gen_0_0.v" \
"../../../bd/SimpleCPU01Design/sim/SimpleCPU01Design.v" \

vlog -work xil_defaultlib \
"glbl.v"

