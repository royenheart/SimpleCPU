onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib MemCacheInstr_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {MemCacheInstr.udo}

run -all

quit -force
