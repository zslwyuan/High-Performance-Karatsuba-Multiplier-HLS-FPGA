# High-Performance-Karatsuba-Multiplier-HLS-FPGA
Implement High-Performance Karatsuba Multiplier in High-Level Synthesis (HLS) for FPGA Based on Recursive Template

# HLS Implementation 

located in the directory "HLS_Implementation"

Use template in C++ to generate recursive multiplication tree during compilation
which can make full use of parallelism of Karatsuba multiplier

each loop are pipelined.

Later version will provides dataflow processing.

Detailed comments can be found in the source code.


# Software Implementation 

located in the directory "Software_Implementation"

the same as HLS version 

but generate random input and use GMP library to verify the results