onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+axis_fifo_downsamp -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axis_fifo_downsamp xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {axis_fifo_downsamp.udo}

run -all

endsim

quit -force
