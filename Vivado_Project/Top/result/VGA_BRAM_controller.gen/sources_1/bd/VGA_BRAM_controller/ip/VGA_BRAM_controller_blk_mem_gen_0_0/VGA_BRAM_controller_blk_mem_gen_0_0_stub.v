// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jun  5 13:30:37 2024
// Host        : DESKTOP-3F0U81A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Korisnik/Desktop/VGA_BRAM/Vivado_Project/Top/result/VGA_BRAM_controller.gen/sources_1/bd/VGA_BRAM_controller/ip/VGA_BRAM_controller_blk_mem_gen_0_0/VGA_BRAM_controller_blk_mem_gen_0_0_stub.v
// Design      : VGA_BRAM_controller_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module VGA_BRAM_controller_blk_mem_gen_0_0(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[3:0],addra[31:0],dina[31:0],clkb,enb,addrb[31:0],doutb[31:0]" */;
  input clka;
  input ena;
  input [3:0]wea;
  input [31:0]addra;
  input [31:0]dina;
  input clkb;
  input enb;
  input [31:0]addrb;
  output [31:0]doutb;
endmodule
