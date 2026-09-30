## Top-level combined display I/O constraints — Artix-7 (Basys3) board
## 2 input switches, 5 output LEDs (one per gate)

set_property PACKAGE_PIN V17 [get_ports Inp_1]
set_property PACKAGE_PIN V16 [get_ports Inp_2]
set_property PACKAGE_PIN U16 [get_ports Outp1]
set_property PACKAGE_PIN E19 [get_ports Outp2]
set_property PACKAGE_PIN U19 [get_ports Outp3]
set_property PACKAGE_PIN V19 [get_ports Outp4]
set_property PACKAGE_PIN W18 [get_ports Outp5]

set_property IOSTANDARD LVCMOS33 [get_ports Inp_1]
set_property IOSTANDARD LVCMOS33 [get_ports Inp_2]
set_property IOSTANDARD LVCMOS33 [get_ports Outp1]
set_property IOSTANDARD LVCMOS33 [get_ports Outp2]
set_property IOSTANDARD LVCMOS33 [get_ports Outp3]
set_property IOSTANDARD LVCMOS33 [get_ports Outp4]
set_property IOSTANDARD LVCMOS33 [get_ports Outp5]
