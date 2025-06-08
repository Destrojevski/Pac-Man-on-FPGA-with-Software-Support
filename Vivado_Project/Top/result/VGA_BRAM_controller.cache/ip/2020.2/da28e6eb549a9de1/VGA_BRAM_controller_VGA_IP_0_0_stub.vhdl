-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jun  5 12:30:44 2024
-- Host        : DESKTOP-3F0U81A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VGA_BRAM_controller_VGA_IP_0_0_stub.vhdl
-- Design      : VGA_BRAM_controller_VGA_IP_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,vga_hsync,vga_vsync,vga_rgb[15:0],bram_addr[31:0],bram_din[31:0],bram_en";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "VGA,Vivado 2020.2";
begin
end;
