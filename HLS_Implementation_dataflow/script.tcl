############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project bigtest
set_top karastuba_mul
add_files multest.cc
add_files BigIntegerHLS.h
add_files -tb multest.cc -cflags "-Wno-unknown-pragmas"   -csimflags "-Wno-unknown-pragmas"
add_files -tb BigIntegerHLS.h -cflags "-Wno-unknown-pragmas"   -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xcvu095-ffva2104-2-e}
create_clock -period 3 -name default
config_sdx -target none
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
set_clock_uncertainty 12.5%
#source "./bigtest/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design -trace_level port -tool xsim
#export_design -rtl verilog -format ip_catalog
