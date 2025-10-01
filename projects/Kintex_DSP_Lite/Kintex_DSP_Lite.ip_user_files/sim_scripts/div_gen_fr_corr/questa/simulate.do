onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib div_gen_fr_corr_opt

do {wave.do}

view wave
view structure
view signals

do {div_gen_fr_corr.udo}

run -all

quit -force
