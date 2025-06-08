-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jun  5 13:31:16 2024
-- Host        : DESKTOP-3F0U81A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Korisnik/Desktop/VGA_BRAM/Vivado_Project/Top/result/VGA_BRAM_controller.gen/sources_1/bd/VGA_BRAM_controller/ip/VGA_BRAM_controller_VGA_IP_0_0/VGA_BRAM_controller_VGA_IP_0_0_stub.vhdl
-- Design      : VGA_BRAM_controller_VGA_IP_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VGA_BRAM_controller_VGA_IP_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_rgb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : out STD_LOGIC
  );

end VGA_BRAM_controller_VGA_IP_0_0;

architecture stub of VGA_BRAM_controller_VGA_IP_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,vga_hsync,vga_vsync,vga_rgb[15:0],bram_addr[31:0],bram_din[31:0],bram_en";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "VGA,Vivado 2020.2";
begin
end;
