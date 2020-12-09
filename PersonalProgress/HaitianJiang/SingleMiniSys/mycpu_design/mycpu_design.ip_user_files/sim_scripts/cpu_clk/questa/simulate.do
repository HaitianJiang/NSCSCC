onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib cpu_clk_opt

do {wave.do}

view wave
view structure
view signals

do {cpu_clk.udo}

run -all

quit -force