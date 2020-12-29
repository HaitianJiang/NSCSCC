onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+uart_connect_pc -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.uart_connect_pc xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {uart_connect_pc.udo}

run -all

endsim

quit -force
