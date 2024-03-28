transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+simpleComputer  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.simpleComputer xil_defaultlib.glbl

do {simpleComputer.udo}

run

endsim

quit -force