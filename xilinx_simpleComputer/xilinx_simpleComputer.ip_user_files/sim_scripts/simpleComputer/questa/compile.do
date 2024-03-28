vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../xilinx_simpleComputer.gen/sources_1/bd/simpleComputer/sim/simpleComputer.v" \


vlog -work xil_defaultlib \
"glbl.v"

