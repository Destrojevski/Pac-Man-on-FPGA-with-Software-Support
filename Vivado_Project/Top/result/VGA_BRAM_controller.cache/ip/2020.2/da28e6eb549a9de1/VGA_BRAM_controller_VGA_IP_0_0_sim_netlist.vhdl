-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jun  5 12:30:44 2024
-- Host        : DESKTOP-3F0U81A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VGA_BRAM_controller_VGA_IP_0_0_sim_netlist.vhdl
-- Design      : VGA_BRAM_controller_VGA_IP_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_rgb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : out STD_LOGIC
  );
  attribute CLK_DIV_VAL : integer;
  attribute CLK_DIV_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is 4;
  attribute h_end : string;
  attribute h_end of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b1100100000";
  attribute h_image : string;
  attribute h_image of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b1010000000";
  attribute h_left_boundary : string;
  attribute h_left_boundary of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b0000110000";
  attribute h_resolution : string;
  attribute h_resolution of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b1010000000";
  attribute h_right_boundary : string;
  attribute h_right_boundary of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b0000010000";
  attribute h_writeback : string;
  attribute h_writeback of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b0001100000";
  attribute v_bottom_boundary : string;
  attribute v_bottom_boundary of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b0000001010";
  attribute v_end : string;
  attribute v_end of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b1000001101";
  attribute v_image : string;
  attribute v_image of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b0111100000";
  attribute v_resolution : string;
  attribute v_resolution of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b0111100000";
  attribute v_upper_boundary : string;
  attribute v_upper_boundary of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b0000100001";
  attribute v_writeback : string;
  attribute v_writeback of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA : entity is "10'b0000000010";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA is
  signal \<const0>\ : STD_LOGIC;
  signal A : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal C : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 18 downto 2 );
  signal \bram_addr[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_n_0\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_n_1\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_n_2\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_n_3\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_n_1\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_n_2\ : STD_LOGIC;
  signal \bram_addr[15]_INST_0_n_3\ : STD_LOGIC;
  signal \bram_addr[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_addr[8]_INST_0_n_0\ : STD_LOGIC;
  signal \bram_addr[8]_INST_0_n_1\ : STD_LOGIC;
  signal \bram_addr[8]_INST_0_n_2\ : STD_LOGIC;
  signal \bram_addr[8]_INST_0_n_3\ : STD_LOGIC;
  signal bram_addr_d : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bram_addr_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \bram_addr_s0__0_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__10_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__11_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__11_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__12_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__13_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__14_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__15_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__15_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__1_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__2_i_4_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__4_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__6_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__7_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__7_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__8_n_0\ : STD_LOGIC;
  signal \bram_addr_s0__9_n_0\ : STD_LOGIC;
  signal bram_addr_s0_n_0 : STD_LOGIC;
  signal bram_addr_s1 : STD_LOGIC_VECTOR ( 17 downto 7 );
  signal clk_en : STD_LOGIC;
  signal clock_divider_next : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clock_divider_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal h_counter_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \h_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal himage_active_next : STD_LOGIC;
  signal himage_active_reg : STD_LOGIC;
  signal hsync_reg_i_1_n_0 : STD_LOGIC;
  signal hsync_reg_i_2_n_0 : STD_LOGIC;
  signal v_counter_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_counter_reg0 : STD_LOGIC;
  signal \v_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal vimage_active_next : STD_LOGIC;
  signal vimage_active_reg : STD_LOGIC;
  signal vsync_reg_i_1_n_0 : STD_LOGIC;
  signal vsync_reg_i_2_n_0 : STD_LOGIC;
  signal \NLW_bram_addr[15]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_bram_addr[15]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_bram_addr[15]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bram_addr[8]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bram_addr[11]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \bram_addr[15]_INST_0\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bram_addr[7]_INST_0\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD of \bram_addr[8]_INST_0\ : label is 35;
  attribute SOFT_HLUTNM of \bram_addr_s0__10_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bram_addr_s0__11_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bram_addr_s0__13_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_addr_s0__14_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_addr_s0__16_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bram_addr_s0__1_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bram_addr_s0__2_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bram_addr_s0__2_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bram_addr_s0__5_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bram_addr_s0__7_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bram_addr_s0__7_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bram_addr_s0__9_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clock_divider_reg[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clock_divider_reg[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \h_counter_reg[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of hsync_reg_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of vimage_active_reg_i_1 : label is "soft_lutpair2";
begin
  bram_addr(31) <= \<const0>\;
  bram_addr(30) <= \<const0>\;
  bram_addr(29) <= \<const0>\;
  bram_addr(28) <= \<const0>\;
  bram_addr(27) <= \<const0>\;
  bram_addr(26) <= \<const0>\;
  bram_addr(25) <= \<const0>\;
  bram_addr(24) <= \<const0>\;
  bram_addr(23) <= \<const0>\;
  bram_addr(22) <= \<const0>\;
  bram_addr(21) <= \<const0>\;
  bram_addr(20) <= \<const0>\;
  bram_addr(19) <= \<const0>\;
  bram_addr(18 downto 2) <= \^bram_addr\(18 downto 2);
  bram_addr(1) <= \<const0>\;
  bram_addr(0) <= \<const0>\;
  bram_en <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\bram_addr[11]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_addr[8]_INST_0_n_0\,
      CO(3) => \bram_addr[11]_INST_0_n_0\,
      CO(2) => \bram_addr[11]_INST_0_n_1\,
      CO(1) => \bram_addr[11]_INST_0_n_2\,
      CO(0) => \bram_addr[11]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^bram_addr\(14 downto 11),
      S(3 downto 0) => bram_addr_s1(13 downto 10)
    );
\bram_addr[11]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bram_addr[11]_INST_0_i_1_n_0\,
      CO(2) => \bram_addr[11]_INST_0_i_1_n_1\,
      CO(1) => \bram_addr[11]_INST_0_i_1_n_2\,
      CO(0) => \bram_addr[11]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \bram_addr_s0__11_n_0\,
      DI(2) => \bram_addr_s0__12_n_0\,
      DI(1) => \bram_addr_s0__13_n_0\,
      DI(0) => '0',
      O(3 downto 0) => bram_addr_s1(10 downto 7),
      S(3) => \bram_addr[11]_INST_0_i_2_n_0\,
      S(2) => \bram_addr[11]_INST_0_i_3_n_0\,
      S(1) => \bram_addr[11]_INST_0_i_4_n_0\,
      S(0) => \bram_addr_s0__14_n_0\
    );
\bram_addr[11]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bram_addr_s0__11_n_0\,
      I1 => \bram_addr_s0__13_n_0\,
      O => \bram_addr[11]_INST_0_i_2_n_0\
    );
\bram_addr[11]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bram_addr_s0__12_n_0\,
      I1 => \bram_addr_s0__14_n_0\,
      O => \bram_addr[11]_INST_0_i_3_n_0\
    );
\bram_addr[11]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bram_addr_s0__13_n_0\,
      I1 => \bram_addr_s0__15_n_0\,
      O => \bram_addr[11]_INST_0_i_4_n_0\
    );
\bram_addr[15]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_addr[11]_INST_0_n_0\,
      CO(3) => \NLW_bram_addr[15]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \bram_addr[15]_INST_0_n_1\,
      CO(1) => \bram_addr[15]_INST_0_n_2\,
      CO(0) => \bram_addr[15]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^bram_addr\(18 downto 15),
      S(3 downto 0) => bram_addr_s1(17 downto 14)
    );
\bram_addr[15]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_addr[15]_INST_0_i_2_n_0\,
      CO(3) => \NLW_bram_addr[15]_INST_0_i_1_CO_UNCONNECTED\(3),
      CO(2) => bram_addr_s1(17),
      CO(1) => \NLW_bram_addr[15]_INST_0_i_1_CO_UNCONNECTED\(1),
      CO(0) => \bram_addr[15]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_bram_addr[15]_INST_0_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => bram_addr_s1(16 downto 15),
      S(3 downto 2) => B"01",
      S(1) => \bram_addr_s0__7_n_0\,
      S(0) => \bram_addr_s0__8_n_0\
    );
\bram_addr[15]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_addr[11]_INST_0_i_1_n_0\,
      CO(3) => \bram_addr[15]_INST_0_i_2_n_0\,
      CO(2) => \bram_addr[15]_INST_0_i_2_n_1\,
      CO(1) => \bram_addr[15]_INST_0_i_2_n_2\,
      CO(0) => \bram_addr[15]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \bram_addr_s0__7_n_0\,
      DI(2) => \bram_addr_s0__8_n_0\,
      DI(1) => \bram_addr_s0__9_n_0\,
      DI(0) => \bram_addr_s0__10_n_0\,
      O(3 downto 0) => bram_addr_s1(14 downto 11),
      S(3) => \bram_addr[15]_INST_0_i_3_n_0\,
      S(2) => \bram_addr[15]_INST_0_i_4_n_0\,
      S(1) => \bram_addr[15]_INST_0_i_5_n_0\,
      S(0) => \bram_addr[15]_INST_0_i_6_n_0\
    );
\bram_addr[15]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bram_addr_s0__7_n_0\,
      I1 => \bram_addr_s0__9_n_0\,
      O => \bram_addr[15]_INST_0_i_3_n_0\
    );
\bram_addr[15]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bram_addr_s0__8_n_0\,
      I1 => \bram_addr_s0__10_n_0\,
      O => \bram_addr[15]_INST_0_i_4_n_0\
    );
\bram_addr[15]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bram_addr_s0__9_n_0\,
      I1 => \bram_addr_s0__11_n_0\,
      O => \bram_addr[15]_INST_0_i_5_n_0\
    );
\bram_addr[15]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bram_addr_s0__10_n_0\,
      I1 => \bram_addr_s0__12_n_0\,
      O => \bram_addr[15]_INST_0_i_6_n_0\
    );
\bram_addr[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bram_addr_s0__15_n_0\,
      I1 => \bram_addr_s0__1_n_0\,
      O => \^bram_addr\(7)
    );
\bram_addr[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bram_addr[8]_INST_0_n_0\,
      CO(2) => \bram_addr[8]_INST_0_n_1\,
      CO(1) => \bram_addr[8]_INST_0_n_2\,
      CO(0) => \bram_addr[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => bram_addr_s1(8 downto 7),
      DI(0) => \bram_addr_s0__15_n_0\,
      O(3 downto 1) => \^bram_addr\(10 downto 8),
      O(0) => \NLW_bram_addr[8]_INST_0_O_UNCONNECTED\(0),
      S(3) => bram_addr_s1(9),
      S(2) => \bram_addr[8]_INST_0_i_1_n_0\,
      S(1) => \bram_addr[8]_INST_0_i_2_n_0\,
      S(0) => \bram_addr[8]_INST_0_i_3_n_0\
    );
\bram_addr[8]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bram_addr_s1(8),
      I1 => bram_addr_s0_n_0,
      O => \bram_addr[8]_INST_0_i_1_n_0\
    );
\bram_addr[8]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bram_addr_s1(7),
      I1 => \bram_addr_s0__0_n_0\,
      O => \bram_addr[8]_INST_0_i_2_n_0\
    );
\bram_addr[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bram_addr_s0__15_n_0\,
      I1 => \bram_addr_s0__1_n_0\,
      O => \bram_addr[8]_INST_0_i_3_n_0\
    );
\bram_addr_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_addr_s0__6_n_0\,
      Q => \bram_addr_d_reg_n_0_[1]\,
      R => bram_addr_d(0)
    );
bram_addr_s0: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => C(8),
      Q => bram_addr_s0_n_0,
      R => bram_addr_d(0)
    );
\bram_addr_s0__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => C(7),
      Q => \bram_addr_s0__0_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC3CCCCCC4"
    )
        port map (
      I0 => bram_addr_s0_n_0,
      I1 => \bram_addr_s0__0_n_0\,
      I2 => \bram_addr_s0__1_n_0\,
      I3 => \^bram_addr\(5),
      I4 => \^bram_addr\(6),
      I5 => \bram_addr_s0__2_i_4_n_0\,
      O => C(7)
    );
\bram_addr_s0__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => C(6),
      Q => \bram_addr_s0__1_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__10\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_counter_reg0,
      D => A(5),
      Q => \bram_addr_s0__10_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__10_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \bram_addr_s0__15_i_2_n_0\,
      I1 => \bram_addr_s0__10_n_0\,
      I2 => \bram_addr_s0__11_i_2_n_0\,
      I3 => \bram_addr_s0__11_n_0\,
      O => A(5)
    );
\bram_addr_s0__11\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_counter_reg0,
      D => A(4),
      Q => \bram_addr_s0__11_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__11_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \bram_addr_s0__15_i_2_n_0\,
      I1 => \bram_addr_s0__11_n_0\,
      I2 => \bram_addr_s0__11_i_2_n_0\,
      O => A(4)
    );
\bram_addr_s0__11_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \bram_addr_s0__14_n_0\,
      I1 => \bram_addr_s0__13_n_0\,
      I2 => v_counter_reg(0),
      I3 => \bram_addr_s0__15_n_0\,
      I4 => \bram_addr_s0__12_n_0\,
      O => \bram_addr_s0__11_i_2_n_0\
    );
\bram_addr_s0__12\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_counter_reg0,
      D => A(3),
      Q => \bram_addr_s0__12_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__12_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \bram_addr_s0__15_i_2_n_0\,
      I1 => \bram_addr_s0__12_n_0\,
      I2 => \bram_addr_s0__15_n_0\,
      I3 => v_counter_reg(0),
      I4 => \bram_addr_s0__13_n_0\,
      I5 => \bram_addr_s0__14_n_0\,
      O => A(3)
    );
\bram_addr_s0__13\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_counter_reg0,
      D => A(2),
      Q => \bram_addr_s0__13_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__13_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \bram_addr_s0__15_i_2_n_0\,
      I1 => \bram_addr_s0__13_n_0\,
      I2 => \bram_addr_s0__15_n_0\,
      I3 => v_counter_reg(0),
      I4 => \bram_addr_s0__14_n_0\,
      O => A(2)
    );
\bram_addr_s0__14\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_counter_reg0,
      D => A(1),
      Q => \bram_addr_s0__14_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__14_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \bram_addr_s0__15_i_2_n_0\,
      I1 => \bram_addr_s0__14_n_0\,
      I2 => v_counter_reg(0),
      I3 => \bram_addr_s0__15_n_0\,
      O => A(1)
    );
\bram_addr_s0__15\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_counter_reg0,
      D => A(0),
      Q => \bram_addr_s0__15_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__15_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \bram_addr_s0__15_i_2_n_0\,
      I1 => \bram_addr_s0__15_n_0\,
      I2 => v_counter_reg(0),
      O => A(0)
    );
\bram_addr_s0__15_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \bram_addr_s0__9_n_0\,
      I1 => \bram_addr_s0__10_n_0\,
      I2 => \bram_addr_s0__7_n_0\,
      I3 => \bram_addr_s0__8_n_0\,
      I4 => \v_counter_reg[0]_i_3_n_0\,
      I5 => v_counter_reg(0),
      O => \bram_addr_s0__15_i_2_n_0\
    );
\bram_addr_s0__16\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => C(2),
      Q => \^bram_addr\(3),
      R => bram_addr_d(0)
    );
\bram_addr_s0__16_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \bram_addr_s0__4_i_2_n_0\,
      I1 => \^bram_addr\(3),
      I2 => \bram_addr_s0__6_n_0\,
      I3 => h_counter_reg(0),
      I4 => \^bram_addr\(2),
      O => C(2)
    );
\bram_addr_s0__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \bram_addr_s0__1_n_0\,
      I1 => \^bram_addr\(6),
      I2 => \^bram_addr\(5),
      I3 => \bram_addr_s0__2_i_4_n_0\,
      O => C(6)
    );
\bram_addr_s0__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => C(5),
      Q => \^bram_addr\(6),
      R => bram_addr_d(0)
    );
\bram_addr_s0__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => bram_addr_d(0)
    );
\bram_addr_s0__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clock_divider_reg(1),
      I1 => clock_divider_reg(0),
      O => clk_en
    );
\bram_addr_s0__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \^bram_addr\(6),
      I1 => \^bram_addr\(5),
      I2 => \bram_addr_s0__2_i_4_n_0\,
      O => C(5)
    );
\bram_addr_s0__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^bram_addr\(3),
      I1 => \bram_addr_s0__6_n_0\,
      I2 => h_counter_reg(0),
      I3 => \^bram_addr\(2),
      I4 => \^bram_addr\(4),
      O => \bram_addr_s0__2_i_4_n_0\
    );
\bram_addr_s0__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => C(4),
      Q => \^bram_addr\(5),
      R => bram_addr_d(0)
    );
\bram_addr_s0__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FFF7"
    )
        port map (
      I0 => \bram_addr_s0__0_n_0\,
      I1 => bram_addr_s0_n_0,
      I2 => \bram_addr_s0__1_n_0\,
      I3 => \^bram_addr\(6),
      I4 => \^bram_addr\(5),
      I5 => \bram_addr_s0__2_i_4_n_0\,
      O => C(4)
    );
\bram_addr_s0__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => C(3),
      Q => \^bram_addr\(4),
      R => bram_addr_d(0)
    );
\bram_addr_s0__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \bram_addr_s0__4_i_2_n_0\,
      I1 => \^bram_addr\(4),
      I2 => \^bram_addr\(2),
      I3 => h_counter_reg(0),
      I4 => \bram_addr_s0__6_n_0\,
      I5 => \^bram_addr\(3),
      O => C(3)
    );
\bram_addr_s0__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \^bram_addr\(5),
      I1 => \^bram_addr\(6),
      I2 => \bram_addr_s0__1_n_0\,
      I3 => bram_addr_s0_n_0,
      I4 => \bram_addr_s0__0_n_0\,
      I5 => \bram_addr_s0__2_i_4_n_0\,
      O => \bram_addr_s0__4_i_2_n_0\
    );
\bram_addr_s0__5\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => C(1),
      Q => \^bram_addr\(2),
      R => bram_addr_d(0)
    );
\bram_addr_s0__5_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \bram_addr_s0__4_i_2_n_0\,
      I1 => \^bram_addr\(2),
      I2 => h_counter_reg(0),
      I3 => \bram_addr_s0__6_n_0\,
      O => C(1)
    );
\bram_addr_s0__6\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => C(0),
      Q => \bram_addr_s0__6_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \bram_addr_s0__4_i_2_n_0\,
      I1 => \bram_addr_s0__6_n_0\,
      I2 => h_counter_reg(0),
      O => C(0)
    );
\bram_addr_s0__7\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_counter_reg0,
      D => A(8),
      Q => \bram_addr_s0__7_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__7_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => \bram_addr_s0__15_i_2_n_0\,
      I1 => \bram_addr_s0__7_n_0\,
      I2 => \bram_addr_s0__11_i_2_n_0\,
      I3 => \bram_addr_s0__7_i_2_n_0\,
      O => A(8)
    );
\bram_addr_s0__7_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \bram_addr_s0__9_n_0\,
      I1 => \bram_addr_s0__11_n_0\,
      I2 => \bram_addr_s0__10_n_0\,
      I3 => \bram_addr_s0__8_n_0\,
      O => \bram_addr_s0__7_i_2_n_0\
    );
\bram_addr_s0__8\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_counter_reg0,
      D => A(7),
      Q => \bram_addr_s0__8_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__8_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \bram_addr_s0__15_i_2_n_0\,
      I1 => \bram_addr_s0__8_n_0\,
      I2 => \bram_addr_s0__11_i_2_n_0\,
      I3 => \bram_addr_s0__9_n_0\,
      I4 => \bram_addr_s0__11_n_0\,
      I5 => \bram_addr_s0__10_n_0\,
      O => A(7)
    );
\bram_addr_s0__9\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_counter_reg0,
      D => A(6),
      Q => \bram_addr_s0__9_n_0\,
      R => bram_addr_d(0)
    );
\bram_addr_s0__9_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \bram_addr_s0__15_i_2_n_0\,
      I1 => \bram_addr_s0__9_n_0\,
      I2 => \bram_addr_s0__11_i_2_n_0\,
      I3 => \bram_addr_s0__10_n_0\,
      I4 => \bram_addr_s0__11_n_0\,
      O => A(6)
    );
bram_addr_s0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AA8AAAA"
    )
        port map (
      I0 => bram_addr_s0_n_0,
      I1 => \bram_addr_s0__1_n_0\,
      I2 => \^bram_addr\(5),
      I3 => \^bram_addr\(6),
      I4 => \bram_addr_s0__0_n_0\,
      I5 => \bram_addr_s0__2_i_4_n_0\,
      O => C(8)
    );
\clock_divider_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clock_divider_reg(0),
      O => clock_divider_next(0)
    );
\clock_divider_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clock_divider_reg(1),
      I1 => clock_divider_reg(0),
      O => clock_divider_next(1)
    );
\clock_divider_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clock_divider_next(0),
      Q => clock_divider_reg(0),
      R => bram_addr_d(0)
    );
\clock_divider_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clock_divider_next(1),
      Q => clock_divider_reg(1),
      R => bram_addr_d(0)
    );
\h_counter_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_counter_reg(0),
      O => \h_counter_reg[0]_i_1_n_0\
    );
\h_counter_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => \h_counter_reg[0]_i_1_n_0\,
      Q => h_counter_reg(0),
      R => bram_addr_d(0)
    );
himage_active_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \bram_addr_s0__0_n_0\,
      I1 => \bram_addr_s0__1_n_0\,
      I2 => bram_addr_s0_n_0,
      O => himage_active_next
    );
himage_active_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => himage_active_next,
      Q => himage_active_reg,
      R => bram_addr_d(0)
    );
hsync_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \bram_addr_s0__1_n_0\,
      I1 => reset,
      I2 => hsync_reg_i_2_n_0,
      O => hsync_reg_i_1_n_0
    );
hsync_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00DD00DD00DF00"
    )
        port map (
      I0 => bram_addr_s0_n_0,
      I1 => \bram_addr_s0__0_n_0\,
      I2 => \^bram_addr\(4),
      I3 => reset,
      I4 => \^bram_addr\(6),
      I5 => \^bram_addr\(5),
      O => hsync_reg_i_2_n_0
    );
hsync_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hsync_reg_i_1_n_0,
      Q => vga_hsync,
      R => '0'
    );
\v_counter_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clock_divider_reg(1),
      I1 => clock_divider_reg(0),
      I2 => \bram_addr_s0__4_i_2_n_0\,
      O => v_counter_reg0
    );
\v_counter_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => \bram_addr_s0__9_n_0\,
      I1 => \bram_addr_s0__10_n_0\,
      I2 => \bram_addr_s0__7_n_0\,
      I3 => \bram_addr_s0__8_n_0\,
      I4 => \v_counter_reg[0]_i_3_n_0\,
      I5 => v_counter_reg(0),
      O => \v_counter_reg[0]_i_2_n_0\
    );
\v_counter_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => \bram_addr_s0__15_n_0\,
      I1 => \bram_addr_s0__14_n_0\,
      I2 => \bram_addr_s0__13_n_0\,
      I3 => \bram_addr_s0__11_n_0\,
      I4 => \bram_addr_s0__12_n_0\,
      O => \v_counter_reg[0]_i_3_n_0\
    );
\v_counter_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_counter_reg0,
      D => \v_counter_reg[0]_i_2_n_0\,
      Q => v_counter_reg(0),
      R => bram_addr_d(0)
    );
\vga_rgb[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(0),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(16),
      O => vga_rgb(0)
    );
\vga_rgb[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(10),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(26),
      O => vga_rgb(10)
    );
\vga_rgb[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(11),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(27),
      O => vga_rgb(11)
    );
\vga_rgb[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(12),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(28),
      O => vga_rgb(12)
    );
\vga_rgb[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(13),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(29),
      O => vga_rgb(13)
    );
\vga_rgb[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(14),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(30),
      O => vga_rgb(14)
    );
\vga_rgb[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(15),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(31),
      O => vga_rgb(15)
    );
\vga_rgb[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(1),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(17),
      O => vga_rgb(1)
    );
\vga_rgb[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(2),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(18),
      O => vga_rgb(2)
    );
\vga_rgb[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(3),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(19),
      O => vga_rgb(3)
    );
\vga_rgb[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(4),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(20),
      O => vga_rgb(4)
    );
\vga_rgb[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(5),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(21),
      O => vga_rgb(5)
    );
\vga_rgb[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(6),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(22),
      O => vga_rgb(6)
    );
\vga_rgb[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(7),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(23),
      O => vga_rgb(7)
    );
\vga_rgb[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(8),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(24),
      O => vga_rgb(8)
    );
\vga_rgb[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => himage_active_reg,
      I1 => vimage_active_reg,
      I2 => bram_din(9),
      I3 => \bram_addr_d_reg_n_0_[1]\,
      I4 => bram_din(25),
      O => vga_rgb(9)
    );
vimage_active_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => \bram_addr_s0__8_n_0\,
      I1 => \bram_addr_s0__10_n_0\,
      I2 => \bram_addr_s0__11_n_0\,
      I3 => \bram_addr_s0__9_n_0\,
      I4 => \bram_addr_s0__7_n_0\,
      O => vimage_active_next
    );
vimage_active_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vimage_active_next,
      Q => vimage_active_reg,
      R => bram_addr_d(0)
    );
vsync_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCCCFFFDCCCC"
    )
        port map (
      I0 => \bram_addr_s0__15_n_0\,
      I1 => vsync_reg_i_2_n_0,
      I2 => \bram_addr_s0__7_n_0\,
      I3 => \bram_addr_s0__12_n_0\,
      I4 => reset,
      I5 => \bram_addr_s0__14_n_0\,
      O => vsync_reg_i_1_n_0
    );
vsync_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => \bram_addr_s0__13_n_0\,
      I1 => reset,
      I2 => \bram_addr_s0__9_n_0\,
      I3 => \bram_addr_s0__11_n_0\,
      I4 => \bram_addr_s0__10_n_0\,
      I5 => \bram_addr_s0__8_n_0\,
      O => vsync_reg_i_2_n_0
    );
vsync_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vsync_reg_i_1_n_0,
      Q => vga_vsync,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_rgb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "VGA_BRAM_controller_VGA_IP_0_0,VGA,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "VGA,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 18 downto 2 );
  signal NLW_inst_bram_en_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_bram_addr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CLK_DIV_VAL : integer;
  attribute CLK_DIV_VAL of inst : label is 4;
  attribute h_end : string;
  attribute h_end of inst : label is "10'b1100100000";
  attribute h_image : string;
  attribute h_image of inst : label is "10'b1010000000";
  attribute h_left_boundary : string;
  attribute h_left_boundary of inst : label is "10'b0000110000";
  attribute h_resolution : string;
  attribute h_resolution of inst : label is "10'b1010000000";
  attribute h_right_boundary : string;
  attribute h_right_boundary of inst : label is "10'b0000010000";
  attribute h_writeback : string;
  attribute h_writeback of inst : label is "10'b0001100000";
  attribute v_bottom_boundary : string;
  attribute v_bottom_boundary of inst : label is "10'b0000001010";
  attribute v_end : string;
  attribute v_end of inst : label is "10'b1000001101";
  attribute v_image : string;
  attribute v_image of inst : label is "10'b0111100000";
  attribute v_resolution : string;
  attribute v_resolution of inst : label is "10'b0111100000";
  attribute v_upper_boundary : string;
  attribute v_upper_boundary of inst : label is "10'b0000100001";
  attribute v_writeback : string;
  attribute v_writeback of inst : label is "10'b0000000010";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN VGA_BRAM_controller_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  bram_addr(31) <= \<const0>\;
  bram_addr(30) <= \<const0>\;
  bram_addr(29) <= \<const0>\;
  bram_addr(28) <= \<const0>\;
  bram_addr(27) <= \<const0>\;
  bram_addr(26) <= \<const0>\;
  bram_addr(25) <= \<const0>\;
  bram_addr(24) <= \<const0>\;
  bram_addr(23) <= \<const0>\;
  bram_addr(22) <= \<const0>\;
  bram_addr(21) <= \<const0>\;
  bram_addr(20) <= \<const0>\;
  bram_addr(19) <= \<const0>\;
  bram_addr(18 downto 2) <= \^bram_addr\(18 downto 2);
  bram_addr(1) <= \<const0>\;
  bram_addr(0) <= \<const0>\;
  bram_en <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA
     port map (
      bram_addr(31 downto 19) => NLW_inst_bram_addr_UNCONNECTED(31 downto 19),
      bram_addr(18 downto 2) => \^bram_addr\(18 downto 2),
      bram_addr(1 downto 0) => NLW_inst_bram_addr_UNCONNECTED(1 downto 0),
      bram_din(31 downto 0) => bram_din(31 downto 0),
      bram_en => NLW_inst_bram_en_UNCONNECTED,
      clk => clk,
      reset => reset,
      vga_hsync => vga_hsync,
      vga_rgb(15 downto 0) => vga_rgb(15 downto 0),
      vga_vsync => vga_vsync
    );
end STRUCTURE;
