#!/usr/bin/env bash
# ****************************************************************************
# Vivado (TM) v2023.2.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sat Apr 06 23:46:40 CEST 2024
# SW Build 4126759 on Thu Feb  8 23:52:05 MST 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tb_simpleProcessor_behav xil_defaultlib.tb_simpleProcessor xil_defaultlib.glbl -log elaborate.log"
xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tb_simpleProcessor_behav xil_defaultlib.tb_simpleProcessor xil_defaultlib.glbl -log elaborate.log

