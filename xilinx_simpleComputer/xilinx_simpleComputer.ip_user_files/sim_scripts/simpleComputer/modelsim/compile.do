vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../xilinx_simpleComputer.gen/sources_1/bd/simpleComputer/sim/simpleComputer.v" \


vlog -work xil_defaultlib \
"glbl.v"

