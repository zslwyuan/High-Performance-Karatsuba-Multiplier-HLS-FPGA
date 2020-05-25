
/home/tingyuan/Softwares/Xilinx/Vivado/2019.2/bin/xelab xil_defaultlib.apatb_karastuba_mul_top glbl -prj karastuba_mul.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/home/tingyuan/Softwares/Xilinx/Vivado/2019.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s karastuba_mul -debug wave
/home/tingyuan/Softwares/Xilinx/Vivado/2019.2/bin/xsim --noieeewarnings karastuba_mul -tclbatch karastuba_mul.tcl

