onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib instROM_opt

do {wave.do}

view wave
view structure
view signals

do {instROM.udo}

run -all

quit -force
