onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib uart_connect_pc_opt

do {wave.do}

view wave
view structure
view signals

do {uart_connect_pc.udo}

run -all

quit -force
