# High-Performance-Karatsuba-Multiplier-HLS-FPGA
Based on Vivado HLS 2019.2, implement High-Performance Karatsuba Multiplier in High-Level Synthesis (HLS) for FPGA Based on Recursive Template.
The design provides parameters which can help user to customize the multiplier according to different requirements of operand bitwidth, performance and resource cost.

The utilization of this open source project should follow the [GPL-3.0 License](https://github.com/zslwyuan/High-Performance-Karatsuba-Multiplier-HLS-FPGA/blob/master/LICENSE). 

(^\_^) if this project helps you, a **STAR** will be encouragement. 



When handling 4096x4096=>8192, the performance and resource cost are shown below (left is for non-dataflow design; right is for dataflow design):

<img src="https://github.com/zslwyuan/High-Performance-Karatsuba-Multiplier-HLS-FPGA/blob/master/image/report.png" width="400"> <img src="https://github.com/zslwyuan/High-Performance-Karatsuba-Multiplier-HLS-FPGA/blob/master/image/report_dataflow.png" width="400"> 




# HLS Implementation 

located in the directory ["HLS_Implementation"](https://github.com/zslwyuan/High-Performance-Karatsuba-Multiplier-HLS-FPGA/tree/master/HLS_Implementation)

Use template in C++ to generate recursive multiplication tree during compilation
which can make full use of parallelism of Karatsuba multiplier

each loop are pipelined.

Another version will provide [dataflow processing]((https://github.com/zslwyuan/High-Performance-Karatsuba-Multiplier-HLS-FPGA/tree/master/HLS_Implementation_dataflow)).

Detailed comments can be found in the source code.

the outline of the design is shown below:

<img src="https://github.com/zslwyuan/High-Performance-Karatsuba-Multiplier-HLS-FPGA/blob/master/image/design.png" width="400"> 

# Software Implementation 

located in the directory ["Software_Implementation"](https://github.com/zslwyuan/High-Performance-Karatsuba-Multiplier-HLS-FPGA/tree/master/Software_Implementation)

the same as HLS version 

but generate random input and use GMP library to verify the results