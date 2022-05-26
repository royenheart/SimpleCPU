onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Cache02Instr_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Cache02Instr.udo}

run -all

quit -force
