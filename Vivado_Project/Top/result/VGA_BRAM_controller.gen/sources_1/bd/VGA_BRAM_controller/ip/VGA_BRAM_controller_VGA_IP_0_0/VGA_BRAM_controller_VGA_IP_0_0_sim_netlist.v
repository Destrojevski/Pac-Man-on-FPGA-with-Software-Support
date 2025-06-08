// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jun  5 13:31:16 2024
// Host        : DESKTOP-3F0U81A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Korisnik/Desktop/VGA_BRAM/Vivado_Project/Top/result/VGA_BRAM_controller.gen/sources_1/bd/VGA_BRAM_controller/ip/VGA_BRAM_controller_VGA_IP_0_0/VGA_BRAM_controller_VGA_IP_0_0_sim_netlist.v
// Design      : VGA_BRAM_controller_VGA_IP_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "VGA_BRAM_controller_VGA_IP_0_0,VGA,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "VGA,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module VGA_BRAM_controller_VGA_IP_0_0
   (clk,
    reset,
    vga_hsync,
    vga_vsync,
    vga_rgb,
    bram_addr,
    bram_din,
    bram_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN VGA_BRAM_controller_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output vga_hsync;
  output vga_vsync;
  output [15:0]vga_rgb;
  output [31:0]bram_addr;
  input [31:0]bram_din;
  output bram_en;

  wire \<const0> ;
  wire \<const1> ;
  wire [18:2]\^bram_addr ;
  wire [31:0]bram_din;
  wire clk;
  wire reset;
  wire vga_hsync;
  wire [15:0]vga_rgb;
  wire vga_vsync;
  wire NLW_inst_bram_en_UNCONNECTED;
  wire [31:0]NLW_inst_bram_addr_UNCONNECTED;

  assign bram_addr[31] = \<const0> ;
  assign bram_addr[30] = \<const0> ;
  assign bram_addr[29] = \<const0> ;
  assign bram_addr[28] = \<const0> ;
  assign bram_addr[27] = \<const0> ;
  assign bram_addr[26] = \<const0> ;
  assign bram_addr[25] = \<const0> ;
  assign bram_addr[24] = \<const0> ;
  assign bram_addr[23] = \<const0> ;
  assign bram_addr[22] = \<const0> ;
  assign bram_addr[21] = \<const0> ;
  assign bram_addr[20] = \<const0> ;
  assign bram_addr[19] = \<const0> ;
  assign bram_addr[18:2] = \^bram_addr [18:2];
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  assign bram_en = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* CLK_DIV_VAL = "4" *) 
  (* h_end = "10'b1100100000" *) 
  (* h_image = "10'b1010000000" *) 
  (* h_left_boundary = "10'b0000110000" *) 
  (* h_resolution = "10'b1010000000" *) 
  (* h_right_boundary = "10'b0000010000" *) 
  (* h_writeback = "10'b0001100000" *) 
  (* v_bottom_boundary = "10'b0000001010" *) 
  (* v_end = "10'b1000001101" *) 
  (* v_image = "10'b0111100000" *) 
  (* v_resolution = "10'b0111100000" *) 
  (* v_upper_boundary = "10'b0000100001" *) 
  (* v_writeback = "10'b0000000010" *) 
  VGA_BRAM_controller_VGA_IP_0_0_VGA inst
       (.bram_addr({NLW_inst_bram_addr_UNCONNECTED[31:19],\^bram_addr ,NLW_inst_bram_addr_UNCONNECTED[1:0]}),
        .bram_din(bram_din),
        .bram_en(NLW_inst_bram_en_UNCONNECTED),
        .clk(clk),
        .reset(reset),
        .vga_hsync(vga_hsync),
        .vga_rgb(vga_rgb),
        .vga_vsync(vga_vsync));
endmodule

(* CLK_DIV_VAL = "4" *) (* ORIG_REF_NAME = "VGA" *) (* h_end = "10'b1100100000" *) 
(* h_image = "10'b1010000000" *) (* h_left_boundary = "10'b0000110000" *) (* h_resolution = "10'b1010000000" *) 
(* h_right_boundary = "10'b0000010000" *) (* h_writeback = "10'b0001100000" *) (* v_bottom_boundary = "10'b0000001010" *) 
(* v_end = "10'b1000001101" *) (* v_image = "10'b0111100000" *) (* v_resolution = "10'b0111100000" *) 
(* v_upper_boundary = "10'b0000100001" *) (* v_writeback = "10'b0000000010" *) 
module VGA_BRAM_controller_VGA_IP_0_0_VGA
   (clk,
    reset,
    vga_hsync,
    vga_vsync,
    vga_rgb,
    bram_addr,
    bram_din,
    bram_en);
  input clk;
  input reset;
  output vga_hsync;
  output vga_vsync;
  output [15:0]vga_rgb;
  output [31:0]bram_addr;
  input [31:0]bram_din;
  output bram_en;

  wire \<const0> ;
  wire [8:0]A;
  wire [8:0]C;
  wire [18:2]\^bram_addr ;
  wire \bram_addr[11]_INST_0_i_1_n_0 ;
  wire \bram_addr[11]_INST_0_i_1_n_1 ;
  wire \bram_addr[11]_INST_0_i_1_n_2 ;
  wire \bram_addr[11]_INST_0_i_1_n_3 ;
  wire \bram_addr[11]_INST_0_i_2_n_0 ;
  wire \bram_addr[11]_INST_0_i_3_n_0 ;
  wire \bram_addr[11]_INST_0_i_4_n_0 ;
  wire \bram_addr[11]_INST_0_n_0 ;
  wire \bram_addr[11]_INST_0_n_1 ;
  wire \bram_addr[11]_INST_0_n_2 ;
  wire \bram_addr[11]_INST_0_n_3 ;
  wire \bram_addr[15]_INST_0_i_1_n_3 ;
  wire \bram_addr[15]_INST_0_i_2_n_0 ;
  wire \bram_addr[15]_INST_0_i_2_n_1 ;
  wire \bram_addr[15]_INST_0_i_2_n_2 ;
  wire \bram_addr[15]_INST_0_i_2_n_3 ;
  wire \bram_addr[15]_INST_0_i_3_n_0 ;
  wire \bram_addr[15]_INST_0_i_4_n_0 ;
  wire \bram_addr[15]_INST_0_i_5_n_0 ;
  wire \bram_addr[15]_INST_0_i_6_n_0 ;
  wire \bram_addr[15]_INST_0_n_1 ;
  wire \bram_addr[15]_INST_0_n_2 ;
  wire \bram_addr[15]_INST_0_n_3 ;
  wire \bram_addr[8]_INST_0_i_1_n_0 ;
  wire \bram_addr[8]_INST_0_i_2_n_0 ;
  wire \bram_addr[8]_INST_0_i_3_n_0 ;
  wire \bram_addr[8]_INST_0_n_0 ;
  wire \bram_addr[8]_INST_0_n_1 ;
  wire \bram_addr[8]_INST_0_n_2 ;
  wire \bram_addr[8]_INST_0_n_3 ;
  wire [0:0]bram_addr_d;
  wire \bram_addr_d_reg_n_0_[1] ;
  wire bram_addr_s0__0_n_0;
  wire bram_addr_s0__10_n_0;
  wire bram_addr_s0__11_i_2_n_0;
  wire bram_addr_s0__11_n_0;
  wire bram_addr_s0__12_n_0;
  wire bram_addr_s0__13_n_0;
  wire bram_addr_s0__14_n_0;
  wire bram_addr_s0__15_i_2_n_0;
  wire bram_addr_s0__15_n_0;
  wire bram_addr_s0__1_n_0;
  wire bram_addr_s0__2_i_4_n_0;
  wire bram_addr_s0__4_i_2_n_0;
  wire bram_addr_s0__6_n_0;
  wire bram_addr_s0__7_i_2_n_0;
  wire bram_addr_s0__7_n_0;
  wire bram_addr_s0__8_n_0;
  wire bram_addr_s0__9_n_0;
  wire bram_addr_s0_n_0;
  wire [17:7]bram_addr_s1;
  wire [31:0]bram_din;
  wire clk;
  wire clk_en;
  wire [1:0]clock_divider_next;
  wire [1:0]clock_divider_reg;
  wire [0:0]h_counter_reg;
  wire \h_counter_reg[0]_i_1_n_0 ;
  wire himage_active_next;
  wire himage_active_reg;
  wire hsync_reg_i_1_n_0;
  wire hsync_reg_i_2_n_0;
  wire reset;
  wire [0:0]v_counter_reg;
  wire v_counter_reg0;
  wire \v_counter_reg[0]_i_2_n_0 ;
  wire \v_counter_reg[0]_i_3_n_0 ;
  wire vga_hsync;
  wire [15:0]vga_rgb;
  wire vga_vsync;
  wire vimage_active_next;
  wire vimage_active_reg;
  wire vsync_reg_i_1_n_0;
  wire vsync_reg_i_2_n_0;
  wire [3:3]\NLW_bram_addr[15]_INST_0_CO_UNCONNECTED ;
  wire [3:1]\NLW_bram_addr[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram_addr[15]_INST_0_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_bram_addr[8]_INST_0_O_UNCONNECTED ;

  assign bram_addr[31] = \<const0> ;
  assign bram_addr[30] = \<const0> ;
  assign bram_addr[29] = \<const0> ;
  assign bram_addr[28] = \<const0> ;
  assign bram_addr[27] = \<const0> ;
  assign bram_addr[26] = \<const0> ;
  assign bram_addr[25] = \<const0> ;
  assign bram_addr[24] = \<const0> ;
  assign bram_addr[23] = \<const0> ;
  assign bram_addr[22] = \<const0> ;
  assign bram_addr[21] = \<const0> ;
  assign bram_addr[20] = \<const0> ;
  assign bram_addr[19] = \<const0> ;
  assign bram_addr[18:2] = \^bram_addr [18:2];
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  assign bram_en = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr[11]_INST_0 
       (.CI(\bram_addr[8]_INST_0_n_0 ),
        .CO({\bram_addr[11]_INST_0_n_0 ,\bram_addr[11]_INST_0_n_1 ,\bram_addr[11]_INST_0_n_2 ,\bram_addr[11]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\^bram_addr [14:11]),
        .S(bram_addr_s1[13:10]));
  CARRY4 \bram_addr[11]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\bram_addr[11]_INST_0_i_1_n_0 ,\bram_addr[11]_INST_0_i_1_n_1 ,\bram_addr[11]_INST_0_i_1_n_2 ,\bram_addr[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({bram_addr_s0__11_n_0,bram_addr_s0__12_n_0,bram_addr_s0__13_n_0,1'b0}),
        .O(bram_addr_s1[10:7]),
        .S({\bram_addr[11]_INST_0_i_2_n_0 ,\bram_addr[11]_INST_0_i_3_n_0 ,\bram_addr[11]_INST_0_i_4_n_0 ,bram_addr_s0__14_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[11]_INST_0_i_2 
       (.I0(bram_addr_s0__11_n_0),
        .I1(bram_addr_s0__13_n_0),
        .O(\bram_addr[11]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[11]_INST_0_i_3 
       (.I0(bram_addr_s0__12_n_0),
        .I1(bram_addr_s0__14_n_0),
        .O(\bram_addr[11]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[11]_INST_0_i_4 
       (.I0(bram_addr_s0__13_n_0),
        .I1(bram_addr_s0__15_n_0),
        .O(\bram_addr[11]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr[15]_INST_0 
       (.CI(\bram_addr[11]_INST_0_n_0 ),
        .CO({\NLW_bram_addr[15]_INST_0_CO_UNCONNECTED [3],\bram_addr[15]_INST_0_n_1 ,\bram_addr[15]_INST_0_n_2 ,\bram_addr[15]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\^bram_addr [18:15]),
        .S(bram_addr_s1[17:14]));
  CARRY4 \bram_addr[15]_INST_0_i_1 
       (.CI(\bram_addr[15]_INST_0_i_2_n_0 ),
        .CO({\NLW_bram_addr[15]_INST_0_i_1_CO_UNCONNECTED [3],bram_addr_s1[17],\NLW_bram_addr[15]_INST_0_i_1_CO_UNCONNECTED [1],\bram_addr[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_addr[15]_INST_0_i_1_O_UNCONNECTED [3:2],bram_addr_s1[16:15]}),
        .S({1'b0,1'b1,bram_addr_s0__7_n_0,bram_addr_s0__8_n_0}));
  CARRY4 \bram_addr[15]_INST_0_i_2 
       (.CI(\bram_addr[11]_INST_0_i_1_n_0 ),
        .CO({\bram_addr[15]_INST_0_i_2_n_0 ,\bram_addr[15]_INST_0_i_2_n_1 ,\bram_addr[15]_INST_0_i_2_n_2 ,\bram_addr[15]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({bram_addr_s0__7_n_0,bram_addr_s0__8_n_0,bram_addr_s0__9_n_0,bram_addr_s0__10_n_0}),
        .O(bram_addr_s1[14:11]),
        .S({\bram_addr[15]_INST_0_i_3_n_0 ,\bram_addr[15]_INST_0_i_4_n_0 ,\bram_addr[15]_INST_0_i_5_n_0 ,\bram_addr[15]_INST_0_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[15]_INST_0_i_3 
       (.I0(bram_addr_s0__7_n_0),
        .I1(bram_addr_s0__9_n_0),
        .O(\bram_addr[15]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[15]_INST_0_i_4 
       (.I0(bram_addr_s0__8_n_0),
        .I1(bram_addr_s0__10_n_0),
        .O(\bram_addr[15]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[15]_INST_0_i_5 
       (.I0(bram_addr_s0__9_n_0),
        .I1(bram_addr_s0__11_n_0),
        .O(\bram_addr[15]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[15]_INST_0_i_6 
       (.I0(bram_addr_s0__10_n_0),
        .I1(bram_addr_s0__12_n_0),
        .O(\bram_addr[15]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[7]_INST_0 
       (.I0(bram_addr_s0__15_n_0),
        .I1(bram_addr_s0__1_n_0),
        .O(\^bram_addr [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr[8]_INST_0 
       (.CI(1'b0),
        .CO({\bram_addr[8]_INST_0_n_0 ,\bram_addr[8]_INST_0_n_1 ,\bram_addr[8]_INST_0_n_2 ,\bram_addr[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,bram_addr_s1[8:7],bram_addr_s0__15_n_0}),
        .O({\^bram_addr [10:8],\NLW_bram_addr[8]_INST_0_O_UNCONNECTED [0]}),
        .S({bram_addr_s1[9],\bram_addr[8]_INST_0_i_1_n_0 ,\bram_addr[8]_INST_0_i_2_n_0 ,\bram_addr[8]_INST_0_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[8]_INST_0_i_1 
       (.I0(bram_addr_s1[8]),
        .I1(bram_addr_s0_n_0),
        .O(\bram_addr[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[8]_INST_0_i_2 
       (.I0(bram_addr_s1[7]),
        .I1(bram_addr_s0__0_n_0),
        .O(\bram_addr[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[8]_INST_0_i_3 
       (.I0(bram_addr_s0__15_n_0),
        .I1(bram_addr_s0__1_n_0),
        .O(\bram_addr[8]_INST_0_i_3_n_0 ));
  FDRE \bram_addr_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(bram_addr_s0__6_n_0),
        .Q(\bram_addr_d_reg_n_0_[1] ),
        .R(bram_addr_d));
  FDRE bram_addr_s0
       (.C(clk),
        .CE(clk_en),
        .D(C[8]),
        .Q(bram_addr_s0_n_0),
        .R(bram_addr_d));
  FDRE bram_addr_s0__0
       (.C(clk),
        .CE(clk_en),
        .D(C[7]),
        .Q(bram_addr_s0__0_n_0),
        .R(bram_addr_d));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    bram_addr_s0__0_i_1
       (.I0(bram_addr_s0_n_0),
        .I1(bram_addr_s0__0_n_0),
        .I2(bram_addr_s0__1_n_0),
        .I3(\^bram_addr [5]),
        .I4(\^bram_addr [6]),
        .I5(bram_addr_s0__2_i_4_n_0),
        .O(C[7]));
  FDRE bram_addr_s0__1
       (.C(clk),
        .CE(clk_en),
        .D(C[6]),
        .Q(bram_addr_s0__1_n_0),
        .R(bram_addr_d));
  FDRE bram_addr_s0__10
       (.C(clk),
        .CE(v_counter_reg0),
        .D(A[5]),
        .Q(bram_addr_s0__10_n_0),
        .R(bram_addr_d));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    bram_addr_s0__10_i_1
       (.I0(bram_addr_s0__15_i_2_n_0),
        .I1(bram_addr_s0__10_n_0),
        .I2(bram_addr_s0__11_i_2_n_0),
        .I3(bram_addr_s0__11_n_0),
        .O(A[5]));
  FDRE bram_addr_s0__11
       (.C(clk),
        .CE(v_counter_reg0),
        .D(A[4]),
        .Q(bram_addr_s0__11_n_0),
        .R(bram_addr_d));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    bram_addr_s0__11_i_1
       (.I0(bram_addr_s0__15_i_2_n_0),
        .I1(bram_addr_s0__11_n_0),
        .I2(bram_addr_s0__11_i_2_n_0),
        .O(A[4]));
  LUT5 #(
    .INIT(32'h80000000)) 
    bram_addr_s0__11_i_2
       (.I0(bram_addr_s0__14_n_0),
        .I1(bram_addr_s0__13_n_0),
        .I2(v_counter_reg),
        .I3(bram_addr_s0__15_n_0),
        .I4(bram_addr_s0__12_n_0),
        .O(bram_addr_s0__11_i_2_n_0));
  FDRE bram_addr_s0__12
       (.C(clk),
        .CE(v_counter_reg0),
        .D(A[3]),
        .Q(bram_addr_s0__12_n_0),
        .R(bram_addr_d));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    bram_addr_s0__12_i_1
       (.I0(bram_addr_s0__15_i_2_n_0),
        .I1(bram_addr_s0__12_n_0),
        .I2(bram_addr_s0__15_n_0),
        .I3(v_counter_reg),
        .I4(bram_addr_s0__13_n_0),
        .I5(bram_addr_s0__14_n_0),
        .O(A[3]));
  FDRE bram_addr_s0__13
       (.C(clk),
        .CE(v_counter_reg0),
        .D(A[2]),
        .Q(bram_addr_s0__13_n_0),
        .R(bram_addr_d));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    bram_addr_s0__13_i_1
       (.I0(bram_addr_s0__15_i_2_n_0),
        .I1(bram_addr_s0__13_n_0),
        .I2(bram_addr_s0__15_n_0),
        .I3(v_counter_reg),
        .I4(bram_addr_s0__14_n_0),
        .O(A[2]));
  FDRE bram_addr_s0__14
       (.C(clk),
        .CE(v_counter_reg0),
        .D(A[1]),
        .Q(bram_addr_s0__14_n_0),
        .R(bram_addr_d));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    bram_addr_s0__14_i_1
       (.I0(bram_addr_s0__15_i_2_n_0),
        .I1(bram_addr_s0__14_n_0),
        .I2(v_counter_reg),
        .I3(bram_addr_s0__15_n_0),
        .O(A[1]));
  FDRE bram_addr_s0__15
       (.C(clk),
        .CE(v_counter_reg0),
        .D(A[0]),
        .Q(bram_addr_s0__15_n_0),
        .R(bram_addr_d));
  LUT3 #(
    .INIT(8'h28)) 
    bram_addr_s0__15_i_1
       (.I0(bram_addr_s0__15_i_2_n_0),
        .I1(bram_addr_s0__15_n_0),
        .I2(v_counter_reg),
        .O(A[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    bram_addr_s0__15_i_2
       (.I0(bram_addr_s0__9_n_0),
        .I1(bram_addr_s0__10_n_0),
        .I2(bram_addr_s0__7_n_0),
        .I3(bram_addr_s0__8_n_0),
        .I4(\v_counter_reg[0]_i_3_n_0 ),
        .I5(v_counter_reg),
        .O(bram_addr_s0__15_i_2_n_0));
  FDRE bram_addr_s0__16
       (.C(clk),
        .CE(clk_en),
        .D(C[2]),
        .Q(\^bram_addr [3]),
        .R(bram_addr_d));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    bram_addr_s0__16_i_1
       (.I0(bram_addr_s0__4_i_2_n_0),
        .I1(\^bram_addr [3]),
        .I2(bram_addr_s0__6_n_0),
        .I3(h_counter_reg),
        .I4(\^bram_addr [2]),
        .O(C[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    bram_addr_s0__1_i_1
       (.I0(bram_addr_s0__1_n_0),
        .I1(\^bram_addr [6]),
        .I2(\^bram_addr [5]),
        .I3(bram_addr_s0__2_i_4_n_0),
        .O(C[6]));
  FDRE bram_addr_s0__2
       (.C(clk),
        .CE(clk_en),
        .D(C[5]),
        .Q(\^bram_addr [6]),
        .R(bram_addr_d));
  LUT1 #(
    .INIT(2'h1)) 
    bram_addr_s0__2_i_1
       (.I0(reset),
        .O(bram_addr_d));
  LUT2 #(
    .INIT(4'h8)) 
    bram_addr_s0__2_i_2
       (.I0(clock_divider_reg[1]),
        .I1(clock_divider_reg[0]),
        .O(clk_en));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    bram_addr_s0__2_i_3
       (.I0(\^bram_addr [6]),
        .I1(\^bram_addr [5]),
        .I2(bram_addr_s0__2_i_4_n_0),
        .O(C[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    bram_addr_s0__2_i_4
       (.I0(\^bram_addr [3]),
        .I1(bram_addr_s0__6_n_0),
        .I2(h_counter_reg),
        .I3(\^bram_addr [2]),
        .I4(\^bram_addr [4]),
        .O(bram_addr_s0__2_i_4_n_0));
  FDRE bram_addr_s0__3
       (.C(clk),
        .CE(clk_en),
        .D(C[4]),
        .Q(\^bram_addr [5]),
        .R(bram_addr_d));
  LUT6 #(
    .INIT(64'hFFFF00000000FFF7)) 
    bram_addr_s0__3_i_1
       (.I0(bram_addr_s0__0_n_0),
        .I1(bram_addr_s0_n_0),
        .I2(bram_addr_s0__1_n_0),
        .I3(\^bram_addr [6]),
        .I4(\^bram_addr [5]),
        .I5(bram_addr_s0__2_i_4_n_0),
        .O(C[4]));
  FDRE bram_addr_s0__4
       (.C(clk),
        .CE(clk_en),
        .D(C[3]),
        .Q(\^bram_addr [4]),
        .R(bram_addr_d));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    bram_addr_s0__4_i_1
       (.I0(bram_addr_s0__4_i_2_n_0),
        .I1(\^bram_addr [4]),
        .I2(\^bram_addr [2]),
        .I3(h_counter_reg),
        .I4(bram_addr_s0__6_n_0),
        .I5(\^bram_addr [3]),
        .O(C[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    bram_addr_s0__4_i_2
       (.I0(\^bram_addr [5]),
        .I1(\^bram_addr [6]),
        .I2(bram_addr_s0__1_n_0),
        .I3(bram_addr_s0_n_0),
        .I4(bram_addr_s0__0_n_0),
        .I5(bram_addr_s0__2_i_4_n_0),
        .O(bram_addr_s0__4_i_2_n_0));
  FDRE bram_addr_s0__5
       (.C(clk),
        .CE(clk_en),
        .D(C[1]),
        .Q(\^bram_addr [2]),
        .R(bram_addr_d));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    bram_addr_s0__5_i_1
       (.I0(bram_addr_s0__4_i_2_n_0),
        .I1(\^bram_addr [2]),
        .I2(h_counter_reg),
        .I3(bram_addr_s0__6_n_0),
        .O(C[1]));
  FDRE bram_addr_s0__6
       (.C(clk),
        .CE(clk_en),
        .D(C[0]),
        .Q(bram_addr_s0__6_n_0),
        .R(bram_addr_d));
  LUT3 #(
    .INIT(8'h28)) 
    bram_addr_s0__6_i_1
       (.I0(bram_addr_s0__4_i_2_n_0),
        .I1(bram_addr_s0__6_n_0),
        .I2(h_counter_reg),
        .O(C[0]));
  FDRE bram_addr_s0__7
       (.C(clk),
        .CE(v_counter_reg0),
        .D(A[8]),
        .Q(bram_addr_s0__7_n_0),
        .R(bram_addr_d));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8828)) 
    bram_addr_s0__7_i_1
       (.I0(bram_addr_s0__15_i_2_n_0),
        .I1(bram_addr_s0__7_n_0),
        .I2(bram_addr_s0__11_i_2_n_0),
        .I3(bram_addr_s0__7_i_2_n_0),
        .O(A[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    bram_addr_s0__7_i_2
       (.I0(bram_addr_s0__9_n_0),
        .I1(bram_addr_s0__11_n_0),
        .I2(bram_addr_s0__10_n_0),
        .I3(bram_addr_s0__8_n_0),
        .O(bram_addr_s0__7_i_2_n_0));
  FDRE bram_addr_s0__8
       (.C(clk),
        .CE(v_counter_reg0),
        .D(A[7]),
        .Q(bram_addr_s0__8_n_0),
        .R(bram_addr_d));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    bram_addr_s0__8_i_1
       (.I0(bram_addr_s0__15_i_2_n_0),
        .I1(bram_addr_s0__8_n_0),
        .I2(bram_addr_s0__11_i_2_n_0),
        .I3(bram_addr_s0__9_n_0),
        .I4(bram_addr_s0__11_n_0),
        .I5(bram_addr_s0__10_n_0),
        .O(A[7]));
  FDRE bram_addr_s0__9
       (.C(clk),
        .CE(v_counter_reg0),
        .D(A[6]),
        .Q(bram_addr_s0__9_n_0),
        .R(bram_addr_d));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    bram_addr_s0__9_i_1
       (.I0(bram_addr_s0__15_i_2_n_0),
        .I1(bram_addr_s0__9_n_0),
        .I2(bram_addr_s0__11_i_2_n_0),
        .I3(bram_addr_s0__10_n_0),
        .I4(bram_addr_s0__11_n_0),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AA8AAAA)) 
    bram_addr_s0_i_1
       (.I0(bram_addr_s0_n_0),
        .I1(bram_addr_s0__1_n_0),
        .I2(\^bram_addr [5]),
        .I3(\^bram_addr [6]),
        .I4(bram_addr_s0__0_n_0),
        .I5(bram_addr_s0__2_i_4_n_0),
        .O(C[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clock_divider_reg[0]_i_1 
       (.I0(clock_divider_reg[0]),
        .O(clock_divider_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clock_divider_reg[1]_i_1 
       (.I0(clock_divider_reg[1]),
        .I1(clock_divider_reg[0]),
        .O(clock_divider_next[1]));
  FDRE \clock_divider_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_divider_next[0]),
        .Q(clock_divider_reg[0]),
        .R(bram_addr_d));
  FDRE \clock_divider_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_divider_next[1]),
        .Q(clock_divider_reg[1]),
        .R(bram_addr_d));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_counter_reg[0]_i_1 
       (.I0(h_counter_reg),
        .O(\h_counter_reg[0]_i_1_n_0 ));
  FDRE \h_counter_reg_reg[0] 
       (.C(clk),
        .CE(clk_en),
        .D(\h_counter_reg[0]_i_1_n_0 ),
        .Q(h_counter_reg),
        .R(bram_addr_d));
  LUT3 #(
    .INIT(8'h1F)) 
    himage_active_reg_i_1
       (.I0(bram_addr_s0__0_n_0),
        .I1(bram_addr_s0__1_n_0),
        .I2(bram_addr_s0_n_0),
        .O(himage_active_next));
  FDRE himage_active_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(himage_active_next),
        .Q(himage_active_reg),
        .R(bram_addr_d));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    hsync_reg_i_1
       (.I0(bram_addr_s0__1_n_0),
        .I1(reset),
        .I2(hsync_reg_i_2_n_0),
        .O(hsync_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFD00DD00DD00DF00)) 
    hsync_reg_i_2
       (.I0(bram_addr_s0_n_0),
        .I1(bram_addr_s0__0_n_0),
        .I2(\^bram_addr [4]),
        .I3(reset),
        .I4(\^bram_addr [6]),
        .I5(\^bram_addr [5]),
        .O(hsync_reg_i_2_n_0));
  FDRE hsync_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_reg_i_1_n_0),
        .Q(vga_hsync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \v_counter_reg[0]_i_1 
       (.I0(clock_divider_reg[1]),
        .I1(clock_divider_reg[0]),
        .I2(bram_addr_s0__4_i_2_n_0),
        .O(v_counter_reg0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \v_counter_reg[0]_i_2 
       (.I0(bram_addr_s0__9_n_0),
        .I1(bram_addr_s0__10_n_0),
        .I2(bram_addr_s0__7_n_0),
        .I3(bram_addr_s0__8_n_0),
        .I4(\v_counter_reg[0]_i_3_n_0 ),
        .I5(v_counter_reg),
        .O(\v_counter_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \v_counter_reg[0]_i_3 
       (.I0(bram_addr_s0__15_n_0),
        .I1(bram_addr_s0__14_n_0),
        .I2(bram_addr_s0__13_n_0),
        .I3(bram_addr_s0__11_n_0),
        .I4(bram_addr_s0__12_n_0),
        .O(\v_counter_reg[0]_i_3_n_0 ));
  FDRE \v_counter_reg_reg[0] 
       (.C(clk),
        .CE(v_counter_reg0),
        .D(\v_counter_reg[0]_i_2_n_0 ),
        .Q(v_counter_reg),
        .R(bram_addr_d));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[0]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[0]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[16]),
        .O(vga_rgb[0]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[10]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[10]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[26]),
        .O(vga_rgb[10]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[11]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[11]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[27]),
        .O(vga_rgb[11]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[12]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[12]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[28]),
        .O(vga_rgb[12]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[13]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[13]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[29]),
        .O(vga_rgb[13]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[14]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[14]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[30]),
        .O(vga_rgb[14]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[15]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[15]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[31]),
        .O(vga_rgb[15]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[1]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[1]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[17]),
        .O(vga_rgb[1]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[2]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[2]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[18]),
        .O(vga_rgb[2]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[3]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[3]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[19]),
        .O(vga_rgb[3]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[4]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[4]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[20]),
        .O(vga_rgb[4]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[5]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[5]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[21]),
        .O(vga_rgb[5]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[6]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[6]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[22]),
        .O(vga_rgb[6]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[7]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[7]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[23]),
        .O(vga_rgb[7]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[8]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[8]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[24]),
        .O(vga_rgb[8]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \vga_rgb[9]_INST_0 
       (.I0(himage_active_reg),
        .I1(vimage_active_reg),
        .I2(bram_din[9]),
        .I3(\bram_addr_d_reg_n_0_[1] ),
        .I4(bram_din[25]),
        .O(vga_rgb[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    vimage_active_reg_i_1
       (.I0(bram_addr_s0__8_n_0),
        .I1(bram_addr_s0__10_n_0),
        .I2(bram_addr_s0__11_n_0),
        .I3(bram_addr_s0__9_n_0),
        .I4(bram_addr_s0__7_n_0),
        .O(vimage_active_next));
  FDRE vimage_active_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(vimage_active_next),
        .Q(vimage_active_reg),
        .R(bram_addr_d));
  LUT6 #(
    .INIT(64'hFFFFCCCCFFFDCCCC)) 
    vsync_reg_i_1
       (.I0(bram_addr_s0__15_n_0),
        .I1(vsync_reg_i_2_n_0),
        .I2(bram_addr_s0__7_n_0),
        .I3(bram_addr_s0__12_n_0),
        .I4(reset),
        .I5(bram_addr_s0__14_n_0),
        .O(vsync_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h4CCCCCCCCCCCCCCC)) 
    vsync_reg_i_2
       (.I0(bram_addr_s0__13_n_0),
        .I1(reset),
        .I2(bram_addr_s0__9_n_0),
        .I3(bram_addr_s0__11_n_0),
        .I4(bram_addr_s0__10_n_0),
        .I5(bram_addr_s0__8_n_0),
        .O(vsync_reg_i_2_n_0));
  FDRE vsync_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_reg_i_1_n_0),
        .Q(vga_vsync),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
