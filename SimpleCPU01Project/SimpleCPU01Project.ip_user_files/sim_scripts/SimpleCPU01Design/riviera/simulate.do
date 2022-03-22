onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+SimpleCPU01Design -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.SimpleCPU01Design xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {SimpleCPU01Design.udo}

run -all

endsim

quit -force
