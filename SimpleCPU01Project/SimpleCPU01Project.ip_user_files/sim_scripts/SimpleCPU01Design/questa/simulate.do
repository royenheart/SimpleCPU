onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib SimpleCPU01Design_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {SimpleCPU01Design.udo}

run -all

quit -force
