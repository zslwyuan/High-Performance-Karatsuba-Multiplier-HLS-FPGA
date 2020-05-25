# High-Performance-Karatsuba-Multiplier-HLS-FPGA
Based on Vivado HLS 2019.2, implement High-Performance Karatsuba Multiplier in High-Level Synthesis (HLS) for FPGA Based on Recursive Template




When handling 4096x4096=>8192, the performance and resource cost are shown below:

<img src="https://github.com/zslwyuan/Light-HLS/blob/master/Images/Light-HLS-Overview.png" width="800"> 


(^\_^) if this project helps you, a star will be encouragement. 

# HLS Implementation 

located in the directory "HLS_Implementation"

Use template in C++ to generate recursive multiplication tree during compilation
which can make full use of parallelism of Karatsuba multiplier

each loop are pipelined.

Later version will provides dataflow processing.

Detailed comments can be found in the source code.

<img src="https://github.com/zslwyuan/Light-HLS/blob/master/Images/Light-HLS-Overview.png" width="800"> 

# Software Implementation 

located in the directory "Software_Implementation"

the same as HLS version 

but generate random input and use GMP library to verify the results