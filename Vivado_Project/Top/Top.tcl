#process for getting script file directory
variable dispScriptFile [file normalize [info script]]
proc getScriptDirectory {} {
    variable dispScriptFile
    set scriptFolder [file dirname $dispScriptFile]
    return $scriptFolder
}

#change working directory to script file directory
cd [getScriptDirectory]
#set result directory
set resultDir .\/result
#set ip_repo_path to script dir
set ip_repo_path [getScriptDirectory]\/..\/
#redifine resultDir HERE if needed
#set resutDir C:\/User\/result

file mkdir $resultDir

# CONNECT SYSTEM
create_project VGA_BRAM_controller $resultDir  -part xc7z010clg400-1 -force
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
create_bd_design "VGA_BRAM_controller"
update_compile_order -fileset sources_1
#add ip-s to main repo
set_property  ip_repo_paths  $ip_repo_path [current_project]
update_ip_catalog



#add and configure zynq
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
endgroup

set_property -dict [list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} CONFIG.PCW_SD0_GRP_CD_ENABLE {1} CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} CONFIG.PCW_SD0_GRP_WP_ENABLE {1} CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1}] [get_bd_cells processing_system7_0]

apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]


#add BLOCK MEMORY GENERATOR and configure it
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0
set_property -dict [list CONFIG.Memory_Type {Simple_Dual_Port_RAM} CONFIG.Enable_32bit_Address {true} CONFIG.Use_Byte_Write_Enable {true} CONFIG.Byte_Size {8} CONFIG.Assume_Synchronous_Clk {true} CONFIG.Write_Depth_A {38400} CONFIG.Operating_Mode_A {NO_CHANGE} CONFIG.Operating_Mode_B {READ_FIRST} CONFIG.Enable_B {Always_Enabled} CONFIG.Register_PortA_Output_of_Memory_Primitives {false} CONFIG.Register_PortB_Output_of_Memory_Primitives {true} CONFIG.Use_RSTA_Pin {false} CONFIG.Use_RSTB_Pin {true} CONFIG.Port_B_Clock {100} CONFIG.Port_B_Enable_Rate {100} CONFIG.use_bram_block {Stand_Alone} CONFIG.EN_SAFETY_CKT {false}] [get_bd_cells blk_mem_gen_0]
set_property -dict [list CONFIG.Register_PortB_Output_of_Memory_Primitives {false} CONFIG.Use_RSTB_Pin {false}] [get_bd_cells blk_mem_gen_0]
endgroup
set_property -dict [list CONFIG.Enable_B {Use_ENB_Pin}] [get_bd_cells blk_mem_gen_0]


#add BRAM CONTROLLER and configure it
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0
set_property -dict [list CONFIG.SINGLE_PORT_BRAM {1}] [get_bd_cells axi_bram_ctrl_0]
endgroup
connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/axi_bram_ctrl_0/S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}}  [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
#Change address range
set_property range 256K [get_bd_addr_segs {processing_system7_0/Data/SEG_axi_bram_ctrl_0_Mem0}]

#add VGA and configure it
startgroup
create_bd_cell -type ip -vlnv FTN:user:VGA_IP:1.0 VGA_IP_0
endgroup

#apply BD Automation
startgroup
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/axi_bram_ctrl_0/S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}}  [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:clkrst -config { Clk {/processing_system7_0/FCLK_CLK0 (100 MHz)} Freq {100} Ref_Clk0 {} Ref_Clk1 {} Ref_Clk2 {}}  [get_bd_pins VGA_IP_0/clk]
endgroup

#create output ports and connect them
create_bd_port -dir O -from 15 -to 0 -type data RGB_Out
connect_bd_net [get_bd_ports RGB_Out] [get_bd_pins VGA_IP_0/vga_rgb]
create_bd_port -dir O -type data Hsync
connect_bd_net [get_bd_ports Hsync] [get_bd_pins VGA_IP_0/vga_hsync]
create_bd_port -dir O -type data Vsync
connect_bd_net [get_bd_ports Vsync] [get_bd_pins VGA_IP_0/vga_vsync]

#connect others
connect_bd_net [get_bd_pins VGA_IP_0/bram_addr] [get_bd_pins blk_mem_gen_0/addrb]
connect_bd_net [get_bd_pins VGA_IP_0/bram_en] [get_bd_pins blk_mem_gen_0/enb]
connect_bd_net [get_bd_pins blk_mem_gen_0/doutb] [get_bd_pins VGA_IP_0/bram_din]
connect_bd_net [get_bd_pins blk_mem_gen_0/clkb] [get_bd_pins processing_system7_0/FCLK_CLK0]



#add constraint file
add_files -fileset constrs_1 -norecurse Top.xdc

regenerate_bd_layout
#validating design
validate_bd_design
#Creating hdl wrapper
make_wrapper -files [get_files $resultDir/VGA_BRAM_controller.srcs/sources_1/bd/VGA_BRAM_controller/VGA_BRAM_controller.bd] -top
add_files -norecurse $resultDir/VGA_BRAM_controller.srcs/sources_1/bd/VGA_BRAM_controller/hdl/VGA_BRAM_controller_wrapper.v

