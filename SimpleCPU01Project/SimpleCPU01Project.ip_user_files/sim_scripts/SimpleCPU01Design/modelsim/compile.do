vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/dist_mem_gen_v8_0_13
vlib modelsim_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_13 modelsim_lib/msim/dist_mem_gen_v8_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work dist_mem_gen_v8_0_13  -incr -mfcu \
"../../../../SimpleCPU01Project.gen/sources_1/bd/SimpleCPU01Design/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/SimpleCPU01Design/ip/SimpleCPU01Design_dist_mem_gen_0_0/sim/SimpleCPU01Design_dist_mem_gen_0_0.v" \
"../../../bd/SimpleCPU01Design/sim/SimpleCPU01Design.v" \

vlog -work xil_defaultlib \
"glbl.v"

