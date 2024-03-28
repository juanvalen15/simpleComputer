transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib \
"../../../../xilinx_simpleComputer.gen/sources_1/bd/simpleComputer/sim/simpleComputer.v" \


vlog -work xil_defaultlib \
"glbl.v"

