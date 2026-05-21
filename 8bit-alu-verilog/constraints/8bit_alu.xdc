## Clock Signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0 5} [get_ports clk]

## Input A[7:0] -> SW0 to SW7
set_property PACKAGE_PIN V17 [get_ports {A[0]}]
set_property PACKAGE_PIN V16 [get_ports {A[1]}]
set_property PACKAGE_PIN W16 [get_ports {A[2]}]
set_property PACKAGE_PIN W17 [get_ports {A[3]}]
set_property PACKAGE_PIN W15 [get_ports {A[4]}]
set_property PACKAGE_PIN V15 [get_ports {A[5]}]
set_property PACKAGE_PIN W14 [get_ports {A[6]}]
set_property PACKAGE_PIN W13 [get_ports {A[7]}]

## Input B[7:0] -> SW8 to SW15
set_property PACKAGE_PIN V2 [get_ports {B[0]}]
set_property PACKAGE_PIN T3 [get_ports {B[1]}]
set_property PACKAGE_PIN T2 [get_ports {B[2]}]
set_property PACKAGE_PIN R3 [get_ports {B[3]}]
set_property PACKAGE_PIN W2 [get_ports {B[4]}]
set_property PACKAGE_PIN U1 [get_ports {B[5]}]
set_property PACKAGE_PIN T1 [get_ports {B[6]}]
set_property PACKAGE_PIN R2 [get_ports {B[7]}]

## SEL Inputs using Push Buttons
set_property PACKAGE_PIN U18 [get_ports {SEL[0]}]
set_property PACKAGE_PIN T18 [get_ports {SEL[1]}]
set_property PACKAGE_PIN W19 [get_ports {SEL[2]}]

## Output Y[7:0] -> LEDs
set_property PACKAGE_PIN U16 [get_ports {Y[0]}]
set_property PACKAGE_PIN E19 [get_ports {Y[1]}]
set_property PACKAGE_PIN U19 [get_ports {Y[2]}]
set_property PACKAGE_PIN V19 [get_ports {Y[3]}]
set_property PACKAGE_PIN W18 [get_ports {Y[4]}]
set_property PACKAGE_PIN U15 [get_ports {Y[5]}]
set_property PACKAGE_PIN U14 [get_ports {Y[6]}]
set_property PACKAGE_PIN V14 [get_ports {Y[7]}]

## Carry Output
set_property PACKAGE_PIN V13 [get_ports Carry]

## Zero Flag Output
set_property PACKAGE_PIN V3 [get_ports Zero]

## IOSTANDARD
set_property IOSTANDARD LVCMOS33 [get_ports A[*]]
set_property IOSTANDARD LVCMOS33 [get_ports B[*]]
set_property IOSTANDARD LVCMOS33 [get_ports SEL[*]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[*]]
set_property IOSTANDARD LVCMOS33 [get_ports Carry]
set_property IOSTANDARD LVCMOS33 [get_ports Zero]