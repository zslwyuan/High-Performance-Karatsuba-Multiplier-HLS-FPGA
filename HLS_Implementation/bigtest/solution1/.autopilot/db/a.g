#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tingyuan/Documents/High-Performance-Karatsuba-Multiplier-HLS-FPGA/HLS_Implementation/bigtest/solution1/.autopilot/db/a.g.bc ${1+"$@"}
