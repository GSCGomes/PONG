-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/28/2019 08:08:37"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA IS
    PORT (
	CLOCK_50 : IN std_logic;
	UP1 : IN std_logic;
	DOWN1 : IN std_logic;
	UP2 : IN std_logic;
	DOWN2 : IN std_logic;
	LED_U1 : OUT std_logic;
	LED_D1 : OUT std_logic;
	LED_U2 : OUT std_logic;
	LED_D2 : OUT std_logic;
	CLOCK_in : IN std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_CLOCK : OUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_SYNC : OUT std_logic;
	VGA_R : OUT std_logic_vector(9 DOWNTO 0);
	VGA_G : OUT std_logic_vector(9 DOWNTO 0);
	VGA_B : OUT std_logic_vector(9 DOWNTO 0);
	RESET : IN std_logic
	);
END VGA;

-- Design Ports Information
-- LED_U1	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_D1	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_U2	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_D2	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HS	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLOCK	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK_N	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_SYNC	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[9]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[8]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UP1	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DOWN1	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UP2	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DOWN2	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_in	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_UP1 : std_logic;
SIGNAL ww_DOWN1 : std_logic;
SIGNAL ww_UP2 : std_logic;
SIGNAL ww_DOWN2 : std_logic;
SIGNAL ww_LED_U1 : std_logic;
SIGNAL ww_LED_D1 : std_logic;
SIGNAL ww_LED_U2 : std_logic;
SIGNAL ww_LED_D2 : std_logic;
SIGNAL ww_CLOCK_in : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_CLOCK : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_SYNC : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_RESET : std_logic;
SIGNAL \C1|altpll_0|sd1|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|altpll_0|sd1|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C2|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C2|process_4:clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|altpll_0|sd1|pll~CLK1\ : std_logic;
SIGNAL \C1|altpll_0|sd1|pll~CLK2\ : std_logic;
SIGNAL \C3|Add9~0_combout\ : std_logic;
SIGNAL \C3|Add9~2_combout\ : std_logic;
SIGNAL \C3|Add9~4_combout\ : std_logic;
SIGNAL \C3|Add9~14_combout\ : std_logic;
SIGNAL \C3|Add9~24_combout\ : std_logic;
SIGNAL \C3|Add9~32_combout\ : std_logic;
SIGNAL \C3|Add9~34_combout\ : std_logic;
SIGNAL \C3|Add9~36_combout\ : std_logic;
SIGNAL \C3|Add9~46_combout\ : std_logic;
SIGNAL \C3|Add10~14_combout\ : std_logic;
SIGNAL \C3|Add10~18_combout\ : std_logic;
SIGNAL \C3|Add10~22_combout\ : std_logic;
SIGNAL \C3|Add10~24_combout\ : std_logic;
SIGNAL \C3|Add10~26_combout\ : std_logic;
SIGNAL \C3|Add10~28_combout\ : std_logic;
SIGNAL \C3|Add10~32_combout\ : std_logic;
SIGNAL \C3|Add10~44_combout\ : std_logic;
SIGNAL \C3|Add10~54_combout\ : std_logic;
SIGNAL \C3|Add9~56_combout\ : std_logic;
SIGNAL \C3|Add10~56_combout\ : std_logic;
SIGNAL \C3|Add6~0_combout\ : std_logic;
SIGNAL \C3|Add6~2_combout\ : std_logic;
SIGNAL \C3|Add6~6_combout\ : std_logic;
SIGNAL \C3|Add6~14_combout\ : std_logic;
SIGNAL \C3|Add6~22_combout\ : std_logic;
SIGNAL \C3|Add6~32_combout\ : std_logic;
SIGNAL \C3|Add6~36_combout\ : std_logic;
SIGNAL \C3|Add6~38_combout\ : std_logic;
SIGNAL \C3|Add6~40_combout\ : std_logic;
SIGNAL \C3|Add6~42_combout\ : std_logic;
SIGNAL \C3|Add6~44_combout\ : std_logic;
SIGNAL \C3|Add6~48_combout\ : std_logic;
SIGNAL \C3|LessThan70~1_cout\ : std_logic;
SIGNAL \C3|LessThan70~3_cout\ : std_logic;
SIGNAL \C3|LessThan70~5_cout\ : std_logic;
SIGNAL \C3|LessThan70~7_cout\ : std_logic;
SIGNAL \C3|LessThan70~9_cout\ : std_logic;
SIGNAL \C3|LessThan70~11_cout\ : std_logic;
SIGNAL \C3|LessThan70~13_cout\ : std_logic;
SIGNAL \C3|LessThan70~15_cout\ : std_logic;
SIGNAL \C3|LessThan70~17_cout\ : std_logic;
SIGNAL \C3|LessThan70~18_combout\ : std_logic;
SIGNAL \C3|Add7~2_combout\ : std_logic;
SIGNAL \C3|Add7~4_combout\ : std_logic;
SIGNAL \C3|Add7~14_combout\ : std_logic;
SIGNAL \C3|Add7~24_combout\ : std_logic;
SIGNAL \C3|Add7~32_combout\ : std_logic;
SIGNAL \C3|Add7~34_combout\ : std_logic;
SIGNAL \C3|Add7~36_combout\ : std_logic;
SIGNAL \C3|Add7~46_combout\ : std_logic;
SIGNAL \C3|Add7~55\ : std_logic;
SIGNAL \C3|Add7~57\ : std_logic;
SIGNAL \C3|Add7~56_combout\ : std_logic;
SIGNAL \C3|Add7~58_combout\ : std_logic;
SIGNAL \C3|Add8~0_combout\ : std_logic;
SIGNAL \C3|Add8~2_combout\ : std_logic;
SIGNAL \C3|Add8~4_combout\ : std_logic;
SIGNAL \C3|Add8~6_combout\ : std_logic;
SIGNAL \C3|Add8~8_combout\ : std_logic;
SIGNAL \C3|Add8~10_combout\ : std_logic;
SIGNAL \C3|Add8~12_combout\ : std_logic;
SIGNAL \C3|Add8~14_combout\ : std_logic;
SIGNAL \C3|Add8~16_combout\ : std_logic;
SIGNAL \C3|Add8~18_combout\ : std_logic;
SIGNAL \C3|Add8~20_combout\ : std_logic;
SIGNAL \C3|Add8~22_combout\ : std_logic;
SIGNAL \C3|Add8~24_combout\ : std_logic;
SIGNAL \C3|Add8~26_combout\ : std_logic;
SIGNAL \C3|Add8~28_combout\ : std_logic;
SIGNAL \C3|Add8~30_combout\ : std_logic;
SIGNAL \C3|Add8~32_combout\ : std_logic;
SIGNAL \C3|Add8~34_combout\ : std_logic;
SIGNAL \C3|Add8~36_combout\ : std_logic;
SIGNAL \C3|Add8~38_combout\ : std_logic;
SIGNAL \C3|Add8~40_combout\ : std_logic;
SIGNAL \C3|Add8~42_combout\ : std_logic;
SIGNAL \C3|Add8~44_combout\ : std_logic;
SIGNAL \C3|Add8~52_combout\ : std_logic;
SIGNAL \C3|Add8~55\ : std_logic;
SIGNAL \C3|Add8~56_combout\ : std_logic;
SIGNAL \C3|LessThan69~1_cout\ : std_logic;
SIGNAL \C3|LessThan69~3_cout\ : std_logic;
SIGNAL \C3|LessThan69~5_cout\ : std_logic;
SIGNAL \C3|LessThan69~7_cout\ : std_logic;
SIGNAL \C3|LessThan69~9_cout\ : std_logic;
SIGNAL \C3|LessThan69~11_cout\ : std_logic;
SIGNAL \C3|LessThan69~13_cout\ : std_logic;
SIGNAL \C3|LessThan69~15_cout\ : std_logic;
SIGNAL \C3|LessThan69~17_cout\ : std_logic;
SIGNAL \C3|LessThan69~19_cout\ : std_logic;
SIGNAL \C3|LessThan69~20_combout\ : std_logic;
SIGNAL \C3|Add3~1\ : std_logic;
SIGNAL \C3|Add3~0_combout\ : std_logic;
SIGNAL \C3|Add3~3\ : std_logic;
SIGNAL \C3|Add3~2_combout\ : std_logic;
SIGNAL \C3|Add3~5\ : std_logic;
SIGNAL \C3|Add3~4_combout\ : std_logic;
SIGNAL \C3|Add3~7\ : std_logic;
SIGNAL \C3|Add3~6_combout\ : std_logic;
SIGNAL \C3|Add3~9\ : std_logic;
SIGNAL \C3|Add3~8_combout\ : std_logic;
SIGNAL \C3|Add3~11\ : std_logic;
SIGNAL \C3|Add3~10_combout\ : std_logic;
SIGNAL \C3|Add3~13\ : std_logic;
SIGNAL \C3|Add3~12_combout\ : std_logic;
SIGNAL \C3|Add3~15\ : std_logic;
SIGNAL \C3|Add3~14_combout\ : std_logic;
SIGNAL \C3|Add3~17\ : std_logic;
SIGNAL \C3|Add3~16_combout\ : std_logic;
SIGNAL \C3|Add3~19\ : std_logic;
SIGNAL \C3|Add3~18_combout\ : std_logic;
SIGNAL \C3|Add3~21\ : std_logic;
SIGNAL \C3|Add3~20_combout\ : std_logic;
SIGNAL \C3|Add3~23\ : std_logic;
SIGNAL \C3|Add3~22_combout\ : std_logic;
SIGNAL \C3|Add3~25\ : std_logic;
SIGNAL \C3|Add3~24_combout\ : std_logic;
SIGNAL \C3|Add3~27\ : std_logic;
SIGNAL \C3|Add3~26_combout\ : std_logic;
SIGNAL \C3|Add3~29\ : std_logic;
SIGNAL \C3|Add3~28_combout\ : std_logic;
SIGNAL \C3|Add3~31\ : std_logic;
SIGNAL \C3|Add3~30_combout\ : std_logic;
SIGNAL \C3|Add3~33\ : std_logic;
SIGNAL \C3|Add3~32_combout\ : std_logic;
SIGNAL \C3|Add3~35\ : std_logic;
SIGNAL \C3|Add3~34_combout\ : std_logic;
SIGNAL \C3|Add3~37\ : std_logic;
SIGNAL \C3|Add3~36_combout\ : std_logic;
SIGNAL \C3|Add3~39\ : std_logic;
SIGNAL \C3|Add3~38_combout\ : std_logic;
SIGNAL \C3|Add3~41\ : std_logic;
SIGNAL \C3|Add3~40_combout\ : std_logic;
SIGNAL \C3|Add3~43\ : std_logic;
SIGNAL \C3|Add3~42_combout\ : std_logic;
SIGNAL \C3|Add3~45\ : std_logic;
SIGNAL \C3|Add3~44_combout\ : std_logic;
SIGNAL \C3|Add3~47\ : std_logic;
SIGNAL \C3|Add3~46_combout\ : std_logic;
SIGNAL \C3|Add3~49\ : std_logic;
SIGNAL \C3|Add3~48_combout\ : std_logic;
SIGNAL \C3|Add3~51\ : std_logic;
SIGNAL \C3|Add3~50_combout\ : std_logic;
SIGNAL \C3|Add3~53\ : std_logic;
SIGNAL \C3|Add3~52_combout\ : std_logic;
SIGNAL \C3|Add3~55\ : std_logic;
SIGNAL \C3|Add3~54_combout\ : std_logic;
SIGNAL \C3|Add3~56_combout\ : std_logic;
SIGNAL \C3|LessThan66~1_cout\ : std_logic;
SIGNAL \C3|LessThan66~3_cout\ : std_logic;
SIGNAL \C3|LessThan66~5_cout\ : std_logic;
SIGNAL \C3|LessThan66~7_cout\ : std_logic;
SIGNAL \C3|LessThan66~9_cout\ : std_logic;
SIGNAL \C3|LessThan66~11_cout\ : std_logic;
SIGNAL \C3|LessThan66~13_cout\ : std_logic;
SIGNAL \C3|LessThan66~15_cout\ : std_logic;
SIGNAL \C3|LessThan66~17_cout\ : std_logic;
SIGNAL \C3|LessThan66~18_combout\ : std_logic;
SIGNAL \C3|Add4~0_combout\ : std_logic;
SIGNAL \C3|Add4~18_combout\ : std_logic;
SIGNAL \C3|Add4~32_combout\ : std_logic;
SIGNAL \C3|Add5~0_combout\ : std_logic;
SIGNAL \C3|Add5~2_combout\ : std_logic;
SIGNAL \C3|Add5~12_combout\ : std_logic;
SIGNAL \C3|Add5~18_combout\ : std_logic;
SIGNAL \C3|Add5~22_combout\ : std_logic;
SIGNAL \C3|Add5~24_combout\ : std_logic;
SIGNAL \C3|Add5~26_combout\ : std_logic;
SIGNAL \C3|Add5~28_combout\ : std_logic;
SIGNAL \C3|Add5~30_combout\ : std_logic;
SIGNAL \C3|Add5~40_combout\ : std_logic;
SIGNAL \C3|Add5~46_combout\ : std_logic;
SIGNAL \C3|Add0~1\ : std_logic;
SIGNAL \C3|Add0~0_combout\ : std_logic;
SIGNAL \C3|Add0~3\ : std_logic;
SIGNAL \C3|Add0~2_combout\ : std_logic;
SIGNAL \C3|Add0~5\ : std_logic;
SIGNAL \C3|Add0~4_combout\ : std_logic;
SIGNAL \C3|Add0~7\ : std_logic;
SIGNAL \C3|Add0~6_combout\ : std_logic;
SIGNAL \C3|Add0~9\ : std_logic;
SIGNAL \C3|Add0~8_combout\ : std_logic;
SIGNAL \C3|Add0~11\ : std_logic;
SIGNAL \C3|Add0~10_combout\ : std_logic;
SIGNAL \C3|Add0~13\ : std_logic;
SIGNAL \C3|Add0~12_combout\ : std_logic;
SIGNAL \C3|Add0~15\ : std_logic;
SIGNAL \C3|Add0~14_combout\ : std_logic;
SIGNAL \C3|Add0~17\ : std_logic;
SIGNAL \C3|Add0~16_combout\ : std_logic;
SIGNAL \C3|Add0~19\ : std_logic;
SIGNAL \C3|Add0~18_combout\ : std_logic;
SIGNAL \C3|Add0~21\ : std_logic;
SIGNAL \C3|Add0~20_combout\ : std_logic;
SIGNAL \C3|Add0~23\ : std_logic;
SIGNAL \C3|Add0~22_combout\ : std_logic;
SIGNAL \C3|Add0~25\ : std_logic;
SIGNAL \C3|Add0~24_combout\ : std_logic;
SIGNAL \C3|Add0~27\ : std_logic;
SIGNAL \C3|Add0~26_combout\ : std_logic;
SIGNAL \C3|Add0~29\ : std_logic;
SIGNAL \C3|Add0~28_combout\ : std_logic;
SIGNAL \C3|Add0~31\ : std_logic;
SIGNAL \C3|Add0~30_combout\ : std_logic;
SIGNAL \C3|Add0~33\ : std_logic;
SIGNAL \C3|Add0~32_combout\ : std_logic;
SIGNAL \C3|Add0~35\ : std_logic;
SIGNAL \C3|Add0~34_combout\ : std_logic;
SIGNAL \C3|Add0~37\ : std_logic;
SIGNAL \C3|Add0~36_combout\ : std_logic;
SIGNAL \C3|Add0~39\ : std_logic;
SIGNAL \C3|Add0~38_combout\ : std_logic;
SIGNAL \C3|Add0~41\ : std_logic;
SIGNAL \C3|Add0~40_combout\ : std_logic;
SIGNAL \C3|Add0~43\ : std_logic;
SIGNAL \C3|Add0~42_combout\ : std_logic;
SIGNAL \C3|Add0~45\ : std_logic;
SIGNAL \C3|Add0~44_combout\ : std_logic;
SIGNAL \C3|Add0~47\ : std_logic;
SIGNAL \C3|Add0~46_combout\ : std_logic;
SIGNAL \C3|Add0~49\ : std_logic;
SIGNAL \C3|Add0~48_combout\ : std_logic;
SIGNAL \C3|Add0~51\ : std_logic;
SIGNAL \C3|Add0~50_combout\ : std_logic;
SIGNAL \C3|Add0~53\ : std_logic;
SIGNAL \C3|Add0~52_combout\ : std_logic;
SIGNAL \C3|Add0~55\ : std_logic;
SIGNAL \C3|Add0~54_combout\ : std_logic;
SIGNAL \C3|Add0~56_combout\ : std_logic;
SIGNAL \C3|LessThan62~1_cout\ : std_logic;
SIGNAL \C3|LessThan62~3_cout\ : std_logic;
SIGNAL \C3|LessThan62~5_cout\ : std_logic;
SIGNAL \C3|LessThan62~7_cout\ : std_logic;
SIGNAL \C3|LessThan62~9_cout\ : std_logic;
SIGNAL \C3|LessThan62~11_cout\ : std_logic;
SIGNAL \C3|LessThan62~13_cout\ : std_logic;
SIGNAL \C3|LessThan62~15_cout\ : std_logic;
SIGNAL \C3|LessThan62~17_cout\ : std_logic;
SIGNAL \C3|LessThan62~18_combout\ : std_logic;
SIGNAL \C3|Add1~0_combout\ : std_logic;
SIGNAL \C3|Add2~2_combout\ : std_logic;
SIGNAL \C3|Add2~18_combout\ : std_logic;
SIGNAL \C3|Add2~22_combout\ : std_logic;
SIGNAL \C3|Add2~30_combout\ : std_logic;
SIGNAL \C3|Add2~32_combout\ : std_logic;
SIGNAL \C3|Add2~34_combout\ : std_logic;
SIGNAL \C3|Add1~36_combout\ : std_logic;
SIGNAL \C3|Add2~36_combout\ : std_logic;
SIGNAL \C3|Add2~40_combout\ : std_logic;
SIGNAL \C3|Add1~46_combout\ : std_logic;
SIGNAL \C3|Add2~50_combout\ : std_logic;
SIGNAL \C3|Add2~54_combout\ : std_logic;
SIGNAL \C2|Add8~42_combout\ : std_logic;
SIGNAL \C2|Add11~19_combout\ : std_logic;
SIGNAL \C2|Add11~25_combout\ : std_logic;
SIGNAL \C2|Add11~29_combout\ : std_logic;
SIGNAL \C2|Add11~31_combout\ : std_logic;
SIGNAL \C2|Add11~49_combout\ : std_logic;
SIGNAL \C2|Add11~53_combout\ : std_logic;
SIGNAL \C2|Add11~59_combout\ : std_logic;
SIGNAL \C2|SCORE2[3]~38_combout\ : std_logic;
SIGNAL \C2|SCORE2[5]~42_combout\ : std_logic;
SIGNAL \C2|SCORE2[6]~44_combout\ : std_logic;
SIGNAL \C2|SCORE2[8]~48_combout\ : std_logic;
SIGNAL \C2|SCORE2[10]~52_combout\ : std_logic;
SIGNAL \C2|SCORE2[12]~56_combout\ : std_logic;
SIGNAL \C2|SCORE2[17]~66_combout\ : std_logic;
SIGNAL \C2|SCORE2[19]~70_combout\ : std_logic;
SIGNAL \C2|SCORE2[24]~80_combout\ : std_logic;
SIGNAL \C2|SCORE1[3]~39_combout\ : std_logic;
SIGNAL \C2|SCORE1[5]~43_combout\ : std_logic;
SIGNAL \C2|SCORE1[6]~45_combout\ : std_logic;
SIGNAL \C2|SCORE1[12]~57_combout\ : std_logic;
SIGNAL \C2|SCORE1[28]~89_combout\ : std_logic;
SIGNAL \C2|Add3~8_combout\ : std_logic;
SIGNAL \C2|Add3~34_combout\ : std_logic;
SIGNAL \C2|Add3~42_combout\ : std_logic;
SIGNAL \C2|Add3~44_combout\ : std_logic;
SIGNAL \C2|Add3~46_combout\ : std_logic;
SIGNAL \C2|Add1~26_combout\ : std_logic;
SIGNAL \C2|Add1~38_combout\ : std_logic;
SIGNAL \C2|Add4~0_combout\ : std_logic;
SIGNAL \C2|Add4~10_combout\ : std_logic;
SIGNAL \C2|Add4~14_combout\ : std_logic;
SIGNAL \C2|Add4~16_combout\ : std_logic;
SIGNAL \C2|Add4~22_combout\ : std_logic;
SIGNAL \C2|Add4~24_combout\ : std_logic;
SIGNAL \C2|Add4~32_combout\ : std_logic;
SIGNAL \C2|Add4~36_combout\ : std_logic;
SIGNAL \C2|Add4~38_combout\ : std_logic;
SIGNAL \C2|Add4~42_combout\ : std_logic;
SIGNAL \C2|Add4~44_combout\ : std_logic;
SIGNAL \C2|Add4~50_combout\ : std_logic;
SIGNAL \C2|Add6~4_combout\ : std_logic;
SIGNAL \C2|Add6~6_combout\ : std_logic;
SIGNAL \C2|Add6~8_combout\ : std_logic;
SIGNAL \C2|Add6~10_combout\ : std_logic;
SIGNAL \C2|Add6~26_combout\ : std_logic;
SIGNAL \C2|Add6~30_combout\ : std_logic;
SIGNAL \C2|Add6~36_combout\ : std_logic;
SIGNAL \C2|Add6~38_combout\ : std_logic;
SIGNAL \C2|Add6~40_combout\ : std_logic;
SIGNAL \C2|Add6~42_combout\ : std_logic;
SIGNAL \C2|Add6~48_combout\ : std_logic;
SIGNAL \C2|Add14~2_combout\ : std_logic;
SIGNAL \C2|Add14~4_combout\ : std_logic;
SIGNAL \C2|Add14~6_combout\ : std_logic;
SIGNAL \C2|Add14~10_combout\ : std_logic;
SIGNAL \C2|Add14~23_combout\ : std_logic;
SIGNAL \C2|Add14~26_combout\ : std_logic;
SIGNAL \C2|Add14~54_combout\ : std_logic;
SIGNAL \C2|Add14~78_combout\ : std_logic;
SIGNAL \C2|Add14~88\ : std_logic;
SIGNAL \C2|Add14~90_combout\ : std_logic;
SIGNAL \C2|Add16~1\ : std_logic;
SIGNAL \C2|Add16~0_combout\ : std_logic;
SIGNAL \C2|Add16~3\ : std_logic;
SIGNAL \C2|Add16~2_combout\ : std_logic;
SIGNAL \C2|Add16~5\ : std_logic;
SIGNAL \C2|Add16~4_combout\ : std_logic;
SIGNAL \C2|Add16~7\ : std_logic;
SIGNAL \C2|Add16~6_combout\ : std_logic;
SIGNAL \C2|Add16~9\ : std_logic;
SIGNAL \C2|Add16~8_combout\ : std_logic;
SIGNAL \C2|Add16~11\ : std_logic;
SIGNAL \C2|Add16~10_combout\ : std_logic;
SIGNAL \C2|Add16~13\ : std_logic;
SIGNAL \C2|Add16~12_combout\ : std_logic;
SIGNAL \C2|Add16~15\ : std_logic;
SIGNAL \C2|Add16~14_combout\ : std_logic;
SIGNAL \C2|Add16~17\ : std_logic;
SIGNAL \C2|Add16~16_combout\ : std_logic;
SIGNAL \C2|Add16~19\ : std_logic;
SIGNAL \C2|Add16~18_combout\ : std_logic;
SIGNAL \C2|Add16~21\ : std_logic;
SIGNAL \C2|Add16~20_combout\ : std_logic;
SIGNAL \C2|Add16~23\ : std_logic;
SIGNAL \C2|Add16~22_combout\ : std_logic;
SIGNAL \C2|Add16~25\ : std_logic;
SIGNAL \C2|Add16~24_combout\ : std_logic;
SIGNAL \C2|Add16~27\ : std_logic;
SIGNAL \C2|Add16~26_combout\ : std_logic;
SIGNAL \C2|Add16~28_combout\ : std_logic;
SIGNAL \C2|Add15~1\ : std_logic;
SIGNAL \C2|Add15~0_combout\ : std_logic;
SIGNAL \C2|Add15~3\ : std_logic;
SIGNAL \C2|Add15~2_combout\ : std_logic;
SIGNAL \C2|Add15~5\ : std_logic;
SIGNAL \C2|Add15~4_combout\ : std_logic;
SIGNAL \C2|Add15~7\ : std_logic;
SIGNAL \C2|Add15~6_combout\ : std_logic;
SIGNAL \C2|Add15~9\ : std_logic;
SIGNAL \C2|Add15~8_combout\ : std_logic;
SIGNAL \C2|Add15~11\ : std_logic;
SIGNAL \C2|Add15~10_combout\ : std_logic;
SIGNAL \C2|Add15~13\ : std_logic;
SIGNAL \C2|Add15~12_combout\ : std_logic;
SIGNAL \C2|Add15~15\ : std_logic;
SIGNAL \C2|Add15~14_combout\ : std_logic;
SIGNAL \C2|Add15~17\ : std_logic;
SIGNAL \C2|Add15~16_combout\ : std_logic;
SIGNAL \C2|Add15~19\ : std_logic;
SIGNAL \C2|Add15~18_combout\ : std_logic;
SIGNAL \C2|Add15~21\ : std_logic;
SIGNAL \C2|Add15~20_combout\ : std_logic;
SIGNAL \C2|Add15~23\ : std_logic;
SIGNAL \C2|Add15~22_combout\ : std_logic;
SIGNAL \C2|Add15~25\ : std_logic;
SIGNAL \C2|Add15~24_combout\ : std_logic;
SIGNAL \C2|Add15~26_combout\ : std_logic;
SIGNAL \C3|process_0~0_combout\ : std_logic;
SIGNAL \C3|process_0~2_combout\ : std_logic;
SIGNAL \C3|LessThan59~0_combout\ : std_logic;
SIGNAL \C3|process_0~7_combout\ : std_logic;
SIGNAL \C3|R~0_combout\ : std_logic;
SIGNAL \C3|R~1_combout\ : std_logic;
SIGNAL \C3|R~2_combout\ : std_logic;
SIGNAL \C3|LessThan71~1_combout\ : std_logic;
SIGNAL \C3|draw~6_combout\ : std_logic;
SIGNAL \C3|LessThan70~20_combout\ : std_logic;
SIGNAL \C3|LessThan70~21_combout\ : std_logic;
SIGNAL \C3|LessThan70~22_combout\ : std_logic;
SIGNAL \C3|LessThan70~23_combout\ : std_logic;
SIGNAL \C3|LessThan70~24_combout\ : std_logic;
SIGNAL \C3|LessThan69~22_combout\ : std_logic;
SIGNAL \C3|LessThan69~23_combout\ : std_logic;
SIGNAL \C3|LessThan69~24_combout\ : std_logic;
SIGNAL \C3|LessThan69~25_combout\ : std_logic;
SIGNAL \C3|LessThan69~26_combout\ : std_logic;
SIGNAL \C3|R~3_combout\ : std_logic;
SIGNAL \C3|R~4_combout\ : std_logic;
SIGNAL \C3|draw~14_combout\ : std_logic;
SIGNAL \C3|LessThan3~1_combout\ : std_logic;
SIGNAL \C3|LessThan8~0_combout\ : std_logic;
SIGNAL \C3|LessThan6~0_combout\ : std_logic;
SIGNAL \C3|draw~24_combout\ : std_logic;
SIGNAL \C3|Equal6~0_combout\ : std_logic;
SIGNAL \C3|Equal6~1_combout\ : std_logic;
SIGNAL \C3|Equal6~2_combout\ : std_logic;
SIGNAL \C3|Equal6~3_combout\ : std_logic;
SIGNAL \C3|Equal6~4_combout\ : std_logic;
SIGNAL \C3|Selector1~3_combout\ : std_logic;
SIGNAL \C3|draw~29_combout\ : std_logic;
SIGNAL \C3|Equal7~0_combout\ : std_logic;
SIGNAL \C3|Selector1~14_combout\ : std_logic;
SIGNAL \C3|Selector1~15_combout\ : std_logic;
SIGNAL \C3|Selector1~16_combout\ : std_logic;
SIGNAL \C3|Equal0~0_combout\ : std_logic;
SIGNAL \C3|Selector0~0_combout\ : std_logic;
SIGNAL \C3|LessThan14~0_combout\ : std_logic;
SIGNAL \C3|R~10_combout\ : std_logic;
SIGNAL \C3|draw~36_combout\ : std_logic;
SIGNAL \C3|draw~38_combout\ : std_logic;
SIGNAL \C3|draw~41_combout\ : std_logic;
SIGNAL \C3|R~14_combout\ : std_logic;
SIGNAL \C3|R~15_combout\ : std_logic;
SIGNAL \C3|Selector0~3_combout\ : std_logic;
SIGNAL \C3|LessThan2~0_combout\ : std_logic;
SIGNAL \C3|LessThan2~1_combout\ : std_logic;
SIGNAL \C3|LessThan2~2_combout\ : std_logic;
SIGNAL \C3|draw~45_combout\ : std_logic;
SIGNAL \C3|Selector0~7_combout\ : std_logic;
SIGNAL \C3|Selector0~9_combout\ : std_logic;
SIGNAL \C3|R~16_combout\ : std_logic;
SIGNAL \C3|R~17_combout\ : std_logic;
SIGNAL \C3|draw~47_combout\ : std_logic;
SIGNAL \C3|LessThan49~0_combout\ : std_logic;
SIGNAL \C3|LessThan49~1_combout\ : std_logic;
SIGNAL \C3|LessThan50~0_combout\ : std_logic;
SIGNAL \C3|LessThan50~1_combout\ : std_logic;
SIGNAL \C3|LessThan50~2_combout\ : std_logic;
SIGNAL \C3|draw~52_combout\ : std_logic;
SIGNAL \C3|LessThan42~0_combout\ : std_logic;
SIGNAL \C3|draw~56_combout\ : std_logic;
SIGNAL \C3|LessThan4~1_combout\ : std_logic;
SIGNAL \C3|draw~57_combout\ : std_logic;
SIGNAL \C3|LessThan50~3_combout\ : std_logic;
SIGNAL \C3|LessThan52~0_combout\ : std_logic;
SIGNAL \C3|LessThan51~0_combout\ : std_logic;
SIGNAL \C3|LessThan51~1_combout\ : std_logic;
SIGNAL \C3|draw~58_combout\ : std_logic;
SIGNAL \C3|R~21_combout\ : std_logic;
SIGNAL \C3|R~22_combout\ : std_logic;
SIGNAL \C3|R~23_combout\ : std_logic;
SIGNAL \C3|R~24_combout\ : std_logic;
SIGNAL \C3|R~25_combout\ : std_logic;
SIGNAL \C3|R~26_combout\ : std_logic;
SIGNAL \C3|R~27_combout\ : std_logic;
SIGNAL \C3|R~28_combout\ : std_logic;
SIGNAL \C3|R~29_combout\ : std_logic;
SIGNAL \C3|R~30_combout\ : std_logic;
SIGNAL \C3|R~31_combout\ : std_logic;
SIGNAL \C3|R~32_combout\ : std_logic;
SIGNAL \C3|LessThan65~0_combout\ : std_logic;
SIGNAL \C3|LessThan65~1_combout\ : std_logic;
SIGNAL \C3|LessThan66~20_combout\ : std_logic;
SIGNAL \C3|LessThan66~21_combout\ : std_logic;
SIGNAL \C3|LessThan66~22_combout\ : std_logic;
SIGNAL \C3|LessThan66~23_combout\ : std_logic;
SIGNAL \C3|LessThan66~24_combout\ : std_logic;
SIGNAL \C3|LessThan66~25_combout\ : std_logic;
SIGNAL \C3|LessThan66~26_combout\ : std_logic;
SIGNAL \C3|draw~59_combout\ : std_logic;
SIGNAL \C3|LessThan67~21_combout\ : std_logic;
SIGNAL \C3|LessThan60~0_combout\ : std_logic;
SIGNAL \C3|LessThan62~20_combout\ : std_logic;
SIGNAL \C3|LessThan62~21_combout\ : std_logic;
SIGNAL \C3|LessThan62~22_combout\ : std_logic;
SIGNAL \C3|LessThan62~23_combout\ : std_logic;
SIGNAL \C3|LessThan62~24_combout\ : std_logic;
SIGNAL \C3|LessThan62~25_combout\ : std_logic;
SIGNAL \C3|LessThan62~26_combout\ : std_logic;
SIGNAL \C3|draw~62_combout\ : std_logic;
SIGNAL \C3|LessThan63~22_combout\ : std_logic;
SIGNAL \C2|Add8~1_combout\ : std_logic;
SIGNAL \C2|process_4:clk~regout\ : std_logic;
SIGNAL \C2|Add11~67_combout\ : std_logic;
SIGNAL \C2|Add11~81_combout\ : std_logic;
SIGNAL \C2|Add11~82_combout\ : std_logic;
SIGNAL \C2|GOAL1~regout\ : std_logic;
SIGNAL \C2|LessThan2~0_combout\ : std_logic;
SIGNAL \C2|LessThan2~7_combout\ : std_logic;
SIGNAL \C2|Selector3~0_combout\ : std_logic;
SIGNAL \C2|clk~regout\ : std_logic;
SIGNAL \C2|LessThan5~0_combout\ : std_logic;
SIGNAL \C2|P2[3]~0_combout\ : std_logic;
SIGNAL \C2|LessThan5~1_combout\ : std_logic;
SIGNAL \C2|P2[3]~4_combout\ : std_logic;
SIGNAL \C2|P2[3]~8_combout\ : std_logic;
SIGNAL \C2|LessThan3~0_combout\ : std_logic;
SIGNAL \C2|BVDir~0_combout\ : std_logic;
SIGNAL \C2|BVDir~6_combout\ : std_logic;
SIGNAL \C2|process_4:cnt[14]~regout\ : std_logic;
SIGNAL \C2|process_4:cnt[13]~regout\ : std_logic;
SIGNAL \C2|process_4:cnt[12]~regout\ : std_logic;
SIGNAL \C2|process_4:cnt[11]~regout\ : std_logic;
SIGNAL \C2|Equal1~0_combout\ : std_logic;
SIGNAL \C2|process_4:cnt[10]~regout\ : std_logic;
SIGNAL \C2|process_4:cnt[8]~regout\ : std_logic;
SIGNAL \C2|process_4:cnt[9]~regout\ : std_logic;
SIGNAL \C2|process_4:cnt[7]~regout\ : std_logic;
SIGNAL \C2|Equal1~1_combout\ : std_logic;
SIGNAL \C2|process_4:cnt[5]~regout\ : std_logic;
SIGNAL \C2|process_4:cnt[4]~regout\ : std_logic;
SIGNAL \C2|process_4:cnt[6]~regout\ : std_logic;
SIGNAL \C2|process_4:cnt[3]~regout\ : std_logic;
SIGNAL \C2|Equal1~2_combout\ : std_logic;
SIGNAL \C2|process_4:cnt[2]~regout\ : std_logic;
SIGNAL \C2|process_4:cnt[1]~regout\ : std_logic;
SIGNAL \C2|process_4:cnt[0]~regout\ : std_logic;
SIGNAL \C2|Equal1~3_combout\ : std_logic;
SIGNAL \C2|process_4:clk~0_combout\ : std_logic;
SIGNAL \C2|LessThan9~0_combout\ : std_logic;
SIGNAL \C2|LessThan9~1_combout\ : std_logic;
SIGNAL \C2|BHDir~1_combout\ : std_logic;
SIGNAL \C2|BHDir~2_combout\ : std_logic;
SIGNAL \C2|BHDir~3_combout\ : std_logic;
SIGNAL \C2|BHDir~4_combout\ : std_logic;
SIGNAL \C2|GOAL1~0_combout\ : std_logic;
SIGNAL \C2|GOAL1~1_combout\ : std_logic;
SIGNAL \C2|Add14~25_combout\ : std_logic;
SIGNAL \C2|Add14~28_combout\ : std_logic;
SIGNAL \C2|Add14~46_combout\ : std_logic;
SIGNAL \C2|Add14~56_combout\ : std_logic;
SIGNAL \C2|Add14~80_combout\ : std_logic;
SIGNAL \C2|Add14~92_combout\ : std_logic;
SIGNAL \C2|Equal0~0_combout\ : std_logic;
SIGNAL \C2|Equal0~1_combout\ : std_logic;
SIGNAL \C2|Equal0~2_combout\ : std_logic;
SIGNAL \C2|Equal0~3_combout\ : std_logic;
SIGNAL \C2|Equal0~4_combout\ : std_logic;
SIGNAL \C2|clk~0_combout\ : std_logic;
SIGNAL \C2|cnt~12_combout\ : std_logic;
SIGNAL \C2|cnt~13_combout\ : std_logic;
SIGNAL \C2|cnt~14_combout\ : std_logic;
SIGNAL \C2|cnt~15_combout\ : std_logic;
SIGNAL \C2|cnt~16_combout\ : std_logic;
SIGNAL \C2|cnt~17_combout\ : std_logic;
SIGNAL \C2|cnt~18_combout\ : std_logic;
SIGNAL \C2|cnt~19_combout\ : std_logic;
SIGNAL \C2|Add14~93_combout\ : std_logic;
SIGNAL \C3|draw~67_combout\ : std_logic;
SIGNAL \C2|cnt~20_combout\ : std_logic;
SIGNAL \C2|cnt~21_combout\ : std_logic;
SIGNAL \C2|cnt~22_combout\ : std_logic;
SIGNAL \C2|cnt~23_combout\ : std_logic;
SIGNAL \C2|cnt~24_combout\ : std_logic;
SIGNAL \C2|cnt~25_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \C2|clk~clkctrl_outclk\ : std_logic;
SIGNAL \C2|process_4:clk~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \UP1~combout\ : std_logic;
SIGNAL \DOWN1~combout\ : std_logic;
SIGNAL \UP2~combout\ : std_logic;
SIGNAL \DOWN2~combout\ : std_logic;
SIGNAL \CLOCK_in~combout\ : std_logic;
SIGNAL \C1|altpll_0|sd1|_clk0\ : std_logic;
SIGNAL \C1|altpll_0|sd1|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \C3|HPOS[0]~12\ : std_logic;
SIGNAL \C3|HPOS[1]~14\ : std_logic;
SIGNAL \C3|HPOS[2]~15_combout\ : std_logic;
SIGNAL \C3|HPOS[3]~17_combout\ : std_logic;
SIGNAL \C3|LessThan16~0_combout\ : std_logic;
SIGNAL \C3|HPOS[6]~24\ : std_logic;
SIGNAL \C3|HPOS[7]~26\ : std_logic;
SIGNAL \C3|HPOS[8]~27_combout\ : std_logic;
SIGNAL \C3|HPOS[8]~28\ : std_logic;
SIGNAL \C3|HPOS[9]~29_combout\ : std_logic;
SIGNAL \C3|LessThan16~1_combout\ : std_logic;
SIGNAL \C3|HPOS[7]~25_combout\ : std_logic;
SIGNAL \C3|HPOS[5]~21_combout\ : std_logic;
SIGNAL \C3|LessThan12~0_combout\ : std_logic;
SIGNAL \C3|LessThan16~2_combout\ : std_logic;
SIGNAL \C3|HPOS[2]~16\ : std_logic;
SIGNAL \C3|HPOS[3]~18\ : std_logic;
SIGNAL \C3|HPOS[4]~19_combout\ : std_logic;
SIGNAL \C3|HPOS[4]~20\ : std_logic;
SIGNAL \C3|HPOS[5]~22\ : std_logic;
SIGNAL \C3|HPOS[6]~23_combout\ : std_logic;
SIGNAL \C3|LessThan75~1_combout\ : std_logic;
SIGNAL \C3|HPOS[1]~13_combout\ : std_logic;
SIGNAL \C3|LessThan75~0_combout\ : std_logic;
SIGNAL \C3|LessThan75~2_combout\ : std_logic;
SIGNAL \C3|process_0~1_combout\ : std_logic;
SIGNAL \C3|process_0~3_combout\ : std_logic;
SIGNAL \C3|HSYNC~regout\ : std_logic;
SIGNAL \C3|VPOS[0]~11\ : std_logic;
SIGNAL \C3|VPOS[1]~13\ : std_logic;
SIGNAL \C3|VPOS[2]~14_combout\ : std_logic;
SIGNAL \C3|VPOS[3]~17\ : std_logic;
SIGNAL \C3|VPOS[4]~18_combout\ : std_logic;
SIGNAL \C3|VPOS[4]~19\ : std_logic;
SIGNAL \C3|VPOS[5]~20_combout\ : std_logic;
SIGNAL \C3|VPOS[5]~21\ : std_logic;
SIGNAL \C3|VPOS[6]~22_combout\ : std_logic;
SIGNAL \C3|LessThan41~0_combout\ : std_logic;
SIGNAL \C3|VPOS[6]~23\ : std_logic;
SIGNAL \C3|VPOS[7]~25\ : std_logic;
SIGNAL \C3|VPOS[8]~26_combout\ : std_logic;
SIGNAL \C3|VPOS[8]~27\ : std_logic;
SIGNAL \C3|VPOS[9]~28_combout\ : std_logic;
SIGNAL \C3|VPOS[7]~24_combout\ : std_logic;
SIGNAL \C3|draw~34_combout\ : std_logic;
SIGNAL \C3|LessThan20~0_combout\ : std_logic;
SIGNAL \C3|VPOS[2]~15\ : std_logic;
SIGNAL \C3|VPOS[3]~16_combout\ : std_logic;
SIGNAL \C3|VPOS[0]~10_combout\ : std_logic;
SIGNAL \C3|process_0~4_combout\ : std_logic;
SIGNAL \C3|process_0~5_combout\ : std_logic;
SIGNAL \C3|process_0~6_combout\ : std_logic;
SIGNAL \C3|VSYNC~regout\ : std_logic;
SIGNAL \C2|Selector0~0_combout\ : std_logic;
SIGNAL \C2|SCORE1[0]~33_combout\ : std_logic;
SIGNAL \C2|GOAL2~0_combout\ : std_logic;
SIGNAL \C2|Add11~18\ : std_logic;
SIGNAL \C2|Add11~20\ : std_logic;
SIGNAL \C2|Add11~21_combout\ : std_logic;
SIGNAL \C2|Add11~86_combout\ : std_logic;
SIGNAL \C2|Add11~87_combout\ : std_logic;
SIGNAL \C2|Add11~22\ : std_logic;
SIGNAL \C2|Add11~23_combout\ : std_logic;
SIGNAL \C2|Add11~85_combout\ : std_logic;
SIGNAL \C2|Add11~24\ : std_logic;
SIGNAL \C2|Add11~26\ : std_logic;
SIGNAL \C2|Add11~27_combout\ : std_logic;
SIGNAL \C2|Add11~83_combout\ : std_logic;
SIGNAL \C2|Add11~28\ : std_logic;
SIGNAL \C2|Add11~30\ : std_logic;
SIGNAL \C2|Add11~32\ : std_logic;
SIGNAL \C2|Add11~33_combout\ : std_logic;
SIGNAL \C2|Add11~80_combout\ : std_logic;
SIGNAL \C2|Add11~34\ : std_logic;
SIGNAL \C2|Add11~35_combout\ : std_logic;
SIGNAL \C2|Add11~79_combout\ : std_logic;
SIGNAL \C2|Add11~36\ : std_logic;
SIGNAL \C2|Add11~37_combout\ : std_logic;
SIGNAL \C2|Add11~78_combout\ : std_logic;
SIGNAL \C2|Add11~38\ : std_logic;
SIGNAL \C2|Add11~39_combout\ : std_logic;
SIGNAL \C2|Add11~77_combout\ : std_logic;
SIGNAL \C2|Add11~40\ : std_logic;
SIGNAL \C2|Add11~41_combout\ : std_logic;
SIGNAL \C2|Add11~76_combout\ : std_logic;
SIGNAL \C2|Add11~42\ : std_logic;
SIGNAL \C2|Add11~43_combout\ : std_logic;
SIGNAL \C2|Add11~75_combout\ : std_logic;
SIGNAL \C2|Add11~44\ : std_logic;
SIGNAL \C2|Add11~45_combout\ : std_logic;
SIGNAL \C2|Add11~74_combout\ : std_logic;
SIGNAL \C2|LessThan9~4_combout\ : std_logic;
SIGNAL \C2|Add11~72_combout\ : std_logic;
SIGNAL \C2|Add11~46\ : std_logic;
SIGNAL \C2|Add11~47_combout\ : std_logic;
SIGNAL \C2|Add11~73_combout\ : std_logic;
SIGNAL \C2|Add11~48\ : std_logic;
SIGNAL \C2|Add11~50\ : std_logic;
SIGNAL \C2|Add11~51_combout\ : std_logic;
SIGNAL \C2|Add11~71_combout\ : std_logic;
SIGNAL \C2|LessThan9~5_combout\ : std_logic;
SIGNAL \C2|LessThan9~2_combout\ : std_logic;
SIGNAL \C2|LessThan9~3_combout\ : std_logic;
SIGNAL \C2|LessThan9~6_combout\ : std_logic;
SIGNAL \C2|LessThan9~7_combout\ : std_logic;
SIGNAL \C2|BHDir~7_combout\ : std_logic;
SIGNAL \C2|Add8~71_combout\ : std_logic;
SIGNAL \C2|Add11~0_combout\ : std_logic;
SIGNAL \C2|Add11~2_combout\ : std_logic;
SIGNAL \C2|Add8~0_combout\ : std_logic;
SIGNAL \C2|Add8~3_cout\ : std_logic;
SIGNAL \C2|Add8~5\ : std_logic;
SIGNAL \C2|Add8~6_combout\ : std_logic;
SIGNAL \C2|Add8~89_combout\ : std_logic;
SIGNAL \C2|Add8~7\ : std_logic;
SIGNAL \C2|Add8~9\ : std_logic;
SIGNAL \C2|Add8~11\ : std_logic;
SIGNAL \C2|Add8~12_combout\ : std_logic;
SIGNAL \C2|Add8~86_combout\ : std_logic;
SIGNAL \C2|Add8~13\ : std_logic;
SIGNAL \C2|Add8~15\ : std_logic;
SIGNAL \C2|Add8~17\ : std_logic;
SIGNAL \C2|Add8~19\ : std_logic;
SIGNAL \C2|Add8~20_combout\ : std_logic;
SIGNAL \C2|Add8~82_combout\ : std_logic;
SIGNAL \C2|Add8~21\ : std_logic;
SIGNAL \C2|Add8~23\ : std_logic;
SIGNAL \C2|Add8~24_combout\ : std_logic;
SIGNAL \C2|Add8~80_combout\ : std_logic;
SIGNAL \C2|Add8~25\ : std_logic;
SIGNAL \C2|Add8~26_combout\ : std_logic;
SIGNAL \C2|Add8~79_combout\ : std_logic;
SIGNAL \C2|Add8~27\ : std_logic;
SIGNAL \C2|Add8~28_combout\ : std_logic;
SIGNAL \C2|Add8~78_combout\ : std_logic;
SIGNAL \C2|Add8~29\ : std_logic;
SIGNAL \C2|Add8~30_combout\ : std_logic;
SIGNAL \C2|Add8~77_combout\ : std_logic;
SIGNAL \C2|Add8~31\ : std_logic;
SIGNAL \C2|Add8~32_combout\ : std_logic;
SIGNAL \C2|Add8~76_combout\ : std_logic;
SIGNAL \C2|Add8~33\ : std_logic;
SIGNAL \C2|Add8~34_combout\ : std_logic;
SIGNAL \C2|Add8~75_combout\ : std_logic;
SIGNAL \C2|Add8~35\ : std_logic;
SIGNAL \C2|Add8~36_combout\ : std_logic;
SIGNAL \C2|Add8~74_combout\ : std_logic;
SIGNAL \C2|Add8~37\ : std_logic;
SIGNAL \C2|Add8~38_combout\ : std_logic;
SIGNAL \C2|Add8~73_combout\ : std_logic;
SIGNAL \C2|Add8~39\ : std_logic;
SIGNAL \C2|Add8~40_combout\ : std_logic;
SIGNAL \C2|Add8~72_combout\ : std_logic;
SIGNAL \C2|Add8~41\ : std_logic;
SIGNAL \C2|Add8~43\ : std_logic;
SIGNAL \C2|Add8~44_combout\ : std_logic;
SIGNAL \C2|Add8~70_combout\ : std_logic;
SIGNAL \C2|Add8~45\ : std_logic;
SIGNAL \C2|Add8~46_combout\ : std_logic;
SIGNAL \C2|Add8~69_combout\ : std_logic;
SIGNAL \C2|Add8~47\ : std_logic;
SIGNAL \C2|Add8~48_combout\ : std_logic;
SIGNAL \C2|Add8~68_combout\ : std_logic;
SIGNAL \C2|Add8~49\ : std_logic;
SIGNAL \C2|Add8~51\ : std_logic;
SIGNAL \C2|Add8~53\ : std_logic;
SIGNAL \C2|Add8~55\ : std_logic;
SIGNAL \C2|Add8~57\ : std_logic;
SIGNAL \C2|Add8~59\ : std_logic;
SIGNAL \C2|Add8~60_combout\ : std_logic;
SIGNAL \C2|Add8~62_combout\ : std_logic;
SIGNAL \C2|Add8~56_combout\ : std_logic;
SIGNAL \C2|Add8~64_combout\ : std_logic;
SIGNAL \C2|Add8~54_combout\ : std_logic;
SIGNAL \C2|Add8~65_combout\ : std_logic;
SIGNAL \C2|BVDir~9_combout\ : std_logic;
SIGNAL \C2|Add8~50_combout\ : std_logic;
SIGNAL \C2|Add8~67_combout\ : std_logic;
SIGNAL \C2|BVDir~7_combout\ : std_logic;
SIGNAL \C2|BVDir~5_combout\ : std_logic;
SIGNAL \C2|BVDir~4_combout\ : std_logic;
SIGNAL \C2|BVDir~8_combout\ : std_logic;
SIGNAL \C2|BVDir~10_combout\ : std_logic;
SIGNAL \C2|Add8~16_combout\ : std_logic;
SIGNAL \C2|Add8~84_combout\ : std_logic;
SIGNAL \C2|BVDir~1_combout\ : std_logic;
SIGNAL \C2|Add8~14_combout\ : std_logic;
SIGNAL \C2|Add8~85_combout\ : std_logic;
SIGNAL \C2|Add8~10_combout\ : std_logic;
SIGNAL \C2|Add8~87_combout\ : std_logic;
SIGNAL \C2|Add8~8_combout\ : std_logic;
SIGNAL \C2|Add8~88_combout\ : std_logic;
SIGNAL \C2|LessThan7~0_combout\ : std_logic;
SIGNAL \C2|BVDir~2_combout\ : std_logic;
SIGNAL \C2|BVDir~3_combout\ : std_logic;
SIGNAL \C2|BVDir~11_combout\ : std_logic;
SIGNAL \C2|BVDir~regout\ : std_logic;
SIGNAL \C2|Add8~61\ : std_logic;
SIGNAL \C2|Add8~91\ : std_logic;
SIGNAL \C2|Add8~94_combout\ : std_logic;
SIGNAL \C2|Add8~96_combout\ : std_logic;
SIGNAL \C2|process_2~2_combout\ : std_logic;
SIGNAL \C2|Add1~0_combout\ : std_logic;
SIGNAL \C2|P1[0]~7_combout\ : std_logic;
SIGNAL \C2|Add1~17\ : std_logic;
SIGNAL \C2|Add1~18_combout\ : std_logic;
SIGNAL \C2|Add1~19\ : std_logic;
SIGNAL \C2|Add1~20_combout\ : std_logic;
SIGNAL \C2|Add1~21\ : std_logic;
SIGNAL \C2|Add1~22_combout\ : std_logic;
SIGNAL \C2|Add1~23\ : std_logic;
SIGNAL \C2|Add1~24_combout\ : std_logic;
SIGNAL \C2|Add1~25\ : std_logic;
SIGNAL \C2|Add1~27\ : std_logic;
SIGNAL \C2|Add1~28_combout\ : std_logic;
SIGNAL \C2|Add1~29\ : std_logic;
SIGNAL \C2|Add1~30_combout\ : std_logic;
SIGNAL \C2|Add1~31\ : std_logic;
SIGNAL \C2|Add1~32_combout\ : std_logic;
SIGNAL \C2|Add1~33\ : std_logic;
SIGNAL \C2|Add1~34_combout\ : std_logic;
SIGNAL \C2|Add1~35\ : std_logic;
SIGNAL \C2|Add1~37\ : std_logic;
SIGNAL \C2|Add1~39\ : std_logic;
SIGNAL \C2|Add1~41\ : std_logic;
SIGNAL \C2|Add1~43\ : std_logic;
SIGNAL \C2|Add1~45\ : std_logic;
SIGNAL \C2|Add1~47\ : std_logic;
SIGNAL \C2|Add1~48_combout\ : std_logic;
SIGNAL \C2|Add1~49\ : std_logic;
SIGNAL \C2|Add1~50_combout\ : std_logic;
SIGNAL \C2|Add1~46_combout\ : std_logic;
SIGNAL \C2|LessThan3~3_combout\ : std_logic;
SIGNAL \C2|Add1~36_combout\ : std_logic;
SIGNAL \C2|Add1~42_combout\ : std_logic;
SIGNAL \C2|Add1~40_combout\ : std_logic;
SIGNAL \C2|LessThan3~2_combout\ : std_logic;
SIGNAL \C2|LessThan3~1_combout\ : std_logic;
SIGNAL \C2|LessThan3~4_combout\ : std_logic;
SIGNAL \C2|Add1~4_combout\ : std_logic;
SIGNAL \C2|P1[2]~6_combout\ : std_logic;
SIGNAL \C2|Add1~6_combout\ : std_logic;
SIGNAL \C2|Add1~10_combout\ : std_logic;
SIGNAL \C2|Add1~8_combout\ : std_logic;
SIGNAL \C2|LessThan3~7_combout\ : std_logic;
SIGNAL \C2|P1[3]~0_combout\ : std_logic;
SIGNAL \C2|P1[3]~1_combout\ : std_logic;
SIGNAL \C2|Add1~51\ : std_logic;
SIGNAL \C2|Add1~52_combout\ : std_logic;
SIGNAL \C2|Add1~53\ : std_logic;
SIGNAL \C2|Add1~54_combout\ : std_logic;
SIGNAL \C2|Add1~55\ : std_logic;
SIGNAL \C2|Add1~56_combout\ : std_logic;
SIGNAL \C2|LessThan3~5_combout\ : std_logic;
SIGNAL \C2|Add1~57\ : std_logic;
SIGNAL \C2|Add1~58_combout\ : std_logic;
SIGNAL \C2|Add1~59\ : std_logic;
SIGNAL \C2|Add1~60_combout\ : std_logic;
SIGNAL \C2|LessThan3~6_combout\ : std_logic;
SIGNAL \C2|P1[3]~2_combout\ : std_logic;
SIGNAL \C2|P1[3]~3_combout\ : std_logic;
SIGNAL \C2|Add1~1\ : std_logic;
SIGNAL \C2|Add1~3\ : std_logic;
SIGNAL \C2|Add1~5\ : std_logic;
SIGNAL \C2|Add1~7\ : std_logic;
SIGNAL \C2|Add1~9\ : std_logic;
SIGNAL \C2|Add1~11\ : std_logic;
SIGNAL \C2|Add1~13\ : std_logic;
SIGNAL \C2|Add1~14_combout\ : std_logic;
SIGNAL \C2|Add1~15\ : std_logic;
SIGNAL \C2|Add1~16_combout\ : std_logic;
SIGNAL \C2|P1[8]~4_combout\ : std_logic;
SIGNAL \C2|Add1~2_combout\ : std_logic;
SIGNAL \C2|LessThan3~8_combout\ : std_logic;
SIGNAL \C2|LessThan3~9_combout\ : std_logic;
SIGNAL \C2|process_2~3_combout\ : std_logic;
SIGNAL \C2|Add1~61\ : std_logic;
SIGNAL \C2|Add1~62_combout\ : std_logic;
SIGNAL \C2|Add1~44_combout\ : std_logic;
SIGNAL \C2|Add1~12_combout\ : std_logic;
SIGNAL \C2|P1[6]~5_combout\ : std_logic;
SIGNAL \C2|Add4~1\ : std_logic;
SIGNAL \C2|Add4~3\ : std_logic;
SIGNAL \C2|Add4~5\ : std_logic;
SIGNAL \C2|Add4~7\ : std_logic;
SIGNAL \C2|Add4~9\ : std_logic;
SIGNAL \C2|Add4~11\ : std_logic;
SIGNAL \C2|Add4~13\ : std_logic;
SIGNAL \C2|Add4~15\ : std_logic;
SIGNAL \C2|Add4~17\ : std_logic;
SIGNAL \C2|Add4~19\ : std_logic;
SIGNAL \C2|Add4~21\ : std_logic;
SIGNAL \C2|Add4~23\ : std_logic;
SIGNAL \C2|Add4~25\ : std_logic;
SIGNAL \C2|Add4~27\ : std_logic;
SIGNAL \C2|Add4~29\ : std_logic;
SIGNAL \C2|Add4~31\ : std_logic;
SIGNAL \C2|Add4~33\ : std_logic;
SIGNAL \C2|Add4~35\ : std_logic;
SIGNAL \C2|Add4~37\ : std_logic;
SIGNAL \C2|Add4~39\ : std_logic;
SIGNAL \C2|Add4~41\ : std_logic;
SIGNAL \C2|Add4~43\ : std_logic;
SIGNAL \C2|Add4~45\ : std_logic;
SIGNAL \C2|Add4~47\ : std_logic;
SIGNAL \C2|Add4~49\ : std_logic;
SIGNAL \C2|Add4~51\ : std_logic;
SIGNAL \C2|Add4~53\ : std_logic;
SIGNAL \C2|Add4~55\ : std_logic;
SIGNAL \C2|Add4~56_combout\ : std_logic;
SIGNAL \C2|Add4~54_combout\ : std_logic;
SIGNAL \C2|Add4~52_combout\ : std_logic;
SIGNAL \C2|Add8~58_combout\ : std_logic;
SIGNAL \C2|Add8~63_combout\ : std_logic;
SIGNAL \C2|Add4~48_combout\ : std_logic;
SIGNAL \C2|Add4~46_combout\ : std_logic;
SIGNAL \C2|Add8~52_combout\ : std_logic;
SIGNAL \C2|Add8~66_combout\ : std_logic;
SIGNAL \C2|Add4~40_combout\ : std_logic;
SIGNAL \C2|Add4~34_combout\ : std_logic;
SIGNAL \C2|Add4~30_combout\ : std_logic;
SIGNAL \C2|Add4~28_combout\ : std_logic;
SIGNAL \C2|Add4~26_combout\ : std_logic;
SIGNAL \C2|Add4~20_combout\ : std_logic;
SIGNAL \C2|Add4~18_combout\ : std_logic;
SIGNAL \C2|Add8~22_combout\ : std_logic;
SIGNAL \C2|Add8~81_combout\ : std_logic;
SIGNAL \C2|Add4~12_combout\ : std_logic;
SIGNAL \C2|Add8~18_combout\ : std_logic;
SIGNAL \C2|Add8~83_combout\ : std_logic;
SIGNAL \C2|Add4~8_combout\ : std_logic;
SIGNAL \C2|Add4~6_combout\ : std_logic;
SIGNAL \C2|Add4~4_combout\ : std_logic;
SIGNAL \C2|Add4~2_combout\ : std_logic;
SIGNAL \C2|LessThan13~1_cout\ : std_logic;
SIGNAL \C2|LessThan13~3_cout\ : std_logic;
SIGNAL \C2|LessThan13~5_cout\ : std_logic;
SIGNAL \C2|LessThan13~7_cout\ : std_logic;
SIGNAL \C2|LessThan13~9_cout\ : std_logic;
SIGNAL \C2|LessThan13~11_cout\ : std_logic;
SIGNAL \C2|LessThan13~13_cout\ : std_logic;
SIGNAL \C2|LessThan13~15_cout\ : std_logic;
SIGNAL \C2|LessThan13~17_cout\ : std_logic;
SIGNAL \C2|LessThan13~19_cout\ : std_logic;
SIGNAL \C2|LessThan13~21_cout\ : std_logic;
SIGNAL \C2|LessThan13~23_cout\ : std_logic;
SIGNAL \C2|LessThan13~25_cout\ : std_logic;
SIGNAL \C2|LessThan13~27_cout\ : std_logic;
SIGNAL \C2|LessThan13~29_cout\ : std_logic;
SIGNAL \C2|LessThan13~31_cout\ : std_logic;
SIGNAL \C2|LessThan13~33_cout\ : std_logic;
SIGNAL \C2|LessThan13~35_cout\ : std_logic;
SIGNAL \C2|LessThan13~37_cout\ : std_logic;
SIGNAL \C2|LessThan13~39_cout\ : std_logic;
SIGNAL \C2|LessThan13~41_cout\ : std_logic;
SIGNAL \C2|LessThan13~43_cout\ : std_logic;
SIGNAL \C2|LessThan13~45_cout\ : std_logic;
SIGNAL \C2|LessThan13~47_cout\ : std_logic;
SIGNAL \C2|LessThan13~49_cout\ : std_logic;
SIGNAL \C2|LessThan13~51_cout\ : std_logic;
SIGNAL \C2|LessThan13~53_cout\ : std_logic;
SIGNAL \C2|LessThan13~55_cout\ : std_logic;
SIGNAL \C2|LessThan13~57_cout\ : std_logic;
SIGNAL \C2|LessThan13~59_cout\ : std_logic;
SIGNAL \C2|LessThan13~61_cout\ : std_logic;
SIGNAL \C2|LessThan13~62_combout\ : std_logic;
SIGNAL \C3|Add1~1\ : std_logic;
SIGNAL \C3|Add1~3\ : std_logic;
SIGNAL \C3|Add1~5\ : std_logic;
SIGNAL \C3|Add1~7\ : std_logic;
SIGNAL \C3|Add1~9\ : std_logic;
SIGNAL \C3|Add1~11\ : std_logic;
SIGNAL \C3|Add1~13\ : std_logic;
SIGNAL \C3|Add1~15\ : std_logic;
SIGNAL \C3|Add1~17\ : std_logic;
SIGNAL \C3|Add1~19\ : std_logic;
SIGNAL \C3|Add1~21\ : std_logic;
SIGNAL \C3|Add1~23\ : std_logic;
SIGNAL \C3|Add1~25\ : std_logic;
SIGNAL \C3|Add1~27\ : std_logic;
SIGNAL \C3|Add1~29\ : std_logic;
SIGNAL \C3|Add1~31\ : std_logic;
SIGNAL \C3|Add1~33\ : std_logic;
SIGNAL \C3|Add1~35\ : std_logic;
SIGNAL \C3|Add1~37\ : std_logic;
SIGNAL \C3|Add1~39\ : std_logic;
SIGNAL \C3|Add1~41\ : std_logic;
SIGNAL \C3|Add1~43\ : std_logic;
SIGNAL \C3|Add1~45\ : std_logic;
SIGNAL \C3|Add1~47\ : std_logic;
SIGNAL \C3|Add1~49\ : std_logic;
SIGNAL \C3|Add1~51\ : std_logic;
SIGNAL \C3|Add1~53\ : std_logic;
SIGNAL \C3|Add1~55\ : std_logic;
SIGNAL \C3|Add1~57\ : std_logic;
SIGNAL \C3|Add1~58_combout\ : std_logic;
SIGNAL \C2|Add8~90_combout\ : std_logic;
SIGNAL \C2|Add8~92_combout\ : std_logic;
SIGNAL \C3|Add1~54_combout\ : std_logic;
SIGNAL \C3|Add1~52_combout\ : std_logic;
SIGNAL \C3|Add1~50_combout\ : std_logic;
SIGNAL \C3|Add1~48_combout\ : std_logic;
SIGNAL \C3|Add1~44_combout\ : std_logic;
SIGNAL \C3|Add1~42_combout\ : std_logic;
SIGNAL \C3|Add1~40_combout\ : std_logic;
SIGNAL \C3|Add1~38_combout\ : std_logic;
SIGNAL \C3|Add1~30_combout\ : std_logic;
SIGNAL \C3|Add1~28_combout\ : std_logic;
SIGNAL \C3|Add1~26_combout\ : std_logic;
SIGNAL \C3|Add1~22_combout\ : std_logic;
SIGNAL \C3|Add1~18_combout\ : std_logic;
SIGNAL \C3|Add1~16_combout\ : std_logic;
SIGNAL \C3|Add1~12_combout\ : std_logic;
SIGNAL \C3|Add1~10_combout\ : std_logic;
SIGNAL \C3|Add1~8_combout\ : std_logic;
SIGNAL \C3|Add1~6_combout\ : std_logic;
SIGNAL \C2|Add8~4_combout\ : std_logic;
SIGNAL \C2|Add8~93_combout\ : std_logic;
SIGNAL \C2|LessThan14~1_cout\ : std_logic;
SIGNAL \C2|LessThan14~3_cout\ : std_logic;
SIGNAL \C2|LessThan14~5_cout\ : std_logic;
SIGNAL \C2|LessThan14~7_cout\ : std_logic;
SIGNAL \C2|LessThan14~9_cout\ : std_logic;
SIGNAL \C2|LessThan14~11_cout\ : std_logic;
SIGNAL \C2|LessThan14~13_cout\ : std_logic;
SIGNAL \C2|LessThan14~15_cout\ : std_logic;
SIGNAL \C2|LessThan14~17_cout\ : std_logic;
SIGNAL \C2|LessThan14~19_cout\ : std_logic;
SIGNAL \C2|LessThan14~21_cout\ : std_logic;
SIGNAL \C2|LessThan14~23_cout\ : std_logic;
SIGNAL \C2|LessThan14~25_cout\ : std_logic;
SIGNAL \C2|LessThan14~27_cout\ : std_logic;
SIGNAL \C2|LessThan14~29_cout\ : std_logic;
SIGNAL \C2|LessThan14~31_cout\ : std_logic;
SIGNAL \C2|LessThan14~33_cout\ : std_logic;
SIGNAL \C2|LessThan14~35_cout\ : std_logic;
SIGNAL \C2|LessThan14~37_cout\ : std_logic;
SIGNAL \C2|LessThan14~39_cout\ : std_logic;
SIGNAL \C2|LessThan14~41_cout\ : std_logic;
SIGNAL \C2|LessThan14~43_cout\ : std_logic;
SIGNAL \C2|LessThan14~45_cout\ : std_logic;
SIGNAL \C2|LessThan14~47_cout\ : std_logic;
SIGNAL \C2|LessThan14~49_cout\ : std_logic;
SIGNAL \C2|LessThan14~51_cout\ : std_logic;
SIGNAL \C2|LessThan14~53_cout\ : std_logic;
SIGNAL \C2|LessThan14~55_cout\ : std_logic;
SIGNAL \C2|LessThan14~57_cout\ : std_logic;
SIGNAL \C2|LessThan14~59_cout\ : std_logic;
SIGNAL \C2|LessThan14~61_cout\ : std_logic;
SIGNAL \C2|LessThan14~62_combout\ : std_logic;
SIGNAL \C2|BHDir~0_combout\ : std_logic;
SIGNAL \C2|Add3~61\ : std_logic;
SIGNAL \C2|Add3~62_combout\ : std_logic;
SIGNAL \C2|P2[3]~6_combout\ : std_logic;
SIGNAL \C2|P2[3]~7_combout\ : std_logic;
SIGNAL \C2|Add3~0_combout\ : std_logic;
SIGNAL \C2|P2[0]~15_combout\ : std_logic;
SIGNAL \C2|Add3~1\ : std_logic;
SIGNAL \C2|Add3~3\ : std_logic;
SIGNAL \C2|Add3~5\ : std_logic;
SIGNAL \C2|Add3~7\ : std_logic;
SIGNAL \C2|Add3~9\ : std_logic;
SIGNAL \C2|Add3~11\ : std_logic;
SIGNAL \C2|Add3~12_combout\ : std_logic;
SIGNAL \C2|P2[6]~13_combout\ : std_logic;
SIGNAL \C2|Add3~13\ : std_logic;
SIGNAL \C2|Add3~14_combout\ : std_logic;
SIGNAL \C2|Add3~15\ : std_logic;
SIGNAL \C2|Add3~17\ : std_logic;
SIGNAL \C2|Add3~18_combout\ : std_logic;
SIGNAL \C2|Add3~16_combout\ : std_logic;
SIGNAL \C2|P2[8]~12_combout\ : std_logic;
SIGNAL \C2|Add3~19\ : std_logic;
SIGNAL \C2|Add3~20_combout\ : std_logic;
SIGNAL \C2|Add3~21\ : std_logic;
SIGNAL \C2|Add3~22_combout\ : std_logic;
SIGNAL \C2|Add3~23\ : std_logic;
SIGNAL \C2|Add3~24_combout\ : std_logic;
SIGNAL \C2|Add3~25\ : std_logic;
SIGNAL \C2|Add3~26_combout\ : std_logic;
SIGNAL \C2|P2[3]~1_combout\ : std_logic;
SIGNAL \C2|Add3~27\ : std_logic;
SIGNAL \C2|Add3~28_combout\ : std_logic;
SIGNAL \C2|Add3~29\ : std_logic;
SIGNAL \C2|Add3~30_combout\ : std_logic;
SIGNAL \C2|Add3~31\ : std_logic;
SIGNAL \C2|Add3~32_combout\ : std_logic;
SIGNAL \C2|P2[3]~2_combout\ : std_logic;
SIGNAL \C2|Add3~33\ : std_logic;
SIGNAL \C2|Add3~35\ : std_logic;
SIGNAL \C2|Add3~36_combout\ : std_logic;
SIGNAL \C2|Add3~37\ : std_logic;
SIGNAL \C2|Add3~38_combout\ : std_logic;
SIGNAL \C2|Add3~39\ : std_logic;
SIGNAL \C2|Add3~40_combout\ : std_logic;
SIGNAL \C2|P2[3]~3_combout\ : std_logic;
SIGNAL \C2|P2[3]~5_combout\ : std_logic;
SIGNAL \C2|P2[3]~9_combout\ : std_logic;
SIGNAL \C2|P2[3]~10_combout\ : std_logic;
SIGNAL \C2|P2[3]~11_combout\ : std_logic;
SIGNAL \C2|process_2~0_combout\ : std_logic;
SIGNAL \C2|process_2~1_combout\ : std_logic;
SIGNAL \C2|Add3~41\ : std_logic;
SIGNAL \C2|Add3~43\ : std_logic;
SIGNAL \C2|Add3~45\ : std_logic;
SIGNAL \C2|Add3~47\ : std_logic;
SIGNAL \C2|Add3~48_combout\ : std_logic;
SIGNAL \C2|Add3~49\ : std_logic;
SIGNAL \C2|Add3~50_combout\ : std_logic;
SIGNAL \C2|Add3~51\ : std_logic;
SIGNAL \C2|Add3~52_combout\ : std_logic;
SIGNAL \C2|Add3~53\ : std_logic;
SIGNAL \C2|Add3~54_combout\ : std_logic;
SIGNAL \C2|Add3~55\ : std_logic;
SIGNAL \C2|Add3~56_combout\ : std_logic;
SIGNAL \C2|Add3~57\ : std_logic;
SIGNAL \C2|Add3~58_combout\ : std_logic;
SIGNAL \C2|Add3~59\ : std_logic;
SIGNAL \C2|Add3~60_combout\ : std_logic;
SIGNAL \C2|Add3~6_combout\ : std_logic;
SIGNAL \C2|Add6~1\ : std_logic;
SIGNAL \C2|Add6~3\ : std_logic;
SIGNAL \C2|Add6~5\ : std_logic;
SIGNAL \C2|Add6~7\ : std_logic;
SIGNAL \C2|Add6~9\ : std_logic;
SIGNAL \C2|Add6~11\ : std_logic;
SIGNAL \C2|Add6~13\ : std_logic;
SIGNAL \C2|Add6~15\ : std_logic;
SIGNAL \C2|Add6~17\ : std_logic;
SIGNAL \C2|Add6~19\ : std_logic;
SIGNAL \C2|Add6~21\ : std_logic;
SIGNAL \C2|Add6~23\ : std_logic;
SIGNAL \C2|Add6~25\ : std_logic;
SIGNAL \C2|Add6~27\ : std_logic;
SIGNAL \C2|Add6~29\ : std_logic;
SIGNAL \C2|Add6~31\ : std_logic;
SIGNAL \C2|Add6~33\ : std_logic;
SIGNAL \C2|Add6~35\ : std_logic;
SIGNAL \C2|Add6~37\ : std_logic;
SIGNAL \C2|Add6~39\ : std_logic;
SIGNAL \C2|Add6~41\ : std_logic;
SIGNAL \C2|Add6~43\ : std_logic;
SIGNAL \C2|Add6~45\ : std_logic;
SIGNAL \C2|Add6~47\ : std_logic;
SIGNAL \C2|Add6~49\ : std_logic;
SIGNAL \C2|Add6~51\ : std_logic;
SIGNAL \C2|Add6~53\ : std_logic;
SIGNAL \C2|Add6~55\ : std_logic;
SIGNAL \C2|Add6~56_combout\ : std_logic;
SIGNAL \C2|Add6~54_combout\ : std_logic;
SIGNAL \C2|Add6~52_combout\ : std_logic;
SIGNAL \C2|Add6~50_combout\ : std_logic;
SIGNAL \C2|Add6~46_combout\ : std_logic;
SIGNAL \C2|Add6~44_combout\ : std_logic;
SIGNAL \C2|Add6~34_combout\ : std_logic;
SIGNAL \C2|Add6~32_combout\ : std_logic;
SIGNAL \C2|Add6~28_combout\ : std_logic;
SIGNAL \C2|Add6~24_combout\ : std_logic;
SIGNAL \C2|Add6~22_combout\ : std_logic;
SIGNAL \C2|Add6~20_combout\ : std_logic;
SIGNAL \C2|Add6~18_combout\ : std_logic;
SIGNAL \C2|Add6~16_combout\ : std_logic;
SIGNAL \C2|Add6~14_combout\ : std_logic;
SIGNAL \C2|Add6~12_combout\ : std_logic;
SIGNAL \C2|Add6~2_combout\ : std_logic;
SIGNAL \C2|Add6~0_combout\ : std_logic;
SIGNAL \C2|Add3~2_combout\ : std_logic;
SIGNAL \C2|LessThan17~1_cout\ : std_logic;
SIGNAL \C2|LessThan17~3_cout\ : std_logic;
SIGNAL \C2|LessThan17~5_cout\ : std_logic;
SIGNAL \C2|LessThan17~7_cout\ : std_logic;
SIGNAL \C2|LessThan17~9_cout\ : std_logic;
SIGNAL \C2|LessThan17~11_cout\ : std_logic;
SIGNAL \C2|LessThan17~13_cout\ : std_logic;
SIGNAL \C2|LessThan17~15_cout\ : std_logic;
SIGNAL \C2|LessThan17~17_cout\ : std_logic;
SIGNAL \C2|LessThan17~19_cout\ : std_logic;
SIGNAL \C2|LessThan17~21_cout\ : std_logic;
SIGNAL \C2|LessThan17~23_cout\ : std_logic;
SIGNAL \C2|LessThan17~25_cout\ : std_logic;
SIGNAL \C2|LessThan17~27_cout\ : std_logic;
SIGNAL \C2|LessThan17~29_cout\ : std_logic;
SIGNAL \C2|LessThan17~31_cout\ : std_logic;
SIGNAL \C2|LessThan17~33_cout\ : std_logic;
SIGNAL \C2|LessThan17~35_cout\ : std_logic;
SIGNAL \C2|LessThan17~37_cout\ : std_logic;
SIGNAL \C2|LessThan17~39_cout\ : std_logic;
SIGNAL \C2|LessThan17~41_cout\ : std_logic;
SIGNAL \C2|LessThan17~43_cout\ : std_logic;
SIGNAL \C2|LessThan17~45_cout\ : std_logic;
SIGNAL \C2|LessThan17~47_cout\ : std_logic;
SIGNAL \C2|LessThan17~49_cout\ : std_logic;
SIGNAL \C2|LessThan17~51_cout\ : std_logic;
SIGNAL \C2|LessThan17~53_cout\ : std_logic;
SIGNAL \C2|LessThan17~55_cout\ : std_logic;
SIGNAL \C2|LessThan17~57_cout\ : std_logic;
SIGNAL \C2|LessThan17~59_cout\ : std_logic;
SIGNAL \C2|LessThan17~61_cout\ : std_logic;
SIGNAL \C2|LessThan17~62_combout\ : std_logic;
SIGNAL \C2|Add3~10_combout\ : std_logic;
SIGNAL \C2|Add3~4_combout\ : std_logic;
SIGNAL \C2|P2[2]~14_combout\ : std_logic;
SIGNAL \C3|Add4~1\ : std_logic;
SIGNAL \C3|Add4~3\ : std_logic;
SIGNAL \C3|Add4~5\ : std_logic;
SIGNAL \C3|Add4~7\ : std_logic;
SIGNAL \C3|Add4~9\ : std_logic;
SIGNAL \C3|Add4~11\ : std_logic;
SIGNAL \C3|Add4~13\ : std_logic;
SIGNAL \C3|Add4~15\ : std_logic;
SIGNAL \C3|Add4~17\ : std_logic;
SIGNAL \C3|Add4~19\ : std_logic;
SIGNAL \C3|Add4~21\ : std_logic;
SIGNAL \C3|Add4~23\ : std_logic;
SIGNAL \C3|Add4~25\ : std_logic;
SIGNAL \C3|Add4~27\ : std_logic;
SIGNAL \C3|Add4~29\ : std_logic;
SIGNAL \C3|Add4~31\ : std_logic;
SIGNAL \C3|Add4~33\ : std_logic;
SIGNAL \C3|Add4~35\ : std_logic;
SIGNAL \C3|Add4~37\ : std_logic;
SIGNAL \C3|Add4~39\ : std_logic;
SIGNAL \C3|Add4~41\ : std_logic;
SIGNAL \C3|Add4~43\ : std_logic;
SIGNAL \C3|Add4~45\ : std_logic;
SIGNAL \C3|Add4~47\ : std_logic;
SIGNAL \C3|Add4~49\ : std_logic;
SIGNAL \C3|Add4~51\ : std_logic;
SIGNAL \C3|Add4~53\ : std_logic;
SIGNAL \C3|Add4~55\ : std_logic;
SIGNAL \C3|Add4~57\ : std_logic;
SIGNAL \C3|Add4~58_combout\ : std_logic;
SIGNAL \C3|Add4~54_combout\ : std_logic;
SIGNAL \C3|Add4~52_combout\ : std_logic;
SIGNAL \C3|Add4~50_combout\ : std_logic;
SIGNAL \C3|Add4~48_combout\ : std_logic;
SIGNAL \C3|Add4~44_combout\ : std_logic;
SIGNAL \C3|Add4~42_combout\ : std_logic;
SIGNAL \C3|Add4~40_combout\ : std_logic;
SIGNAL \C3|Add4~38_combout\ : std_logic;
SIGNAL \C3|Add4~30_combout\ : std_logic;
SIGNAL \C3|Add4~28_combout\ : std_logic;
SIGNAL \C3|Add4~26_combout\ : std_logic;
SIGNAL \C3|Add4~22_combout\ : std_logic;
SIGNAL \C3|Add4~20_combout\ : std_logic;
SIGNAL \C3|Add4~16_combout\ : std_logic;
SIGNAL \C3|Add4~12_combout\ : std_logic;
SIGNAL \C3|Add4~10_combout\ : std_logic;
SIGNAL \C3|Add4~8_combout\ : std_logic;
SIGNAL \C3|Add4~6_combout\ : std_logic;
SIGNAL \C2|LessThan18~1_cout\ : std_logic;
SIGNAL \C2|LessThan18~3_cout\ : std_logic;
SIGNAL \C2|LessThan18~5_cout\ : std_logic;
SIGNAL \C2|LessThan18~7_cout\ : std_logic;
SIGNAL \C2|LessThan18~9_cout\ : std_logic;
SIGNAL \C2|LessThan18~11_cout\ : std_logic;
SIGNAL \C2|LessThan18~13_cout\ : std_logic;
SIGNAL \C2|LessThan18~15_cout\ : std_logic;
SIGNAL \C2|LessThan18~17_cout\ : std_logic;
SIGNAL \C2|LessThan18~19_cout\ : std_logic;
SIGNAL \C2|LessThan18~21_cout\ : std_logic;
SIGNAL \C2|LessThan18~23_cout\ : std_logic;
SIGNAL \C2|LessThan18~25_cout\ : std_logic;
SIGNAL \C2|LessThan18~27_cout\ : std_logic;
SIGNAL \C2|LessThan18~29_cout\ : std_logic;
SIGNAL \C2|LessThan18~31_cout\ : std_logic;
SIGNAL \C2|LessThan18~33_cout\ : std_logic;
SIGNAL \C2|LessThan18~35_cout\ : std_logic;
SIGNAL \C2|LessThan18~37_cout\ : std_logic;
SIGNAL \C2|LessThan18~39_cout\ : std_logic;
SIGNAL \C2|LessThan18~41_cout\ : std_logic;
SIGNAL \C2|LessThan18~43_cout\ : std_logic;
SIGNAL \C2|LessThan18~45_cout\ : std_logic;
SIGNAL \C2|LessThan18~47_cout\ : std_logic;
SIGNAL \C2|LessThan18~49_cout\ : std_logic;
SIGNAL \C2|LessThan18~51_cout\ : std_logic;
SIGNAL \C2|LessThan18~53_cout\ : std_logic;
SIGNAL \C2|LessThan18~55_cout\ : std_logic;
SIGNAL \C2|LessThan18~57_cout\ : std_logic;
SIGNAL \C2|LessThan18~59_cout\ : std_logic;
SIGNAL \C2|LessThan18~61_cout\ : std_logic;
SIGNAL \C2|LessThan18~62_combout\ : std_logic;
SIGNAL \C2|BHDir~5_combout\ : std_logic;
SIGNAL \C2|BHDir~6_combout\ : std_logic;
SIGNAL \C2|BHDir~8_combout\ : std_logic;
SIGNAL \C2|BHDir~regout\ : std_logic;
SIGNAL \C2|Add11~1\ : std_logic;
SIGNAL \C2|Add11~3_combout\ : std_logic;
SIGNAL \C2|Add11~95_combout\ : std_logic;
SIGNAL \C2|Add11~4\ : std_logic;
SIGNAL \C2|Add11~5_combout\ : std_logic;
SIGNAL \C2|Add11~94_combout\ : std_logic;
SIGNAL \C2|Add11~6\ : std_logic;
SIGNAL \C2|Add11~7_combout\ : std_logic;
SIGNAL \C2|Add11~93_combout\ : std_logic;
SIGNAL \C2|Add11~8\ : std_logic;
SIGNAL \C2|Add11~10\ : std_logic;
SIGNAL \C2|Add11~11_combout\ : std_logic;
SIGNAL \C2|Add11~91_combout\ : std_logic;
SIGNAL \C2|Add11~12\ : std_logic;
SIGNAL \C2|Add11~14\ : std_logic;
SIGNAL \C2|Add11~15_combout\ : std_logic;
SIGNAL \C2|Add11~89_combout\ : std_logic;
SIGNAL \C2|Add11~16\ : std_logic;
SIGNAL \C2|Add11~17_combout\ : std_logic;
SIGNAL \C2|Add11~88_combout\ : std_logic;
SIGNAL \C2|Add11~9_combout\ : std_logic;
SIGNAL \C2|Add11~92_combout\ : std_logic;
SIGNAL \C2|LessThan10~0_combout\ : std_logic;
SIGNAL \C2|Add11~13_combout\ : std_logic;
SIGNAL \C2|Add11~90_combout\ : std_logic;
SIGNAL \C2|LessThan10~1_combout\ : std_logic;
SIGNAL \C2|LessThan10~2_combout\ : std_logic;
SIGNAL \C2|LessThan10~3_combout\ : std_logic;
SIGNAL \C2|Add11~52\ : std_logic;
SIGNAL \C2|Add11~54\ : std_logic;
SIGNAL \C2|Add11~56\ : std_logic;
SIGNAL \C2|Add11~58\ : std_logic;
SIGNAL \C2|Add11~60\ : std_logic;
SIGNAL \C2|Add11~62\ : std_logic;
SIGNAL \C2|Add11~63_combout\ : std_logic;
SIGNAL \C2|Add11~65_combout\ : std_logic;
SIGNAL \C2|GOAL2~1_combout\ : std_logic;
SIGNAL \C2|GOAL2~regout\ : std_logic;
SIGNAL \C2|Selector2~0_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \C2|currentS.s2~regout\ : std_logic;
SIGNAL \C2|SCORE1[31]~32_combout\ : std_logic;
SIGNAL \C2|SCORE1[0]~34\ : std_logic;
SIGNAL \C2|SCORE1[1]~35_combout\ : std_logic;
SIGNAL \C2|SCORE1[1]~36\ : std_logic;
SIGNAL \C2|SCORE1[2]~37_combout\ : std_logic;
SIGNAL \C2|SCORE1[2]~38\ : std_logic;
SIGNAL \C2|SCORE1[3]~40\ : std_logic;
SIGNAL \C2|SCORE1[4]~41_combout\ : std_logic;
SIGNAL \C2|SCORE1[4]~42\ : std_logic;
SIGNAL \C2|SCORE1[5]~44\ : std_logic;
SIGNAL \C2|SCORE1[6]~46\ : std_logic;
SIGNAL \C2|SCORE1[7]~47_combout\ : std_logic;
SIGNAL \C2|SCORE1[7]~48\ : std_logic;
SIGNAL \C2|SCORE1[8]~50\ : std_logic;
SIGNAL \C2|SCORE1[9]~51_combout\ : std_logic;
SIGNAL \C2|SCORE1[9]~52\ : std_logic;
SIGNAL \C2|SCORE1[10]~54\ : std_logic;
SIGNAL \C2|SCORE1[11]~55_combout\ : std_logic;
SIGNAL \C2|SCORE1[11]~56\ : std_logic;
SIGNAL \C2|SCORE1[12]~58\ : std_logic;
SIGNAL \C2|SCORE1[13]~59_combout\ : std_logic;
SIGNAL \C2|SCORE1[13]~60\ : std_logic;
SIGNAL \C2|SCORE1[14]~61_combout\ : std_logic;
SIGNAL \C2|SCORE1[14]~62\ : std_logic;
SIGNAL \C2|SCORE1[15]~63_combout\ : std_logic;
SIGNAL \C2|SCORE1[15]~64\ : std_logic;
SIGNAL \C2|SCORE1[16]~65_combout\ : std_logic;
SIGNAL \C2|SCORE1[16]~66\ : std_logic;
SIGNAL \C2|SCORE1[17]~67_combout\ : std_logic;
SIGNAL \C2|SCORE1[17]~68\ : std_logic;
SIGNAL \C2|SCORE1[18]~69_combout\ : std_logic;
SIGNAL \C2|SCORE1[18]~70\ : std_logic;
SIGNAL \C2|SCORE1[19]~72\ : std_logic;
SIGNAL \C2|SCORE1[20]~73_combout\ : std_logic;
SIGNAL \C2|SCORE1[20]~74\ : std_logic;
SIGNAL \C2|SCORE1[21]~76\ : std_logic;
SIGNAL \C2|SCORE1[22]~78\ : std_logic;
SIGNAL \C2|SCORE1[23]~79_combout\ : std_logic;
SIGNAL \C2|SCORE1[23]~80\ : std_logic;
SIGNAL \C2|SCORE1[24]~82\ : std_logic;
SIGNAL \C2|SCORE1[25]~83_combout\ : std_logic;
SIGNAL \C2|SCORE1[25]~84\ : std_logic;
SIGNAL \C2|SCORE1[26]~86\ : std_logic;
SIGNAL \C2|SCORE1[27]~87_combout\ : std_logic;
SIGNAL \C2|SCORE1[27]~88\ : std_logic;
SIGNAL \C2|SCORE1[28]~90\ : std_logic;
SIGNAL \C2|SCORE1[29]~91_combout\ : std_logic;
SIGNAL \C2|SCORE1[29]~92\ : std_logic;
SIGNAL \C2|SCORE1[30]~93_combout\ : std_logic;
SIGNAL \C2|SCORE1[30]~94\ : std_logic;
SIGNAL \C2|SCORE1[31]~95_combout\ : std_logic;
SIGNAL \C2|LessThan0~0_combout\ : std_logic;
SIGNAL \C3|Equal0~7_combout\ : std_logic;
SIGNAL \C2|SCORE1[19]~71_combout\ : std_logic;
SIGNAL \C2|SCORE1[22]~77_combout\ : std_logic;
SIGNAL \C2|SCORE1[21]~75_combout\ : std_logic;
SIGNAL \C3|Equal0~5_combout\ : std_logic;
SIGNAL \C2|SCORE1[24]~81_combout\ : std_logic;
SIGNAL \C2|SCORE1[26]~85_combout\ : std_logic;
SIGNAL \C3|Equal0~6_combout\ : std_logic;
SIGNAL \C3|Equal0~8_combout\ : std_logic;
SIGNAL \C2|SCORE1[8]~49_combout\ : std_logic;
SIGNAL \C2|SCORE1[10]~53_combout\ : std_logic;
SIGNAL \C3|Equal0~1_combout\ : std_logic;
SIGNAL \C3|Equal0~3_combout\ : std_logic;
SIGNAL \C3|Equal0~2_combout\ : std_logic;
SIGNAL \C3|Equal0~4_combout\ : std_logic;
SIGNAL \C2|LessThan0~1_combout\ : std_logic;
SIGNAL \C2|SCORE2[0]~32_combout\ : std_logic;
SIGNAL \C2|SCORE2[0]~33\ : std_logic;
SIGNAL \C2|SCORE2[1]~34_combout\ : std_logic;
SIGNAL \C2|SCORE2[1]~35\ : std_logic;
SIGNAL \C2|SCORE2[2]~36_combout\ : std_logic;
SIGNAL \C2|SCORE2[2]~37\ : std_logic;
SIGNAL \C2|SCORE2[3]~39\ : std_logic;
SIGNAL \C2|SCORE2[4]~40_combout\ : std_logic;
SIGNAL \C2|SCORE2[4]~41\ : std_logic;
SIGNAL \C2|SCORE2[5]~43\ : std_logic;
SIGNAL \C2|SCORE2[6]~45\ : std_logic;
SIGNAL \C2|SCORE2[7]~46_combout\ : std_logic;
SIGNAL \C2|SCORE2[7]~47\ : std_logic;
SIGNAL \C2|SCORE2[8]~49\ : std_logic;
SIGNAL \C2|SCORE2[9]~50_combout\ : std_logic;
SIGNAL \C2|SCORE2[9]~51\ : std_logic;
SIGNAL \C2|SCORE2[10]~53\ : std_logic;
SIGNAL \C2|SCORE2[11]~54_combout\ : std_logic;
SIGNAL \C2|SCORE2[11]~55\ : std_logic;
SIGNAL \C2|SCORE2[12]~57\ : std_logic;
SIGNAL \C2|SCORE2[13]~58_combout\ : std_logic;
SIGNAL \C2|SCORE2[13]~59\ : std_logic;
SIGNAL \C2|SCORE2[14]~60_combout\ : std_logic;
SIGNAL \C2|SCORE2[14]~61\ : std_logic;
SIGNAL \C2|SCORE2[15]~62_combout\ : std_logic;
SIGNAL \C2|SCORE2[15]~63\ : std_logic;
SIGNAL \C2|SCORE2[16]~64_combout\ : std_logic;
SIGNAL \C2|SCORE2[16]~65\ : std_logic;
SIGNAL \C2|SCORE2[17]~67\ : std_logic;
SIGNAL \C2|SCORE2[18]~68_combout\ : std_logic;
SIGNAL \C2|SCORE2[18]~69\ : std_logic;
SIGNAL \C2|SCORE2[19]~71\ : std_logic;
SIGNAL \C2|SCORE2[20]~72_combout\ : std_logic;
SIGNAL \C2|SCORE2[20]~73\ : std_logic;
SIGNAL \C2|SCORE2[21]~75\ : std_logic;
SIGNAL \C2|SCORE2[22]~77\ : std_logic;
SIGNAL \C2|SCORE2[23]~78_combout\ : std_logic;
SIGNAL \C2|SCORE2[23]~79\ : std_logic;
SIGNAL \C2|SCORE2[24]~81\ : std_logic;
SIGNAL \C2|SCORE2[25]~82_combout\ : std_logic;
SIGNAL \C2|SCORE2[25]~83\ : std_logic;
SIGNAL \C2|SCORE2[26]~84_combout\ : std_logic;
SIGNAL \C3|Equal6~6_combout\ : std_logic;
SIGNAL \C2|SCORE2[22]~76_combout\ : std_logic;
SIGNAL \C2|SCORE2[21]~74_combout\ : std_logic;
SIGNAL \C3|Equal6~5_combout\ : std_logic;
SIGNAL \C2|SCORE2[26]~85\ : std_logic;
SIGNAL \C2|SCORE2[27]~86_combout\ : std_logic;
SIGNAL \C2|SCORE2[27]~87\ : std_logic;
SIGNAL \C2|SCORE2[28]~88_combout\ : std_logic;
SIGNAL \C2|SCORE2[28]~89\ : std_logic;
SIGNAL \C2|SCORE2[29]~90_combout\ : std_logic;
SIGNAL \C2|SCORE2[29]~91\ : std_logic;
SIGNAL \C2|SCORE2[30]~92_combout\ : std_logic;
SIGNAL \C3|Equal6~7_combout\ : std_logic;
SIGNAL \C3|Equal6~8_combout\ : std_logic;
SIGNAL \C2|LessThan1~0_combout\ : std_logic;
SIGNAL \C2|Selector1~0_combout\ : std_logic;
SIGNAL \C2|Add14~44_combout\ : std_logic;
SIGNAL \C2|Add14~94_combout\ : std_logic;
SIGNAL \C2|Add14~0_combout\ : std_logic;
SIGNAL \C2|Add14~95_combout\ : std_logic;
SIGNAL \C2|Add14~1\ : std_logic;
SIGNAL \C2|Add14~3\ : std_logic;
SIGNAL \C2|Add14~5\ : std_logic;
SIGNAL \C2|Add14~7\ : std_logic;
SIGNAL \C2|Add14~9\ : std_logic;
SIGNAL \C2|Add14~11\ : std_logic;
SIGNAL \C2|Add14~12_combout\ : std_logic;
SIGNAL \C2|Add14~47_combout\ : std_logic;
SIGNAL \C2|Add14~13\ : std_logic;
SIGNAL \C2|Add14~14_combout\ : std_logic;
SIGNAL \C2|Add14~48_combout\ : std_logic;
SIGNAL \C2|Add14~15\ : std_logic;
SIGNAL \C2|Add14~16_combout\ : std_logic;
SIGNAL \C2|Add14~49_combout\ : std_logic;
SIGNAL \C2|Add14~17\ : std_logic;
SIGNAL \C2|Add14~19\ : std_logic;
SIGNAL \C2|Add14~20_combout\ : std_logic;
SIGNAL \C2|Add14~22_combout\ : std_logic;
SIGNAL \C2|Add14~21\ : std_logic;
SIGNAL \C2|Add14~24\ : std_logic;
SIGNAL \C2|Add14~27\ : std_logic;
SIGNAL \C2|Add14~29_combout\ : std_logic;
SIGNAL \C2|Add14~31_combout\ : std_logic;
SIGNAL \C2|Add14~30\ : std_logic;
SIGNAL \C2|Add14~32_combout\ : std_logic;
SIGNAL \C2|Add14~34_combout\ : std_logic;
SIGNAL \C2|Add14~33\ : std_logic;
SIGNAL \C2|Add14~35_combout\ : std_logic;
SIGNAL \C2|Add14~37_combout\ : std_logic;
SIGNAL \C2|Add14~36\ : std_logic;
SIGNAL \C2|Add14~38_combout\ : std_logic;
SIGNAL \C2|Add14~40_combout\ : std_logic;
SIGNAL \C2|Add14~39\ : std_logic;
SIGNAL \C2|Add14~41_combout\ : std_logic;
SIGNAL \C2|Add14~43_combout\ : std_logic;
SIGNAL \C2|Add14~42\ : std_logic;
SIGNAL \C2|Add14~52\ : std_logic;
SIGNAL \C2|Add14~55\ : std_logic;
SIGNAL \C2|Add14~57_combout\ : std_logic;
SIGNAL \C2|Add14~59_combout\ : std_logic;
SIGNAL \C2|Add14~58\ : std_logic;
SIGNAL \C2|Add14~61\ : std_logic;
SIGNAL \C2|Add14~63_combout\ : std_logic;
SIGNAL \C2|Add14~65_combout\ : std_logic;
SIGNAL \C2|Add14~64\ : std_logic;
SIGNAL \C2|Add14~66_combout\ : std_logic;
SIGNAL \C2|Add14~68_combout\ : std_logic;
SIGNAL \C2|Add14~67\ : std_logic;
SIGNAL \C2|Add14~69_combout\ : std_logic;
SIGNAL \C2|Add14~71_combout\ : std_logic;
SIGNAL \C2|Add14~70\ : std_logic;
SIGNAL \C2|Add14~72_combout\ : std_logic;
SIGNAL \C2|Add14~74_combout\ : std_logic;
SIGNAL \C2|Add14~73\ : std_logic;
SIGNAL \C2|Add14~75_combout\ : std_logic;
SIGNAL \C2|Add14~77_combout\ : std_logic;
SIGNAL \C2|Add14~76\ : std_logic;
SIGNAL \C2|Add14~79\ : std_logic;
SIGNAL \C2|Add14~81_combout\ : std_logic;
SIGNAL \C2|Add14~83_combout\ : std_logic;
SIGNAL \C2|Add14~82\ : std_logic;
SIGNAL \C2|Add14~84_combout\ : std_logic;
SIGNAL \C2|Add14~86_combout\ : std_logic;
SIGNAL \C2|Add14~85\ : std_logic;
SIGNAL \C2|Add14~87_combout\ : std_logic;
SIGNAL \C2|Add14~89_combout\ : std_logic;
SIGNAL \C2|LessThan2~6_combout\ : std_logic;
SIGNAL \C2|Add14~60_combout\ : std_logic;
SIGNAL \C2|Add14~62_combout\ : std_logic;
SIGNAL \C2|Add14~51_combout\ : std_logic;
SIGNAL \C2|Add14~53_combout\ : std_logic;
SIGNAL \C2|LessThan2~5_combout\ : std_logic;
SIGNAL \C2|LessThan2~8_combout\ : std_logic;
SIGNAL \C2|LessThan2~1_combout\ : std_logic;
SIGNAL \C2|Add14~8_combout\ : std_logic;
SIGNAL \C2|Add14~45_combout\ : std_logic;
SIGNAL \C2|LessThan2~2_combout\ : std_logic;
SIGNAL \C2|Add14~18_combout\ : std_logic;
SIGNAL \C2|Add14~50_combout\ : std_logic;
SIGNAL \C2|LessThan2~3_combout\ : std_logic;
SIGNAL \C2|LessThan2~4_combout\ : std_logic;
SIGNAL \C2|LessThan2~9_combout\ : std_logic;
SIGNAL \C2|Selector3~1_combout\ : std_logic;
SIGNAL \C2|currentS.s3~regout\ : std_logic;
SIGNAL \C2|Selector0~1_combout\ : std_logic;
SIGNAL \C2|currentS.s0~regout\ : std_logic;
SIGNAL \C2|Selector1~1_combout\ : std_logic;
SIGNAL \C2|Selector1~2_combout\ : std_logic;
SIGNAL \C2|currentS.s1~regout\ : std_logic;
SIGNAL \C2|Add11~57_combout\ : std_logic;
SIGNAL \C2|Add11~68_combout\ : std_logic;
SIGNAL \C2|Add11~55_combout\ : std_logic;
SIGNAL \C2|Add11~69_combout\ : std_logic;
SIGNAL \C2|Add11~70_combout\ : std_logic;
SIGNAL \C3|Add7~1_cout\ : std_logic;
SIGNAL \C3|Add7~3\ : std_logic;
SIGNAL \C3|Add7~5\ : std_logic;
SIGNAL \C3|Add7~7\ : std_logic;
SIGNAL \C3|Add7~9\ : std_logic;
SIGNAL \C3|Add7~11\ : std_logic;
SIGNAL \C3|Add7~13\ : std_logic;
SIGNAL \C3|Add7~15\ : std_logic;
SIGNAL \C3|Add7~17\ : std_logic;
SIGNAL \C3|Add7~19\ : std_logic;
SIGNAL \C3|Add7~21\ : std_logic;
SIGNAL \C3|Add7~23\ : std_logic;
SIGNAL \C3|Add7~25\ : std_logic;
SIGNAL \C3|Add7~27\ : std_logic;
SIGNAL \C3|Add7~29\ : std_logic;
SIGNAL \C3|Add7~31\ : std_logic;
SIGNAL \C3|Add7~33\ : std_logic;
SIGNAL \C3|Add7~35\ : std_logic;
SIGNAL \C3|Add7~37\ : std_logic;
SIGNAL \C3|Add7~39\ : std_logic;
SIGNAL \C3|Add7~41\ : std_logic;
SIGNAL \C3|Add7~43\ : std_logic;
SIGNAL \C3|Add7~45\ : std_logic;
SIGNAL \C3|Add7~47\ : std_logic;
SIGNAL \C3|Add7~49\ : std_logic;
SIGNAL \C3|Add7~51\ : std_logic;
SIGNAL \C3|Add7~52_combout\ : std_logic;
SIGNAL \C3|Add7~50_combout\ : std_logic;
SIGNAL \C3|Add7~48_combout\ : std_logic;
SIGNAL \C3|Add7~44_combout\ : std_logic;
SIGNAL \C3|Add7~42_combout\ : std_logic;
SIGNAL \C3|Add7~40_combout\ : std_logic;
SIGNAL \C3|Add7~38_combout\ : std_logic;
SIGNAL \C3|Add7~30_combout\ : std_logic;
SIGNAL \C3|Add7~28_combout\ : std_logic;
SIGNAL \C3|Add7~26_combout\ : std_logic;
SIGNAL \C3|Add7~22_combout\ : std_logic;
SIGNAL \C3|Add7~20_combout\ : std_logic;
SIGNAL \C3|Add7~18_combout\ : std_logic;
SIGNAL \C3|Add7~16_combout\ : std_logic;
SIGNAL \C3|Add7~12_combout\ : std_logic;
SIGNAL \C3|Add7~10_combout\ : std_logic;
SIGNAL \C3|Add7~8_combout\ : std_logic;
SIGNAL \C3|Add7~6_combout\ : std_logic;
SIGNAL \C3|Add8~1\ : std_logic;
SIGNAL \C3|Add8~3\ : std_logic;
SIGNAL \C3|Add8~5\ : std_logic;
SIGNAL \C3|Add8~7\ : std_logic;
SIGNAL \C3|Add8~9\ : std_logic;
SIGNAL \C3|Add8~11\ : std_logic;
SIGNAL \C3|Add8~13\ : std_logic;
SIGNAL \C3|Add8~15\ : std_logic;
SIGNAL \C3|Add8~17\ : std_logic;
SIGNAL \C3|Add8~19\ : std_logic;
SIGNAL \C3|Add8~21\ : std_logic;
SIGNAL \C3|Add8~23\ : std_logic;
SIGNAL \C3|Add8~25\ : std_logic;
SIGNAL \C3|Add8~27\ : std_logic;
SIGNAL \C3|Add8~29\ : std_logic;
SIGNAL \C3|Add8~31\ : std_logic;
SIGNAL \C3|Add8~33\ : std_logic;
SIGNAL \C3|Add8~35\ : std_logic;
SIGNAL \C3|Add8~37\ : std_logic;
SIGNAL \C3|Add8~39\ : std_logic;
SIGNAL \C3|Add8~41\ : std_logic;
SIGNAL \C3|Add8~43\ : std_logic;
SIGNAL \C3|Add8~45\ : std_logic;
SIGNAL \C3|Add8~47\ : std_logic;
SIGNAL \C3|Add8~49\ : std_logic;
SIGNAL \C3|Add8~50_combout\ : std_logic;
SIGNAL \C3|Add7~53\ : std_logic;
SIGNAL \C3|Add7~54_combout\ : std_logic;
SIGNAL \C3|Add8~51\ : std_logic;
SIGNAL \C3|Add8~53\ : std_logic;
SIGNAL \C3|Add8~54_combout\ : std_logic;
SIGNAL \C3|Add8~46_combout\ : std_logic;
SIGNAL \C3|Add8~48_combout\ : std_logic;
SIGNAL \C3|LessThan69~27_combout\ : std_logic;
SIGNAL \C3|LessThan69~28_combout\ : std_logic;
SIGNAL \C3|Add9~1\ : std_logic;
SIGNAL \C3|Add9~3\ : std_logic;
SIGNAL \C3|Add9~5\ : std_logic;
SIGNAL \C3|Add9~7\ : std_logic;
SIGNAL \C3|Add9~9\ : std_logic;
SIGNAL \C3|Add9~11\ : std_logic;
SIGNAL \C3|Add9~13\ : std_logic;
SIGNAL \C3|Add9~15\ : std_logic;
SIGNAL \C3|Add9~17\ : std_logic;
SIGNAL \C3|Add9~19\ : std_logic;
SIGNAL \C3|Add9~21\ : std_logic;
SIGNAL \C3|Add9~23\ : std_logic;
SIGNAL \C3|Add9~25\ : std_logic;
SIGNAL \C3|Add9~27\ : std_logic;
SIGNAL \C3|Add9~29\ : std_logic;
SIGNAL \C3|Add9~31\ : std_logic;
SIGNAL \C3|Add9~33\ : std_logic;
SIGNAL \C3|Add9~35\ : std_logic;
SIGNAL \C3|Add9~37\ : std_logic;
SIGNAL \C3|Add9~39\ : std_logic;
SIGNAL \C3|Add9~41\ : std_logic;
SIGNAL \C3|Add9~43\ : std_logic;
SIGNAL \C3|Add9~45\ : std_logic;
SIGNAL \C3|Add9~47\ : std_logic;
SIGNAL \C3|Add9~49\ : std_logic;
SIGNAL \C3|Add9~51\ : std_logic;
SIGNAL \C3|Add9~53\ : std_logic;
SIGNAL \C3|Add9~55\ : std_logic;
SIGNAL \C3|Add9~57\ : std_logic;
SIGNAL \C3|Add9~58_combout\ : std_logic;
SIGNAL \C3|Add9~54_combout\ : std_logic;
SIGNAL \C3|Add9~52_combout\ : std_logic;
SIGNAL \C3|Add9~50_combout\ : std_logic;
SIGNAL \C3|Add9~48_combout\ : std_logic;
SIGNAL \C3|Add9~44_combout\ : std_logic;
SIGNAL \C3|Add9~42_combout\ : std_logic;
SIGNAL \C3|Add9~40_combout\ : std_logic;
SIGNAL \C3|Add9~38_combout\ : std_logic;
SIGNAL \C3|Add9~30_combout\ : std_logic;
SIGNAL \C3|Add9~28_combout\ : std_logic;
SIGNAL \C3|Add9~26_combout\ : std_logic;
SIGNAL \C3|Add9~22_combout\ : std_logic;
SIGNAL \C3|Add9~20_combout\ : std_logic;
SIGNAL \C3|Add9~18_combout\ : std_logic;
SIGNAL \C3|Add9~16_combout\ : std_logic;
SIGNAL \C3|Add9~12_combout\ : std_logic;
SIGNAL \C3|Add9~10_combout\ : std_logic;
SIGNAL \C3|Add9~8_combout\ : std_logic;
SIGNAL \C3|Add9~6_combout\ : std_logic;
SIGNAL \C3|Add10~1_cout\ : std_logic;
SIGNAL \C3|Add10~3_cout\ : std_logic;
SIGNAL \C3|Add10~5_cout\ : std_logic;
SIGNAL \C3|Add10~7_cout\ : std_logic;
SIGNAL \C3|Add10~9\ : std_logic;
SIGNAL \C3|Add10~11\ : std_logic;
SIGNAL \C3|Add10~13\ : std_logic;
SIGNAL \C3|Add10~15\ : std_logic;
SIGNAL \C3|Add10~17\ : std_logic;
SIGNAL \C3|Add10~19\ : std_logic;
SIGNAL \C3|Add10~21\ : std_logic;
SIGNAL \C3|Add10~23\ : std_logic;
SIGNAL \C3|Add10~25\ : std_logic;
SIGNAL \C3|Add10~27\ : std_logic;
SIGNAL \C3|Add10~29\ : std_logic;
SIGNAL \C3|Add10~31\ : std_logic;
SIGNAL \C3|Add10~33\ : std_logic;
SIGNAL \C3|Add10~35\ : std_logic;
SIGNAL \C3|Add10~37\ : std_logic;
SIGNAL \C3|Add10~39\ : std_logic;
SIGNAL \C3|Add10~41\ : std_logic;
SIGNAL \C3|Add10~43\ : std_logic;
SIGNAL \C3|Add10~45\ : std_logic;
SIGNAL \C3|Add10~47\ : std_logic;
SIGNAL \C3|Add10~49\ : std_logic;
SIGNAL \C3|Add10~51\ : std_logic;
SIGNAL \C3|Add10~53\ : std_logic;
SIGNAL \C3|Add10~55\ : std_logic;
SIGNAL \C3|Add10~57\ : std_logic;
SIGNAL \C3|Add10~58_combout\ : std_logic;
SIGNAL \C3|LessThan70~26_combout\ : std_logic;
SIGNAL \C3|LessThan70~25_combout\ : std_logic;
SIGNAL \C3|LessThan70~27_combout\ : std_logic;
SIGNAL \C2|Add11~61_combout\ : std_logic;
SIGNAL \C2|Add11~66_combout\ : std_logic;
SIGNAL \C2|Add11~84_combout\ : std_logic;
SIGNAL \C3|Add6~1\ : std_logic;
SIGNAL \C3|Add6~3\ : std_logic;
SIGNAL \C3|Add6~5\ : std_logic;
SIGNAL \C3|Add6~7\ : std_logic;
SIGNAL \C3|Add6~9\ : std_logic;
SIGNAL \C3|Add6~11\ : std_logic;
SIGNAL \C3|Add6~13\ : std_logic;
SIGNAL \C3|Add6~15\ : std_logic;
SIGNAL \C3|Add6~17\ : std_logic;
SIGNAL \C3|Add6~19\ : std_logic;
SIGNAL \C3|Add6~21\ : std_logic;
SIGNAL \C3|Add6~23\ : std_logic;
SIGNAL \C3|Add6~25\ : std_logic;
SIGNAL \C3|Add6~27\ : std_logic;
SIGNAL \C3|Add6~29\ : std_logic;
SIGNAL \C3|Add6~31\ : std_logic;
SIGNAL \C3|Add6~33\ : std_logic;
SIGNAL \C3|Add6~35\ : std_logic;
SIGNAL \C3|Add6~37\ : std_logic;
SIGNAL \C3|Add6~39\ : std_logic;
SIGNAL \C3|Add6~41\ : std_logic;
SIGNAL \C3|Add6~43\ : std_logic;
SIGNAL \C3|Add6~45\ : std_logic;
SIGNAL \C3|Add6~47\ : std_logic;
SIGNAL \C3|Add6~49\ : std_logic;
SIGNAL \C3|Add6~51\ : std_logic;
SIGNAL \C3|Add6~53\ : std_logic;
SIGNAL \C3|Add6~54_combout\ : std_logic;
SIGNAL \C3|Add6~52_combout\ : std_logic;
SIGNAL \C3|Add6~28_combout\ : std_logic;
SIGNAL \C3|Add6~30_combout\ : std_logic;
SIGNAL \C3|Add6~34_combout\ : std_logic;
SIGNAL \C3|draw~10_combout\ : std_logic;
SIGNAL \C3|Add6~18_combout\ : std_logic;
SIGNAL \C3|Add6~16_combout\ : std_logic;
SIGNAL \C3|HPOS[9]~30\ : std_logic;
SIGNAL \C3|HPOS[10]~31_combout\ : std_logic;
SIGNAL \C3|Add6~12_combout\ : std_logic;
SIGNAL \C3|Add6~10_combout\ : std_logic;
SIGNAL \C3|Add6~8_combout\ : std_logic;
SIGNAL \C3|Add6~4_combout\ : std_logic;
SIGNAL \C3|HPOS[0]~11_combout\ : std_logic;
SIGNAL \C3|LessThan68~1_cout\ : std_logic;
SIGNAL \C3|LessThan68~3_cout\ : std_logic;
SIGNAL \C3|LessThan68~5_cout\ : std_logic;
SIGNAL \C3|LessThan68~7_cout\ : std_logic;
SIGNAL \C3|LessThan68~9_cout\ : std_logic;
SIGNAL \C3|LessThan68~11_cout\ : std_logic;
SIGNAL \C3|LessThan68~13_cout\ : std_logic;
SIGNAL \C3|LessThan68~15_cout\ : std_logic;
SIGNAL \C3|LessThan68~17_cout\ : std_logic;
SIGNAL \C3|LessThan68~19_cout\ : std_logic;
SIGNAL \C3|LessThan68~20_combout\ : std_logic;
SIGNAL \C3|draw~9_combout\ : std_logic;
SIGNAL \C3|draw~11_combout\ : std_logic;
SIGNAL \C3|Add6~24_combout\ : std_logic;
SIGNAL \C3|Add6~20_combout\ : std_logic;
SIGNAL \C3|Add6~26_combout\ : std_logic;
SIGNAL \C3|draw~7_combout\ : std_logic;
SIGNAL \C3|Add6~46_combout\ : std_logic;
SIGNAL \C3|Add6~50_combout\ : std_logic;
SIGNAL \C3|draw~8_combout\ : std_logic;
SIGNAL \C3|draw~12_combout\ : std_logic;
SIGNAL \C3|draw~13_combout\ : std_logic;
SIGNAL \C3|Add10~48_combout\ : std_logic;
SIGNAL \C3|Add10~46_combout\ : std_logic;
SIGNAL \C3|Add10~52_combout\ : std_logic;
SIGNAL \C3|LessThan71~2_combout\ : std_logic;
SIGNAL \C3|Add10~40_combout\ : std_logic;
SIGNAL \C3|Add10~42_combout\ : std_logic;
SIGNAL \C3|Add10~38_combout\ : std_logic;
SIGNAL \C3|LessThan71~0_combout\ : std_logic;
SIGNAL \C3|Add10~36_combout\ : std_logic;
SIGNAL \C3|Add10~30_combout\ : std_logic;
SIGNAL \C3|Add10~34_combout\ : std_logic;
SIGNAL \C3|LessThan71~24_combout\ : std_logic;
SIGNAL \C3|Add10~50_combout\ : std_logic;
SIGNAL \C3|Add10~20_combout\ : std_logic;
SIGNAL \C3|Add10~12_combout\ : std_logic;
SIGNAL \C3|Add10~10_combout\ : std_logic;
SIGNAL \C3|Add10~8_combout\ : std_logic;
SIGNAL \C3|LessThan71~4_cout\ : std_logic;
SIGNAL \C3|LessThan71~6_cout\ : std_logic;
SIGNAL \C3|LessThan71~8_cout\ : std_logic;
SIGNAL \C3|LessThan71~10_cout\ : std_logic;
SIGNAL \C3|LessThan71~12_cout\ : std_logic;
SIGNAL \C3|LessThan71~14_cout\ : std_logic;
SIGNAL \C3|LessThan71~16_cout\ : std_logic;
SIGNAL \C3|LessThan71~18_cout\ : std_logic;
SIGNAL \C3|LessThan71~20_cout\ : std_logic;
SIGNAL \C3|LessThan71~21_combout\ : std_logic;
SIGNAL \C3|Add10~16_combout\ : std_logic;
SIGNAL \C3|LessThan71~23_combout\ : std_logic;
SIGNAL \C3|LessThan71~25_combout\ : std_logic;
SIGNAL \C3|LessThan71~26_combout\ : std_logic;
SIGNAL \C3|draw~65_combout\ : std_logic;
SIGNAL \C2|SCORE2[30]~93\ : std_logic;
SIGNAL \C2|SCORE2[31]~94_combout\ : std_logic;
SIGNAL \C3|Selector1~19_combout\ : std_logic;
SIGNAL \C3|Selector1~12_combout\ : std_logic;
SIGNAL \C3|LessThan3~0_combout\ : std_logic;
SIGNAL \C3|draw~25_combout\ : std_logic;
SIGNAL \C3|VPOS[1]~12_combout\ : std_logic;
SIGNAL \C3|LessThan41~1_combout\ : std_logic;
SIGNAL \C3|LessThan41~2_combout\ : std_logic;
SIGNAL \C3|draw~26_combout\ : std_logic;
SIGNAL \C3|Selector1~13_combout\ : std_logic;
SIGNAL \C3|Selector1~9_combout\ : std_logic;
SIGNAL \C3|LessThan12~1_combout\ : std_logic;
SIGNAL \C3|LessThan10~0_combout\ : std_logic;
SIGNAL \C3|LessThan11~2_combout\ : std_logic;
SIGNAL \C3|LessThan13~0_combout\ : std_logic;
SIGNAL \C3|draw~28_combout\ : std_logic;
SIGNAL \C3|Selector1~10_combout\ : std_logic;
SIGNAL \C3|Equal6~9_combout\ : std_logic;
SIGNAL \C3|Equal11~0_combout\ : std_logic;
SIGNAL \C3|LessThan8~1_combout\ : std_logic;
SIGNAL \C3|LessThan7~1_combout\ : std_logic;
SIGNAL \C3|LessThan7~0_combout\ : std_logic;
SIGNAL \C3|LessThan7~2_combout\ : std_logic;
SIGNAL \C3|draw~19_combout\ : std_logic;
SIGNAL \C3|LessThan11~0_combout\ : std_logic;
SIGNAL \C3|LessThan11~1_combout\ : std_logic;
SIGNAL \C3|draw~15_combout\ : std_logic;
SIGNAL \C3|draw~66_combout\ : std_logic;
SIGNAL \C3|draw~16_combout\ : std_logic;
SIGNAL \C3|draw~17_combout\ : std_logic;
SIGNAL \C3|draw~18_combout\ : std_logic;
SIGNAL \C3|Selector1~7_combout\ : std_logic;
SIGNAL \C3|Selector1~6_combout\ : std_logic;
SIGNAL \C3|Selector1~8_combout\ : std_logic;
SIGNAL \C3|Selector1~11_combout\ : std_logic;
SIGNAL \C3|draw~20_combout\ : std_logic;
SIGNAL \C3|LessThan12~2_combout\ : std_logic;
SIGNAL \C3|draw~21_combout\ : std_logic;
SIGNAL \C3|R~6_combout\ : std_logic;
SIGNAL \C3|Selector1~4_combout\ : std_logic;
SIGNAL \C3|draw~22_combout\ : std_logic;
SIGNAL \C3|Selector1~2_combout\ : std_logic;
SIGNAL \C3|R~5_combout\ : std_logic;
SIGNAL \C3|Selector1~5_combout\ : std_logic;
SIGNAL \C3|Selector1~17_combout\ : std_logic;
SIGNAL \C3|draw~31_combout\ : std_logic;
SIGNAL \C3|draw~23_combout\ : std_logic;
SIGNAL \C3|draw~30_combout\ : std_logic;
SIGNAL \C3|draw~32_combout\ : std_logic;
SIGNAL \C3|Selector0~14_combout\ : std_logic;
SIGNAL \C3|Selector0~15_combout\ : std_logic;
SIGNAL \C3|Equal0~9_combout\ : std_logic;
SIGNAL \C3|Selector0~5_combout\ : std_logic;
SIGNAL \C3|Equal0~10_combout\ : std_logic;
SIGNAL \C3|draw~39_combout\ : std_logic;
SIGNAL \C3|draw~40_combout\ : std_logic;
SIGNAL \C3|draw~35_combout\ : std_logic;
SIGNAL \C3|draw~37_combout\ : std_logic;
SIGNAL \C3|R~12_combout\ : std_logic;
SIGNAL \C3|R~13_combout\ : std_logic;
SIGNAL \C3|R~7_combout\ : std_logic;
SIGNAL \C3|R~8_combout\ : std_logic;
SIGNAL \C3|R~9_combout\ : std_logic;
SIGNAL \C3|R~11_combout\ : std_logic;
SIGNAL \C3|Selector0~1_combout\ : std_logic;
SIGNAL \C3|Selector0~2_combout\ : std_logic;
SIGNAL \C3|Selector0~4_combout\ : std_logic;
SIGNAL \C3|Selector0~6_combout\ : std_logic;
SIGNAL \C3|LessThan4~0_combout\ : std_logic;
SIGNAL \C3|draw~43_combout\ : std_logic;
SIGNAL \C3|draw~44_combout\ : std_logic;
SIGNAL \C3|draw~33_combout\ : std_logic;
SIGNAL \C3|draw~42_combout\ : std_logic;
SIGNAL \C3|Selector0~8_combout\ : std_logic;
SIGNAL \C3|Selector0~12_combout\ : std_logic;
SIGNAL \C3|Selector0~13_combout\ : std_logic;
SIGNAL \C3|Selector0~10_combout\ : std_logic;
SIGNAL \C3|Selector0~11_combout\ : std_logic;
SIGNAL \C3|Selector1~18_combout\ : std_logic;
SIGNAL \C3|draw~46_combout\ : std_logic;
SIGNAL \C3|R~33_combout\ : std_logic;
SIGNAL \C3|draw~55_combout\ : std_logic;
SIGNAL \C3|draw~53_combout\ : std_logic;
SIGNAL \C3|draw~27_combout\ : std_logic;
SIGNAL \C3|draw~54_combout\ : std_logic;
SIGNAL \C3|draw~50_combout\ : std_logic;
SIGNAL \C3|LessThan46~0_combout\ : std_logic;
SIGNAL \C3|draw~51_combout\ : std_logic;
SIGNAL \C3|draw~48_combout\ : std_logic;
SIGNAL \C3|draw~68_combout\ : std_logic;
SIGNAL \C3|draw~49_combout\ : std_logic;
SIGNAL \C3|R~18_combout\ : std_logic;
SIGNAL \C3|R~19_combout\ : std_logic;
SIGNAL \C3|R~20_combout\ : std_logic;
SIGNAL \C3|R~34_combout\ : std_logic;
SIGNAL \C3|draw~63_combout\ : std_logic;
SIGNAL \C3|Add1~56_combout\ : std_logic;
SIGNAL \C3|Add1~34_combout\ : std_logic;
SIGNAL \C3|Add1~32_combout\ : std_logic;
SIGNAL \C3|Add1~24_combout\ : std_logic;
SIGNAL \C3|Add1~20_combout\ : std_logic;
SIGNAL \C3|Add1~14_combout\ : std_logic;
SIGNAL \C3|Add1~4_combout\ : std_logic;
SIGNAL \C3|Add1~2_combout\ : std_logic;
SIGNAL \C3|Add2~1\ : std_logic;
SIGNAL \C3|Add2~3\ : std_logic;
SIGNAL \C3|Add2~5\ : std_logic;
SIGNAL \C3|Add2~7\ : std_logic;
SIGNAL \C3|Add2~9\ : std_logic;
SIGNAL \C3|Add2~11\ : std_logic;
SIGNAL \C3|Add2~13\ : std_logic;
SIGNAL \C3|Add2~15\ : std_logic;
SIGNAL \C3|Add2~17\ : std_logic;
SIGNAL \C3|Add2~19\ : std_logic;
SIGNAL \C3|Add2~21\ : std_logic;
SIGNAL \C3|Add2~23\ : std_logic;
SIGNAL \C3|Add2~25\ : std_logic;
SIGNAL \C3|Add2~27\ : std_logic;
SIGNAL \C3|Add2~29\ : std_logic;
SIGNAL \C3|Add2~31\ : std_logic;
SIGNAL \C3|Add2~33\ : std_logic;
SIGNAL \C3|Add2~35\ : std_logic;
SIGNAL \C3|Add2~37\ : std_logic;
SIGNAL \C3|Add2~39\ : std_logic;
SIGNAL \C3|Add2~41\ : std_logic;
SIGNAL \C3|Add2~43\ : std_logic;
SIGNAL \C3|Add2~45\ : std_logic;
SIGNAL \C3|Add2~47\ : std_logic;
SIGNAL \C3|Add2~49\ : std_logic;
SIGNAL \C3|Add2~51\ : std_logic;
SIGNAL \C3|Add2~53\ : std_logic;
SIGNAL \C3|Add2~55\ : std_logic;
SIGNAL \C3|Add2~57\ : std_logic;
SIGNAL \C3|Add2~58_combout\ : std_logic;
SIGNAL \C3|draw~64_combout\ : std_logic;
SIGNAL \C3|Add2~56_combout\ : std_logic;
SIGNAL \C3|Add2~46_combout\ : std_logic;
SIGNAL \C3|Add2~48_combout\ : std_logic;
SIGNAL \C3|Add2~52_combout\ : std_logic;
SIGNAL \C3|LessThan63~25_combout\ : std_logic;
SIGNAL \C3|Add2~24_combout\ : std_logic;
SIGNAL \C3|Add2~28_combout\ : std_logic;
SIGNAL \C3|Add2~26_combout\ : std_logic;
SIGNAL \C3|LessThan63~21_combout\ : std_logic;
SIGNAL \C3|Add2~20_combout\ : std_logic;
SIGNAL \C3|Add2~16_combout\ : std_logic;
SIGNAL \C3|Add2~14_combout\ : std_logic;
SIGNAL \C3|Add2~12_combout\ : std_logic;
SIGNAL \C3|Add2~10_combout\ : std_logic;
SIGNAL \C3|Add2~8_combout\ : std_logic;
SIGNAL \C3|Add2~6_combout\ : std_logic;
SIGNAL \C3|Add2~4_combout\ : std_logic;
SIGNAL \C3|Add2~0_combout\ : std_logic;
SIGNAL \C3|LessThan63~1_cout\ : std_logic;
SIGNAL \C3|LessThan63~3_cout\ : std_logic;
SIGNAL \C3|LessThan63~5_cout\ : std_logic;
SIGNAL \C3|LessThan63~7_cout\ : std_logic;
SIGNAL \C3|LessThan63~9_cout\ : std_logic;
SIGNAL \C3|LessThan63~11_cout\ : std_logic;
SIGNAL \C3|LessThan63~13_cout\ : std_logic;
SIGNAL \C3|LessThan63~15_cout\ : std_logic;
SIGNAL \C3|LessThan63~17_cout\ : std_logic;
SIGNAL \C3|LessThan63~18_combout\ : std_logic;
SIGNAL \C3|LessThan63~20_combout\ : std_logic;
SIGNAL \C3|Add2~38_combout\ : std_logic;
SIGNAL \C3|Add2~44_combout\ : std_logic;
SIGNAL \C3|Add2~42_combout\ : std_logic;
SIGNAL \C3|LessThan63~23_combout\ : std_logic;
SIGNAL \C3|LessThan63~24_combout\ : std_logic;
SIGNAL \C3|LessThan63~26_combout\ : std_logic;
SIGNAL \C3|LessThan64~0_combout\ : std_logic;
SIGNAL \C3|LessThan64~1_combout\ : std_logic;
SIGNAL \C3|Add4~56_combout\ : std_logic;
SIGNAL \C3|Add4~46_combout\ : std_logic;
SIGNAL \C3|Add4~36_combout\ : std_logic;
SIGNAL \C3|Add4~34_combout\ : std_logic;
SIGNAL \C3|Add4~24_combout\ : std_logic;
SIGNAL \C3|Add4~14_combout\ : std_logic;
SIGNAL \C3|Add4~4_combout\ : std_logic;
SIGNAL \C3|Add4~2_combout\ : std_logic;
SIGNAL \C3|Add5~1\ : std_logic;
SIGNAL \C3|Add5~3\ : std_logic;
SIGNAL \C3|Add5~5\ : std_logic;
SIGNAL \C3|Add5~7\ : std_logic;
SIGNAL \C3|Add5~9\ : std_logic;
SIGNAL \C3|Add5~11\ : std_logic;
SIGNAL \C3|Add5~13\ : std_logic;
SIGNAL \C3|Add5~15\ : std_logic;
SIGNAL \C3|Add5~17\ : std_logic;
SIGNAL \C3|Add5~19\ : std_logic;
SIGNAL \C3|Add5~21\ : std_logic;
SIGNAL \C3|Add5~23\ : std_logic;
SIGNAL \C3|Add5~25\ : std_logic;
SIGNAL \C3|Add5~27\ : std_logic;
SIGNAL \C3|Add5~29\ : std_logic;
SIGNAL \C3|Add5~31\ : std_logic;
SIGNAL \C3|Add5~33\ : std_logic;
SIGNAL \C3|Add5~35\ : std_logic;
SIGNAL \C3|Add5~37\ : std_logic;
SIGNAL \C3|Add5~39\ : std_logic;
SIGNAL \C3|Add5~41\ : std_logic;
SIGNAL \C3|Add5~43\ : std_logic;
SIGNAL \C3|Add5~45\ : std_logic;
SIGNAL \C3|Add5~47\ : std_logic;
SIGNAL \C3|Add5~49\ : std_logic;
SIGNAL \C3|Add5~51\ : std_logic;
SIGNAL \C3|Add5~53\ : std_logic;
SIGNAL \C3|Add5~55\ : std_logic;
SIGNAL \C3|Add5~57\ : std_logic;
SIGNAL \C3|Add5~58_combout\ : std_logic;
SIGNAL \C3|draw~60_combout\ : std_logic;
SIGNAL \C3|Add5~54_combout\ : std_logic;
SIGNAL \C3|Add5~48_combout\ : std_logic;
SIGNAL \C3|Add5~50_combout\ : std_logic;
SIGNAL \C3|Add5~52_combout\ : std_logic;
SIGNAL \C3|LessThan67~25_combout\ : std_logic;
SIGNAL \C3|Add5~56_combout\ : std_logic;
SIGNAL \C3|LessThan67~26_combout\ : std_logic;
SIGNAL \C3|Add5~34_combout\ : std_logic;
SIGNAL \C3|Add5~36_combout\ : std_logic;
SIGNAL \C3|Add5~32_combout\ : std_logic;
SIGNAL \C3|LessThan67~22_combout\ : std_logic;
SIGNAL \C3|Add5~20_combout\ : std_logic;
SIGNAL \C3|Add5~16_combout\ : std_logic;
SIGNAL \C3|Add5~14_combout\ : std_logic;
SIGNAL \C3|Add5~10_combout\ : std_logic;
SIGNAL \C3|Add5~8_combout\ : std_logic;
SIGNAL \C3|Add5~6_combout\ : std_logic;
SIGNAL \C3|Add5~4_combout\ : std_logic;
SIGNAL \C3|LessThan67~1_cout\ : std_logic;
SIGNAL \C3|LessThan67~3_cout\ : std_logic;
SIGNAL \C3|LessThan67~5_cout\ : std_logic;
SIGNAL \C3|LessThan67~7_cout\ : std_logic;
SIGNAL \C3|LessThan67~9_cout\ : std_logic;
SIGNAL \C3|LessThan67~11_cout\ : std_logic;
SIGNAL \C3|LessThan67~13_cout\ : std_logic;
SIGNAL \C3|LessThan67~15_cout\ : std_logic;
SIGNAL \C3|LessThan67~17_cout\ : std_logic;
SIGNAL \C3|LessThan67~18_combout\ : std_logic;
SIGNAL \C3|LessThan67~20_combout\ : std_logic;
SIGNAL \C3|Add5~44_combout\ : std_logic;
SIGNAL \C3|Add5~42_combout\ : std_logic;
SIGNAL \C3|Add5~38_combout\ : std_logic;
SIGNAL \C3|LessThan67~23_combout\ : std_logic;
SIGNAL \C3|LessThan67~24_combout\ : std_logic;
SIGNAL \C3|draw~61_combout\ : std_logic;
SIGNAL \C3|G~0_combout\ : std_logic;
SIGNAL \C3|R~35_combout\ : std_logic;
SIGNAL \C3|R~36_combout\ : std_logic;
SIGNAL \C3|R~37_combout\ : std_logic;
SIGNAL \C3|G~1_combout\ : std_logic;
SIGNAL \C3|G[0]~feeder_combout\ : std_logic;
SIGNAL \C3|G[2]~feeder_combout\ : std_logic;
SIGNAL \C3|G[3]~feeder_combout\ : std_logic;
SIGNAL \C3|G[4]~feeder_combout\ : std_logic;
SIGNAL \C3|G[5]~feeder_combout\ : std_logic;
SIGNAL \C3|G[6]~feeder_combout\ : std_logic;
SIGNAL \C3|G[7]~feeder_combout\ : std_logic;
SIGNAL \C3|G[8]~feeder_combout\ : std_logic;
SIGNAL \C3|G[9]~feeder_combout\ : std_logic;
SIGNAL \C3|B~0_combout\ : std_logic;
SIGNAL \C3|B[8]~feeder_combout\ : std_logic;
SIGNAL \C3|B[9]~feeder_combout\ : std_logic;
SIGNAL \C2|BV\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C2|BH\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C2|P2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C3|G\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C3|HPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C2|SCORE1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C3|R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C3|VPOS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C2|COUNT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C2|cnt\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \C2|P1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C3|B\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C2|SCORE2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C2|ALT_INV_currentS.s0~regout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_UP1 <= UP1;
ww_DOWN1 <= DOWN1;
ww_UP2 <= UP2;
ww_DOWN2 <= DOWN2;
LED_U1 <= ww_LED_U1;
LED_D1 <= ww_LED_D1;
LED_U2 <= ww_LED_U2;
LED_D2 <= ww_LED_D2;
ww_CLOCK_in <= CLOCK_in;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_CLOCK <= ww_VGA_CLOCK;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_SYNC <= ww_VGA_SYNC;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_RESET <= RESET;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C1|altpll_0|sd1|pll_INCLK_bus\ <= (gnd & \CLOCK_in~combout\);

\C1|altpll_0|sd1|_clk0\ <= \C1|altpll_0|sd1|pll_CLK_bus\(0);
\C1|altpll_0|sd1|pll~CLK1\ <= \C1|altpll_0|sd1|pll_CLK_bus\(1);
\C1|altpll_0|sd1|pll~CLK2\ <= \C1|altpll_0|sd1|pll_CLK_bus\(2);

\C2|clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \C2|clk~regout\);

\C2|process_4:clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \C2|process_4:clk~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\C1|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \C1|altpll_0|sd1|_clk0\);
\C2|ALT_INV_currentS.s0~regout\ <= NOT \C2|currentS.s0~regout\;

-- Location: LCCOMB_X31_Y29_N2
\C3|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~0_combout\ = \C2|BV\(2) $ (GND)
-- \C3|Add9~1\ = CARRY(!\C2|BV\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(2),
	datad => VCC,
	combout => \C3|Add9~0_combout\,
	cout => \C3|Add9~1\);

-- Location: LCCOMB_X31_Y29_N4
\C3|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~2_combout\ = (\C2|BV\(3) & (!\C3|Add9~1\)) # (!\C2|BV\(3) & ((\C3|Add9~1\) # (GND)))
-- \C3|Add9~3\ = CARRY((!\C3|Add9~1\) # (!\C2|BV\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(3),
	datad => VCC,
	cin => \C3|Add9~1\,
	combout => \C3|Add9~2_combout\,
	cout => \C3|Add9~3\);

-- Location: LCCOMB_X31_Y29_N6
\C3|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~4_combout\ = (\C2|BV\(4) & (\C3|Add9~3\ $ (GND))) # (!\C2|BV\(4) & (!\C3|Add9~3\ & VCC))
-- \C3|Add9~5\ = CARRY((\C2|BV\(4) & !\C3|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(4),
	datad => VCC,
	cin => \C3|Add9~3\,
	combout => \C3|Add9~4_combout\,
	cout => \C3|Add9~5\);

-- Location: LCCOMB_X31_Y29_N16
\C3|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~14_combout\ = (\C2|BV\(9) & (!\C3|Add9~13\)) # (!\C2|BV\(9) & ((\C3|Add9~13\) # (GND)))
-- \C3|Add9~15\ = CARRY((!\C3|Add9~13\) # (!\C2|BV\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(9),
	datad => VCC,
	cin => \C3|Add9~13\,
	combout => \C3|Add9~14_combout\,
	cout => \C3|Add9~15\);

-- Location: LCCOMB_X31_Y29_N26
\C3|Add9~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~24_combout\ = (\C2|BV\(14) & (\C3|Add9~23\ $ (GND))) # (!\C2|BV\(14) & (!\C3|Add9~23\ & VCC))
-- \C3|Add9~25\ = CARRY((\C2|BV\(14) & !\C3|Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(14),
	datad => VCC,
	cin => \C3|Add9~23\,
	combout => \C3|Add9~24_combout\,
	cout => \C3|Add9~25\);

-- Location: LCCOMB_X31_Y28_N2
\C3|Add9~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~32_combout\ = (\C2|BV\(18) & (\C3|Add9~31\ $ (GND))) # (!\C2|BV\(18) & (!\C3|Add9~31\ & VCC))
-- \C3|Add9~33\ = CARRY((\C2|BV\(18) & !\C3|Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(18),
	datad => VCC,
	cin => \C3|Add9~31\,
	combout => \C3|Add9~32_combout\,
	cout => \C3|Add9~33\);

-- Location: LCCOMB_X31_Y28_N4
\C3|Add9~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~34_combout\ = (\C2|BV\(19) & (!\C3|Add9~33\)) # (!\C2|BV\(19) & ((\C3|Add9~33\) # (GND)))
-- \C3|Add9~35\ = CARRY((!\C3|Add9~33\) # (!\C2|BV\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(19),
	datad => VCC,
	cin => \C3|Add9~33\,
	combout => \C3|Add9~34_combout\,
	cout => \C3|Add9~35\);

-- Location: LCCOMB_X31_Y28_N6
\C3|Add9~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~36_combout\ = (\C2|BV\(20) & (\C3|Add9~35\ $ (GND))) # (!\C2|BV\(20) & (!\C3|Add9~35\ & VCC))
-- \C3|Add9~37\ = CARRY((\C2|BV\(20) & !\C3|Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(20),
	datad => VCC,
	cin => \C3|Add9~35\,
	combout => \C3|Add9~36_combout\,
	cout => \C3|Add9~37\);

-- Location: LCCOMB_X31_Y28_N16
\C3|Add9~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~46_combout\ = (\C2|BV\(25) & (!\C3|Add9~45\)) # (!\C2|BV\(25) & ((\C3|Add9~45\) # (GND)))
-- \C3|Add9~47\ = CARRY((!\C3|Add9~45\) # (!\C2|BV\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(25),
	datad => VCC,
	cin => \C3|Add9~45\,
	combout => \C3|Add9~46_combout\,
	cout => \C3|Add9~47\);

-- Location: LCCOMB_X30_Y29_N16
\C3|Add10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~14_combout\ = (\C3|Add9~14_combout\ & (!\C3|Add10~13\)) # (!\C3|Add9~14_combout\ & ((\C3|Add10~13\) # (GND)))
-- \C3|Add10~15\ = CARRY((!\C3|Add10~13\) # (!\C3|Add9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~14_combout\,
	datad => VCC,
	cin => \C3|Add10~13\,
	combout => \C3|Add10~14_combout\,
	cout => \C3|Add10~15\);

-- Location: LCCOMB_X30_Y29_N20
\C3|Add10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~18_combout\ = (\C3|Add9~18_combout\ & (!\C3|Add10~17\)) # (!\C3|Add9~18_combout\ & ((\C3|Add10~17\) # (GND)))
-- \C3|Add10~19\ = CARRY((!\C3|Add10~17\) # (!\C3|Add9~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~18_combout\,
	datad => VCC,
	cin => \C3|Add10~17\,
	combout => \C3|Add10~18_combout\,
	cout => \C3|Add10~19\);

-- Location: LCCOMB_X30_Y29_N24
\C3|Add10~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~22_combout\ = (\C3|Add9~22_combout\ & (!\C3|Add10~21\)) # (!\C3|Add9~22_combout\ & ((\C3|Add10~21\) # (GND)))
-- \C3|Add10~23\ = CARRY((!\C3|Add10~21\) # (!\C3|Add9~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~22_combout\,
	datad => VCC,
	cin => \C3|Add10~21\,
	combout => \C3|Add10~22_combout\,
	cout => \C3|Add10~23\);

-- Location: LCCOMB_X30_Y29_N26
\C3|Add10~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~24_combout\ = (\C3|Add9~24_combout\ & (\C3|Add10~23\ $ (GND))) # (!\C3|Add9~24_combout\ & (!\C3|Add10~23\ & VCC))
-- \C3|Add10~25\ = CARRY((\C3|Add9~24_combout\ & !\C3|Add10~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~24_combout\,
	datad => VCC,
	cin => \C3|Add10~23\,
	combout => \C3|Add10~24_combout\,
	cout => \C3|Add10~25\);

-- Location: LCCOMB_X30_Y29_N28
\C3|Add10~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~26_combout\ = (\C3|Add9~26_combout\ & (!\C3|Add10~25\)) # (!\C3|Add9~26_combout\ & ((\C3|Add10~25\) # (GND)))
-- \C3|Add10~27\ = CARRY((!\C3|Add10~25\) # (!\C3|Add9~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~26_combout\,
	datad => VCC,
	cin => \C3|Add10~25\,
	combout => \C3|Add10~26_combout\,
	cout => \C3|Add10~27\);

-- Location: LCCOMB_X30_Y29_N30
\C3|Add10~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~28_combout\ = (\C3|Add9~28_combout\ & (\C3|Add10~27\ $ (GND))) # (!\C3|Add9~28_combout\ & (!\C3|Add10~27\ & VCC))
-- \C3|Add10~29\ = CARRY((\C3|Add9~28_combout\ & !\C3|Add10~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~28_combout\,
	datad => VCC,
	cin => \C3|Add10~27\,
	combout => \C3|Add10~28_combout\,
	cout => \C3|Add10~29\);

-- Location: LCCOMB_X30_Y28_N2
\C3|Add10~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~32_combout\ = (\C3|Add9~32_combout\ & (\C3|Add10~31\ $ (GND))) # (!\C3|Add9~32_combout\ & (!\C3|Add10~31\ & VCC))
-- \C3|Add10~33\ = CARRY((\C3|Add9~32_combout\ & !\C3|Add10~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~32_combout\,
	datad => VCC,
	cin => \C3|Add10~31\,
	combout => \C3|Add10~32_combout\,
	cout => \C3|Add10~33\);

-- Location: LCCOMB_X30_Y28_N14
\C3|Add10~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~44_combout\ = (\C3|Add9~44_combout\ & (\C3|Add10~43\ $ (GND))) # (!\C3|Add9~44_combout\ & (!\C3|Add10~43\ & VCC))
-- \C3|Add10~45\ = CARRY((\C3|Add9~44_combout\ & !\C3|Add10~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~44_combout\,
	datad => VCC,
	cin => \C3|Add10~43\,
	combout => \C3|Add10~44_combout\,
	cout => \C3|Add10~45\);

-- Location: LCCOMB_X30_Y28_N24
\C3|Add10~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~54_combout\ = (\C3|Add9~54_combout\ & (!\C3|Add10~53\)) # (!\C3|Add9~54_combout\ & ((\C3|Add10~53\) # (GND)))
-- \C3|Add10~55\ = CARRY((!\C3|Add10~53\) # (!\C3|Add9~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~54_combout\,
	datad => VCC,
	cin => \C3|Add10~53\,
	combout => \C3|Add10~54_combout\,
	cout => \C3|Add10~55\);

-- Location: LCCOMB_X31_Y28_N26
\C3|Add9~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~56_combout\ = (\C2|BV\(30) & (\C3|Add9~55\ $ (GND))) # (!\C2|BV\(30) & (!\C3|Add9~55\ & VCC))
-- \C3|Add9~57\ = CARRY((\C2|BV\(30) & !\C3|Add9~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(30),
	datad => VCC,
	cin => \C3|Add9~55\,
	combout => \C3|Add9~56_combout\,
	cout => \C3|Add9~57\);

-- Location: LCCOMB_X30_Y28_N26
\C3|Add10~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~56_combout\ = (\C3|Add9~56_combout\ & (\C3|Add10~55\ $ (GND))) # (!\C3|Add9~56_combout\ & (!\C3|Add10~55\ & VCC))
-- \C3|Add10~57\ = CARRY((\C3|Add9~56_combout\ & !\C3|Add10~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~56_combout\,
	datad => VCC,
	cin => \C3|Add10~55\,
	combout => \C3|Add10~56_combout\,
	cout => \C3|Add10~57\);

-- Location: LCCOMB_X34_Y25_N4
\C3|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~0_combout\ = (\C2|BH\(3) & (\C2|BH\(4) $ (VCC))) # (!\C2|BH\(3) & (\C2|BH\(4) & VCC))
-- \C3|Add6~1\ = CARRY((\C2|BH\(3) & \C2|BH\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(3),
	datab => \C2|BH\(4),
	datad => VCC,
	combout => \C3|Add6~0_combout\,
	cout => \C3|Add6~1\);

-- Location: LCCOMB_X34_Y25_N6
\C3|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~2_combout\ = (\C2|BH\(5) & (!\C3|Add6~1\)) # (!\C2|BH\(5) & ((\C3|Add6~1\) # (GND)))
-- \C3|Add6~3\ = CARRY((!\C3|Add6~1\) # (!\C2|BH\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(5),
	datad => VCC,
	cin => \C3|Add6~1\,
	combout => \C3|Add6~2_combout\,
	cout => \C3|Add6~3\);

-- Location: LCCOMB_X34_Y25_N10
\C3|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~6_combout\ = (\C2|BH\(7) & (\C3|Add6~5\ & VCC)) # (!\C2|BH\(7) & (!\C3|Add6~5\))
-- \C3|Add6~7\ = CARRY((!\C2|BH\(7) & !\C3|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(7),
	datad => VCC,
	cin => \C3|Add6~5\,
	combout => \C3|Add6~6_combout\,
	cout => \C3|Add6~7\);

-- Location: LCCOMB_X34_Y25_N18
\C3|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~14_combout\ = (\C2|BH\(11) & (!\C3|Add6~13\)) # (!\C2|BH\(11) & ((\C3|Add6~13\) # (GND)))
-- \C3|Add6~15\ = CARRY((!\C3|Add6~13\) # (!\C2|BH\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(11),
	datad => VCC,
	cin => \C3|Add6~13\,
	combout => \C3|Add6~14_combout\,
	cout => \C3|Add6~15\);

-- Location: LCCOMB_X34_Y25_N26
\C3|Add6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~22_combout\ = (\C2|BH\(15) & (!\C3|Add6~21\)) # (!\C2|BH\(15) & ((\C3|Add6~21\) # (GND)))
-- \C3|Add6~23\ = CARRY((!\C3|Add6~21\) # (!\C2|BH\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(15),
	datad => VCC,
	cin => \C3|Add6~21\,
	combout => \C3|Add6~22_combout\,
	cout => \C3|Add6~23\);

-- Location: LCCOMB_X34_Y24_N4
\C3|Add6~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~32_combout\ = (\C2|BH\(20) & (\C3|Add6~31\ $ (GND))) # (!\C2|BH\(20) & (!\C3|Add6~31\ & VCC))
-- \C3|Add6~33\ = CARRY((\C2|BH\(20) & !\C3|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(20),
	datad => VCC,
	cin => \C3|Add6~31\,
	combout => \C3|Add6~32_combout\,
	cout => \C3|Add6~33\);

-- Location: LCCOMB_X34_Y24_N8
\C3|Add6~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~36_combout\ = (\C2|BH\(22) & (\C3|Add6~35\ $ (GND))) # (!\C2|BH\(22) & (!\C3|Add6~35\ & VCC))
-- \C3|Add6~37\ = CARRY((\C2|BH\(22) & !\C3|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(22),
	datad => VCC,
	cin => \C3|Add6~35\,
	combout => \C3|Add6~36_combout\,
	cout => \C3|Add6~37\);

-- Location: LCCOMB_X34_Y24_N10
\C3|Add6~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~38_combout\ = (\C2|BH\(23) & (!\C3|Add6~37\)) # (!\C2|BH\(23) & ((\C3|Add6~37\) # (GND)))
-- \C3|Add6~39\ = CARRY((!\C3|Add6~37\) # (!\C2|BH\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(23),
	datad => VCC,
	cin => \C3|Add6~37\,
	combout => \C3|Add6~38_combout\,
	cout => \C3|Add6~39\);

-- Location: LCCOMB_X34_Y24_N12
\C3|Add6~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~40_combout\ = (\C2|BH\(24) & (\C3|Add6~39\ $ (GND))) # (!\C2|BH\(24) & (!\C3|Add6~39\ & VCC))
-- \C3|Add6~41\ = CARRY((\C2|BH\(24) & !\C3|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(24),
	datad => VCC,
	cin => \C3|Add6~39\,
	combout => \C3|Add6~40_combout\,
	cout => \C3|Add6~41\);

-- Location: LCCOMB_X34_Y24_N14
\C3|Add6~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~42_combout\ = (\C2|BH\(25) & (!\C3|Add6~41\)) # (!\C2|BH\(25) & ((\C3|Add6~41\) # (GND)))
-- \C3|Add6~43\ = CARRY((!\C3|Add6~41\) # (!\C2|BH\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(25),
	datad => VCC,
	cin => \C3|Add6~41\,
	combout => \C3|Add6~42_combout\,
	cout => \C3|Add6~43\);

-- Location: LCCOMB_X34_Y24_N16
\C3|Add6~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~44_combout\ = (\C2|BH\(26) & (\C3|Add6~43\ $ (GND))) # (!\C2|BH\(26) & (!\C3|Add6~43\ & VCC))
-- \C3|Add6~45\ = CARRY((\C2|BH\(26) & !\C3|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(26),
	datad => VCC,
	cin => \C3|Add6~43\,
	combout => \C3|Add6~44_combout\,
	cout => \C3|Add6~45\);

-- Location: LCCOMB_X34_Y24_N20
\C3|Add6~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~48_combout\ = (\C2|BH\(28) & (\C3|Add6~47\ $ (GND))) # (!\C2|BH\(28) & (!\C3|Add6~47\ & VCC))
-- \C3|Add6~49\ = CARRY((\C2|BH\(28) & !\C3|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(28),
	datad => VCC,
	cin => \C3|Add6~47\,
	combout => \C3|Add6~48_combout\,
	cout => \C3|Add6~49\);

-- Location: LCCOMB_X31_Y33_N10
\C3|LessThan70~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~1_cout\ = CARRY((!\C2|BH\(0) & \C3|VPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(0),
	datab => \C3|VPOS\(0),
	datad => VCC,
	cout => \C3|LessThan70~1_cout\);

-- Location: LCCOMB_X31_Y33_N12
\C3|LessThan70~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~3_cout\ = CARRY((\C2|BV\(1) & ((!\C3|LessThan70~1_cout\) # (!\C3|VPOS\(1)))) # (!\C2|BV\(1) & (!\C3|VPOS\(1) & !\C3|LessThan70~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(1),
	datab => \C3|VPOS\(1),
	datad => VCC,
	cin => \C3|LessThan70~1_cout\,
	cout => \C3|LessThan70~3_cout\);

-- Location: LCCOMB_X31_Y33_N14
\C3|LessThan70~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~5_cout\ = CARRY((\C3|Add9~0_combout\ & (\C3|VPOS\(2) & !\C3|LessThan70~3_cout\)) # (!\C3|Add9~0_combout\ & ((\C3|VPOS\(2)) # (!\C3|LessThan70~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~0_combout\,
	datab => \C3|VPOS\(2),
	datad => VCC,
	cin => \C3|LessThan70~3_cout\,
	cout => \C3|LessThan70~5_cout\);

-- Location: LCCOMB_X31_Y33_N16
\C3|LessThan70~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~7_cout\ = CARRY((\C3|VPOS\(3) & (\C3|Add9~2_combout\ & !\C3|LessThan70~5_cout\)) # (!\C3|VPOS\(3) & ((\C3|Add9~2_combout\) # (!\C3|LessThan70~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(3),
	datab => \C3|Add9~2_combout\,
	datad => VCC,
	cin => \C3|LessThan70~5_cout\,
	cout => \C3|LessThan70~7_cout\);

-- Location: LCCOMB_X31_Y33_N18
\C3|LessThan70~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~9_cout\ = CARRY((\C3|Add9~4_combout\ & (\C3|VPOS\(4) & !\C3|LessThan70~7_cout\)) # (!\C3|Add9~4_combout\ & ((\C3|VPOS\(4)) # (!\C3|LessThan70~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~4_combout\,
	datab => \C3|VPOS\(4),
	datad => VCC,
	cin => \C3|LessThan70~7_cout\,
	cout => \C3|LessThan70~9_cout\);

-- Location: LCCOMB_X31_Y33_N20
\C3|LessThan70~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~11_cout\ = CARRY((\C3|Add9~6_combout\ & ((!\C3|LessThan70~9_cout\) # (!\C3|VPOS\(5)))) # (!\C3|Add9~6_combout\ & (!\C3|VPOS\(5) & !\C3|LessThan70~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~6_combout\,
	datab => \C3|VPOS\(5),
	datad => VCC,
	cin => \C3|LessThan70~9_cout\,
	cout => \C3|LessThan70~11_cout\);

-- Location: LCCOMB_X31_Y33_N22
\C3|LessThan70~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~13_cout\ = CARRY((\C3|VPOS\(6) & ((!\C3|LessThan70~11_cout\) # (!\C3|Add9~8_combout\))) # (!\C3|VPOS\(6) & (!\C3|Add9~8_combout\ & !\C3|LessThan70~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(6),
	datab => \C3|Add9~8_combout\,
	datad => VCC,
	cin => \C3|LessThan70~11_cout\,
	cout => \C3|LessThan70~13_cout\);

-- Location: LCCOMB_X31_Y33_N24
\C3|LessThan70~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~15_cout\ = CARRY((\C3|VPOS\(7) & (\C3|Add9~10_combout\ & !\C3|LessThan70~13_cout\)) # (!\C3|VPOS\(7) & ((\C3|Add9~10_combout\) # (!\C3|LessThan70~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(7),
	datab => \C3|Add9~10_combout\,
	datad => VCC,
	cin => \C3|LessThan70~13_cout\,
	cout => \C3|LessThan70~15_cout\);

-- Location: LCCOMB_X31_Y33_N26
\C3|LessThan70~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~17_cout\ = CARRY((\C3|Add9~12_combout\ & (\C3|VPOS\(8) & !\C3|LessThan70~15_cout\)) # (!\C3|Add9~12_combout\ & ((\C3|VPOS\(8)) # (!\C3|LessThan70~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~12_combout\,
	datab => \C3|VPOS\(8),
	datad => VCC,
	cin => \C3|LessThan70~15_cout\,
	cout => \C3|LessThan70~17_cout\);

-- Location: LCCOMB_X31_Y33_N28
\C3|LessThan70~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~18_combout\ = (\C3|VPOS\(9) & ((\C3|LessThan70~17_cout\) # (!\C3|Add9~14_combout\))) # (!\C3|VPOS\(9) & (\C3|LessThan70~17_cout\ & !\C3|Add9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(9),
	datad => \C3|Add9~14_combout\,
	cin => \C3|LessThan70~17_cout\,
	combout => \C3|LessThan70~18_combout\);

-- Location: LCCOMB_X33_Y26_N4
\C3|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~2_combout\ = (\C2|BH\(3) & (\C3|Add7~1_cout\ & VCC)) # (!\C2|BH\(3) & (!\C3|Add7~1_cout\))
-- \C3|Add7~3\ = CARRY((!\C2|BH\(3) & !\C3|Add7~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(3),
	datad => VCC,
	cin => \C3|Add7~1_cout\,
	combout => \C3|Add7~2_combout\,
	cout => \C3|Add7~3\);

-- Location: LCCOMB_X33_Y26_N6
\C3|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~4_combout\ = (\C2|BH\(4) & ((GND) # (!\C3|Add7~3\))) # (!\C2|BH\(4) & (\C3|Add7~3\ $ (GND)))
-- \C3|Add7~5\ = CARRY((\C2|BH\(4)) # (!\C3|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(4),
	datad => VCC,
	cin => \C3|Add7~3\,
	combout => \C3|Add7~4_combout\,
	cout => \C3|Add7~5\);

-- Location: LCCOMB_X33_Y26_N16
\C3|Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~14_combout\ = (\C2|BH\(9) & ((\C3|Add7~13\) # (GND))) # (!\C2|BH\(9) & (!\C3|Add7~13\))
-- \C3|Add7~15\ = CARRY((\C2|BH\(9)) # (!\C3|Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(9),
	datad => VCC,
	cin => \C3|Add7~13\,
	combout => \C3|Add7~14_combout\,
	cout => \C3|Add7~15\);

-- Location: LCCOMB_X33_Y26_N26
\C3|Add7~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~24_combout\ = (\C2|BH\(14) & (\C3|Add7~23\ $ (GND))) # (!\C2|BH\(14) & (!\C3|Add7~23\ & VCC))
-- \C3|Add7~25\ = CARRY((\C2|BH\(14) & !\C3|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(14),
	datad => VCC,
	cin => \C3|Add7~23\,
	combout => \C3|Add7~24_combout\,
	cout => \C3|Add7~25\);

-- Location: LCCOMB_X33_Y25_N2
\C3|Add7~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~32_combout\ = (\C2|BH\(18) & (\C3|Add7~31\ $ (GND))) # (!\C2|BH\(18) & (!\C3|Add7~31\ & VCC))
-- \C3|Add7~33\ = CARRY((\C2|BH\(18) & !\C3|Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(18),
	datad => VCC,
	cin => \C3|Add7~31\,
	combout => \C3|Add7~32_combout\,
	cout => \C3|Add7~33\);

-- Location: LCCOMB_X33_Y25_N4
\C3|Add7~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~34_combout\ = (\C2|BH\(19) & (!\C3|Add7~33\)) # (!\C2|BH\(19) & ((\C3|Add7~33\) # (GND)))
-- \C3|Add7~35\ = CARRY((!\C3|Add7~33\) # (!\C2|BH\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(19),
	datad => VCC,
	cin => \C3|Add7~33\,
	combout => \C3|Add7~34_combout\,
	cout => \C3|Add7~35\);

-- Location: LCCOMB_X33_Y25_N6
\C3|Add7~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~36_combout\ = (\C2|BH\(20) & (\C3|Add7~35\ $ (GND))) # (!\C2|BH\(20) & (!\C3|Add7~35\ & VCC))
-- \C3|Add7~37\ = CARRY((\C2|BH\(20) & !\C3|Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(20),
	datad => VCC,
	cin => \C3|Add7~35\,
	combout => \C3|Add7~36_combout\,
	cout => \C3|Add7~37\);

-- Location: LCCOMB_X33_Y25_N16
\C3|Add7~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~46_combout\ = (\C2|BH\(25) & (!\C3|Add7~45\)) # (!\C2|BH\(25) & ((\C3|Add7~45\) # (GND)))
-- \C3|Add7~47\ = CARRY((!\C3|Add7~45\) # (!\C2|BH\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(25),
	datad => VCC,
	cin => \C3|Add7~45\,
	combout => \C3|Add7~46_combout\,
	cout => \C3|Add7~47\);

-- Location: LCCOMB_X33_Y25_N24
\C3|Add7~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~54_combout\ = (\C2|BH\(29) & (!\C3|Add7~53\)) # (!\C2|BH\(29) & ((\C3|Add7~53\) # (GND)))
-- \C3|Add7~55\ = CARRY((!\C3|Add7~53\) # (!\C2|BH\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(29),
	datad => VCC,
	cin => \C3|Add7~53\,
	combout => \C3|Add7~54_combout\,
	cout => \C3|Add7~55\);

-- Location: LCCOMB_X33_Y25_N26
\C3|Add7~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~56_combout\ = (\C2|BH\(30) & (\C3|Add7~55\ $ (GND))) # (!\C2|BH\(30) & (!\C3|Add7~55\ & VCC))
-- \C3|Add7~57\ = CARRY((\C2|BH\(30) & !\C3|Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(30),
	datad => VCC,
	cin => \C3|Add7~55\,
	combout => \C3|Add7~56_combout\,
	cout => \C3|Add7~57\);

-- Location: LCCOMB_X33_Y25_N28
\C3|Add7~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~58_combout\ = \C3|Add7~57\ $ (\C2|BH\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C2|BH\(31),
	cin => \C3|Add7~57\,
	combout => \C3|Add7~58_combout\);

-- Location: LCCOMB_X32_Y26_N4
\C3|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~0_combout\ = \C3|Add7~2_combout\ $ (VCC)
-- \C3|Add8~1\ = CARRY(\C3|Add7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add7~2_combout\,
	datad => VCC,
	combout => \C3|Add8~0_combout\,
	cout => \C3|Add8~1\);

-- Location: LCCOMB_X32_Y26_N6
\C3|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~2_combout\ = (\C3|Add7~4_combout\ & (!\C3|Add8~1\)) # (!\C3|Add7~4_combout\ & ((\C3|Add8~1\) # (GND)))
-- \C3|Add8~3\ = CARRY((!\C3|Add8~1\) # (!\C3|Add7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add7~4_combout\,
	datad => VCC,
	cin => \C3|Add8~1\,
	combout => \C3|Add8~2_combout\,
	cout => \C3|Add8~3\);

-- Location: LCCOMB_X32_Y26_N8
\C3|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~4_combout\ = (\C3|Add7~6_combout\ & (\C3|Add8~3\ $ (GND))) # (!\C3|Add7~6_combout\ & (!\C3|Add8~3\ & VCC))
-- \C3|Add8~5\ = CARRY((\C3|Add7~6_combout\ & !\C3|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~6_combout\,
	datad => VCC,
	cin => \C3|Add8~3\,
	combout => \C3|Add8~4_combout\,
	cout => \C3|Add8~5\);

-- Location: LCCOMB_X32_Y26_N10
\C3|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~6_combout\ = (\C3|Add7~8_combout\ & (\C3|Add8~5\ & VCC)) # (!\C3|Add7~8_combout\ & (!\C3|Add8~5\))
-- \C3|Add8~7\ = CARRY((!\C3|Add7~8_combout\ & !\C3|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~8_combout\,
	datad => VCC,
	cin => \C3|Add8~5\,
	combout => \C3|Add8~6_combout\,
	cout => \C3|Add8~7\);

-- Location: LCCOMB_X32_Y26_N12
\C3|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~8_combout\ = (\C3|Add7~10_combout\ & ((GND) # (!\C3|Add8~7\))) # (!\C3|Add7~10_combout\ & (\C3|Add8~7\ $ (GND)))
-- \C3|Add8~9\ = CARRY((\C3|Add7~10_combout\) # (!\C3|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~10_combout\,
	datad => VCC,
	cin => \C3|Add8~7\,
	combout => \C3|Add8~8_combout\,
	cout => \C3|Add8~9\);

-- Location: LCCOMB_X32_Y26_N14
\C3|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~10_combout\ = (\C3|Add7~12_combout\ & (!\C3|Add8~9\)) # (!\C3|Add7~12_combout\ & ((\C3|Add8~9\) # (GND)))
-- \C3|Add8~11\ = CARRY((!\C3|Add8~9\) # (!\C3|Add7~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~12_combout\,
	datad => VCC,
	cin => \C3|Add8~9\,
	combout => \C3|Add8~10_combout\,
	cout => \C3|Add8~11\);

-- Location: LCCOMB_X32_Y26_N16
\C3|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~12_combout\ = (\C3|Add7~14_combout\ & (\C3|Add8~11\ $ (GND))) # (!\C3|Add7~14_combout\ & (!\C3|Add8~11\ & VCC))
-- \C3|Add8~13\ = CARRY((\C3|Add7~14_combout\ & !\C3|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add7~14_combout\,
	datad => VCC,
	cin => \C3|Add8~11\,
	combout => \C3|Add8~12_combout\,
	cout => \C3|Add8~13\);

-- Location: LCCOMB_X32_Y26_N18
\C3|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~14_combout\ = (\C3|Add7~16_combout\ & (!\C3|Add8~13\)) # (!\C3|Add7~16_combout\ & ((\C3|Add8~13\) # (GND)))
-- \C3|Add8~15\ = CARRY((!\C3|Add8~13\) # (!\C3|Add7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~16_combout\,
	datad => VCC,
	cin => \C3|Add8~13\,
	combout => \C3|Add8~14_combout\,
	cout => \C3|Add8~15\);

-- Location: LCCOMB_X32_Y26_N20
\C3|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~16_combout\ = (\C3|Add7~18_combout\ & (\C3|Add8~15\ $ (GND))) # (!\C3|Add7~18_combout\ & (!\C3|Add8~15\ & VCC))
-- \C3|Add8~17\ = CARRY((\C3|Add7~18_combout\ & !\C3|Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~18_combout\,
	datad => VCC,
	cin => \C3|Add8~15\,
	combout => \C3|Add8~16_combout\,
	cout => \C3|Add8~17\);

-- Location: LCCOMB_X32_Y26_N22
\C3|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~18_combout\ = (\C3|Add7~20_combout\ & (!\C3|Add8~17\)) # (!\C3|Add7~20_combout\ & ((\C3|Add8~17\) # (GND)))
-- \C3|Add8~19\ = CARRY((!\C3|Add8~17\) # (!\C3|Add7~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~20_combout\,
	datad => VCC,
	cin => \C3|Add8~17\,
	combout => \C3|Add8~18_combout\,
	cout => \C3|Add8~19\);

-- Location: LCCOMB_X32_Y26_N24
\C3|Add8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~20_combout\ = (\C3|Add7~22_combout\ & (\C3|Add8~19\ $ (GND))) # (!\C3|Add7~22_combout\ & (!\C3|Add8~19\ & VCC))
-- \C3|Add8~21\ = CARRY((\C3|Add7~22_combout\ & !\C3|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~22_combout\,
	datad => VCC,
	cin => \C3|Add8~19\,
	combout => \C3|Add8~20_combout\,
	cout => \C3|Add8~21\);

-- Location: LCCOMB_X32_Y26_N26
\C3|Add8~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~22_combout\ = (\C3|Add7~24_combout\ & (!\C3|Add8~21\)) # (!\C3|Add7~24_combout\ & ((\C3|Add8~21\) # (GND)))
-- \C3|Add8~23\ = CARRY((!\C3|Add8~21\) # (!\C3|Add7~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add7~24_combout\,
	datad => VCC,
	cin => \C3|Add8~21\,
	combout => \C3|Add8~22_combout\,
	cout => \C3|Add8~23\);

-- Location: LCCOMB_X32_Y26_N28
\C3|Add8~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~24_combout\ = (\C3|Add7~26_combout\ & (\C3|Add8~23\ $ (GND))) # (!\C3|Add7~26_combout\ & (!\C3|Add8~23\ & VCC))
-- \C3|Add8~25\ = CARRY((\C3|Add7~26_combout\ & !\C3|Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~26_combout\,
	datad => VCC,
	cin => \C3|Add8~23\,
	combout => \C3|Add8~24_combout\,
	cout => \C3|Add8~25\);

-- Location: LCCOMB_X32_Y26_N30
\C3|Add8~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~26_combout\ = (\C3|Add7~28_combout\ & (!\C3|Add8~25\)) # (!\C3|Add7~28_combout\ & ((\C3|Add8~25\) # (GND)))
-- \C3|Add8~27\ = CARRY((!\C3|Add8~25\) # (!\C3|Add7~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~28_combout\,
	datad => VCC,
	cin => \C3|Add8~25\,
	combout => \C3|Add8~26_combout\,
	cout => \C3|Add8~27\);

-- Location: LCCOMB_X32_Y25_N0
\C3|Add8~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~28_combout\ = (\C3|Add7~30_combout\ & (\C3|Add8~27\ $ (GND))) # (!\C3|Add7~30_combout\ & (!\C3|Add8~27\ & VCC))
-- \C3|Add8~29\ = CARRY((\C3|Add7~30_combout\ & !\C3|Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~30_combout\,
	datad => VCC,
	cin => \C3|Add8~27\,
	combout => \C3|Add8~28_combout\,
	cout => \C3|Add8~29\);

-- Location: LCCOMB_X32_Y25_N2
\C3|Add8~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~30_combout\ = (\C3|Add7~32_combout\ & (!\C3|Add8~29\)) # (!\C3|Add7~32_combout\ & ((\C3|Add8~29\) # (GND)))
-- \C3|Add8~31\ = CARRY((!\C3|Add8~29\) # (!\C3|Add7~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add7~32_combout\,
	datad => VCC,
	cin => \C3|Add8~29\,
	combout => \C3|Add8~30_combout\,
	cout => \C3|Add8~31\);

-- Location: LCCOMB_X32_Y25_N4
\C3|Add8~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~32_combout\ = (\C3|Add7~34_combout\ & (\C3|Add8~31\ $ (GND))) # (!\C3|Add7~34_combout\ & (!\C3|Add8~31\ & VCC))
-- \C3|Add8~33\ = CARRY((\C3|Add7~34_combout\ & !\C3|Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add7~34_combout\,
	datad => VCC,
	cin => \C3|Add8~31\,
	combout => \C3|Add8~32_combout\,
	cout => \C3|Add8~33\);

-- Location: LCCOMB_X32_Y25_N6
\C3|Add8~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~34_combout\ = (\C3|Add7~36_combout\ & (!\C3|Add8~33\)) # (!\C3|Add7~36_combout\ & ((\C3|Add8~33\) # (GND)))
-- \C3|Add8~35\ = CARRY((!\C3|Add8~33\) # (!\C3|Add7~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add7~36_combout\,
	datad => VCC,
	cin => \C3|Add8~33\,
	combout => \C3|Add8~34_combout\,
	cout => \C3|Add8~35\);

-- Location: LCCOMB_X32_Y25_N8
\C3|Add8~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~36_combout\ = (\C3|Add7~38_combout\ & (\C3|Add8~35\ $ (GND))) # (!\C3|Add7~38_combout\ & (!\C3|Add8~35\ & VCC))
-- \C3|Add8~37\ = CARRY((\C3|Add7~38_combout\ & !\C3|Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~38_combout\,
	datad => VCC,
	cin => \C3|Add8~35\,
	combout => \C3|Add8~36_combout\,
	cout => \C3|Add8~37\);

-- Location: LCCOMB_X32_Y25_N10
\C3|Add8~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~38_combout\ = (\C3|Add7~40_combout\ & (!\C3|Add8~37\)) # (!\C3|Add7~40_combout\ & ((\C3|Add8~37\) # (GND)))
-- \C3|Add8~39\ = CARRY((!\C3|Add8~37\) # (!\C3|Add7~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~40_combout\,
	datad => VCC,
	cin => \C3|Add8~37\,
	combout => \C3|Add8~38_combout\,
	cout => \C3|Add8~39\);

-- Location: LCCOMB_X32_Y25_N12
\C3|Add8~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~40_combout\ = (\C3|Add7~42_combout\ & (\C3|Add8~39\ $ (GND))) # (!\C3|Add7~42_combout\ & (!\C3|Add8~39\ & VCC))
-- \C3|Add8~41\ = CARRY((\C3|Add7~42_combout\ & !\C3|Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~42_combout\,
	datad => VCC,
	cin => \C3|Add8~39\,
	combout => \C3|Add8~40_combout\,
	cout => \C3|Add8~41\);

-- Location: LCCOMB_X32_Y25_N14
\C3|Add8~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~42_combout\ = (\C3|Add7~44_combout\ & (!\C3|Add8~41\)) # (!\C3|Add7~44_combout\ & ((\C3|Add8~41\) # (GND)))
-- \C3|Add8~43\ = CARRY((!\C3|Add8~41\) # (!\C3|Add7~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~44_combout\,
	datad => VCC,
	cin => \C3|Add8~41\,
	combout => \C3|Add8~42_combout\,
	cout => \C3|Add8~43\);

-- Location: LCCOMB_X32_Y25_N16
\C3|Add8~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~44_combout\ = (\C3|Add7~46_combout\ & (\C3|Add8~43\ $ (GND))) # (!\C3|Add7~46_combout\ & (!\C3|Add8~43\ & VCC))
-- \C3|Add8~45\ = CARRY((\C3|Add7~46_combout\ & !\C3|Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add7~46_combout\,
	datad => VCC,
	cin => \C3|Add8~43\,
	combout => \C3|Add8~44_combout\,
	cout => \C3|Add8~45\);

-- Location: LCCOMB_X32_Y25_N24
\C3|Add8~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~52_combout\ = (\C3|Add7~54_combout\ & (\C3|Add8~51\ $ (GND))) # (!\C3|Add7~54_combout\ & (!\C3|Add8~51\ & VCC))
-- \C3|Add8~53\ = CARRY((\C3|Add7~54_combout\ & !\C3|Add8~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~54_combout\,
	datad => VCC,
	cin => \C3|Add8~51\,
	combout => \C3|Add8~52_combout\,
	cout => \C3|Add8~53\);

-- Location: LCCOMB_X32_Y25_N26
\C3|Add8~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~54_combout\ = (\C3|Add7~56_combout\ & (!\C3|Add8~53\)) # (!\C3|Add7~56_combout\ & ((\C3|Add8~53\) # (GND)))
-- \C3|Add8~55\ = CARRY((!\C3|Add8~53\) # (!\C3|Add7~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add7~56_combout\,
	datad => VCC,
	cin => \C3|Add8~53\,
	combout => \C3|Add8~54_combout\,
	cout => \C3|Add8~55\);

-- Location: LCCOMB_X32_Y25_N28
\C3|Add8~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~56_combout\ = \C3|Add8~55\ $ (!\C3|Add7~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C3|Add7~58_combout\,
	cin => \C3|Add8~55\,
	combout => \C3|Add8~56_combout\);

-- Location: LCCOMB_X31_Y30_N6
\C3|LessThan69~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~1_cout\ = CARRY((!\C3|HPOS\(0) & \C2|BH\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(0),
	datab => \C2|BH\(0),
	datad => VCC,
	cout => \C3|LessThan69~1_cout\);

-- Location: LCCOMB_X31_Y30_N8
\C3|LessThan69~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~3_cout\ = CARRY((\C3|HPOS\(1) & ((\C2|BH\(1)) # (!\C3|LessThan69~1_cout\))) # (!\C3|HPOS\(1) & (\C2|BH\(1) & !\C3|LessThan69~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(1),
	datab => \C2|BH\(1),
	datad => VCC,
	cin => \C3|LessThan69~1_cout\,
	cout => \C3|LessThan69~3_cout\);

-- Location: LCCOMB_X31_Y30_N10
\C3|LessThan69~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~5_cout\ = CARRY((\C3|HPOS\(2) & (!\C2|BH\(2) & !\C3|LessThan69~3_cout\)) # (!\C3|HPOS\(2) & ((!\C3|LessThan69~3_cout\) # (!\C2|BH\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(2),
	datab => \C2|BH\(2),
	datad => VCC,
	cin => \C3|LessThan69~3_cout\,
	cout => \C3|LessThan69~5_cout\);

-- Location: LCCOMB_X31_Y30_N12
\C3|LessThan69~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~7_cout\ = CARRY((\C3|Add8~0_combout\ & (\C3|HPOS\(3) & !\C3|LessThan69~5_cout\)) # (!\C3|Add8~0_combout\ & ((\C3|HPOS\(3)) # (!\C3|LessThan69~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add8~0_combout\,
	datab => \C3|HPOS\(3),
	datad => VCC,
	cin => \C3|LessThan69~5_cout\,
	cout => \C3|LessThan69~7_cout\);

-- Location: LCCOMB_X31_Y30_N14
\C3|LessThan69~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~9_cout\ = CARRY((\C3|Add8~2_combout\ & ((!\C3|LessThan69~7_cout\) # (!\C3|HPOS\(4)))) # (!\C3|Add8~2_combout\ & (!\C3|HPOS\(4) & !\C3|LessThan69~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add8~2_combout\,
	datab => \C3|HPOS\(4),
	datad => VCC,
	cin => \C3|LessThan69~7_cout\,
	cout => \C3|LessThan69~9_cout\);

-- Location: LCCOMB_X31_Y30_N16
\C3|LessThan69~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~11_cout\ = CARRY((\C3|HPOS\(5) & ((!\C3|LessThan69~9_cout\) # (!\C3|Add8~4_combout\))) # (!\C3|HPOS\(5) & (!\C3|Add8~4_combout\ & !\C3|LessThan69~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(5),
	datab => \C3|Add8~4_combout\,
	datad => VCC,
	cin => \C3|LessThan69~9_cout\,
	cout => \C3|LessThan69~11_cout\);

-- Location: LCCOMB_X31_Y30_N18
\C3|LessThan69~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~13_cout\ = CARRY((\C3|Add8~6_combout\ & ((!\C3|LessThan69~11_cout\) # (!\C3|HPOS\(6)))) # (!\C3|Add8~6_combout\ & (!\C3|HPOS\(6) & !\C3|LessThan69~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add8~6_combout\,
	datab => \C3|HPOS\(6),
	datad => VCC,
	cin => \C3|LessThan69~11_cout\,
	cout => \C3|LessThan69~13_cout\);

-- Location: LCCOMB_X31_Y30_N20
\C3|LessThan69~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~15_cout\ = CARRY((\C3|HPOS\(7) & ((!\C3|LessThan69~13_cout\) # (!\C3|Add8~8_combout\))) # (!\C3|HPOS\(7) & (!\C3|Add8~8_combout\ & !\C3|LessThan69~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(7),
	datab => \C3|Add8~8_combout\,
	datad => VCC,
	cin => \C3|LessThan69~13_cout\,
	cout => \C3|LessThan69~15_cout\);

-- Location: LCCOMB_X31_Y30_N22
\C3|LessThan69~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~17_cout\ = CARRY((\C3|HPOS\(8) & (\C3|Add8~10_combout\ & !\C3|LessThan69~15_cout\)) # (!\C3|HPOS\(8) & ((\C3|Add8~10_combout\) # (!\C3|LessThan69~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(8),
	datab => \C3|Add8~10_combout\,
	datad => VCC,
	cin => \C3|LessThan69~15_cout\,
	cout => \C3|LessThan69~17_cout\);

-- Location: LCCOMB_X31_Y30_N24
\C3|LessThan69~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~19_cout\ = CARRY((\C3|Add8~12_combout\ & (\C3|HPOS\(9) & !\C3|LessThan69~17_cout\)) # (!\C3|Add8~12_combout\ & ((\C3|HPOS\(9)) # (!\C3|LessThan69~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add8~12_combout\,
	datab => \C3|HPOS\(9),
	datad => VCC,
	cin => \C3|LessThan69~17_cout\,
	cout => \C3|LessThan69~19_cout\);

-- Location: LCCOMB_X31_Y30_N26
\C3|LessThan69~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~20_combout\ = (\C3|HPOS\(10) & (!\C3|LessThan69~19_cout\ & \C3|Add8~14_combout\)) # (!\C3|HPOS\(10) & ((\C3|Add8~14_combout\) # (!\C3|LessThan69~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(10),
	datad => \C3|Add8~14_combout\,
	cin => \C3|LessThan69~19_cout\,
	combout => \C3|LessThan69~20_combout\);

-- Location: LCFF_X36_Y32_N7
\C2|SCORE2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[3]~38_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(3));

-- Location: LCFF_X36_Y32_N11
\C2|SCORE2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[5]~42_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(5));

-- Location: LCFF_X36_Y32_N13
\C2|SCORE2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[6]~44_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(6));

-- Location: LCFF_X36_Y32_N17
\C2|SCORE2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[8]~48_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(8));

-- Location: LCFF_X36_Y32_N21
\C2|SCORE2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[10]~52_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(10));

-- Location: LCFF_X36_Y32_N25
\C2|SCORE2[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[12]~56_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(12));

-- Location: LCFF_X35_Y32_N7
\C2|SCORE2[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|SCORE2[17]~66_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	sload => VCC,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(17));

-- Location: LCFF_X36_Y31_N7
\C2|SCORE2[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[19]~70_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(19));

-- Location: LCFF_X36_Y31_N17
\C2|SCORE2[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[24]~80_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(24));

-- Location: LCFF_X37_Y32_N7
\C2|SCORE1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[3]~39_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(3));

-- Location: LCFF_X37_Y32_N11
\C2|SCORE1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[5]~43_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(5));

-- Location: LCFF_X37_Y32_N13
\C2|SCORE1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[6]~45_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(6));

-- Location: LCFF_X37_Y32_N25
\C2|SCORE1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[12]~57_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(12));

-- Location: LCFF_X37_Y31_N25
\C2|SCORE1[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[28]~89_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(28));

-- Location: LCCOMB_X27_Y33_N4
\C3|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~0_combout\ = (\C2|P2\(3) & (\C2|P2\(2) $ (GND))) # (!\C2|P2\(3) & (!\C2|P2\(2) & VCC))
-- \C3|Add3~1\ = CARRY((\C2|P2\(3) & !\C2|P2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(3),
	datab => \C2|P2\(2),
	datad => VCC,
	combout => \C3|Add3~0_combout\,
	cout => \C3|Add3~1\);

-- Location: LCCOMB_X27_Y33_N6
\C3|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~2_combout\ = (\C2|P2\(4) & (!\C3|Add3~1\)) # (!\C2|P2\(4) & ((\C3|Add3~1\) # (GND)))
-- \C3|Add3~3\ = CARRY((!\C3|Add3~1\) # (!\C2|P2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(4),
	datad => VCC,
	cin => \C3|Add3~1\,
	combout => \C3|Add3~2_combout\,
	cout => \C3|Add3~3\);

-- Location: LCCOMB_X27_Y33_N8
\C3|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~4_combout\ = (\C2|P2\(5) & ((GND) # (!\C3|Add3~3\))) # (!\C2|P2\(5) & (\C3|Add3~3\ $ (GND)))
-- \C3|Add3~5\ = CARRY((\C2|P2\(5)) # (!\C3|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(5),
	datad => VCC,
	cin => \C3|Add3~3\,
	combout => \C3|Add3~4_combout\,
	cout => \C3|Add3~5\);

-- Location: LCCOMB_X27_Y33_N10
\C3|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~6_combout\ = (\C2|P2\(6) & (!\C3|Add3~5\)) # (!\C2|P2\(6) & (\C3|Add3~5\ & VCC))
-- \C3|Add3~7\ = CARRY((\C2|P2\(6) & !\C3|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(6),
	datad => VCC,
	cin => \C3|Add3~5\,
	combout => \C3|Add3~6_combout\,
	cout => \C3|Add3~7\);

-- Location: LCCOMB_X27_Y33_N12
\C3|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~8_combout\ = (\C2|P2\(7) & (\C3|Add3~7\ $ (GND))) # (!\C2|P2\(7) & (!\C3|Add3~7\ & VCC))
-- \C3|Add3~9\ = CARRY((\C2|P2\(7) & !\C3|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(7),
	datad => VCC,
	cin => \C3|Add3~7\,
	combout => \C3|Add3~8_combout\,
	cout => \C3|Add3~9\);

-- Location: LCCOMB_X27_Y33_N14
\C3|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~10_combout\ = (\C2|P2\(8) & ((\C3|Add3~9\) # (GND))) # (!\C2|P2\(8) & (!\C3|Add3~9\))
-- \C3|Add3~11\ = CARRY((\C2|P2\(8)) # (!\C3|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(8),
	datad => VCC,
	cin => \C3|Add3~9\,
	combout => \C3|Add3~10_combout\,
	cout => \C3|Add3~11\);

-- Location: LCCOMB_X27_Y33_N16
\C3|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~12_combout\ = (\C2|P2\(9) & (\C3|Add3~11\ $ (GND))) # (!\C2|P2\(9) & (!\C3|Add3~11\ & VCC))
-- \C3|Add3~13\ = CARRY((\C2|P2\(9) & !\C3|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(9),
	datad => VCC,
	cin => \C3|Add3~11\,
	combout => \C3|Add3~12_combout\,
	cout => \C3|Add3~13\);

-- Location: LCCOMB_X27_Y33_N18
\C3|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~14_combout\ = (\C2|P2\(10) & (!\C3|Add3~13\)) # (!\C2|P2\(10) & ((\C3|Add3~13\) # (GND)))
-- \C3|Add3~15\ = CARRY((!\C3|Add3~13\) # (!\C2|P2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(10),
	datad => VCC,
	cin => \C3|Add3~13\,
	combout => \C3|Add3~14_combout\,
	cout => \C3|Add3~15\);

-- Location: LCCOMB_X27_Y33_N20
\C3|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~16_combout\ = (\C2|P2\(11) & (\C3|Add3~15\ $ (GND))) # (!\C2|P2\(11) & (!\C3|Add3~15\ & VCC))
-- \C3|Add3~17\ = CARRY((\C2|P2\(11) & !\C3|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(11),
	datad => VCC,
	cin => \C3|Add3~15\,
	combout => \C3|Add3~16_combout\,
	cout => \C3|Add3~17\);

-- Location: LCCOMB_X27_Y33_N22
\C3|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~18_combout\ = (\C2|P2\(12) & (!\C3|Add3~17\)) # (!\C2|P2\(12) & ((\C3|Add3~17\) # (GND)))
-- \C3|Add3~19\ = CARRY((!\C3|Add3~17\) # (!\C2|P2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(12),
	datad => VCC,
	cin => \C3|Add3~17\,
	combout => \C3|Add3~18_combout\,
	cout => \C3|Add3~19\);

-- Location: LCCOMB_X27_Y33_N24
\C3|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~20_combout\ = (\C2|P2\(13) & (\C3|Add3~19\ $ (GND))) # (!\C2|P2\(13) & (!\C3|Add3~19\ & VCC))
-- \C3|Add3~21\ = CARRY((\C2|P2\(13) & !\C3|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(13),
	datad => VCC,
	cin => \C3|Add3~19\,
	combout => \C3|Add3~20_combout\,
	cout => \C3|Add3~21\);

-- Location: LCCOMB_X27_Y33_N26
\C3|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~22_combout\ = (\C2|P2\(14) & (!\C3|Add3~21\)) # (!\C2|P2\(14) & ((\C3|Add3~21\) # (GND)))
-- \C3|Add3~23\ = CARRY((!\C3|Add3~21\) # (!\C2|P2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(14),
	datad => VCC,
	cin => \C3|Add3~21\,
	combout => \C3|Add3~22_combout\,
	cout => \C3|Add3~23\);

-- Location: LCCOMB_X27_Y33_N28
\C3|Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~24_combout\ = (\C2|P2\(15) & (\C3|Add3~23\ $ (GND))) # (!\C2|P2\(15) & (!\C3|Add3~23\ & VCC))
-- \C3|Add3~25\ = CARRY((\C2|P2\(15) & !\C3|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(15),
	datad => VCC,
	cin => \C3|Add3~23\,
	combout => \C3|Add3~24_combout\,
	cout => \C3|Add3~25\);

-- Location: LCCOMB_X27_Y33_N30
\C3|Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~26_combout\ = (\C2|P2\(16) & (!\C3|Add3~25\)) # (!\C2|P2\(16) & ((\C3|Add3~25\) # (GND)))
-- \C3|Add3~27\ = CARRY((!\C3|Add3~25\) # (!\C2|P2\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(16),
	datad => VCC,
	cin => \C3|Add3~25\,
	combout => \C3|Add3~26_combout\,
	cout => \C3|Add3~27\);

-- Location: LCCOMB_X27_Y32_N0
\C3|Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~28_combout\ = (\C2|P2\(17) & (\C3|Add3~27\ $ (GND))) # (!\C2|P2\(17) & (!\C3|Add3~27\ & VCC))
-- \C3|Add3~29\ = CARRY((\C2|P2\(17) & !\C3|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(17),
	datad => VCC,
	cin => \C3|Add3~27\,
	combout => \C3|Add3~28_combout\,
	cout => \C3|Add3~29\);

-- Location: LCCOMB_X27_Y32_N2
\C3|Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~30_combout\ = (\C2|P2\(18) & (!\C3|Add3~29\)) # (!\C2|P2\(18) & ((\C3|Add3~29\) # (GND)))
-- \C3|Add3~31\ = CARRY((!\C3|Add3~29\) # (!\C2|P2\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(18),
	datad => VCC,
	cin => \C3|Add3~29\,
	combout => \C3|Add3~30_combout\,
	cout => \C3|Add3~31\);

-- Location: LCCOMB_X27_Y32_N4
\C3|Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~32_combout\ = (\C2|P2\(19) & (\C3|Add3~31\ $ (GND))) # (!\C2|P2\(19) & (!\C3|Add3~31\ & VCC))
-- \C3|Add3~33\ = CARRY((\C2|P2\(19) & !\C3|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(19),
	datad => VCC,
	cin => \C3|Add3~31\,
	combout => \C3|Add3~32_combout\,
	cout => \C3|Add3~33\);

-- Location: LCCOMB_X27_Y32_N6
\C3|Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~34_combout\ = (\C2|P2\(20) & (!\C3|Add3~33\)) # (!\C2|P2\(20) & ((\C3|Add3~33\) # (GND)))
-- \C3|Add3~35\ = CARRY((!\C3|Add3~33\) # (!\C2|P2\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(20),
	datad => VCC,
	cin => \C3|Add3~33\,
	combout => \C3|Add3~34_combout\,
	cout => \C3|Add3~35\);

-- Location: LCCOMB_X27_Y32_N8
\C3|Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~36_combout\ = (\C2|P2\(21) & (\C3|Add3~35\ $ (GND))) # (!\C2|P2\(21) & (!\C3|Add3~35\ & VCC))
-- \C3|Add3~37\ = CARRY((\C2|P2\(21) & !\C3|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(21),
	datad => VCC,
	cin => \C3|Add3~35\,
	combout => \C3|Add3~36_combout\,
	cout => \C3|Add3~37\);

-- Location: LCCOMB_X27_Y32_N10
\C3|Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~38_combout\ = (\C2|P2\(22) & (!\C3|Add3~37\)) # (!\C2|P2\(22) & ((\C3|Add3~37\) # (GND)))
-- \C3|Add3~39\ = CARRY((!\C3|Add3~37\) # (!\C2|P2\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(22),
	datad => VCC,
	cin => \C3|Add3~37\,
	combout => \C3|Add3~38_combout\,
	cout => \C3|Add3~39\);

-- Location: LCCOMB_X27_Y32_N12
\C3|Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~40_combout\ = (\C2|P2\(23) & (\C3|Add3~39\ $ (GND))) # (!\C2|P2\(23) & (!\C3|Add3~39\ & VCC))
-- \C3|Add3~41\ = CARRY((\C2|P2\(23) & !\C3|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(23),
	datad => VCC,
	cin => \C3|Add3~39\,
	combout => \C3|Add3~40_combout\,
	cout => \C3|Add3~41\);

-- Location: LCCOMB_X27_Y32_N14
\C3|Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~42_combout\ = (\C2|P2\(24) & (!\C3|Add3~41\)) # (!\C2|P2\(24) & ((\C3|Add3~41\) # (GND)))
-- \C3|Add3~43\ = CARRY((!\C3|Add3~41\) # (!\C2|P2\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(24),
	datad => VCC,
	cin => \C3|Add3~41\,
	combout => \C3|Add3~42_combout\,
	cout => \C3|Add3~43\);

-- Location: LCCOMB_X27_Y32_N16
\C3|Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~44_combout\ = (\C2|P2\(25) & (\C3|Add3~43\ $ (GND))) # (!\C2|P2\(25) & (!\C3|Add3~43\ & VCC))
-- \C3|Add3~45\ = CARRY((\C2|P2\(25) & !\C3|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(25),
	datad => VCC,
	cin => \C3|Add3~43\,
	combout => \C3|Add3~44_combout\,
	cout => \C3|Add3~45\);

-- Location: LCCOMB_X27_Y32_N18
\C3|Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~46_combout\ = (\C2|P2\(26) & (!\C3|Add3~45\)) # (!\C2|P2\(26) & ((\C3|Add3~45\) # (GND)))
-- \C3|Add3~47\ = CARRY((!\C3|Add3~45\) # (!\C2|P2\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(26),
	datad => VCC,
	cin => \C3|Add3~45\,
	combout => \C3|Add3~46_combout\,
	cout => \C3|Add3~47\);

-- Location: LCCOMB_X27_Y32_N20
\C3|Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~48_combout\ = (\C2|P2\(27) & (\C3|Add3~47\ $ (GND))) # (!\C2|P2\(27) & (!\C3|Add3~47\ & VCC))
-- \C3|Add3~49\ = CARRY((\C2|P2\(27) & !\C3|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(27),
	datad => VCC,
	cin => \C3|Add3~47\,
	combout => \C3|Add3~48_combout\,
	cout => \C3|Add3~49\);

-- Location: LCCOMB_X27_Y32_N22
\C3|Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~50_combout\ = (\C2|P2\(28) & (!\C3|Add3~49\)) # (!\C2|P2\(28) & ((\C3|Add3~49\) # (GND)))
-- \C3|Add3~51\ = CARRY((!\C3|Add3~49\) # (!\C2|P2\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(28),
	datad => VCC,
	cin => \C3|Add3~49\,
	combout => \C3|Add3~50_combout\,
	cout => \C3|Add3~51\);

-- Location: LCCOMB_X27_Y32_N24
\C3|Add3~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~52_combout\ = (\C2|P2\(29) & (\C3|Add3~51\ $ (GND))) # (!\C2|P2\(29) & (!\C3|Add3~51\ & VCC))
-- \C3|Add3~53\ = CARRY((\C2|P2\(29) & !\C3|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(29),
	datad => VCC,
	cin => \C3|Add3~51\,
	combout => \C3|Add3~52_combout\,
	cout => \C3|Add3~53\);

-- Location: LCCOMB_X27_Y32_N26
\C3|Add3~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~54_combout\ = (\C2|P2\(30) & (!\C3|Add3~53\)) # (!\C2|P2\(30) & ((\C3|Add3~53\) # (GND)))
-- \C3|Add3~55\ = CARRY((!\C3|Add3~53\) # (!\C2|P2\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(30),
	datad => VCC,
	cin => \C3|Add3~53\,
	combout => \C3|Add3~54_combout\,
	cout => \C3|Add3~55\);

-- Location: LCCOMB_X27_Y32_N28
\C3|Add3~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add3~56_combout\ = \C2|P2\(31) $ (!\C3|Add3~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(31),
	cin => \C3|Add3~55\,
	combout => \C3|Add3~56_combout\);

-- Location: LCCOMB_X28_Y33_N10
\C3|LessThan66~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~1_cout\ = CARRY((\C3|VPOS\(0) & \C2|P2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(0),
	datab => \C2|P2\(0),
	datad => VCC,
	cout => \C3|LessThan66~1_cout\);

-- Location: LCCOMB_X28_Y33_N12
\C3|LessThan66~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~3_cout\ = CARRY((\C3|VPOS\(1) & (\C2|P2\(1) & !\C3|LessThan66~1_cout\)) # (!\C3|VPOS\(1) & ((\C2|P2\(1)) # (!\C3|LessThan66~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(1),
	datab => \C2|P2\(1),
	datad => VCC,
	cin => \C3|LessThan66~1_cout\,
	cout => \C3|LessThan66~3_cout\);

-- Location: LCCOMB_X28_Y33_N14
\C3|LessThan66~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~5_cout\ = CARRY((\C3|VPOS\(2) & ((!\C3|LessThan66~3_cout\) # (!\C2|P2\(2)))) # (!\C3|VPOS\(2) & (!\C2|P2\(2) & !\C3|LessThan66~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(2),
	datab => \C2|P2\(2),
	datad => VCC,
	cin => \C3|LessThan66~3_cout\,
	cout => \C3|LessThan66~5_cout\);

-- Location: LCCOMB_X28_Y33_N16
\C3|LessThan66~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~7_cout\ = CARRY((\C3|Add3~0_combout\ & ((!\C3|LessThan66~5_cout\) # (!\C3|VPOS\(3)))) # (!\C3|Add3~0_combout\ & (!\C3|VPOS\(3) & !\C3|LessThan66~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add3~0_combout\,
	datab => \C3|VPOS\(3),
	datad => VCC,
	cin => \C3|LessThan66~5_cout\,
	cout => \C3|LessThan66~7_cout\);

-- Location: LCCOMB_X28_Y33_N18
\C3|LessThan66~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~9_cout\ = CARRY((\C3|VPOS\(4) & ((!\C3|LessThan66~7_cout\) # (!\C3|Add3~2_combout\))) # (!\C3|VPOS\(4) & (!\C3|Add3~2_combout\ & !\C3|LessThan66~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(4),
	datab => \C3|Add3~2_combout\,
	datad => VCC,
	cin => \C3|LessThan66~7_cout\,
	cout => \C3|LessThan66~9_cout\);

-- Location: LCCOMB_X28_Y33_N20
\C3|LessThan66~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~11_cout\ = CARRY((\C3|Add3~4_combout\ & ((!\C3|LessThan66~9_cout\) # (!\C3|VPOS\(5)))) # (!\C3|Add3~4_combout\ & (!\C3|VPOS\(5) & !\C3|LessThan66~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add3~4_combout\,
	datab => \C3|VPOS\(5),
	datad => VCC,
	cin => \C3|LessThan66~9_cout\,
	cout => \C3|LessThan66~11_cout\);

-- Location: LCCOMB_X28_Y33_N22
\C3|LessThan66~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~13_cout\ = CARRY((\C3|VPOS\(6) & ((!\C3|LessThan66~11_cout\) # (!\C3|Add3~6_combout\))) # (!\C3|VPOS\(6) & (!\C3|Add3~6_combout\ & !\C3|LessThan66~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(6),
	datab => \C3|Add3~6_combout\,
	datad => VCC,
	cin => \C3|LessThan66~11_cout\,
	cout => \C3|LessThan66~13_cout\);

-- Location: LCCOMB_X28_Y33_N24
\C3|LessThan66~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~15_cout\ = CARRY((\C3|VPOS\(7) & (\C3|Add3~8_combout\ & !\C3|LessThan66~13_cout\)) # (!\C3|VPOS\(7) & ((\C3|Add3~8_combout\) # (!\C3|LessThan66~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(7),
	datab => \C3|Add3~8_combout\,
	datad => VCC,
	cin => \C3|LessThan66~13_cout\,
	cout => \C3|LessThan66~15_cout\);

-- Location: LCCOMB_X28_Y33_N26
\C3|LessThan66~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~17_cout\ = CARRY((\C3|Add3~10_combout\ & (\C3|VPOS\(8) & !\C3|LessThan66~15_cout\)) # (!\C3|Add3~10_combout\ & ((\C3|VPOS\(8)) # (!\C3|LessThan66~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add3~10_combout\,
	datab => \C3|VPOS\(8),
	datad => VCC,
	cin => \C3|LessThan66~15_cout\,
	cout => \C3|LessThan66~17_cout\);

-- Location: LCCOMB_X28_Y33_N28
\C3|LessThan66~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~18_combout\ = (\C3|VPOS\(9) & ((\C3|LessThan66~17_cout\) # (!\C3|Add3~12_combout\))) # (!\C3|VPOS\(9) & (\C3|LessThan66~17_cout\ & !\C3|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(9),
	datad => \C3|Add3~12_combout\,
	cin => \C3|LessThan66~17_cout\,
	combout => \C3|LessThan66~18_combout\);

-- Location: LCCOMB_X28_Y27_N2
\C3|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~0_combout\ = (\C2|P2\(1) & (\C2|P2\(2) $ (GND))) # (!\C2|P2\(1) & (!\C2|P2\(2) & VCC))
-- \C3|Add4~1\ = CARRY((\C2|P2\(1) & !\C2|P2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(1),
	datab => \C2|P2\(2),
	datad => VCC,
	combout => \C3|Add4~0_combout\,
	cout => \C3|Add4~1\);

-- Location: LCCOMB_X28_Y27_N20
\C3|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~18_combout\ = (\C2|P2\(11) & (!\C3|Add4~17\)) # (!\C2|P2\(11) & ((\C3|Add4~17\) # (GND)))
-- \C3|Add4~19\ = CARRY((!\C3|Add4~17\) # (!\C2|P2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(11),
	datad => VCC,
	cin => \C3|Add4~17\,
	combout => \C3|Add4~18_combout\,
	cout => \C3|Add4~19\);

-- Location: LCCOMB_X28_Y26_N2
\C3|Add4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~32_combout\ = (\C2|P2\(18) & (\C3|Add4~31\ $ (GND))) # (!\C2|P2\(18) & (!\C3|Add4~31\ & VCC))
-- \C3|Add4~33\ = CARRY((\C2|P2\(18) & !\C3|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(18),
	datad => VCC,
	cin => \C3|Add4~31\,
	combout => \C3|Add4~32_combout\,
	cout => \C3|Add4~33\);

-- Location: LCCOMB_X29_Y27_N2
\C3|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~0_combout\ = \C3|Add4~0_combout\ $ (VCC)
-- \C3|Add5~1\ = CARRY(\C3|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~0_combout\,
	datad => VCC,
	combout => \C3|Add5~0_combout\,
	cout => \C3|Add5~1\);

-- Location: LCCOMB_X29_Y27_N4
\C3|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~2_combout\ = (\C3|Add4~2_combout\ & (!\C3|Add5~1\)) # (!\C3|Add4~2_combout\ & ((\C3|Add5~1\) # (GND)))
-- \C3|Add5~3\ = CARRY((!\C3|Add5~1\) # (!\C3|Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~2_combout\,
	datad => VCC,
	cin => \C3|Add5~1\,
	combout => \C3|Add5~2_combout\,
	cout => \C3|Add5~3\);

-- Location: LCCOMB_X29_Y27_N14
\C3|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~12_combout\ = (\C3|Add4~12_combout\ & (\C3|Add5~11\ $ (GND))) # (!\C3|Add4~12_combout\ & (!\C3|Add5~11\ & VCC))
-- \C3|Add5~13\ = CARRY((\C3|Add4~12_combout\ & !\C3|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~12_combout\,
	datad => VCC,
	cin => \C3|Add5~11\,
	combout => \C3|Add5~12_combout\,
	cout => \C3|Add5~13\);

-- Location: LCCOMB_X29_Y27_N20
\C3|Add5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~18_combout\ = (\C3|Add4~18_combout\ & (!\C3|Add5~17\)) # (!\C3|Add4~18_combout\ & ((\C3|Add5~17\) # (GND)))
-- \C3|Add5~19\ = CARRY((!\C3|Add5~17\) # (!\C3|Add4~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~18_combout\,
	datad => VCC,
	cin => \C3|Add5~17\,
	combout => \C3|Add5~18_combout\,
	cout => \C3|Add5~19\);

-- Location: LCCOMB_X29_Y27_N24
\C3|Add5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~22_combout\ = (\C3|Add4~22_combout\ & (!\C3|Add5~21\)) # (!\C3|Add4~22_combout\ & ((\C3|Add5~21\) # (GND)))
-- \C3|Add5~23\ = CARRY((!\C3|Add5~21\) # (!\C3|Add4~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~22_combout\,
	datad => VCC,
	cin => \C3|Add5~21\,
	combout => \C3|Add5~22_combout\,
	cout => \C3|Add5~23\);

-- Location: LCCOMB_X29_Y27_N26
\C3|Add5~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~24_combout\ = (\C3|Add4~24_combout\ & (\C3|Add5~23\ $ (GND))) # (!\C3|Add4~24_combout\ & (!\C3|Add5~23\ & VCC))
-- \C3|Add5~25\ = CARRY((\C3|Add4~24_combout\ & !\C3|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~24_combout\,
	datad => VCC,
	cin => \C3|Add5~23\,
	combout => \C3|Add5~24_combout\,
	cout => \C3|Add5~25\);

-- Location: LCCOMB_X29_Y27_N28
\C3|Add5~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~26_combout\ = (\C3|Add4~26_combout\ & (!\C3|Add5~25\)) # (!\C3|Add4~26_combout\ & ((\C3|Add5~25\) # (GND)))
-- \C3|Add5~27\ = CARRY((!\C3|Add5~25\) # (!\C3|Add4~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~26_combout\,
	datad => VCC,
	cin => \C3|Add5~25\,
	combout => \C3|Add5~26_combout\,
	cout => \C3|Add5~27\);

-- Location: LCCOMB_X29_Y27_N30
\C3|Add5~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~28_combout\ = (\C3|Add4~28_combout\ & (\C3|Add5~27\ $ (GND))) # (!\C3|Add4~28_combout\ & (!\C3|Add5~27\ & VCC))
-- \C3|Add5~29\ = CARRY((\C3|Add4~28_combout\ & !\C3|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~28_combout\,
	datad => VCC,
	cin => \C3|Add5~27\,
	combout => \C3|Add5~28_combout\,
	cout => \C3|Add5~29\);

-- Location: LCCOMB_X29_Y26_N0
\C3|Add5~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~30_combout\ = (\C3|Add4~30_combout\ & (!\C3|Add5~29\)) # (!\C3|Add4~30_combout\ & ((\C3|Add5~29\) # (GND)))
-- \C3|Add5~31\ = CARRY((!\C3|Add5~29\) # (!\C3|Add4~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~30_combout\,
	datad => VCC,
	cin => \C3|Add5~29\,
	combout => \C3|Add5~30_combout\,
	cout => \C3|Add5~31\);

-- Location: LCCOMB_X29_Y26_N10
\C3|Add5~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~40_combout\ = (\C3|Add4~40_combout\ & (\C3|Add5~39\ $ (GND))) # (!\C3|Add4~40_combout\ & (!\C3|Add5~39\ & VCC))
-- \C3|Add5~41\ = CARRY((\C3|Add4~40_combout\ & !\C3|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~40_combout\,
	datad => VCC,
	cin => \C3|Add5~39\,
	combout => \C3|Add5~40_combout\,
	cout => \C3|Add5~41\);

-- Location: LCCOMB_X29_Y26_N16
\C3|Add5~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~46_combout\ = (\C3|Add4~46_combout\ & (!\C3|Add5~45\)) # (!\C3|Add4~46_combout\ & ((\C3|Add5~45\) # (GND)))
-- \C3|Add5~47\ = CARRY((!\C3|Add5~45\) # (!\C3|Add4~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~46_combout\,
	datad => VCC,
	cin => \C3|Add5~45\,
	combout => \C3|Add5~46_combout\,
	cout => \C3|Add5~47\);

-- Location: LCCOMB_X36_Y30_N4
\C3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~0_combout\ = (\C2|P1\(2) & (\C2|P1\(3) & VCC)) # (!\C2|P1\(2) & (\C2|P1\(3) $ (VCC)))
-- \C3|Add0~1\ = CARRY((!\C2|P1\(2) & \C2|P1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(2),
	datab => \C2|P1\(3),
	datad => VCC,
	combout => \C3|Add0~0_combout\,
	cout => \C3|Add0~1\);

-- Location: LCCOMB_X36_Y30_N6
\C3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~2_combout\ = (\C2|P1\(4) & (!\C3|Add0~1\)) # (!\C2|P1\(4) & ((\C3|Add0~1\) # (GND)))
-- \C3|Add0~3\ = CARRY((!\C3|Add0~1\) # (!\C2|P1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(4),
	datad => VCC,
	cin => \C3|Add0~1\,
	combout => \C3|Add0~2_combout\,
	cout => \C3|Add0~3\);

-- Location: LCCOMB_X36_Y30_N8
\C3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~4_combout\ = (\C2|P1\(5) & ((GND) # (!\C3|Add0~3\))) # (!\C2|P1\(5) & (\C3|Add0~3\ $ (GND)))
-- \C3|Add0~5\ = CARRY((\C2|P1\(5)) # (!\C3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(5),
	datad => VCC,
	cin => \C3|Add0~3\,
	combout => \C3|Add0~4_combout\,
	cout => \C3|Add0~5\);

-- Location: LCCOMB_X36_Y30_N10
\C3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~6_combout\ = (\C2|P1\(6) & (!\C3|Add0~5\)) # (!\C2|P1\(6) & (\C3|Add0~5\ & VCC))
-- \C3|Add0~7\ = CARRY((\C2|P1\(6) & !\C3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(6),
	datad => VCC,
	cin => \C3|Add0~5\,
	combout => \C3|Add0~6_combout\,
	cout => \C3|Add0~7\);

-- Location: LCCOMB_X36_Y30_N12
\C3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~8_combout\ = (\C2|P1\(7) & (\C3|Add0~7\ $ (GND))) # (!\C2|P1\(7) & (!\C3|Add0~7\ & VCC))
-- \C3|Add0~9\ = CARRY((\C2|P1\(7) & !\C3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(7),
	datad => VCC,
	cin => \C3|Add0~7\,
	combout => \C3|Add0~8_combout\,
	cout => \C3|Add0~9\);

-- Location: LCCOMB_X36_Y30_N14
\C3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~10_combout\ = (\C2|P1\(8) & ((\C3|Add0~9\) # (GND))) # (!\C2|P1\(8) & (!\C3|Add0~9\))
-- \C3|Add0~11\ = CARRY((\C2|P1\(8)) # (!\C3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(8),
	datad => VCC,
	cin => \C3|Add0~9\,
	combout => \C3|Add0~10_combout\,
	cout => \C3|Add0~11\);

-- Location: LCCOMB_X36_Y30_N16
\C3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~12_combout\ = (\C2|P1\(9) & (\C3|Add0~11\ $ (GND))) # (!\C2|P1\(9) & (!\C3|Add0~11\ & VCC))
-- \C3|Add0~13\ = CARRY((\C2|P1\(9) & !\C3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(9),
	datad => VCC,
	cin => \C3|Add0~11\,
	combout => \C3|Add0~12_combout\,
	cout => \C3|Add0~13\);

-- Location: LCCOMB_X36_Y30_N18
\C3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~14_combout\ = (\C2|P1\(10) & (!\C3|Add0~13\)) # (!\C2|P1\(10) & ((\C3|Add0~13\) # (GND)))
-- \C3|Add0~15\ = CARRY((!\C3|Add0~13\) # (!\C2|P1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(10),
	datad => VCC,
	cin => \C3|Add0~13\,
	combout => \C3|Add0~14_combout\,
	cout => \C3|Add0~15\);

-- Location: LCCOMB_X36_Y30_N20
\C3|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~16_combout\ = (\C2|P1\(11) & (\C3|Add0~15\ $ (GND))) # (!\C2|P1\(11) & (!\C3|Add0~15\ & VCC))
-- \C3|Add0~17\ = CARRY((\C2|P1\(11) & !\C3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(11),
	datad => VCC,
	cin => \C3|Add0~15\,
	combout => \C3|Add0~16_combout\,
	cout => \C3|Add0~17\);

-- Location: LCCOMB_X36_Y30_N22
\C3|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~18_combout\ = (\C2|P1\(12) & (!\C3|Add0~17\)) # (!\C2|P1\(12) & ((\C3|Add0~17\) # (GND)))
-- \C3|Add0~19\ = CARRY((!\C3|Add0~17\) # (!\C2|P1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(12),
	datad => VCC,
	cin => \C3|Add0~17\,
	combout => \C3|Add0~18_combout\,
	cout => \C3|Add0~19\);

-- Location: LCCOMB_X36_Y30_N24
\C3|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~20_combout\ = (\C2|P1\(13) & (\C3|Add0~19\ $ (GND))) # (!\C2|P1\(13) & (!\C3|Add0~19\ & VCC))
-- \C3|Add0~21\ = CARRY((\C2|P1\(13) & !\C3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(13),
	datad => VCC,
	cin => \C3|Add0~19\,
	combout => \C3|Add0~20_combout\,
	cout => \C3|Add0~21\);

-- Location: LCCOMB_X36_Y30_N26
\C3|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~22_combout\ = (\C2|P1\(14) & (!\C3|Add0~21\)) # (!\C2|P1\(14) & ((\C3|Add0~21\) # (GND)))
-- \C3|Add0~23\ = CARRY((!\C3|Add0~21\) # (!\C2|P1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(14),
	datad => VCC,
	cin => \C3|Add0~21\,
	combout => \C3|Add0~22_combout\,
	cout => \C3|Add0~23\);

-- Location: LCCOMB_X36_Y30_N28
\C3|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~24_combout\ = (\C2|P1\(15) & (\C3|Add0~23\ $ (GND))) # (!\C2|P1\(15) & (!\C3|Add0~23\ & VCC))
-- \C3|Add0~25\ = CARRY((\C2|P1\(15) & !\C3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(15),
	datad => VCC,
	cin => \C3|Add0~23\,
	combout => \C3|Add0~24_combout\,
	cout => \C3|Add0~25\);

-- Location: LCCOMB_X36_Y30_N30
\C3|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~26_combout\ = (\C2|P1\(16) & (!\C3|Add0~25\)) # (!\C2|P1\(16) & ((\C3|Add0~25\) # (GND)))
-- \C3|Add0~27\ = CARRY((!\C3|Add0~25\) # (!\C2|P1\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(16),
	datad => VCC,
	cin => \C3|Add0~25\,
	combout => \C3|Add0~26_combout\,
	cout => \C3|Add0~27\);

-- Location: LCCOMB_X36_Y29_N0
\C3|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~28_combout\ = (\C2|P1\(17) & (\C3|Add0~27\ $ (GND))) # (!\C2|P1\(17) & (!\C3|Add0~27\ & VCC))
-- \C3|Add0~29\ = CARRY((\C2|P1\(17) & !\C3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(17),
	datad => VCC,
	cin => \C3|Add0~27\,
	combout => \C3|Add0~28_combout\,
	cout => \C3|Add0~29\);

-- Location: LCCOMB_X36_Y29_N2
\C3|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~30_combout\ = (\C2|P1\(18) & (!\C3|Add0~29\)) # (!\C2|P1\(18) & ((\C3|Add0~29\) # (GND)))
-- \C3|Add0~31\ = CARRY((!\C3|Add0~29\) # (!\C2|P1\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(18),
	datad => VCC,
	cin => \C3|Add0~29\,
	combout => \C3|Add0~30_combout\,
	cout => \C3|Add0~31\);

-- Location: LCCOMB_X36_Y29_N4
\C3|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~32_combout\ = (\C2|P1\(19) & (\C3|Add0~31\ $ (GND))) # (!\C2|P1\(19) & (!\C3|Add0~31\ & VCC))
-- \C3|Add0~33\ = CARRY((\C2|P1\(19) & !\C3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(19),
	datad => VCC,
	cin => \C3|Add0~31\,
	combout => \C3|Add0~32_combout\,
	cout => \C3|Add0~33\);

-- Location: LCCOMB_X36_Y29_N6
\C3|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~34_combout\ = (\C2|P1\(20) & (!\C3|Add0~33\)) # (!\C2|P1\(20) & ((\C3|Add0~33\) # (GND)))
-- \C3|Add0~35\ = CARRY((!\C3|Add0~33\) # (!\C2|P1\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(20),
	datad => VCC,
	cin => \C3|Add0~33\,
	combout => \C3|Add0~34_combout\,
	cout => \C3|Add0~35\);

-- Location: LCCOMB_X36_Y29_N8
\C3|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~36_combout\ = (\C2|P1\(21) & (\C3|Add0~35\ $ (GND))) # (!\C2|P1\(21) & (!\C3|Add0~35\ & VCC))
-- \C3|Add0~37\ = CARRY((\C2|P1\(21) & !\C3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(21),
	datad => VCC,
	cin => \C3|Add0~35\,
	combout => \C3|Add0~36_combout\,
	cout => \C3|Add0~37\);

-- Location: LCCOMB_X36_Y29_N10
\C3|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~38_combout\ = (\C2|P1\(22) & (!\C3|Add0~37\)) # (!\C2|P1\(22) & ((\C3|Add0~37\) # (GND)))
-- \C3|Add0~39\ = CARRY((!\C3|Add0~37\) # (!\C2|P1\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(22),
	datad => VCC,
	cin => \C3|Add0~37\,
	combout => \C3|Add0~38_combout\,
	cout => \C3|Add0~39\);

-- Location: LCCOMB_X36_Y29_N12
\C3|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~40_combout\ = (\C2|P1\(23) & (\C3|Add0~39\ $ (GND))) # (!\C2|P1\(23) & (!\C3|Add0~39\ & VCC))
-- \C3|Add0~41\ = CARRY((\C2|P1\(23) & !\C3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(23),
	datad => VCC,
	cin => \C3|Add0~39\,
	combout => \C3|Add0~40_combout\,
	cout => \C3|Add0~41\);

-- Location: LCCOMB_X36_Y29_N14
\C3|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~42_combout\ = (\C2|P1\(24) & (!\C3|Add0~41\)) # (!\C2|P1\(24) & ((\C3|Add0~41\) # (GND)))
-- \C3|Add0~43\ = CARRY((!\C3|Add0~41\) # (!\C2|P1\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(24),
	datad => VCC,
	cin => \C3|Add0~41\,
	combout => \C3|Add0~42_combout\,
	cout => \C3|Add0~43\);

-- Location: LCCOMB_X36_Y29_N16
\C3|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~44_combout\ = (\C2|P1\(25) & (\C3|Add0~43\ $ (GND))) # (!\C2|P1\(25) & (!\C3|Add0~43\ & VCC))
-- \C3|Add0~45\ = CARRY((\C2|P1\(25) & !\C3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(25),
	datad => VCC,
	cin => \C3|Add0~43\,
	combout => \C3|Add0~44_combout\,
	cout => \C3|Add0~45\);

-- Location: LCCOMB_X36_Y29_N18
\C3|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~46_combout\ = (\C2|P1\(26) & (!\C3|Add0~45\)) # (!\C2|P1\(26) & ((\C3|Add0~45\) # (GND)))
-- \C3|Add0~47\ = CARRY((!\C3|Add0~45\) # (!\C2|P1\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(26),
	datad => VCC,
	cin => \C3|Add0~45\,
	combout => \C3|Add0~46_combout\,
	cout => \C3|Add0~47\);

-- Location: LCCOMB_X36_Y29_N20
\C3|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~48_combout\ = (\C2|P1\(27) & (\C3|Add0~47\ $ (GND))) # (!\C2|P1\(27) & (!\C3|Add0~47\ & VCC))
-- \C3|Add0~49\ = CARRY((\C2|P1\(27) & !\C3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(27),
	datad => VCC,
	cin => \C3|Add0~47\,
	combout => \C3|Add0~48_combout\,
	cout => \C3|Add0~49\);

-- Location: LCCOMB_X36_Y29_N22
\C3|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~50_combout\ = (\C2|P1\(28) & (!\C3|Add0~49\)) # (!\C2|P1\(28) & ((\C3|Add0~49\) # (GND)))
-- \C3|Add0~51\ = CARRY((!\C3|Add0~49\) # (!\C2|P1\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(28),
	datad => VCC,
	cin => \C3|Add0~49\,
	combout => \C3|Add0~50_combout\,
	cout => \C3|Add0~51\);

-- Location: LCCOMB_X36_Y29_N24
\C3|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~52_combout\ = (\C2|P1\(29) & (\C3|Add0~51\ $ (GND))) # (!\C2|P1\(29) & (!\C3|Add0~51\ & VCC))
-- \C3|Add0~53\ = CARRY((\C2|P1\(29) & !\C3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(29),
	datad => VCC,
	cin => \C3|Add0~51\,
	combout => \C3|Add0~52_combout\,
	cout => \C3|Add0~53\);

-- Location: LCCOMB_X36_Y29_N26
\C3|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~54_combout\ = (\C2|P1\(30) & (!\C3|Add0~53\)) # (!\C2|P1\(30) & ((\C3|Add0~53\) # (GND)))
-- \C3|Add0~55\ = CARRY((!\C3|Add0~53\) # (!\C2|P1\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(30),
	datad => VCC,
	cin => \C3|Add0~53\,
	combout => \C3|Add0~54_combout\,
	cout => \C3|Add0~55\);

-- Location: LCCOMB_X36_Y29_N28
\C3|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add0~56_combout\ = \C2|P1\(31) $ (!\C3|Add0~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(31),
	cin => \C3|Add0~55\,
	combout => \C3|Add0~56_combout\);

-- Location: LCCOMB_X36_Y33_N12
\C3|LessThan62~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~1_cout\ = CARRY((\C3|VPOS\(0) & \C2|P1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(0),
	datab => \C2|P1\(0),
	datad => VCC,
	cout => \C3|LessThan62~1_cout\);

-- Location: LCCOMB_X36_Y33_N14
\C3|LessThan62~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~3_cout\ = CARRY((\C2|P1\(1) & ((!\C3|LessThan62~1_cout\) # (!\C3|VPOS\(1)))) # (!\C2|P1\(1) & (!\C3|VPOS\(1) & !\C3|LessThan62~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(1),
	datab => \C3|VPOS\(1),
	datad => VCC,
	cin => \C3|LessThan62~1_cout\,
	cout => \C3|LessThan62~3_cout\);

-- Location: LCCOMB_X36_Y33_N16
\C3|LessThan62~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~5_cout\ = CARRY((\C3|VPOS\(2) & ((!\C3|LessThan62~3_cout\) # (!\C2|P1\(2)))) # (!\C3|VPOS\(2) & (!\C2|P1\(2) & !\C3|LessThan62~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(2),
	datab => \C2|P1\(2),
	datad => VCC,
	cin => \C3|LessThan62~3_cout\,
	cout => \C3|LessThan62~5_cout\);

-- Location: LCCOMB_X36_Y33_N18
\C3|LessThan62~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~7_cout\ = CARRY((\C3|VPOS\(3) & (\C3|Add0~0_combout\ & !\C3|LessThan62~5_cout\)) # (!\C3|VPOS\(3) & ((\C3|Add0~0_combout\) # (!\C3|LessThan62~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(3),
	datab => \C3|Add0~0_combout\,
	datad => VCC,
	cin => \C3|LessThan62~5_cout\,
	cout => \C3|LessThan62~7_cout\);

-- Location: LCCOMB_X36_Y33_N20
\C3|LessThan62~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~9_cout\ = CARRY((\C3|VPOS\(4) & ((!\C3|LessThan62~7_cout\) # (!\C3|Add0~2_combout\))) # (!\C3|VPOS\(4) & (!\C3|Add0~2_combout\ & !\C3|LessThan62~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(4),
	datab => \C3|Add0~2_combout\,
	datad => VCC,
	cin => \C3|LessThan62~7_cout\,
	cout => \C3|LessThan62~9_cout\);

-- Location: LCCOMB_X36_Y33_N22
\C3|LessThan62~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~11_cout\ = CARRY((\C3|Add0~4_combout\ & ((!\C3|LessThan62~9_cout\) # (!\C3|VPOS\(5)))) # (!\C3|Add0~4_combout\ & (!\C3|VPOS\(5) & !\C3|LessThan62~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add0~4_combout\,
	datab => \C3|VPOS\(5),
	datad => VCC,
	cin => \C3|LessThan62~9_cout\,
	cout => \C3|LessThan62~11_cout\);

-- Location: LCCOMB_X36_Y33_N24
\C3|LessThan62~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~13_cout\ = CARRY((\C3|Add0~6_combout\ & (\C3|VPOS\(6) & !\C3|LessThan62~11_cout\)) # (!\C3|Add0~6_combout\ & ((\C3|VPOS\(6)) # (!\C3|LessThan62~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add0~6_combout\,
	datab => \C3|VPOS\(6),
	datad => VCC,
	cin => \C3|LessThan62~11_cout\,
	cout => \C3|LessThan62~13_cout\);

-- Location: LCCOMB_X36_Y33_N26
\C3|LessThan62~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~15_cout\ = CARRY((\C3|VPOS\(7) & (\C3|Add0~8_combout\ & !\C3|LessThan62~13_cout\)) # (!\C3|VPOS\(7) & ((\C3|Add0~8_combout\) # (!\C3|LessThan62~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(7),
	datab => \C3|Add0~8_combout\,
	datad => VCC,
	cin => \C3|LessThan62~13_cout\,
	cout => \C3|LessThan62~15_cout\);

-- Location: LCCOMB_X36_Y33_N28
\C3|LessThan62~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~17_cout\ = CARRY((\C3|Add0~10_combout\ & (\C3|VPOS\(8) & !\C3|LessThan62~15_cout\)) # (!\C3|Add0~10_combout\ & ((\C3|VPOS\(8)) # (!\C3|LessThan62~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add0~10_combout\,
	datab => \C3|VPOS\(8),
	datad => VCC,
	cin => \C3|LessThan62~15_cout\,
	cout => \C3|LessThan62~17_cout\);

-- Location: LCCOMB_X36_Y33_N30
\C3|LessThan62~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~18_combout\ = (\C3|VPOS\(9) & ((\C3|LessThan62~17_cout\) # (!\C3|Add0~12_combout\))) # (!\C3|VPOS\(9) & (\C3|LessThan62~17_cout\ & !\C3|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(9),
	datad => \C3|Add0~12_combout\,
	cin => \C3|LessThan62~17_cout\,
	combout => \C3|LessThan62~18_combout\);

-- Location: LCCOMB_X34_Y30_N2
\C3|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~0_combout\ = (\C2|P1\(2) & (\C2|P1\(1) & VCC)) # (!\C2|P1\(2) & (\C2|P1\(1) $ (VCC)))
-- \C3|Add1~1\ = CARRY((!\C2|P1\(2) & \C2|P1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(2),
	datab => \C2|P1\(1),
	datad => VCC,
	combout => \C3|Add1~0_combout\,
	cout => \C3|Add1~1\);

-- Location: LCCOMB_X37_Y30_N4
\C3|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~2_combout\ = (\C3|Add1~2_combout\ & (!\C3|Add2~1\)) # (!\C3|Add1~2_combout\ & ((\C3|Add2~1\) # (GND)))
-- \C3|Add2~3\ = CARRY((!\C3|Add2~1\) # (!\C3|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~2_combout\,
	datad => VCC,
	cin => \C3|Add2~1\,
	combout => \C3|Add2~2_combout\,
	cout => \C3|Add2~3\);

-- Location: LCCOMB_X37_Y30_N20
\C3|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~18_combout\ = (\C3|Add1~18_combout\ & (!\C3|Add2~17\)) # (!\C3|Add1~18_combout\ & ((\C3|Add2~17\) # (GND)))
-- \C3|Add2~19\ = CARRY((!\C3|Add2~17\) # (!\C3|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~18_combout\,
	datad => VCC,
	cin => \C3|Add2~17\,
	combout => \C3|Add2~18_combout\,
	cout => \C3|Add2~19\);

-- Location: LCCOMB_X37_Y30_N24
\C3|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~22_combout\ = (\C3|Add1~22_combout\ & (!\C3|Add2~21\)) # (!\C3|Add1~22_combout\ & ((\C3|Add2~21\) # (GND)))
-- \C3|Add2~23\ = CARRY((!\C3|Add2~21\) # (!\C3|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~22_combout\,
	datad => VCC,
	cin => \C3|Add2~21\,
	combout => \C3|Add2~22_combout\,
	cout => \C3|Add2~23\);

-- Location: LCCOMB_X37_Y29_N0
\C3|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~30_combout\ = (\C3|Add1~30_combout\ & (!\C3|Add2~29\)) # (!\C3|Add1~30_combout\ & ((\C3|Add2~29\) # (GND)))
-- \C3|Add2~31\ = CARRY((!\C3|Add2~29\) # (!\C3|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~30_combout\,
	datad => VCC,
	cin => \C3|Add2~29\,
	combout => \C3|Add2~30_combout\,
	cout => \C3|Add2~31\);

-- Location: LCCOMB_X37_Y29_N2
\C3|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~32_combout\ = (\C3|Add1~32_combout\ & (\C3|Add2~31\ $ (GND))) # (!\C3|Add1~32_combout\ & (!\C3|Add2~31\ & VCC))
-- \C3|Add2~33\ = CARRY((\C3|Add1~32_combout\ & !\C3|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~32_combout\,
	datad => VCC,
	cin => \C3|Add2~31\,
	combout => \C3|Add2~32_combout\,
	cout => \C3|Add2~33\);

-- Location: LCCOMB_X37_Y29_N4
\C3|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~34_combout\ = (\C3|Add1~34_combout\ & (!\C3|Add2~33\)) # (!\C3|Add1~34_combout\ & ((\C3|Add2~33\) # (GND)))
-- \C3|Add2~35\ = CARRY((!\C3|Add2~33\) # (!\C3|Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~34_combout\,
	datad => VCC,
	cin => \C3|Add2~33\,
	combout => \C3|Add2~34_combout\,
	cout => \C3|Add2~35\);

-- Location: LCCOMB_X34_Y29_N6
\C3|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~36_combout\ = (\C2|P1\(20) & (\C3|Add1~35\ $ (GND))) # (!\C2|P1\(20) & (!\C3|Add1~35\ & VCC))
-- \C3|Add1~37\ = CARRY((\C2|P1\(20) & !\C3|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(20),
	datad => VCC,
	cin => \C3|Add1~35\,
	combout => \C3|Add1~36_combout\,
	cout => \C3|Add1~37\);

-- Location: LCCOMB_X37_Y29_N6
\C3|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~36_combout\ = (\C3|Add1~36_combout\ & (\C3|Add2~35\ $ (GND))) # (!\C3|Add1~36_combout\ & (!\C3|Add2~35\ & VCC))
-- \C3|Add2~37\ = CARRY((\C3|Add1~36_combout\ & !\C3|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~36_combout\,
	datad => VCC,
	cin => \C3|Add2~35\,
	combout => \C3|Add2~36_combout\,
	cout => \C3|Add2~37\);

-- Location: LCCOMB_X37_Y29_N10
\C3|Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~40_combout\ = (\C3|Add1~40_combout\ & (\C3|Add2~39\ $ (GND))) # (!\C3|Add1~40_combout\ & (!\C3|Add2~39\ & VCC))
-- \C3|Add2~41\ = CARRY((\C3|Add1~40_combout\ & !\C3|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~40_combout\,
	datad => VCC,
	cin => \C3|Add2~39\,
	combout => \C3|Add2~40_combout\,
	cout => \C3|Add2~41\);

-- Location: LCCOMB_X34_Y29_N16
\C3|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~46_combout\ = (\C2|P1\(25) & (!\C3|Add1~45\)) # (!\C2|P1\(25) & ((\C3|Add1~45\) # (GND)))
-- \C3|Add1~47\ = CARRY((!\C3|Add1~45\) # (!\C2|P1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(25),
	datad => VCC,
	cin => \C3|Add1~45\,
	combout => \C3|Add1~46_combout\,
	cout => \C3|Add1~47\);

-- Location: LCCOMB_X37_Y29_N20
\C3|Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~50_combout\ = (\C3|Add1~50_combout\ & (!\C3|Add2~49\)) # (!\C3|Add1~50_combout\ & ((\C3|Add2~49\) # (GND)))
-- \C3|Add2~51\ = CARRY((!\C3|Add2~49\) # (!\C3|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~50_combout\,
	datad => VCC,
	cin => \C3|Add2~49\,
	combout => \C3|Add2~50_combout\,
	cout => \C3|Add2~51\);

-- Location: LCCOMB_X37_Y29_N24
\C3|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~54_combout\ = (\C3|Add1~54_combout\ & (!\C3|Add2~53\)) # (!\C3|Add1~54_combout\ & ((\C3|Add2~53\) # (GND)))
-- \C3|Add2~55\ = CARRY((!\C3|Add2~53\) # (!\C3|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~54_combout\,
	datad => VCC,
	cin => \C3|Add2~53\,
	combout => \C3|Add2~54_combout\,
	cout => \C3|Add2~55\);

-- Location: LCCOMB_X28_Y28_N8
\C2|Add8~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~42_combout\ = ((\C2|BVDir~regout\ $ (\C2|BV\(20) $ (\C2|Add8~41\)))) # (GND)
-- \C2|Add8~43\ = CARRY((\C2|BVDir~regout\ & (\C2|BV\(20) & !\C2|Add8~41\)) # (!\C2|BVDir~regout\ & ((\C2|BV\(20)) # (!\C2|Add8~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(20),
	datad => VCC,
	cin => \C2|Add8~41\,
	combout => \C2|Add8~42_combout\,
	cout => \C2|Add8~43\);

-- Location: LCCOMB_X36_Y26_N18
\C2|Add11~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~19_combout\ = (\C2|BH\(9) & ((\C2|BHDir~regout\ & ((\C2|Add11~18\) # (GND))) # (!\C2|BHDir~regout\ & (!\C2|Add11~18\)))) # (!\C2|BH\(9) & ((\C2|BHDir~regout\ & (!\C2|Add11~18\)) # (!\C2|BHDir~regout\ & (\C2|Add11~18\ & VCC))))
-- \C2|Add11~20\ = CARRY((\C2|BH\(9) & ((\C2|BHDir~regout\) # (!\C2|Add11~18\))) # (!\C2|BH\(9) & (\C2|BHDir~regout\ & !\C2|Add11~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(9),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~18\,
	combout => \C2|Add11~19_combout\,
	cout => \C2|Add11~20\);

-- Location: LCCOMB_X36_Y26_N24
\C2|Add11~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~25_combout\ = ((\C2|BH\(12) $ (\C2|BHDir~regout\ $ (\C2|Add11~24\)))) # (GND)
-- \C2|Add11~26\ = CARRY((\C2|BH\(12) & ((!\C2|Add11~24\) # (!\C2|BHDir~regout\))) # (!\C2|BH\(12) & (!\C2|BHDir~regout\ & !\C2|Add11~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(12),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~24\,
	combout => \C2|Add11~25_combout\,
	cout => \C2|Add11~26\);

-- Location: LCCOMB_X36_Y26_N28
\C2|Add11~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~29_combout\ = ((\C2|BH\(14) $ (\C2|BHDir~regout\ $ (\C2|Add11~28\)))) # (GND)
-- \C2|Add11~30\ = CARRY((\C2|BH\(14) & ((!\C2|Add11~28\) # (!\C2|BHDir~regout\))) # (!\C2|BH\(14) & (!\C2|BHDir~regout\ & !\C2|Add11~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(14),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~28\,
	combout => \C2|Add11~29_combout\,
	cout => \C2|Add11~30\);

-- Location: LCCOMB_X36_Y26_N30
\C2|Add11~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~31_combout\ = (\C2|BH\(15) & ((\C2|BHDir~regout\ & (!\C2|Add11~30\)) # (!\C2|BHDir~regout\ & (\C2|Add11~30\ & VCC)))) # (!\C2|BH\(15) & ((\C2|BHDir~regout\ & ((\C2|Add11~30\) # (GND))) # (!\C2|BHDir~regout\ & (!\C2|Add11~30\))))
-- \C2|Add11~32\ = CARRY((\C2|BH\(15) & (\C2|BHDir~regout\ & !\C2|Add11~30\)) # (!\C2|BH\(15) & ((\C2|BHDir~regout\) # (!\C2|Add11~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(15),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~30\,
	combout => \C2|Add11~31_combout\,
	cout => \C2|Add11~32\);

-- Location: LCCOMB_X36_Y25_N16
\C2|Add11~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~49_combout\ = ((\C2|BH\(24) $ (\C2|BHDir~regout\ $ (\C2|Add11~48\)))) # (GND)
-- \C2|Add11~50\ = CARRY((\C2|BH\(24) & ((!\C2|Add11~48\) # (!\C2|BHDir~regout\))) # (!\C2|BH\(24) & (!\C2|BHDir~regout\ & !\C2|Add11~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(24),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~48\,
	combout => \C2|Add11~49_combout\,
	cout => \C2|Add11~50\);

-- Location: LCCOMB_X36_Y25_N20
\C2|Add11~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~53_combout\ = ((\C2|BH\(26) $ (\C2|BHDir~regout\ $ (\C2|Add11~52\)))) # (GND)
-- \C2|Add11~54\ = CARRY((\C2|BH\(26) & ((!\C2|Add11~52\) # (!\C2|BHDir~regout\))) # (!\C2|BH\(26) & (!\C2|BHDir~regout\ & !\C2|Add11~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(26),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~52\,
	combout => \C2|Add11~53_combout\,
	cout => \C2|Add11~54\);

-- Location: LCCOMB_X36_Y25_N26
\C2|Add11~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~59_combout\ = (\C2|BH\(29) & ((\C2|BHDir~regout\ & (!\C2|Add11~58\)) # (!\C2|BHDir~regout\ & (\C2|Add11~58\ & VCC)))) # (!\C2|BH\(29) & ((\C2|BHDir~regout\ & ((\C2|Add11~58\) # (GND))) # (!\C2|BHDir~regout\ & (!\C2|Add11~58\))))
-- \C2|Add11~60\ = CARRY((\C2|BH\(29) & (\C2|BHDir~regout\ & !\C2|Add11~58\)) # (!\C2|BH\(29) & ((\C2|BHDir~regout\) # (!\C2|Add11~58\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(29),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~58\,
	combout => \C2|Add11~59_combout\,
	cout => \C2|Add11~60\);

-- Location: LCCOMB_X36_Y32_N6
\C2|SCORE2[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[3]~38_combout\ = (\C2|SCORE2\(3) & (!\C2|SCORE2[2]~37\)) # (!\C2|SCORE2\(3) & ((\C2|SCORE2[2]~37\) # (GND)))
-- \C2|SCORE2[3]~39\ = CARRY((!\C2|SCORE2[2]~37\) # (!\C2|SCORE2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(3),
	datad => VCC,
	cin => \C2|SCORE2[2]~37\,
	combout => \C2|SCORE2[3]~38_combout\,
	cout => \C2|SCORE2[3]~39\);

-- Location: LCCOMB_X36_Y32_N10
\C2|SCORE2[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[5]~42_combout\ = (\C2|SCORE2\(5) & (!\C2|SCORE2[4]~41\)) # (!\C2|SCORE2\(5) & ((\C2|SCORE2[4]~41\) # (GND)))
-- \C2|SCORE2[5]~43\ = CARRY((!\C2|SCORE2[4]~41\) # (!\C2|SCORE2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(5),
	datad => VCC,
	cin => \C2|SCORE2[4]~41\,
	combout => \C2|SCORE2[5]~42_combout\,
	cout => \C2|SCORE2[5]~43\);

-- Location: LCCOMB_X36_Y32_N12
\C2|SCORE2[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[6]~44_combout\ = (\C2|SCORE2\(6) & (\C2|SCORE2[5]~43\ $ (GND))) # (!\C2|SCORE2\(6) & (!\C2|SCORE2[5]~43\ & VCC))
-- \C2|SCORE2[6]~45\ = CARRY((\C2|SCORE2\(6) & !\C2|SCORE2[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(6),
	datad => VCC,
	cin => \C2|SCORE2[5]~43\,
	combout => \C2|SCORE2[6]~44_combout\,
	cout => \C2|SCORE2[6]~45\);

-- Location: LCCOMB_X36_Y32_N16
\C2|SCORE2[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[8]~48_combout\ = (\C2|SCORE2\(8) & (\C2|SCORE2[7]~47\ $ (GND))) # (!\C2|SCORE2\(8) & (!\C2|SCORE2[7]~47\ & VCC))
-- \C2|SCORE2[8]~49\ = CARRY((\C2|SCORE2\(8) & !\C2|SCORE2[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(8),
	datad => VCC,
	cin => \C2|SCORE2[7]~47\,
	combout => \C2|SCORE2[8]~48_combout\,
	cout => \C2|SCORE2[8]~49\);

-- Location: LCCOMB_X36_Y32_N20
\C2|SCORE2[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[10]~52_combout\ = (\C2|SCORE2\(10) & (\C2|SCORE2[9]~51\ $ (GND))) # (!\C2|SCORE2\(10) & (!\C2|SCORE2[9]~51\ & VCC))
-- \C2|SCORE2[10]~53\ = CARRY((\C2|SCORE2\(10) & !\C2|SCORE2[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(10),
	datad => VCC,
	cin => \C2|SCORE2[9]~51\,
	combout => \C2|SCORE2[10]~52_combout\,
	cout => \C2|SCORE2[10]~53\);

-- Location: LCCOMB_X36_Y32_N24
\C2|SCORE2[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[12]~56_combout\ = (\C2|SCORE2\(12) & (\C2|SCORE2[11]~55\ $ (GND))) # (!\C2|SCORE2\(12) & (!\C2|SCORE2[11]~55\ & VCC))
-- \C2|SCORE2[12]~57\ = CARRY((\C2|SCORE2\(12) & !\C2|SCORE2[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(12),
	datad => VCC,
	cin => \C2|SCORE2[11]~55\,
	combout => \C2|SCORE2[12]~56_combout\,
	cout => \C2|SCORE2[12]~57\);

-- Location: LCCOMB_X36_Y31_N2
\C2|SCORE2[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[17]~66_combout\ = (\C2|SCORE2\(17) & (!\C2|SCORE2[16]~65\)) # (!\C2|SCORE2\(17) & ((\C2|SCORE2[16]~65\) # (GND)))
-- \C2|SCORE2[17]~67\ = CARRY((!\C2|SCORE2[16]~65\) # (!\C2|SCORE2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(17),
	datad => VCC,
	cin => \C2|SCORE2[16]~65\,
	combout => \C2|SCORE2[17]~66_combout\,
	cout => \C2|SCORE2[17]~67\);

-- Location: LCCOMB_X36_Y31_N6
\C2|SCORE2[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[19]~70_combout\ = (\C2|SCORE2\(19) & (!\C2|SCORE2[18]~69\)) # (!\C2|SCORE2\(19) & ((\C2|SCORE2[18]~69\) # (GND)))
-- \C2|SCORE2[19]~71\ = CARRY((!\C2|SCORE2[18]~69\) # (!\C2|SCORE2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(19),
	datad => VCC,
	cin => \C2|SCORE2[18]~69\,
	combout => \C2|SCORE2[19]~70_combout\,
	cout => \C2|SCORE2[19]~71\);

-- Location: LCCOMB_X36_Y31_N16
\C2|SCORE2[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[24]~80_combout\ = (\C2|SCORE2\(24) & (\C2|SCORE2[23]~79\ $ (GND))) # (!\C2|SCORE2\(24) & (!\C2|SCORE2[23]~79\ & VCC))
-- \C2|SCORE2[24]~81\ = CARRY((\C2|SCORE2\(24) & !\C2|SCORE2[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(24),
	datad => VCC,
	cin => \C2|SCORE2[23]~79\,
	combout => \C2|SCORE2[24]~80_combout\,
	cout => \C2|SCORE2[24]~81\);

-- Location: LCCOMB_X37_Y32_N6
\C2|SCORE1[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[3]~39_combout\ = (\C2|SCORE1\(3) & (!\C2|SCORE1[2]~38\)) # (!\C2|SCORE1\(3) & ((\C2|SCORE1[2]~38\) # (GND)))
-- \C2|SCORE1[3]~40\ = CARRY((!\C2|SCORE1[2]~38\) # (!\C2|SCORE1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(3),
	datad => VCC,
	cin => \C2|SCORE1[2]~38\,
	combout => \C2|SCORE1[3]~39_combout\,
	cout => \C2|SCORE1[3]~40\);

-- Location: LCCOMB_X37_Y32_N10
\C2|SCORE1[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[5]~43_combout\ = (\C2|SCORE1\(5) & (!\C2|SCORE1[4]~42\)) # (!\C2|SCORE1\(5) & ((\C2|SCORE1[4]~42\) # (GND)))
-- \C2|SCORE1[5]~44\ = CARRY((!\C2|SCORE1[4]~42\) # (!\C2|SCORE1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(5),
	datad => VCC,
	cin => \C2|SCORE1[4]~42\,
	combout => \C2|SCORE1[5]~43_combout\,
	cout => \C2|SCORE1[5]~44\);

-- Location: LCCOMB_X37_Y32_N12
\C2|SCORE1[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[6]~45_combout\ = (\C2|SCORE1\(6) & (\C2|SCORE1[5]~44\ $ (GND))) # (!\C2|SCORE1\(6) & (!\C2|SCORE1[5]~44\ & VCC))
-- \C2|SCORE1[6]~46\ = CARRY((\C2|SCORE1\(6) & !\C2|SCORE1[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(6),
	datad => VCC,
	cin => \C2|SCORE1[5]~44\,
	combout => \C2|SCORE1[6]~45_combout\,
	cout => \C2|SCORE1[6]~46\);

-- Location: LCCOMB_X37_Y32_N24
\C2|SCORE1[12]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[12]~57_combout\ = (\C2|SCORE1\(12) & (\C2|SCORE1[11]~56\ $ (GND))) # (!\C2|SCORE1\(12) & (!\C2|SCORE1[11]~56\ & VCC))
-- \C2|SCORE1[12]~58\ = CARRY((\C2|SCORE1\(12) & !\C2|SCORE1[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(12),
	datad => VCC,
	cin => \C2|SCORE1[11]~56\,
	combout => \C2|SCORE1[12]~57_combout\,
	cout => \C2|SCORE1[12]~58\);

-- Location: LCCOMB_X37_Y31_N24
\C2|SCORE1[28]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[28]~89_combout\ = (\C2|SCORE1\(28) & (\C2|SCORE1[27]~88\ $ (GND))) # (!\C2|SCORE1\(28) & (!\C2|SCORE1[27]~88\ & VCC))
-- \C2|SCORE1[28]~90\ = CARRY((\C2|SCORE1\(28) & !\C2|SCORE1[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(28),
	datad => VCC,
	cin => \C2|SCORE1[27]~88\,
	combout => \C2|SCORE1[28]~89_combout\,
	cout => \C2|SCORE1[28]~90\);

-- Location: LCCOMB_X27_Y31_N8
\C2|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~8_combout\ = ((\C2|P2\(4) $ (\C2|process_2~1_combout\ $ (!\C2|Add3~7\)))) # (GND)
-- \C2|Add3~9\ = CARRY((\C2|P2\(4) & ((\C2|process_2~1_combout\) # (!\C2|Add3~7\))) # (!\C2|P2\(4) & (\C2|process_2~1_combout\ & !\C2|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(4),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~7\,
	combout => \C2|Add3~8_combout\,
	cout => \C2|Add3~9\);

-- Location: LCCOMB_X27_Y30_N2
\C2|Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~34_combout\ = (\C2|P2\(17) & ((\C2|process_2~1_combout\ & (\C2|Add3~33\ & VCC)) # (!\C2|process_2~1_combout\ & (!\C2|Add3~33\)))) # (!\C2|P2\(17) & ((\C2|process_2~1_combout\ & (!\C2|Add3~33\)) # (!\C2|process_2~1_combout\ & ((\C2|Add3~33\) # 
-- (GND)))))
-- \C2|Add3~35\ = CARRY((\C2|P2\(17) & (!\C2|process_2~1_combout\ & !\C2|Add3~33\)) # (!\C2|P2\(17) & ((!\C2|Add3~33\) # (!\C2|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(17),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~33\,
	combout => \C2|Add3~34_combout\,
	cout => \C2|Add3~35\);

-- Location: LCCOMB_X27_Y30_N10
\C2|Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~42_combout\ = (\C2|P2\(21) & ((\C2|process_2~1_combout\ & (\C2|Add3~41\ & VCC)) # (!\C2|process_2~1_combout\ & (!\C2|Add3~41\)))) # (!\C2|P2\(21) & ((\C2|process_2~1_combout\ & (!\C2|Add3~41\)) # (!\C2|process_2~1_combout\ & ((\C2|Add3~41\) # 
-- (GND)))))
-- \C2|Add3~43\ = CARRY((\C2|P2\(21) & (!\C2|process_2~1_combout\ & !\C2|Add3~41\)) # (!\C2|P2\(21) & ((!\C2|Add3~41\) # (!\C2|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(21),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~41\,
	combout => \C2|Add3~42_combout\,
	cout => \C2|Add3~43\);

-- Location: LCCOMB_X27_Y30_N12
\C2|Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~44_combout\ = ((\C2|P2\(22) $ (\C2|process_2~1_combout\ $ (!\C2|Add3~43\)))) # (GND)
-- \C2|Add3~45\ = CARRY((\C2|P2\(22) & ((\C2|process_2~1_combout\) # (!\C2|Add3~43\))) # (!\C2|P2\(22) & (\C2|process_2~1_combout\ & !\C2|Add3~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(22),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~43\,
	combout => \C2|Add3~44_combout\,
	cout => \C2|Add3~45\);

-- Location: LCCOMB_X27_Y30_N14
\C2|Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~46_combout\ = (\C2|P2\(23) & ((\C2|process_2~1_combout\ & (\C2|Add3~45\ & VCC)) # (!\C2|process_2~1_combout\ & (!\C2|Add3~45\)))) # (!\C2|P2\(23) & ((\C2|process_2~1_combout\ & (!\C2|Add3~45\)) # (!\C2|process_2~1_combout\ & ((\C2|Add3~45\) # 
-- (GND)))))
-- \C2|Add3~47\ = CARRY((\C2|P2\(23) & (!\C2|process_2~1_combout\ & !\C2|Add3~45\)) # (!\C2|P2\(23) & ((!\C2|Add3~45\) # (!\C2|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(23),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~45\,
	combout => \C2|Add3~46_combout\,
	cout => \C2|Add3~47\);

-- Location: LCCOMB_X35_Y30_N26
\C2|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~26_combout\ = (\C2|P1\(13) & ((\C2|process_2~3_combout\ & (\C2|Add1~25\ & VCC)) # (!\C2|process_2~3_combout\ & (!\C2|Add1~25\)))) # (!\C2|P1\(13) & ((\C2|process_2~3_combout\ & (!\C2|Add1~25\)) # (!\C2|process_2~3_combout\ & ((\C2|Add1~25\) # 
-- (GND)))))
-- \C2|Add1~27\ = CARRY((\C2|P1\(13) & (!\C2|process_2~3_combout\ & !\C2|Add1~25\)) # (!\C2|P1\(13) & ((!\C2|Add1~25\) # (!\C2|process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(13),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~25\,
	combout => \C2|Add1~26_combout\,
	cout => \C2|Add1~27\);

-- Location: LCCOMB_X35_Y29_N6
\C2|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~38_combout\ = (\C2|P1\(19) & ((\C2|process_2~3_combout\ & (\C2|Add1~37\ & VCC)) # (!\C2|process_2~3_combout\ & (!\C2|Add1~37\)))) # (!\C2|P1\(19) & ((\C2|process_2~3_combout\ & (!\C2|Add1~37\)) # (!\C2|process_2~3_combout\ & ((\C2|Add1~37\) # 
-- (GND)))))
-- \C2|Add1~39\ = CARRY((\C2|P1\(19) & (!\C2|process_2~3_combout\ & !\C2|Add1~37\)) # (!\C2|P1\(19) & ((!\C2|Add1~37\) # (!\C2|process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(19),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~37\,
	combout => \C2|Add1~38_combout\,
	cout => \C2|Add1~39\);

-- Location: LCCOMB_X35_Y27_N4
\C2|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~0_combout\ = (\C2|P1\(3) & (\C2|P1\(2) $ (GND))) # (!\C2|P1\(3) & (!\C2|P1\(2) & VCC))
-- \C2|Add4~1\ = CARRY((\C2|P1\(3) & !\C2|P1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(3),
	datab => \C2|P1\(2),
	datad => VCC,
	combout => \C2|Add4~0_combout\,
	cout => \C2|Add4~1\);

-- Location: LCCOMB_X35_Y27_N14
\C2|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~10_combout\ = (\C2|P1\(8) & (!\C2|Add4~9\)) # (!\C2|P1\(8) & (\C2|Add4~9\ & VCC))
-- \C2|Add4~11\ = CARRY((\C2|P1\(8) & !\C2|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(8),
	datad => VCC,
	cin => \C2|Add4~9\,
	combout => \C2|Add4~10_combout\,
	cout => \C2|Add4~11\);

-- Location: LCCOMB_X35_Y27_N18
\C2|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~14_combout\ = (\C2|P1\(10) & (\C2|Add4~13\ & VCC)) # (!\C2|P1\(10) & (!\C2|Add4~13\))
-- \C2|Add4~15\ = CARRY((!\C2|P1\(10) & !\C2|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(10),
	datad => VCC,
	cin => \C2|Add4~13\,
	combout => \C2|Add4~14_combout\,
	cout => \C2|Add4~15\);

-- Location: LCCOMB_X35_Y27_N20
\C2|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~16_combout\ = (\C2|P1\(11) & ((GND) # (!\C2|Add4~15\))) # (!\C2|P1\(11) & (\C2|Add4~15\ $ (GND)))
-- \C2|Add4~17\ = CARRY((\C2|P1\(11)) # (!\C2|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(11),
	datad => VCC,
	cin => \C2|Add4~15\,
	combout => \C2|Add4~16_combout\,
	cout => \C2|Add4~17\);

-- Location: LCCOMB_X35_Y27_N26
\C2|Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~22_combout\ = (\C2|P1\(14) & (\C2|Add4~21\ & VCC)) # (!\C2|P1\(14) & (!\C2|Add4~21\))
-- \C2|Add4~23\ = CARRY((!\C2|P1\(14) & !\C2|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(14),
	datad => VCC,
	cin => \C2|Add4~21\,
	combout => \C2|Add4~22_combout\,
	cout => \C2|Add4~23\);

-- Location: LCCOMB_X35_Y27_N28
\C2|Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~24_combout\ = (\C2|P1\(15) & ((GND) # (!\C2|Add4~23\))) # (!\C2|P1\(15) & (\C2|Add4~23\ $ (GND)))
-- \C2|Add4~25\ = CARRY((\C2|P1\(15)) # (!\C2|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(15),
	datad => VCC,
	cin => \C2|Add4~23\,
	combout => \C2|Add4~24_combout\,
	cout => \C2|Add4~25\);

-- Location: LCCOMB_X35_Y26_N4
\C2|Add4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~32_combout\ = (\C2|P1\(19) & ((GND) # (!\C2|Add4~31\))) # (!\C2|P1\(19) & (\C2|Add4~31\ $ (GND)))
-- \C2|Add4~33\ = CARRY((\C2|P1\(19)) # (!\C2|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(19),
	datad => VCC,
	cin => \C2|Add4~31\,
	combout => \C2|Add4~32_combout\,
	cout => \C2|Add4~33\);

-- Location: LCCOMB_X35_Y26_N8
\C2|Add4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~36_combout\ = (\C2|P1\(21) & ((GND) # (!\C2|Add4~35\))) # (!\C2|P1\(21) & (\C2|Add4~35\ $ (GND)))
-- \C2|Add4~37\ = CARRY((\C2|P1\(21)) # (!\C2|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(21),
	datad => VCC,
	cin => \C2|Add4~35\,
	combout => \C2|Add4~36_combout\,
	cout => \C2|Add4~37\);

-- Location: LCCOMB_X35_Y26_N10
\C2|Add4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~38_combout\ = (\C2|P1\(22) & (\C2|Add4~37\ & VCC)) # (!\C2|P1\(22) & (!\C2|Add4~37\))
-- \C2|Add4~39\ = CARRY((!\C2|P1\(22) & !\C2|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(22),
	datad => VCC,
	cin => \C2|Add4~37\,
	combout => \C2|Add4~38_combout\,
	cout => \C2|Add4~39\);

-- Location: LCCOMB_X35_Y26_N14
\C2|Add4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~42_combout\ = (\C2|P1\(24) & (\C2|Add4~41\ & VCC)) # (!\C2|P1\(24) & (!\C2|Add4~41\))
-- \C2|Add4~43\ = CARRY((!\C2|P1\(24) & !\C2|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(24),
	datad => VCC,
	cin => \C2|Add4~41\,
	combout => \C2|Add4~42_combout\,
	cout => \C2|Add4~43\);

-- Location: LCCOMB_X35_Y26_N16
\C2|Add4~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~44_combout\ = (\C2|P1\(25) & ((GND) # (!\C2|Add4~43\))) # (!\C2|P1\(25) & (\C2|Add4~43\ $ (GND)))
-- \C2|Add4~45\ = CARRY((\C2|P1\(25)) # (!\C2|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(25),
	datad => VCC,
	cin => \C2|Add4~43\,
	combout => \C2|Add4~44_combout\,
	cout => \C2|Add4~45\);

-- Location: LCCOMB_X35_Y26_N22
\C2|Add4~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~50_combout\ = (\C2|P1\(28) & (\C2|Add4~49\ & VCC)) # (!\C2|P1\(28) & (!\C2|Add4~49\))
-- \C2|Add4~51\ = CARRY((!\C2|P1\(28) & !\C2|Add4~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(28),
	datad => VCC,
	cin => \C2|Add4~49\,
	combout => \C2|Add4~50_combout\,
	cout => \C2|Add4~51\);

-- Location: LCCOMB_X28_Y31_N8
\C2|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~4_combout\ = (\C2|P2\(5) & (\C2|Add6~3\ $ (GND))) # (!\C2|P2\(5) & (!\C2|Add6~3\ & VCC))
-- \C2|Add6~5\ = CARRY((\C2|P2\(5) & !\C2|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(5),
	datad => VCC,
	cin => \C2|Add6~3\,
	combout => \C2|Add6~4_combout\,
	cout => \C2|Add6~5\);

-- Location: LCCOMB_X28_Y31_N10
\C2|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~6_combout\ = (\C2|P2\(6) & (!\C2|Add6~5\)) # (!\C2|P2\(6) & (\C2|Add6~5\ & VCC))
-- \C2|Add6~7\ = CARRY((\C2|P2\(6) & !\C2|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(6),
	datad => VCC,
	cin => \C2|Add6~5\,
	combout => \C2|Add6~6_combout\,
	cout => \C2|Add6~7\);

-- Location: LCCOMB_X28_Y31_N12
\C2|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~8_combout\ = (\C2|P2\(7) & ((GND) # (!\C2|Add6~7\))) # (!\C2|P2\(7) & (\C2|Add6~7\ $ (GND)))
-- \C2|Add6~9\ = CARRY((\C2|P2\(7)) # (!\C2|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(7),
	datad => VCC,
	cin => \C2|Add6~7\,
	combout => \C2|Add6~8_combout\,
	cout => \C2|Add6~9\);

-- Location: LCCOMB_X28_Y31_N14
\C2|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~10_combout\ = (\C2|P2\(8) & (!\C2|Add6~9\)) # (!\C2|P2\(8) & (\C2|Add6~9\ & VCC))
-- \C2|Add6~11\ = CARRY((\C2|P2\(8) & !\C2|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(8),
	datad => VCC,
	cin => \C2|Add6~9\,
	combout => \C2|Add6~10_combout\,
	cout => \C2|Add6~11\);

-- Location: LCCOMB_X28_Y31_N30
\C2|Add6~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~26_combout\ = (\C2|P2\(16) & (\C2|Add6~25\ & VCC)) # (!\C2|P2\(16) & (!\C2|Add6~25\))
-- \C2|Add6~27\ = CARRY((!\C2|P2\(16) & !\C2|Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(16),
	datad => VCC,
	cin => \C2|Add6~25\,
	combout => \C2|Add6~26_combout\,
	cout => \C2|Add6~27\);

-- Location: LCCOMB_X28_Y30_N2
\C2|Add6~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~30_combout\ = (\C2|P2\(18) & (\C2|Add6~29\ & VCC)) # (!\C2|P2\(18) & (!\C2|Add6~29\))
-- \C2|Add6~31\ = CARRY((!\C2|P2\(18) & !\C2|Add6~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(18),
	datad => VCC,
	cin => \C2|Add6~29\,
	combout => \C2|Add6~30_combout\,
	cout => \C2|Add6~31\);

-- Location: LCCOMB_X28_Y30_N8
\C2|Add6~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~36_combout\ = (\C2|P2\(21) & ((GND) # (!\C2|Add6~35\))) # (!\C2|P2\(21) & (\C2|Add6~35\ $ (GND)))
-- \C2|Add6~37\ = CARRY((\C2|P2\(21)) # (!\C2|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(21),
	datad => VCC,
	cin => \C2|Add6~35\,
	combout => \C2|Add6~36_combout\,
	cout => \C2|Add6~37\);

-- Location: LCCOMB_X28_Y30_N10
\C2|Add6~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~38_combout\ = (\C2|P2\(22) & (\C2|Add6~37\ & VCC)) # (!\C2|P2\(22) & (!\C2|Add6~37\))
-- \C2|Add6~39\ = CARRY((!\C2|P2\(22) & !\C2|Add6~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(22),
	datad => VCC,
	cin => \C2|Add6~37\,
	combout => \C2|Add6~38_combout\,
	cout => \C2|Add6~39\);

-- Location: LCCOMB_X28_Y30_N12
\C2|Add6~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~40_combout\ = (\C2|P2\(23) & ((GND) # (!\C2|Add6~39\))) # (!\C2|P2\(23) & (\C2|Add6~39\ $ (GND)))
-- \C2|Add6~41\ = CARRY((\C2|P2\(23)) # (!\C2|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(23),
	datad => VCC,
	cin => \C2|Add6~39\,
	combout => \C2|Add6~40_combout\,
	cout => \C2|Add6~41\);

-- Location: LCCOMB_X28_Y30_N14
\C2|Add6~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~42_combout\ = (\C2|P2\(24) & (\C2|Add6~41\ & VCC)) # (!\C2|P2\(24) & (!\C2|Add6~41\))
-- \C2|Add6~43\ = CARRY((!\C2|P2\(24) & !\C2|Add6~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(24),
	datad => VCC,
	cin => \C2|Add6~41\,
	combout => \C2|Add6~42_combout\,
	cout => \C2|Add6~43\);

-- Location: LCCOMB_X28_Y30_N20
\C2|Add6~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~48_combout\ = (\C2|P2\(27) & ((GND) # (!\C2|Add6~47\))) # (!\C2|P2\(27) & (\C2|Add6~47\ $ (GND)))
-- \C2|Add6~49\ = CARRY((\C2|P2\(27)) # (!\C2|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(27),
	datad => VCC,
	cin => \C2|Add6~47\,
	combout => \C2|Add6~48_combout\,
	cout => \C2|Add6~49\);

-- Location: LCCOMB_X34_Y28_N2
\C2|Add14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~2_combout\ = (\C2|COUNT\(1) & (!\C2|Add14~1\)) # (!\C2|COUNT\(1) & ((\C2|Add14~1\) # (GND)))
-- \C2|Add14~3\ = CARRY((!\C2|Add14~1\) # (!\C2|COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(1),
	datad => VCC,
	cin => \C2|Add14~1\,
	combout => \C2|Add14~2_combout\,
	cout => \C2|Add14~3\);

-- Location: LCCOMB_X34_Y28_N4
\C2|Add14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~4_combout\ = (\C2|COUNT\(2) & (\C2|Add14~3\ $ (GND))) # (!\C2|COUNT\(2) & (!\C2|Add14~3\ & VCC))
-- \C2|Add14~5\ = CARRY((\C2|COUNT\(2) & !\C2|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(2),
	datad => VCC,
	cin => \C2|Add14~3\,
	combout => \C2|Add14~4_combout\,
	cout => \C2|Add14~5\);

-- Location: LCCOMB_X34_Y28_N6
\C2|Add14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~6_combout\ = (\C2|COUNT\(3) & (!\C2|Add14~5\)) # (!\C2|COUNT\(3) & ((\C2|Add14~5\) # (GND)))
-- \C2|Add14~7\ = CARRY((!\C2|Add14~5\) # (!\C2|COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(3),
	datad => VCC,
	cin => \C2|Add14~5\,
	combout => \C2|Add14~6_combout\,
	cout => \C2|Add14~7\);

-- Location: LCCOMB_X34_Y28_N10
\C2|Add14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~10_combout\ = (\C2|COUNT\(5) & (!\C2|Add14~9\)) # (!\C2|COUNT\(5) & ((\C2|Add14~9\) # (GND)))
-- \C2|Add14~11\ = CARRY((!\C2|Add14~9\) # (!\C2|COUNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(5),
	datad => VCC,
	cin => \C2|Add14~9\,
	combout => \C2|Add14~10_combout\,
	cout => \C2|Add14~11\);

-- Location: LCCOMB_X34_Y28_N22
\C2|Add14~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~23_combout\ = (\C2|COUNT\(11) & (!\C2|Add14~21\)) # (!\C2|COUNT\(11) & ((\C2|Add14~21\) # (GND)))
-- \C2|Add14~24\ = CARRY((!\C2|Add14~21\) # (!\C2|COUNT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(11),
	datad => VCC,
	cin => \C2|Add14~21\,
	combout => \C2|Add14~23_combout\,
	cout => \C2|Add14~24\);

-- Location: LCCOMB_X34_Y28_N24
\C2|Add14~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~26_combout\ = (\C2|COUNT\(12) & (\C2|Add14~24\ $ (GND))) # (!\C2|COUNT\(12) & (!\C2|Add14~24\ & VCC))
-- \C2|Add14~27\ = CARRY((\C2|COUNT\(12) & !\C2|Add14~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(12),
	datad => VCC,
	cin => \C2|Add14~24\,
	combout => \C2|Add14~26_combout\,
	cout => \C2|Add14~27\);

-- Location: LCCOMB_X34_Y27_N6
\C2|Add14~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~54_combout\ = (\C2|COUNT\(19) & (!\C2|Add14~52\)) # (!\C2|COUNT\(19) & ((\C2|Add14~52\) # (GND)))
-- \C2|Add14~55\ = CARRY((!\C2|Add14~52\) # (!\C2|COUNT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(19),
	datad => VCC,
	cin => \C2|Add14~52\,
	combout => \C2|Add14~54_combout\,
	cout => \C2|Add14~55\);

-- Location: LCCOMB_X34_Y27_N22
\C2|Add14~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~78_combout\ = (\C2|COUNT\(27) & (!\C2|Add14~76\)) # (!\C2|COUNT\(27) & ((\C2|Add14~76\) # (GND)))
-- \C2|Add14~79\ = CARRY((!\C2|Add14~76\) # (!\C2|COUNT\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(27),
	datad => VCC,
	cin => \C2|Add14~76\,
	combout => \C2|Add14~78_combout\,
	cout => \C2|Add14~79\);

-- Location: LCCOMB_X34_Y27_N28
\C2|Add14~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~87_combout\ = (\C2|COUNT\(30) & (\C2|Add14~85\ $ (GND))) # (!\C2|COUNT\(30) & (!\C2|Add14~85\ & VCC))
-- \C2|Add14~88\ = CARRY((\C2|COUNT\(30) & !\C2|Add14~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(30),
	datad => VCC,
	cin => \C2|Add14~85\,
	combout => \C2|Add14~87_combout\,
	cout => \C2|Add14~88\);

-- Location: LCCOMB_X34_Y27_N30
\C2|Add14~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~90_combout\ = \C2|Add14~88\ $ (!\C2|COUNT\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C2|COUNT\(31),
	cin => \C2|Add14~88\,
	combout => \C2|Add14~90_combout\);

-- Location: LCCOMB_X56_Y24_N2
\C2|Add16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~0_combout\ = \C2|process_4:cnt[0]~regout\ $ (VCC)
-- \C2|Add16~1\ = CARRY(\C2|process_4:cnt[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|process_4:cnt[0]~regout\,
	datad => VCC,
	combout => \C2|Add16~0_combout\,
	cout => \C2|Add16~1\);

-- Location: LCCOMB_X56_Y24_N4
\C2|Add16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~2_combout\ = (\C2|process_4:cnt[1]~regout\ & (!\C2|Add16~1\)) # (!\C2|process_4:cnt[1]~regout\ & ((\C2|Add16~1\) # (GND)))
-- \C2|Add16~3\ = CARRY((!\C2|Add16~1\) # (!\C2|process_4:cnt[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|process_4:cnt[1]~regout\,
	datad => VCC,
	cin => \C2|Add16~1\,
	combout => \C2|Add16~2_combout\,
	cout => \C2|Add16~3\);

-- Location: LCCOMB_X56_Y24_N6
\C2|Add16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~4_combout\ = (\C2|process_4:cnt[2]~regout\ & (\C2|Add16~3\ $ (GND))) # (!\C2|process_4:cnt[2]~regout\ & (!\C2|Add16~3\ & VCC))
-- \C2|Add16~5\ = CARRY((\C2|process_4:cnt[2]~regout\ & !\C2|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_4:cnt[2]~regout\,
	datad => VCC,
	cin => \C2|Add16~3\,
	combout => \C2|Add16~4_combout\,
	cout => \C2|Add16~5\);

-- Location: LCCOMB_X56_Y24_N8
\C2|Add16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~6_combout\ = (\C2|process_4:cnt[3]~regout\ & (!\C2|Add16~5\)) # (!\C2|process_4:cnt[3]~regout\ & ((\C2|Add16~5\) # (GND)))
-- \C2|Add16~7\ = CARRY((!\C2|Add16~5\) # (!\C2|process_4:cnt[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|process_4:cnt[3]~regout\,
	datad => VCC,
	cin => \C2|Add16~5\,
	combout => \C2|Add16~6_combout\,
	cout => \C2|Add16~7\);

-- Location: LCCOMB_X56_Y24_N10
\C2|Add16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~8_combout\ = (\C2|process_4:cnt[4]~regout\ & (\C2|Add16~7\ $ (GND))) # (!\C2|process_4:cnt[4]~regout\ & (!\C2|Add16~7\ & VCC))
-- \C2|Add16~9\ = CARRY((\C2|process_4:cnt[4]~regout\ & !\C2|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|process_4:cnt[4]~regout\,
	datad => VCC,
	cin => \C2|Add16~7\,
	combout => \C2|Add16~8_combout\,
	cout => \C2|Add16~9\);

-- Location: LCCOMB_X56_Y24_N12
\C2|Add16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~10_combout\ = (\C2|process_4:cnt[5]~regout\ & (!\C2|Add16~9\)) # (!\C2|process_4:cnt[5]~regout\ & ((\C2|Add16~9\) # (GND)))
-- \C2|Add16~11\ = CARRY((!\C2|Add16~9\) # (!\C2|process_4:cnt[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|process_4:cnt[5]~regout\,
	datad => VCC,
	cin => \C2|Add16~9\,
	combout => \C2|Add16~10_combout\,
	cout => \C2|Add16~11\);

-- Location: LCCOMB_X56_Y24_N14
\C2|Add16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~12_combout\ = (\C2|process_4:cnt[6]~regout\ & (\C2|Add16~11\ $ (GND))) # (!\C2|process_4:cnt[6]~regout\ & (!\C2|Add16~11\ & VCC))
-- \C2|Add16~13\ = CARRY((\C2|process_4:cnt[6]~regout\ & !\C2|Add16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|process_4:cnt[6]~regout\,
	datad => VCC,
	cin => \C2|Add16~11\,
	combout => \C2|Add16~12_combout\,
	cout => \C2|Add16~13\);

-- Location: LCCOMB_X56_Y24_N16
\C2|Add16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~14_combout\ = (\C2|process_4:cnt[7]~regout\ & (!\C2|Add16~13\)) # (!\C2|process_4:cnt[7]~regout\ & ((\C2|Add16~13\) # (GND)))
-- \C2|Add16~15\ = CARRY((!\C2|Add16~13\) # (!\C2|process_4:cnt[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_4:cnt[7]~regout\,
	datad => VCC,
	cin => \C2|Add16~13\,
	combout => \C2|Add16~14_combout\,
	cout => \C2|Add16~15\);

-- Location: LCCOMB_X56_Y24_N18
\C2|Add16~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~16_combout\ = (\C2|process_4:cnt[8]~regout\ & (\C2|Add16~15\ $ (GND))) # (!\C2|process_4:cnt[8]~regout\ & (!\C2|Add16~15\ & VCC))
-- \C2|Add16~17\ = CARRY((\C2|process_4:cnt[8]~regout\ & !\C2|Add16~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|process_4:cnt[8]~regout\,
	datad => VCC,
	cin => \C2|Add16~15\,
	combout => \C2|Add16~16_combout\,
	cout => \C2|Add16~17\);

-- Location: LCCOMB_X56_Y24_N20
\C2|Add16~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~18_combout\ = (\C2|process_4:cnt[9]~regout\ & (!\C2|Add16~17\)) # (!\C2|process_4:cnt[9]~regout\ & ((\C2|Add16~17\) # (GND)))
-- \C2|Add16~19\ = CARRY((!\C2|Add16~17\) # (!\C2|process_4:cnt[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_4:cnt[9]~regout\,
	datad => VCC,
	cin => \C2|Add16~17\,
	combout => \C2|Add16~18_combout\,
	cout => \C2|Add16~19\);

-- Location: LCCOMB_X56_Y24_N22
\C2|Add16~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~20_combout\ = (\C2|process_4:cnt[10]~regout\ & (\C2|Add16~19\ $ (GND))) # (!\C2|process_4:cnt[10]~regout\ & (!\C2|Add16~19\ & VCC))
-- \C2|Add16~21\ = CARRY((\C2|process_4:cnt[10]~regout\ & !\C2|Add16~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|process_4:cnt[10]~regout\,
	datad => VCC,
	cin => \C2|Add16~19\,
	combout => \C2|Add16~20_combout\,
	cout => \C2|Add16~21\);

-- Location: LCCOMB_X56_Y24_N24
\C2|Add16~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~22_combout\ = (\C2|process_4:cnt[11]~regout\ & (!\C2|Add16~21\)) # (!\C2|process_4:cnt[11]~regout\ & ((\C2|Add16~21\) # (GND)))
-- \C2|Add16~23\ = CARRY((!\C2|Add16~21\) # (!\C2|process_4:cnt[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_4:cnt[11]~regout\,
	datad => VCC,
	cin => \C2|Add16~21\,
	combout => \C2|Add16~22_combout\,
	cout => \C2|Add16~23\);

-- Location: LCCOMB_X56_Y24_N26
\C2|Add16~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~24_combout\ = (\C2|process_4:cnt[12]~regout\ & (\C2|Add16~23\ $ (GND))) # (!\C2|process_4:cnt[12]~regout\ & (!\C2|Add16~23\ & VCC))
-- \C2|Add16~25\ = CARRY((\C2|process_4:cnt[12]~regout\ & !\C2|Add16~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|process_4:cnt[12]~regout\,
	datad => VCC,
	cin => \C2|Add16~23\,
	combout => \C2|Add16~24_combout\,
	cout => \C2|Add16~25\);

-- Location: LCCOMB_X56_Y24_N28
\C2|Add16~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~26_combout\ = (\C2|process_4:cnt[13]~regout\ & (!\C2|Add16~25\)) # (!\C2|process_4:cnt[13]~regout\ & ((\C2|Add16~25\) # (GND)))
-- \C2|Add16~27\ = CARRY((!\C2|Add16~25\) # (!\C2|process_4:cnt[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|process_4:cnt[13]~regout\,
	datad => VCC,
	cin => \C2|Add16~25\,
	combout => \C2|Add16~26_combout\,
	cout => \C2|Add16~27\);

-- Location: LCCOMB_X56_Y24_N30
\C2|Add16~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add16~28_combout\ = \C2|Add16~27\ $ (!\C2|process_4:cnt[14]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C2|process_4:cnt[14]~regout\,
	cin => \C2|Add16~27\,
	combout => \C2|Add16~28_combout\);

-- Location: LCCOMB_X24_Y22_N0
\C2|Add15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~0_combout\ = \C2|cnt\(0) $ (VCC)
-- \C2|Add15~1\ = CARRY(\C2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|cnt\(0),
	datad => VCC,
	combout => \C2|Add15~0_combout\,
	cout => \C2|Add15~1\);

-- Location: LCCOMB_X24_Y22_N2
\C2|Add15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~2_combout\ = (\C2|cnt\(1) & (!\C2|Add15~1\)) # (!\C2|cnt\(1) & ((\C2|Add15~1\) # (GND)))
-- \C2|Add15~3\ = CARRY((!\C2|Add15~1\) # (!\C2|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|cnt\(1),
	datad => VCC,
	cin => \C2|Add15~1\,
	combout => \C2|Add15~2_combout\,
	cout => \C2|Add15~3\);

-- Location: LCCOMB_X24_Y22_N4
\C2|Add15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~4_combout\ = (\C2|cnt\(2) & (\C2|Add15~3\ $ (GND))) # (!\C2|cnt\(2) & (!\C2|Add15~3\ & VCC))
-- \C2|Add15~5\ = CARRY((\C2|cnt\(2) & !\C2|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|cnt\(2),
	datad => VCC,
	cin => \C2|Add15~3\,
	combout => \C2|Add15~4_combout\,
	cout => \C2|Add15~5\);

-- Location: LCCOMB_X24_Y22_N6
\C2|Add15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~6_combout\ = (\C2|cnt\(3) & (!\C2|Add15~5\)) # (!\C2|cnt\(3) & ((\C2|Add15~5\) # (GND)))
-- \C2|Add15~7\ = CARRY((!\C2|Add15~5\) # (!\C2|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|cnt\(3),
	datad => VCC,
	cin => \C2|Add15~5\,
	combout => \C2|Add15~6_combout\,
	cout => \C2|Add15~7\);

-- Location: LCCOMB_X24_Y22_N8
\C2|Add15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~8_combout\ = (\C2|cnt\(4) & (\C2|Add15~7\ $ (GND))) # (!\C2|cnt\(4) & (!\C2|Add15~7\ & VCC))
-- \C2|Add15~9\ = CARRY((\C2|cnt\(4) & !\C2|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|cnt\(4),
	datad => VCC,
	cin => \C2|Add15~7\,
	combout => \C2|Add15~8_combout\,
	cout => \C2|Add15~9\);

-- Location: LCCOMB_X24_Y22_N10
\C2|Add15~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~10_combout\ = (\C2|cnt\(5) & (!\C2|Add15~9\)) # (!\C2|cnt\(5) & ((\C2|Add15~9\) # (GND)))
-- \C2|Add15~11\ = CARRY((!\C2|Add15~9\) # (!\C2|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|cnt\(5),
	datad => VCC,
	cin => \C2|Add15~9\,
	combout => \C2|Add15~10_combout\,
	cout => \C2|Add15~11\);

-- Location: LCCOMB_X24_Y22_N12
\C2|Add15~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~12_combout\ = (\C2|cnt\(6) & (\C2|Add15~11\ $ (GND))) # (!\C2|cnt\(6) & (!\C2|Add15~11\ & VCC))
-- \C2|Add15~13\ = CARRY((\C2|cnt\(6) & !\C2|Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|cnt\(6),
	datad => VCC,
	cin => \C2|Add15~11\,
	combout => \C2|Add15~12_combout\,
	cout => \C2|Add15~13\);

-- Location: LCCOMB_X24_Y22_N14
\C2|Add15~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~14_combout\ = (\C2|cnt\(7) & (!\C2|Add15~13\)) # (!\C2|cnt\(7) & ((\C2|Add15~13\) # (GND)))
-- \C2|Add15~15\ = CARRY((!\C2|Add15~13\) # (!\C2|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|cnt\(7),
	datad => VCC,
	cin => \C2|Add15~13\,
	combout => \C2|Add15~14_combout\,
	cout => \C2|Add15~15\);

-- Location: LCCOMB_X24_Y22_N16
\C2|Add15~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~16_combout\ = (\C2|cnt\(8) & (\C2|Add15~15\ $ (GND))) # (!\C2|cnt\(8) & (!\C2|Add15~15\ & VCC))
-- \C2|Add15~17\ = CARRY((\C2|cnt\(8) & !\C2|Add15~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|cnt\(8),
	datad => VCC,
	cin => \C2|Add15~15\,
	combout => \C2|Add15~16_combout\,
	cout => \C2|Add15~17\);

-- Location: LCCOMB_X24_Y22_N18
\C2|Add15~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~18_combout\ = (\C2|cnt\(9) & (!\C2|Add15~17\)) # (!\C2|cnt\(9) & ((\C2|Add15~17\) # (GND)))
-- \C2|Add15~19\ = CARRY((!\C2|Add15~17\) # (!\C2|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|cnt\(9),
	datad => VCC,
	cin => \C2|Add15~17\,
	combout => \C2|Add15~18_combout\,
	cout => \C2|Add15~19\);

-- Location: LCCOMB_X24_Y22_N20
\C2|Add15~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~20_combout\ = (\C2|cnt\(10) & (\C2|Add15~19\ $ (GND))) # (!\C2|cnt\(10) & (!\C2|Add15~19\ & VCC))
-- \C2|Add15~21\ = CARRY((\C2|cnt\(10) & !\C2|Add15~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|cnt\(10),
	datad => VCC,
	cin => \C2|Add15~19\,
	combout => \C2|Add15~20_combout\,
	cout => \C2|Add15~21\);

-- Location: LCCOMB_X24_Y22_N22
\C2|Add15~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~22_combout\ = (\C2|cnt\(11) & (!\C2|Add15~21\)) # (!\C2|cnt\(11) & ((\C2|Add15~21\) # (GND)))
-- \C2|Add15~23\ = CARRY((!\C2|Add15~21\) # (!\C2|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|cnt\(11),
	datad => VCC,
	cin => \C2|Add15~21\,
	combout => \C2|Add15~22_combout\,
	cout => \C2|Add15~23\);

-- Location: LCCOMB_X24_Y22_N24
\C2|Add15~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~24_combout\ = (\C2|cnt\(12) & (\C2|Add15~23\ $ (GND))) # (!\C2|cnt\(12) & (!\C2|Add15~23\ & VCC))
-- \C2|Add15~25\ = CARRY((\C2|cnt\(12) & !\C2|Add15~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|cnt\(12),
	datad => VCC,
	cin => \C2|Add15~23\,
	combout => \C2|Add15~24_combout\,
	cout => \C2|Add15~25\);

-- Location: LCCOMB_X24_Y22_N26
\C2|Add15~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add15~26_combout\ = \C2|Add15~25\ $ (\C2|cnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C2|cnt\(13),
	cin => \C2|Add15~25\,
	combout => \C2|Add15~26_combout\);

-- Location: LCCOMB_X33_Y34_N8
\C3|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|process_0~0_combout\ = (\C3|HPOS\(3)) # ((\C3|HPOS\(2)) # ((\C3|HPOS\(0) & \C3|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(0),
	datab => \C3|HPOS\(3),
	datac => \C3|HPOS\(2),
	datad => \C3|HPOS\(1),
	combout => \C3|process_0~0_combout\);

-- Location: LCCOMB_X30_Y34_N2
\C3|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|process_0~2_combout\ = (!\C3|HPOS\(8) & (!\C3|HPOS\(10) & !\C3|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(8),
	datac => \C3|HPOS\(10),
	datad => \C3|HPOS\(9),
	combout => \C3|process_0~2_combout\);

-- Location: LCCOMB_X30_Y34_N20
\C3|LessThan59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan59~0_combout\ = (((!\C3|HPOS\(5) & \C3|LessThan16~0_combout\)) # (!\C3|HPOS\(7))) # (!\C3|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(6),
	datab => \C3|HPOS\(5),
	datac => \C3|LessThan16~0_combout\,
	datad => \C3|HPOS\(7),
	combout => \C3|LessThan59~0_combout\);

-- Location: LCCOMB_X30_Y34_N22
\C3|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|process_0~7_combout\ = (((!\C3|LessThan12~2_combout\ & \C3|LessThan12~0_combout\)) # (!\C3|LessThan59~0_combout\)) # (!\C3|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan12~2_combout\,
	datab => \C3|process_0~2_combout\,
	datac => \C3|LessThan59~0_combout\,
	datad => \C3|LessThan12~0_combout\,
	combout => \C3|process_0~7_combout\);

-- Location: LCCOMB_X29_Y33_N0
\C3|R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~0_combout\ = (\C3|LessThan41~0_combout\ & ((\C3|VPOS\(4)) # ((\C3|VPOS\(3)) # (\C3|VPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(4),
	datab => \C3|VPOS\(3),
	datac => \C3|LessThan41~0_combout\,
	datad => \C3|VPOS\(2),
	combout => \C3|R~0_combout\);

-- Location: LCCOMB_X28_Y33_N4
\C3|R~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~1_combout\ = (\C3|LessThan3~0_combout\ & ((\C3|VPOS\(6)) # ((\C3|VPOS\(5)) # (!\C3|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(6),
	datab => \C3|VPOS\(5),
	datac => \C3|LessThan3~0_combout\,
	datad => \C3|process_0~5_combout\,
	combout => \C3|R~1_combout\);

-- Location: LCCOMB_X29_Y33_N26
\C3|R~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~2_combout\ = (\C3|process_0~7_combout\ & ((\C3|VPOS\(7)) # ((\C3|R~0_combout\) # (!\C3|R~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(7),
	datab => \C3|R~0_combout\,
	datac => \C3|R~1_combout\,
	datad => \C3|process_0~7_combout\,
	combout => \C3|R~2_combout\);

-- Location: LCCOMB_X30_Y29_N0
\C3|LessThan71~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~1_combout\ = (\C3|Add10~28_combout\) # ((\C3|Add10~24_combout\) # ((\C3|Add10~22_combout\) # (\C3|Add10~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add10~28_combout\,
	datab => \C3|Add10~24_combout\,
	datac => \C3|Add10~22_combout\,
	datad => \C3|Add10~26_combout\,
	combout => \C3|LessThan71~1_combout\);

-- Location: LCFF_X35_Y25_N21
\C2|BH[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add11~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(29));

-- Location: LCFF_X33_Y26_N21
\C2|BH[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~81_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(15));

-- Location: LCFF_X34_Y26_N17
\C2|BH[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add11~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(14));

-- Location: LCCOMB_X34_Y24_N28
\C3|draw~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~6_combout\ = (!\C3|Add6~38_combout\ & (!\C3|Add6~36_combout\ & (!\C3|Add6~42_combout\ & !\C3|Add6~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add6~38_combout\,
	datab => \C3|Add6~36_combout\,
	datac => \C3|Add6~42_combout\,
	datad => \C3|Add6~40_combout\,
	combout => \C3|draw~6_combout\);

-- Location: LCCOMB_X32_Y31_N30
\C3|LessThan70~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~20_combout\ = (!\C3|Add9~16_combout\ & (!\C3|Add9~18_combout\ & (\C3|LessThan70~18_combout\ & !\C3|Add9~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~16_combout\,
	datab => \C3|Add9~18_combout\,
	datac => \C3|LessThan70~18_combout\,
	datad => \C3|Add9~20_combout\,
	combout => \C3|LessThan70~20_combout\);

-- Location: LCCOMB_X31_Y31_N16
\C3|LessThan70~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~21_combout\ = (!\C3|Add9~22_combout\ & (!\C3|Add9~24_combout\ & (!\C3|Add9~28_combout\ & !\C3|Add9~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~22_combout\,
	datab => \C3|Add9~24_combout\,
	datac => \C3|Add9~28_combout\,
	datad => \C3|Add9~26_combout\,
	combout => \C3|LessThan70~21_combout\);

-- Location: LCCOMB_X32_Y31_N20
\C3|LessThan70~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~22_combout\ = (!\C3|Add9~34_combout\ & (!\C3|Add9~32_combout\ & (!\C3|Add9~36_combout\ & !\C3|Add9~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~34_combout\,
	datab => \C3|Add9~32_combout\,
	datac => \C3|Add9~36_combout\,
	datad => \C3|Add9~30_combout\,
	combout => \C3|LessThan70~22_combout\);

-- Location: LCCOMB_X32_Y31_N6
\C3|LessThan70~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~23_combout\ = (!\C3|Add9~40_combout\ & (!\C3|Add9~42_combout\ & (!\C3|Add9~38_combout\ & !\C3|Add9~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~40_combout\,
	datab => \C3|Add9~42_combout\,
	datac => \C3|Add9~38_combout\,
	datad => \C3|Add9~44_combout\,
	combout => \C3|LessThan70~23_combout\);

-- Location: LCCOMB_X32_Y31_N4
\C3|LessThan70~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~24_combout\ = (\C3|LessThan70~23_combout\ & (\C3|LessThan70~21_combout\ & (\C3|LessThan70~22_combout\ & \C3|LessThan70~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan70~23_combout\,
	datab => \C3|LessThan70~21_combout\,
	datac => \C3|LessThan70~22_combout\,
	datad => \C3|LessThan70~20_combout\,
	combout => \C3|LessThan70~24_combout\);

-- Location: LCCOMB_X31_Y30_N2
\C3|LessThan69~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~22_combout\ = (\C3|Add8~18_combout\) # ((\C3|Add8~20_combout\) # ((\C3|Add8~16_combout\) # (\C3|LessThan69~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add8~18_combout\,
	datab => \C3|Add8~20_combout\,
	datac => \C3|Add8~16_combout\,
	datad => \C3|LessThan69~20_combout\,
	combout => \C3|LessThan69~22_combout\);

-- Location: LCCOMB_X32_Y26_N0
\C3|LessThan69~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~23_combout\ = (\C3|Add8~26_combout\) # ((\C3|Add8~24_combout\) # ((\C3|Add8~22_combout\) # (\C3|Add8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add8~26_combout\,
	datab => \C3|Add8~24_combout\,
	datac => \C3|Add8~22_combout\,
	datad => \C3|Add8~28_combout\,
	combout => \C3|LessThan69~23_combout\);

-- Location: LCCOMB_X32_Y25_N30
\C3|LessThan69~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~24_combout\ = (\C3|Add8~34_combout\) # ((\C3|Add8~32_combout\) # ((\C3|Add8~36_combout\) # (\C3|Add8~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add8~34_combout\,
	datab => \C3|Add8~32_combout\,
	datac => \C3|Add8~36_combout\,
	datad => \C3|Add8~30_combout\,
	combout => \C3|LessThan69~24_combout\);

-- Location: LCCOMB_X31_Y25_N0
\C3|LessThan69~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~25_combout\ = (\C3|Add8~44_combout\) # ((\C3|Add8~42_combout\) # ((\C3|Add8~38_combout\) # (\C3|Add8~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add8~44_combout\,
	datab => \C3|Add8~42_combout\,
	datac => \C3|Add8~38_combout\,
	datad => \C3|Add8~40_combout\,
	combout => \C3|LessThan69~25_combout\);

-- Location: LCCOMB_X31_Y35_N10
\C3|LessThan69~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~26_combout\ = (\C3|LessThan69~22_combout\) # ((\C3|LessThan69~23_combout\) # ((\C3|LessThan69~24_combout\) # (\C3|LessThan69~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan69~22_combout\,
	datab => \C3|LessThan69~23_combout\,
	datac => \C3|LessThan69~24_combout\,
	datad => \C3|LessThan69~25_combout\,
	combout => \C3|LessThan69~26_combout\);

-- Location: LCCOMB_X31_Y35_N0
\C3|R~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~3_combout\ = (!\C3|LessThan69~26_combout\ & !\C3|LessThan69~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan69~26_combout\,
	datad => \C3|LessThan69~28_combout\,
	combout => \C3|R~3_combout\);

-- Location: LCCOMB_X31_Y35_N24
\C3|R~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~4_combout\ = (\C3|R~2_combout\ & (((\C3|R~3_combout\) # (!\C3|draw~13_combout\)) # (!\C3|LessThan71~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|R~2_combout\,
	datab => \C3|LessThan71~26_combout\,
	datac => \C3|draw~13_combout\,
	datad => \C3|R~3_combout\,
	combout => \C3|R~4_combout\);

-- Location: LCCOMB_X33_Y34_N2
\C3|draw~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~14_combout\ = ((\C3|HPOS\(9)) # (\C3|HPOS\(8) $ (!\C3|HPOS\(7)))) # (!\C3|HPOS\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(10),
	datab => \C3|HPOS\(9),
	datac => \C3|HPOS\(8),
	datad => \C3|HPOS\(7),
	combout => \C3|draw~14_combout\);

-- Location: LCCOMB_X30_Y33_N10
\C3|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan3~1_combout\ = (!\C3|VPOS\(2) & !\C3|VPOS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|VPOS\(2),
	datad => \C3|VPOS\(1),
	combout => \C3|LessThan3~1_combout\);

-- Location: LCCOMB_X33_Y33_N14
\C3|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan8~0_combout\ = (\C3|VPOS\(3) & (\C3|VPOS\(8) & (!\C3|process_0~4_combout\ & \C3|VPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(3),
	datab => \C3|VPOS\(8),
	datac => \C3|process_0~4_combout\,
	datad => \C3|VPOS\(4),
	combout => \C3|LessThan8~0_combout\);

-- Location: LCCOMB_X32_Y33_N2
\C3|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan6~0_combout\ = (\C3|VPOS\(6) & ((\C3|VPOS\(5)) # ((\C3|VPOS\(3) & \C3|VPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(3),
	datab => \C3|VPOS\(4),
	datac => \C3|VPOS\(5),
	datad => \C3|VPOS\(6),
	combout => \C3|LessThan6~0_combout\);

-- Location: LCCOMB_X33_Y33_N10
\C3|draw~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~24_combout\ = (\C3|VPOS\(3)) # ((\C3|VPOS\(1) & (\C3|VPOS\(0) & \C3|VPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(1),
	datab => \C3|VPOS\(3),
	datac => \C3|VPOS\(0),
	datad => \C3|VPOS\(2),
	combout => \C3|draw~24_combout\);

-- Location: LCCOMB_X35_Y32_N20
\C3|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal6~0_combout\ = (!\C2|SCORE2\(3) & (!\C2|SCORE2\(6) & (!\C2|SCORE2\(5) & !\C2|SCORE2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(3),
	datab => \C2|SCORE2\(6),
	datac => \C2|SCORE2\(5),
	datad => \C2|SCORE2\(4),
	combout => \C3|Equal6~0_combout\);

-- Location: LCCOMB_X35_Y32_N22
\C3|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal6~1_combout\ = (!\C2|SCORE2\(8) & (!\C2|SCORE2\(10) & (!\C2|SCORE2\(7) & !\C2|SCORE2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(8),
	datab => \C2|SCORE2\(10),
	datac => \C2|SCORE2\(7),
	datad => \C2|SCORE2\(9),
	combout => \C3|Equal6~1_combout\);

-- Location: LCCOMB_X35_Y32_N8
\C3|Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal6~2_combout\ = (!\C2|SCORE2\(13) & (!\C2|SCORE2\(14) & (!\C2|SCORE2\(12) & !\C2|SCORE2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(13),
	datab => \C2|SCORE2\(14),
	datac => \C2|SCORE2\(12),
	datad => \C2|SCORE2\(11),
	combout => \C3|Equal6~2_combout\);

-- Location: LCCOMB_X35_Y32_N30
\C3|Equal6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal6~3_combout\ = (!\C2|SCORE2\(17) & (!\C2|SCORE2\(15) & (!\C2|SCORE2\(16) & !\C2|SCORE2\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(17),
	datab => \C2|SCORE2\(15),
	datac => \C2|SCORE2\(16),
	datad => \C2|SCORE2\(18),
	combout => \C3|Equal6~3_combout\);

-- Location: LCCOMB_X35_Y32_N12
\C3|Equal6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal6~4_combout\ = (\C3|Equal6~0_combout\ & (\C3|Equal6~1_combout\ & (\C3|Equal6~2_combout\ & \C3|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Equal6~0_combout\,
	datab => \C3|Equal6~1_combout\,
	datac => \C3|Equal6~2_combout\,
	datad => \C3|Equal6~3_combout\,
	combout => \C3|Equal6~4_combout\);

-- Location: LCCOMB_X35_Y32_N28
\C3|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~3_combout\ = ((\C2|SCORE2\(1) & ((\C2|SCORE2\(2)))) # (!\C2|SCORE2\(1) & ((\C2|SCORE2\(0)) # (!\C2|SCORE2\(2))))) # (!\C3|Equal6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(1),
	datab => \C2|SCORE2\(0),
	datac => \C3|Equal6~9_combout\,
	datad => \C2|SCORE2\(2),
	combout => \C3|Selector1~3_combout\);

-- Location: LCCOMB_X34_Y35_N14
\C3|draw~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~29_combout\ = (!\C3|draw~15_combout\ & \C3|draw~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|draw~15_combout\,
	datad => \C3|draw~23_combout\,
	combout => \C3|draw~29_combout\);

-- Location: LCCOMB_X35_Y32_N0
\C3|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal7~0_combout\ = (!\C2|SCORE2\(1) & (!\C2|SCORE2\(2) & (!\C2|SCORE2\(31) & \C3|Equal6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(1),
	datab => \C2|SCORE2\(2),
	datac => \C2|SCORE2\(31),
	datad => \C3|Equal6~8_combout\,
	combout => \C3|Equal7~0_combout\);

-- Location: LCCOMB_X34_Y35_N6
\C3|Selector1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~14_combout\ = (!\C3|draw~21_combout\ & (\C3|draw~26_combout\ & \C3|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|draw~21_combout\,
	datac => \C3|draw~26_combout\,
	datad => \C3|Equal7~0_combout\,
	combout => \C3|Selector1~14_combout\);

-- Location: LCCOMB_X35_Y32_N18
\C3|Selector1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~15_combout\ = (\C2|SCORE2\(1)) # ((\C2|SCORE2\(0) $ (!\C2|SCORE2\(2))) # (!\C3|Equal6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(1),
	datab => \C2|SCORE2\(0),
	datac => \C3|Equal6~9_combout\,
	datad => \C2|SCORE2\(2),
	combout => \C3|Selector1~15_combout\);

-- Location: LCCOMB_X34_Y35_N20
\C3|Selector1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~16_combout\ = (\C3|Selector1~14_combout\) # ((!\C3|draw~21_combout\ & (\C3|draw~22_combout\ & !\C3|Selector1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector1~14_combout\,
	datab => \C3|draw~21_combout\,
	datac => \C3|draw~22_combout\,
	datad => \C3|Selector1~15_combout\,
	combout => \C3|Selector1~16_combout\);

-- Location: LCCOMB_X38_Y32_N20
\C3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal0~0_combout\ = (!\C2|SCORE1\(5) & (!\C2|SCORE1\(3) & (!\C2|SCORE1\(4) & !\C2|SCORE1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(5),
	datab => \C2|SCORE1\(3),
	datac => \C2|SCORE1\(4),
	datad => \C2|SCORE1\(6),
	combout => \C3|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y32_N0
\C3|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~0_combout\ = ((\C2|SCORE1\(2) & \C2|SCORE1\(1))) # (!\C3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(2),
	datac => \C2|SCORE1\(1),
	datad => \C3|Equal0~9_combout\,
	combout => \C3|Selector0~0_combout\);

-- Location: LCCOMB_X30_Y34_N8
\C3|LessThan14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan14~0_combout\ = (\C3|HPOS\(3) & ((\C3|HPOS\(0)) # ((\C3|HPOS\(1)) # (\C3|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(0),
	datab => \C3|HPOS\(3),
	datac => \C3|HPOS\(1),
	datad => \C3|HPOS\(2),
	combout => \C3|LessThan14~0_combout\);

-- Location: LCCOMB_X30_Y34_N10
\C3|R~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~10_combout\ = (\C3|HPOS\(5)) # ((\C3|LessThan75~0_combout\) # ((!\C3|HPOS\(4) & !\C3|LessThan14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(4),
	datab => \C3|HPOS\(5),
	datac => \C3|LessThan14~0_combout\,
	datad => \C3|LessThan75~0_combout\,
	combout => \C3|R~10_combout\);

-- Location: LCCOMB_X31_Y33_N4
\C3|draw~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~36_combout\ = (\C3|VPOS\(3) & (!\C3|VPOS\(2) & (!\C3|VPOS\(0) & !\C3|VPOS\(1)))) # (!\C3|VPOS\(3) & (\C3|VPOS\(2) & ((\C3|VPOS\(0)) # (\C3|VPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(3),
	datab => \C3|VPOS\(2),
	datac => \C3|VPOS\(0),
	datad => \C3|VPOS\(1),
	combout => \C3|draw~36_combout\);

-- Location: LCCOMB_X33_Y34_N4
\C3|draw~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~38_combout\ = (\C3|HPOS\(8) & ((\C3|HPOS\(7)) # ((\C3|HPOS\(5)) # (\C3|HPOS\(6))))) # (!\C3|HPOS\(8) & (!\C3|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(8),
	datab => \C3|HPOS\(7),
	datac => \C3|HPOS\(5),
	datad => \C3|HPOS\(6),
	combout => \C3|draw~38_combout\);

-- Location: LCCOMB_X33_Y34_N16
\C3|draw~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~41_combout\ = ((\C3|HPOS\(6) & ((\C3|HPOS\(5)) # (\C3|HPOS\(4))))) # (!\C3|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(5),
	datab => \C3|HPOS\(7),
	datac => \C3|HPOS\(6),
	datad => \C3|HPOS\(4),
	combout => \C3|draw~41_combout\);

-- Location: LCCOMB_X31_Y34_N24
\C3|R~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~14_combout\ = (\C3|HPOS\(8) & !\C3|HPOS\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|HPOS\(8),
	datad => \C3|HPOS\(10),
	combout => \C3|R~14_combout\);

-- Location: LCCOMB_X32_Y34_N2
\C3|R~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~15_combout\ = (\C3|draw~44_combout\ & ((\C3|draw~42_combout\) # ((!\C3|draw~22_combout\ & !\C3|draw~26_combout\)))) # (!\C3|draw~44_combout\ & (!\C3|draw~22_combout\ & (!\C3|draw~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~44_combout\,
	datab => \C3|draw~22_combout\,
	datac => \C3|draw~26_combout\,
	datad => \C3|draw~42_combout\,
	combout => \C3|R~15_combout\);

-- Location: LCCOMB_X31_Y34_N16
\C3|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~3_combout\ = (\C3|Selector0~0_combout\ & (((\C3|draw~32_combout\) # (!\C3|Selector0~2_combout\)) # (!\C3|R~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|R~15_combout\,
	datab => \C3|draw~32_combout\,
	datac => \C3|Selector0~0_combout\,
	datad => \C3|Selector0~2_combout\,
	combout => \C3|Selector0~3_combout\);

-- Location: LCCOMB_X33_Y34_N22
\C3|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan2~0_combout\ = (\C3|VPOS\(0) & (\C3|VPOS\(4) & (\C3|VPOS\(2) & \C3|VPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(0),
	datab => \C3|VPOS\(4),
	datac => \C3|VPOS\(2),
	datad => \C3|VPOS\(1),
	combout => \C3|LessThan2~0_combout\);

-- Location: LCCOMB_X33_Y34_N12
\C3|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan2~1_combout\ = (\C3|VPOS\(6)) # ((\C3|VPOS\(5)) # ((\C3|VPOS\(4) & \C3|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(6),
	datab => \C3|VPOS\(4),
	datac => \C3|VPOS\(3),
	datad => \C3|VPOS\(5),
	combout => \C3|LessThan2~1_combout\);

-- Location: LCCOMB_X33_Y34_N30
\C3|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan2~2_combout\ = ((\C3|VPOS\(7) & ((\C3|LessThan2~1_combout\) # (\C3|LessThan2~0_combout\)))) # (!\C3|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan2~1_combout\,
	datab => \C3|VPOS\(7),
	datac => \C3|LessThan3~0_combout\,
	datad => \C3|LessThan2~0_combout\,
	combout => \C3|LessThan2~2_combout\);

-- Location: LCCOMB_X32_Y34_N4
\C3|draw~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~45_combout\ = (!\C3|draw~44_combout\ & (\C3|LessThan3~0_combout\ & (!\C3|LessThan41~2_combout\ & \C3|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~44_combout\,
	datab => \C3|LessThan3~0_combout\,
	datac => \C3|LessThan41~2_combout\,
	datad => \C3|LessThan2~2_combout\,
	combout => \C3|draw~45_combout\);

-- Location: LCCOMB_X31_Y34_N6
\C3|Selector0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~7_combout\ = (!\C3|draw~45_combout\ & (\C3|Selector0~1_combout\ & ((\C3|draw~44_combout\) # (!\C3|draw~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~45_combout\,
	datab => \C3|draw~22_combout\,
	datac => \C3|draw~44_combout\,
	datad => \C3|Selector0~1_combout\,
	combout => \C3|Selector0~7_combout\);

-- Location: LCCOMB_X34_Y32_N18
\C3|Selector0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~9_combout\ = ((\C2|SCORE1\(1) $ (!\C2|SCORE1\(2))) # (!\C3|Equal0~9_combout\)) # (!\C2|SCORE1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(0),
	datab => \C2|SCORE1\(1),
	datac => \C2|SCORE1\(2),
	datad => \C3|Equal0~9_combout\,
	combout => \C3|Selector0~9_combout\);

-- Location: LCCOMB_X34_Y35_N16
\C3|R~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~16_combout\ = (\C3|draw~28_combout\ & ((\C3|draw~26_combout\) # (\C3|draw~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|draw~26_combout\,
	datac => \C3|draw~22_combout\,
	datad => \C3|draw~28_combout\,
	combout => \C3|R~16_combout\);

-- Location: LCCOMB_X34_Y35_N30
\C3|R~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~17_combout\ = ((\C3|R~16_combout\) # (!\C3|R~5_combout\)) # (!\C3|R~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|R~6_combout\,
	datac => \C3|R~16_combout\,
	datad => \C3|R~5_combout\,
	combout => \C3|R~17_combout\);

-- Location: LCCOMB_X31_Y32_N6
\C3|draw~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~47_combout\ = (\C3|HPOS\(6) & ((\C3|HPOS\(1)) # ((\C3|HPOS\(2))))) # (!\C3|HPOS\(6) & (\C3|HPOS\(1) & (\C3|HPOS\(0) & \C3|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(6),
	datab => \C3|HPOS\(1),
	datac => \C3|HPOS\(0),
	datad => \C3|HPOS\(2),
	combout => \C3|draw~47_combout\);

-- Location: LCCOMB_X30_Y33_N14
\C3|LessThan49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan49~0_combout\ = (\C3|VPOS\(4) & (\C3|VPOS\(2) & \C3|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(4),
	datac => \C3|VPOS\(2),
	datad => \C3|VPOS\(3),
	combout => \C3|LessThan49~0_combout\);

-- Location: LCCOMB_X30_Y33_N24
\C3|LessThan49~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan49~1_combout\ = ((\C3|LessThan49~0_combout\ & ((\C3|VPOS\(0)) # (\C3|VPOS\(1))))) # (!\C3|LessThan46~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan46~0_combout\,
	datab => \C3|LessThan49~0_combout\,
	datac => \C3|VPOS\(0),
	datad => \C3|VPOS\(1),
	combout => \C3|LessThan49~1_combout\);

-- Location: LCCOMB_X30_Y33_N6
\C3|LessThan50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan50~0_combout\ = (!\C3|VPOS\(4) & (!\C3|VPOS\(7) & (!\C3|VPOS\(8) & !\C3|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(4),
	datab => \C3|VPOS\(7),
	datac => \C3|VPOS\(8),
	datad => \C3|VPOS\(5),
	combout => \C3|LessThan50~0_combout\);

-- Location: LCCOMB_X30_Y33_N28
\C3|LessThan50~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan50~1_combout\ = (\C3|LessThan50~0_combout\ & (((!\C3|VPOS\(2)) # (!\C3|VPOS\(3))) # (!\C3|VPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(1),
	datab => \C3|VPOS\(3),
	datac => \C3|VPOS\(2),
	datad => \C3|LessThan50~0_combout\,
	combout => \C3|LessThan50~1_combout\);

-- Location: LCCOMB_X30_Y33_N18
\C3|LessThan50~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan50~2_combout\ = ((!\C3|VPOS\(6) & (!\C3|VPOS\(8) & !\C3|VPOS\(7)))) # (!\C3|VPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(6),
	datab => \C3|VPOS\(8),
	datac => \C3|VPOS\(9),
	datad => \C3|VPOS\(7),
	combout => \C3|LessThan50~2_combout\);

-- Location: LCCOMB_X30_Y33_N8
\C3|draw~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~52_combout\ = (\C3|LessThan49~1_combout\ & (\C3|VPOS\(9) & ((\C3|LessThan50~1_combout\) # (\C3|LessThan50~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan49~1_combout\,
	datab => \C3|LessThan50~1_combout\,
	datac => \C3|VPOS\(9),
	datad => \C3|LessThan50~2_combout\,
	combout => \C3|draw~52_combout\);

-- Location: LCCOMB_X31_Y32_N4
\C3|LessThan42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan42~0_combout\ = (\C3|LessThan46~0_combout\ & (((!\C3|VPOS\(3) & \C3|LessThan3~1_combout\)) # (!\C3|VPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(3),
	datab => \C3|LessThan3~1_combout\,
	datac => \C3|LessThan46~0_combout\,
	datad => \C3|VPOS\(4),
	combout => \C3|LessThan42~0_combout\);

-- Location: LCCOMB_X32_Y32_N26
\C3|draw~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~56_combout\ = (\C3|VPOS\(9) & (((\C3|LessThan42~0_combout\)))) # (!\C3|VPOS\(9) & (\C3|VPOS\(8) & ((\C3|LessThan41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(9),
	datab => \C3|VPOS\(8),
	datac => \C3|LessThan42~0_combout\,
	datad => \C3|LessThan41~2_combout\,
	combout => \C3|draw~56_combout\);

-- Location: LCCOMB_X34_Y34_N18
\C3|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan4~1_combout\ = (\C3|HPOS\(4)) # (((\C3|LessThan75~0_combout\ & \C3|HPOS\(3))) # (!\C3|LessThan11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan75~0_combout\,
	datab => \C3|HPOS\(4),
	datac => \C3|HPOS\(3),
	datad => \C3|LessThan11~0_combout\,
	combout => \C3|LessThan4~1_combout\);

-- Location: LCCOMB_X32_Y32_N20
\C3|draw~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~57_combout\ = (\C3|HPOS\(8) & (\C3|draw~27_combout\ & (\C3|LessThan4~1_combout\ & \C3|draw~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(8),
	datab => \C3|draw~27_combout\,
	datac => \C3|LessThan4~1_combout\,
	datad => \C3|draw~56_combout\,
	combout => \C3|draw~57_combout\);

-- Location: LCCOMB_X30_Y33_N2
\C3|LessThan50~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan50~3_combout\ = (!\C3|VPOS\(8) & !\C3|VPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|VPOS\(8),
	datad => \C3|VPOS\(7),
	combout => \C3|LessThan50~3_combout\);

-- Location: LCCOMB_X30_Y33_N4
\C3|LessThan52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan52~0_combout\ = ((\C3|LessThan3~1_combout\ & (!\C3|VPOS\(3) & !\C3|VPOS\(4)))) # (!\C3|LessThan41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan3~1_combout\,
	datab => \C3|VPOS\(3),
	datac => \C3|VPOS\(4),
	datad => \C3|LessThan41~0_combout\,
	combout => \C3|LessThan52~0_combout\);

-- Location: LCCOMB_X33_Y33_N18
\C3|LessThan51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan51~0_combout\ = (\C3|VPOS\(2) & (\C3|VPOS\(3) & (\C3|VPOS\(1) & \C3|VPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(2),
	datab => \C3|VPOS\(3),
	datac => \C3|VPOS\(1),
	datad => \C3|VPOS\(0),
	combout => \C3|LessThan51~0_combout\);

-- Location: LCCOMB_X34_Y33_N22
\C3|LessThan51~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan51~1_combout\ = (\C3|VPOS\(6) & ((\C3|VPOS\(5)) # ((\C3|VPOS\(4)) # (\C3|LessThan51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(5),
	datab => \C3|VPOS\(4),
	datac => \C3|VPOS\(6),
	datad => \C3|LessThan51~0_combout\,
	combout => \C3|LessThan51~1_combout\);

-- Location: LCCOMB_X30_Y33_N26
\C3|draw~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~58_combout\ = (\C3|VPOS\(9) & (\C3|LessThan52~0_combout\ & (\C3|LessThan51~1_combout\ & \C3|LessThan50~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(9),
	datab => \C3|LessThan52~0_combout\,
	datac => \C3|LessThan51~1_combout\,
	datad => \C3|LessThan50~3_combout\,
	combout => \C3|draw~58_combout\);

-- Location: LCCOMB_X31_Y32_N14
\C3|R~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~21_combout\ = (\C3|HPOS\(3)) # ((\C3|HPOS\(2) & ((\C3|HPOS\(1)) # (\C3|HPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(1),
	datab => \C3|HPOS\(3),
	datac => \C3|HPOS\(0),
	datad => \C3|HPOS\(2),
	combout => \C3|R~21_combout\);

-- Location: LCCOMB_X32_Y32_N2
\C3|R~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~22_combout\ = (\C3|R~21_combout\ & (\C3|HPOS\(4) & (\C3|HPOS\(6) & \C3|HPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|R~21_combout\,
	datab => \C3|HPOS\(4),
	datac => \C3|HPOS\(6),
	datad => \C3|HPOS\(5),
	combout => \C3|R~22_combout\);

-- Location: LCCOMB_X32_Y32_N16
\C3|R~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~23_combout\ = (\C3|HPOS\(8) & (\C3|R~22_combout\ & ((\C3|HPOS\(7))))) # (!\C3|HPOS\(8) & (((\C3|LessThan13~0_combout\ & !\C3|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(8),
	datab => \C3|R~22_combout\,
	datac => \C3|LessThan13~0_combout\,
	datad => \C3|HPOS\(7),
	combout => \C3|R~23_combout\);

-- Location: LCCOMB_X32_Y32_N22
\C3|R~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~24_combout\ = (\C3|R~23_combout\ & (\C3|draw~56_combout\ & (\C3|HPOS\(7) $ (\C3|HPOS\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(7),
	datab => \C3|HPOS\(9),
	datac => \C3|R~23_combout\,
	datad => \C3|draw~56_combout\,
	combout => \C3|R~24_combout\);

-- Location: LCCOMB_X31_Y32_N8
\C3|R~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~25_combout\ = (!\C3|HPOS\(6) & (!\C3|HPOS\(8) & (!\C3|HPOS\(7) & \C3|HPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(6),
	datab => \C3|HPOS\(8),
	datac => \C3|HPOS\(7),
	datad => \C3|HPOS\(9),
	combout => \C3|R~25_combout\);

-- Location: LCCOMB_X31_Y32_N30
\C3|R~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~26_combout\ = (\C3|R~25_combout\ & ((\C3|HPOS\(4) & ((!\C3|HPOS\(5)))) # (!\C3|HPOS\(4) & ((\C3|LessThan14~0_combout\) # (\C3|HPOS\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(4),
	datab => \C3|R~25_combout\,
	datac => \C3|LessThan14~0_combout\,
	datad => \C3|HPOS\(5),
	combout => \C3|R~26_combout\);

-- Location: LCCOMB_X32_Y32_N12
\C3|R~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~27_combout\ = (!\C3|HPOS\(10) & ((\C3|R~24_combout\) # ((\C3|draw~52_combout\ & \C3|R~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~52_combout\,
	datab => \C3|HPOS\(10),
	datac => \C3|R~26_combout\,
	datad => \C3|R~24_combout\,
	combout => \C3|R~27_combout\);

-- Location: LCCOMB_X33_Y31_N2
\C3|R~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~28_combout\ = (\C3|HPOS\(8) & (((!\C3|HPOS\(10) & \C3|HPOS\(7))) # (!\C3|HPOS\(6)))) # (!\C3|HPOS\(8) & (!\C3|HPOS\(6) & ((\C3|HPOS\(10)) # (\C3|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(8),
	datab => \C3|HPOS\(10),
	datac => \C3|HPOS\(6),
	datad => \C3|HPOS\(7),
	combout => \C3|R~28_combout\);

-- Location: LCCOMB_X34_Y34_N4
\C3|R~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~29_combout\ = (\C3|HPOS\(2) & ((\C3|HPOS\(0)) # (!\C3|HPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(8),
	datac => \C3|HPOS\(0),
	datad => \C3|HPOS\(2),
	combout => \C3|R~29_combout\);

-- Location: LCCOMB_X33_Y34_N20
\C3|R~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~30_combout\ = (\C3|LessThan75~1_combout\ & ((\C3|HPOS\(1) & ((\C3|R~29_combout\) # (!\C3|HPOS\(6)))) # (!\C3|HPOS\(1) & (!\C3|HPOS\(6) & \C3|R~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(1),
	datab => \C3|HPOS\(6),
	datac => \C3|LessThan75~1_combout\,
	datad => \C3|R~29_combout\,
	combout => \C3|R~30_combout\);

-- Location: LCCOMB_X33_Y31_N0
\C3|R~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~31_combout\ = (\C3|HPOS\(9) & (!\C3|R~28_combout\ & (!\C3|HPOS\(6) & !\C3|R~30_combout\))) # (!\C3|HPOS\(9) & (\C3|R~28_combout\ & (\C3|HPOS\(6) & \C3|R~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(9),
	datab => \C3|R~28_combout\,
	datac => \C3|HPOS\(6),
	datad => \C3|R~30_combout\,
	combout => \C3|R~31_combout\);

-- Location: LCCOMB_X32_Y32_N6
\C3|R~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~32_combout\ = (\C3|R~27_combout\) # ((\C3|R~31_combout\ & ((\C3|draw~51_combout\) # (\C3|draw~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~51_combout\,
	datab => \C3|R~31_combout\,
	datac => \C3|draw~58_combout\,
	datad => \C3|R~27_combout\,
	combout => \C3|R~32_combout\);

-- Location: LCCOMB_X30_Y34_N12
\C3|LessThan65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan65~0_combout\ = (\C3|HPOS\(6) & \C3|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(6),
	datad => \C3|HPOS\(5),
	combout => \C3|LessThan65~0_combout\);

-- Location: LCCOMB_X30_Y34_N16
\C3|LessThan65~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan65~1_combout\ = (\C3|HPOS\(7)) # ((\C3|LessThan65~0_combout\ & ((\C3|HPOS\(4)) # (\C3|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(4),
	datab => \C3|HPOS\(7),
	datac => \C3|LessThan14~0_combout\,
	datad => \C3|LessThan65~0_combout\,
	combout => \C3|LessThan65~1_combout\);

-- Location: LCFF_X27_Y30_N15
\C2|P2[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~46_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(23));

-- Location: LCFF_X27_Y30_N13
\C2|P2[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~44_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(22));

-- Location: LCFF_X27_Y30_N11
\C2|P2[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~42_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(21));

-- Location: LCFF_X27_Y30_N3
\C2|P2[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~34_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(17));

-- Location: LCFF_X27_Y31_N9
\C2|P2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~8_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(4));

-- Location: LCCOMB_X28_Y33_N2
\C3|LessThan66~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~20_combout\ = (!\C3|Add3~18_combout\ & (!\C3|Add3~14_combout\ & (!\C3|Add3~16_combout\ & \C3|LessThan66~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add3~18_combout\,
	datab => \C3|Add3~14_combout\,
	datac => \C3|Add3~16_combout\,
	datad => \C3|LessThan66~18_combout\,
	combout => \C3|LessThan66~20_combout\);

-- Location: LCCOMB_X27_Y33_N0
\C3|LessThan66~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~21_combout\ = (!\C3|Add3~26_combout\ & (!\C3|Add3~22_combout\ & (!\C3|Add3~20_combout\ & !\C3|Add3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add3~26_combout\,
	datab => \C3|Add3~22_combout\,
	datac => \C3|Add3~20_combout\,
	datad => \C3|Add3~24_combout\,
	combout => \C3|LessThan66~21_combout\);

-- Location: LCCOMB_X28_Y32_N24
\C3|LessThan66~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~22_combout\ = (!\C3|Add3~28_combout\ & (!\C3|Add3~34_combout\ & (!\C3|Add3~32_combout\ & !\C3|Add3~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add3~28_combout\,
	datab => \C3|Add3~34_combout\,
	datac => \C3|Add3~32_combout\,
	datad => \C3|Add3~30_combout\,
	combout => \C3|LessThan66~22_combout\);

-- Location: LCCOMB_X28_Y32_N30
\C3|LessThan66~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~23_combout\ = (!\C3|Add3~42_combout\ & (!\C3|Add3~40_combout\ & (!\C3|Add3~36_combout\ & !\C3|Add3~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add3~42_combout\,
	datab => \C3|Add3~40_combout\,
	datac => \C3|Add3~36_combout\,
	datad => \C3|Add3~38_combout\,
	combout => \C3|LessThan66~23_combout\);

-- Location: LCCOMB_X29_Y32_N16
\C3|LessThan66~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~24_combout\ = (\C3|LessThan66~21_combout\ & (\C3|LessThan66~22_combout\ & (\C3|LessThan66~23_combout\ & \C3|LessThan66~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan66~21_combout\,
	datab => \C3|LessThan66~22_combout\,
	datac => \C3|LessThan66~23_combout\,
	datad => \C3|LessThan66~20_combout\,
	combout => \C3|LessThan66~24_combout\);

-- Location: LCCOMB_X27_Y32_N30
\C3|LessThan66~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~25_combout\ = (!\C3|Add3~48_combout\ & (!\C3|Add3~50_combout\ & (!\C3|Add3~44_combout\ & !\C3|Add3~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add3~48_combout\,
	datab => \C3|Add3~50_combout\,
	datac => \C3|Add3~44_combout\,
	datad => \C3|Add3~46_combout\,
	combout => \C3|LessThan66~25_combout\);

-- Location: LCCOMB_X30_Y32_N20
\C3|LessThan66~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan66~26_combout\ = (!\C3|Add3~54_combout\ & (!\C3|Add3~52_combout\ & \C3|LessThan66~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add3~54_combout\,
	datac => \C3|Add3~52_combout\,
	datad => \C3|LessThan66~25_combout\,
	combout => \C3|LessThan66~26_combout\);

-- Location: LCCOMB_X30_Y32_N6
\C3|draw~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~59_combout\ = (\C3|LessThan65~1_combout\ & ((\C3|Add3~56_combout\) # ((\C3|LessThan66~26_combout\ & \C3|LessThan66~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add3~56_combout\,
	datab => \C3|LessThan65~1_combout\,
	datac => \C3|LessThan66~26_combout\,
	datad => \C3|LessThan66~24_combout\,
	combout => \C3|draw~59_combout\);

-- Location: LCCOMB_X30_Y27_N0
\C3|LessThan67~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~21_combout\ = (\C3|Add5~28_combout\) # ((\C3|Add5~26_combout\) # ((\C3|Add5~22_combout\) # (\C3|Add5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add5~28_combout\,
	datab => \C3|Add5~26_combout\,
	datac => \C3|Add5~22_combout\,
	datad => \C3|Add5~24_combout\,
	combout => \C3|LessThan67~21_combout\);

-- Location: LCCOMB_X34_Y33_N16
\C3|LessThan60~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan60~0_combout\ = (\C3|HPOS\(5) & ((\C3|HPOS\(4)) # ((\C3|HPOS\(3) & \C3|LessThan75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(4),
	datab => \C3|HPOS\(5),
	datac => \C3|HPOS\(3),
	datad => \C3|LessThan75~0_combout\,
	combout => \C3|LessThan60~0_combout\);

-- Location: LCFF_X35_Y29_N7
\C2|P1[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~38_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(19));

-- Location: LCFF_X35_Y30_N27
\C2|P1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~26_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(13));

-- Location: LCCOMB_X35_Y33_N20
\C3|LessThan62~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~20_combout\ = (!\C3|Add0~18_combout\ & (!\C3|Add0~16_combout\ & (!\C3|Add0~14_combout\ & \C3|LessThan62~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add0~18_combout\,
	datab => \C3|Add0~16_combout\,
	datac => \C3|Add0~14_combout\,
	datad => \C3|LessThan62~18_combout\,
	combout => \C3|LessThan62~20_combout\);

-- Location: LCCOMB_X36_Y30_N0
\C3|LessThan62~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~21_combout\ = (!\C3|Add0~24_combout\ & (!\C3|Add0~22_combout\ & (!\C3|Add0~20_combout\ & !\C3|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add0~24_combout\,
	datab => \C3|Add0~22_combout\,
	datac => \C3|Add0~20_combout\,
	datad => \C3|Add0~26_combout\,
	combout => \C3|LessThan62~21_combout\);

-- Location: LCCOMB_X36_Y29_N30
\C3|LessThan62~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~22_combout\ = (!\C3|Add0~34_combout\ & (!\C3|Add0~30_combout\ & (!\C3|Add0~32_combout\ & !\C3|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add0~34_combout\,
	datab => \C3|Add0~30_combout\,
	datac => \C3|Add0~32_combout\,
	datad => \C3|Add0~28_combout\,
	combout => \C3|LessThan62~22_combout\);

-- Location: LCCOMB_X35_Y33_N22
\C3|LessThan62~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~23_combout\ = (!\C3|Add0~36_combout\ & (!\C3|Add0~42_combout\ & (!\C3|Add0~40_combout\ & !\C3|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add0~36_combout\,
	datab => \C3|Add0~42_combout\,
	datac => \C3|Add0~40_combout\,
	datad => \C3|Add0~38_combout\,
	combout => \C3|LessThan62~23_combout\);

-- Location: LCCOMB_X35_Y33_N24
\C3|LessThan62~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~24_combout\ = (\C3|LessThan62~20_combout\ & (\C3|LessThan62~22_combout\ & (\C3|LessThan62~21_combout\ & \C3|LessThan62~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan62~20_combout\,
	datab => \C3|LessThan62~22_combout\,
	datac => \C3|LessThan62~21_combout\,
	datad => \C3|LessThan62~23_combout\,
	combout => \C3|LessThan62~24_combout\);

-- Location: LCCOMB_X35_Y33_N10
\C3|LessThan62~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~25_combout\ = (!\C3|Add0~48_combout\ & (!\C3|Add0~46_combout\ & (!\C3|Add0~44_combout\ & !\C3|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add0~48_combout\,
	datab => \C3|Add0~46_combout\,
	datac => \C3|Add0~44_combout\,
	datad => \C3|Add0~50_combout\,
	combout => \C3|LessThan62~25_combout\);

-- Location: LCCOMB_X35_Y33_N0
\C3|LessThan62~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan62~26_combout\ = (!\C3|Add0~54_combout\ & (!\C3|Add0~52_combout\ & (\C3|LessThan62~24_combout\ & \C3|LessThan62~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add0~54_combout\,
	datab => \C3|Add0~52_combout\,
	datac => \C3|LessThan62~24_combout\,
	datad => \C3|LessThan62~25_combout\,
	combout => \C3|LessThan62~26_combout\);

-- Location: LCCOMB_X35_Y33_N26
\C3|draw~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~62_combout\ = (\C3|HPOS\(6) & (((\C3|Add0~56_combout\) # (\C3|LessThan62~26_combout\)))) # (!\C3|HPOS\(6) & (\C3|LessThan60~0_combout\ & ((\C3|Add0~56_combout\) # (\C3|LessThan62~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(6),
	datab => \C3|LessThan60~0_combout\,
	datac => \C3|Add0~56_combout\,
	datad => \C3|LessThan62~26_combout\,
	combout => \C3|draw~62_combout\);

-- Location: LCCOMB_X36_Y35_N10
\C3|LessThan63~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~22_combout\ = (\C3|Add2~32_combout\) # ((\C3|Add2~30_combout\) # ((\C3|Add2~34_combout\) # (\C3|Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add2~32_combout\,
	datab => \C3|Add2~30_combout\,
	datac => \C3|Add2~34_combout\,
	datad => \C3|Add2~36_combout\,
	combout => \C3|LessThan63~22_combout\);

-- Location: LCCOMB_X32_Y29_N20
\C2|Add8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~1_combout\ = (!\C2|BVDir~regout\ & \C2|BH\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|BVDir~regout\,
	datad => \C2|BH\(0),
	combout => \C2|Add8~1_combout\);

-- Location: LCFF_X57_Y24_N17
\C2|process_4:clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|process_4:clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:clk~regout\);

-- Location: LCCOMB_X35_Y25_N20
\C2|Add11~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~67_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datac => \C2|Add11~59_combout\,
	combout => \C2|Add11~67_combout\);

-- Location: LCCOMB_X34_Y26_N26
\C2|Add11~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~81_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|currentS.s1~regout\,
	datad => \C2|Add11~31_combout\,
	combout => \C2|Add11~81_combout\);

-- Location: LCCOMB_X34_Y26_N16
\C2|Add11~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~82_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|currentS.s1~regout\,
	datad => \C2|Add11~29_combout\,
	combout => \C2|Add11~82_combout\);

-- Location: LCFF_X33_Y32_N31
\C2|GOAL1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|GOAL1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|GOAL1~regout\);

-- Location: LCFF_X33_Y28_N9
\C2|COUNT[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(11));

-- Location: LCFF_X33_Y28_N11
\C2|COUNT[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(12));

-- Location: LCCOMB_X33_Y28_N2
\C2|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan2~0_combout\ = (!\C2|COUNT\(13) & (!\C2|COUNT\(10) & (!\C2|COUNT\(11) & !\C2|COUNT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(13),
	datab => \C2|COUNT\(10),
	datac => \C2|COUNT\(11),
	datad => \C2|COUNT\(12),
	combout => \C2|LessThan2~0_combout\);

-- Location: LCFF_X34_Y28_N25
\C2|COUNT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add14~46_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(5));

-- Location: LCFF_X33_Y27_N11
\C2|COUNT[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(19));

-- Location: LCFF_X33_Y27_N3
\C2|COUNT[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(27));

-- Location: LCCOMB_X32_Y27_N6
\C2|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan2~7_combout\ = (!\C2|COUNT\(27) & (!\C2|COUNT\(28) & (!\C2|COUNT\(26) & !\C2|COUNT\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(27),
	datab => \C2|COUNT\(28),
	datac => \C2|COUNT\(26),
	datad => \C2|COUNT\(29),
	combout => \C2|LessThan2~7_combout\);

-- Location: LCFF_X33_Y27_N27
\C2|COUNT[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(31));

-- Location: LCCOMB_X33_Y32_N12
\C2|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector3~0_combout\ = (!\C2|GOAL2~regout\ & (!\C2|GOAL1~regout\ & \C2|currentS.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|GOAL2~regout\,
	datac => \C2|GOAL1~regout\,
	datad => \C2|currentS.s2~regout\,
	combout => \C2|Selector3~0_combout\);

-- Location: LCFF_X25_Y22_N17
\C2|clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|clk~regout\);

-- Location: LCCOMB_X28_Y32_N18
\C2|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan5~0_combout\ = ((\C2|P2\(1)) # ((\C2|P2\(7)) # (!\C2|P2\(0)))) # (!\C2|P2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(2),
	datab => \C2|P2\(1),
	datac => \C2|P2\(7),
	datad => \C2|P2\(0),
	combout => \C2|LessThan5~0_combout\);

-- Location: LCCOMB_X28_Y32_N8
\C2|P2[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~0_combout\ = (\C2|P2\(6) & (!\C2|P2\(4) & (!\C2|P2\(3) & !\C2|P2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(6),
	datab => \C2|P2\(4),
	datac => \C2|P2\(3),
	datad => \C2|P2\(5),
	combout => \C2|P2[3]~0_combout\);

-- Location: LCCOMB_X28_Y32_N10
\C2|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan5~1_combout\ = ((\C2|P2\(9)) # ((\C2|LessThan5~0_combout\) # (!\C2|P2[3]~0_combout\))) # (!\C2|P2\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(8),
	datab => \C2|P2\(9),
	datac => \C2|P2[3]~0_combout\,
	datad => \C2|LessThan5~0_combout\,
	combout => \C2|LessThan5~1_combout\);

-- Location: LCCOMB_X27_Y29_N12
\C2|P2[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~4_combout\ = (!\C2|P2\(23) & (!\C2|P2\(25) & (!\C2|P2\(24) & !\C2|P2\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(23),
	datab => \C2|P2\(25),
	datac => \C2|P2\(24),
	datad => \C2|P2\(22),
	combout => \C2|P2[3]~4_combout\);

-- Location: LCCOMB_X28_Y32_N6
\C2|P2[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~8_combout\ = ((\C2|P2[3]~0_combout\ & ((\C2|P2\(2)) # (!\C2|P2\(1))))) # (!\C2|P2\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(2),
	datab => \C2|P2\(7),
	datac => \C2|P2[3]~0_combout\,
	datad => \C2|P2\(1),
	combout => \C2|P2[3]~8_combout\);

-- Location: LCCOMB_X36_Y30_N2
\C2|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan3~0_combout\ = (!\C2|P1\(10) & (!\C2|P1\(12) & (!\C2|P1\(11) & !\C2|P1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(10),
	datab => \C2|P1\(12),
	datac => \C2|P1\(11),
	datad => \C2|P1\(13),
	combout => \C2|LessThan3~0_combout\);

-- Location: LCCOMB_X32_Y29_N24
\C2|BVDir~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~0_combout\ = (\C2|BV\(9) & (!\C2|BV\(8) & \C2|BVDir~regout\)) # (!\C2|BV\(9) & (\C2|BV\(8) & !\C2|BVDir~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(9),
	datab => \C2|BV\(8),
	datad => \C2|BVDir~regout\,
	combout => \C2|BVDir~0_combout\);

-- Location: LCCOMB_X32_Y28_N10
\C2|BVDir~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~6_combout\ = (\C2|BV\(20)) # ((\C2|BV\(18)) # ((\C2|BV\(21)) # (\C2|BV\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(20),
	datab => \C2|BV\(18),
	datac => \C2|BV\(21),
	datad => \C2|BV\(19),
	combout => \C2|BVDir~6_combout\);

-- Location: LCFF_X57_Y24_N31
\C2|process_4:cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[14]~regout\);

-- Location: LCFF_X57_Y24_N11
\C2|process_4:cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[13]~regout\);

-- Location: LCFF_X57_Y24_N15
\C2|process_4:cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[12]~regout\);

-- Location: LCFF_X56_Y24_N25
\C2|process_4:cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add16~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[11]~regout\);

-- Location: LCCOMB_X57_Y24_N6
\C2|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Equal1~0_combout\ = (\C2|process_4:cnt[13]~regout\ & (!\C2|process_4:cnt[11]~regout\ & (\C2|process_4:cnt[12]~regout\ & \C2|process_4:cnt[14]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_4:cnt[13]~regout\,
	datab => \C2|process_4:cnt[11]~regout\,
	datac => \C2|process_4:cnt[12]~regout\,
	datad => \C2|process_4:cnt[14]~regout\,
	combout => \C2|Equal1~0_combout\);

-- Location: LCFF_X57_Y24_N23
\C2|process_4:cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[10]~regout\);

-- Location: LCFF_X57_Y24_N29
\C2|process_4:cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[8]~regout\);

-- Location: LCFF_X56_Y24_N21
\C2|process_4:cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add16~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[9]~regout\);

-- Location: LCFF_X56_Y24_N17
\C2|process_4:cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add16~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[7]~regout\);

-- Location: LCCOMB_X57_Y24_N26
\C2|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Equal1~1_combout\ = (\C2|process_4:cnt[8]~regout\ & (\C2|process_4:cnt[10]~regout\ & (!\C2|process_4:cnt[9]~regout\ & !\C2|process_4:cnt[7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_4:cnt[8]~regout\,
	datab => \C2|process_4:cnt[10]~regout\,
	datac => \C2|process_4:cnt[9]~regout\,
	datad => \C2|process_4:cnt[7]~regout\,
	combout => \C2|Equal1~1_combout\);

-- Location: LCFF_X57_Y24_N13
\C2|process_4:cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[5]~regout\);

-- Location: LCFF_X57_Y24_N25
\C2|process_4:cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[4]~regout\);

-- Location: LCFF_X56_Y24_N15
\C2|process_4:cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add16~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[6]~regout\);

-- Location: LCFF_X56_Y24_N9
\C2|process_4:cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[3]~regout\);

-- Location: LCCOMB_X57_Y24_N18
\C2|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Equal1~2_combout\ = (!\C2|process_4:cnt[3]~regout\ & (\C2|process_4:cnt[5]~regout\ & (\C2|process_4:cnt[4]~regout\ & !\C2|process_4:cnt[6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_4:cnt[3]~regout\,
	datab => \C2|process_4:cnt[5]~regout\,
	datac => \C2|process_4:cnt[4]~regout\,
	datad => \C2|process_4:cnt[6]~regout\,
	combout => \C2|Equal1~2_combout\);

-- Location: LCFF_X56_Y24_N7
\C2|process_4:cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add16~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[2]~regout\);

-- Location: LCFF_X56_Y24_N5
\C2|process_4:cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[1]~regout\);

-- Location: LCFF_X56_Y24_N1
\C2|process_4:cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|process_4:cnt[0]~regout\);

-- Location: LCCOMB_X57_Y24_N8
\C2|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Equal1~3_combout\ = (!\C2|process_4:cnt[0]~regout\ & (!\C2|process_4:cnt[1]~regout\ & (!\C2|process_4:cnt[2]~regout\ & \C2|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_4:cnt[0]~regout\,
	datab => \C2|process_4:cnt[1]~regout\,
	datac => \C2|process_4:cnt[2]~regout\,
	datad => \C2|Equal1~2_combout\,
	combout => \C2|Equal1~3_combout\);

-- Location: LCCOMB_X57_Y24_N16
\C2|process_4:clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|process_4:clk~0_combout\ = \C2|process_4:clk~regout\ $ (((\C2|Equal1~1_combout\ & (\C2|Equal1~3_combout\ & \C2|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal1~1_combout\,
	datab => \C2|Equal1~3_combout\,
	datac => \C2|process_4:clk~regout\,
	datad => \C2|Equal1~0_combout\,
	combout => \C2|process_4:clk~0_combout\);

-- Location: LCCOMB_X35_Y25_N6
\C2|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan9~0_combout\ = (!\C2|BH\(28) & (!\C2|BH\(30) & (!\C2|BH\(29) & !\C2|BH\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(28),
	datab => \C2|BH\(30),
	datac => \C2|BH\(29),
	datad => \C2|BH\(27),
	combout => \C2|LessThan9~0_combout\);

-- Location: LCCOMB_X34_Y26_N6
\C2|LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan9~1_combout\ = (!\C2|BH\(12) & (!\C2|BH\(11) & (!\C2|BH\(14) & !\C2|BH\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(12),
	datab => \C2|BH\(11),
	datac => \C2|BH\(14),
	datad => \C2|BH\(13),
	combout => \C2|LessThan9~1_combout\);

-- Location: LCCOMB_X32_Y30_N2
\C2|BHDir~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BHDir~1_combout\ = (\C2|BH\(4)) # ((\C2|BH\(2)) # (\C2|BH\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(4),
	datac => \C2|BH\(2),
	datad => \C2|BH\(3),
	combout => \C2|BHDir~1_combout\);

-- Location: LCCOMB_X32_Y30_N28
\C2|BHDir~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BHDir~2_combout\ = (\C2|BH\(6) & (((\C2|BHDir~1_combout\)))) # (!\C2|BH\(6) & (!\C2|BH\(0) & (\C2|BH\(1) & !\C2|BHDir~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(6),
	datab => \C2|BH\(0),
	datac => \C2|BH\(1),
	datad => \C2|BHDir~1_combout\,
	combout => \C2|BHDir~2_combout\);

-- Location: LCCOMB_X32_Y30_N6
\C2|BHDir~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BHDir~3_combout\ = (\C2|BH\(5) & (\C2|BHDir~2_combout\ & (\C2|BH\(7) $ (\C2|BH\(6))))) # (!\C2|BH\(5) & (\C2|BH\(7) & (!\C2|BH\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(7),
	datab => \C2|BH\(6),
	datac => \C2|BH\(5),
	datad => \C2|BHDir~2_combout\,
	combout => \C2|BHDir~3_combout\);

-- Location: LCCOMB_X30_Y26_N10
\C2|BHDir~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BHDir~4_combout\ = (\C2|LessThan9~6_combout\ & (\C2|BH\(9) & \C2|BHDir~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan9~6_combout\,
	datac => \C2|BH\(9),
	datad => \C2|BHDir~3_combout\,
	combout => \C2|BHDir~4_combout\);

-- Location: LCCOMB_X33_Y32_N10
\C2|GOAL1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|GOAL1~0_combout\ = (\C2|SCORE1[31]~32_combout\) # ((\C2|currentS.s1~regout\ & (!\C2|LessThan9~7_combout\ & !\C2|BH\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datab => \C2|LessThan9~7_combout\,
	datac => \C2|SCORE1[31]~32_combout\,
	datad => \C2|BH\(31),
	combout => \C2|GOAL1~0_combout\);

-- Location: LCCOMB_X33_Y32_N30
\C2|GOAL1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|GOAL1~1_combout\ = (\C2|GOAL1~0_combout\ & (\C2|currentS.s1~regout\)) # (!\C2|GOAL1~0_combout\ & ((\C2|GOAL1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datac => \C2|GOAL1~regout\,
	datad => \C2|GOAL1~0_combout\,
	combout => \C2|GOAL1~1_combout\);

-- Location: LCFF_X34_Y28_N21
\C2|COUNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add14~93_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(2));

-- Location: LCCOMB_X33_Y28_N8
\C2|Add14~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~25_combout\ = (\C2|currentS.s0~regout\ & (\C2|Add14~23_combout\ & (!\C2|currentS.s1~regout\ & !\C2|currentS.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|Add14~23_combout\,
	datac => \C2|currentS.s1~regout\,
	datad => \C2|currentS.s2~regout\,
	combout => \C2|Add14~25_combout\);

-- Location: LCCOMB_X33_Y28_N10
\C2|Add14~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~28_combout\ = (!\C2|currentS.s1~regout\ & (!\C2|currentS.s2~regout\ & (\C2|Add14~26_combout\ & \C2|currentS.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~26_combout\,
	datad => \C2|currentS.s0~regout\,
	combout => \C2|Add14~28_combout\);

-- Location: LCCOMB_X33_Y28_N4
\C2|Add14~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~46_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (\C2|Add14~10_combout\ & !\C2|currentS.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~10_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add14~46_combout\);

-- Location: LCCOMB_X33_Y27_N10
\C2|Add14~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~56_combout\ = (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & (\C2|currentS.s0~regout\ & \C2|Add14~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s2~regout\,
	datab => \C2|currentS.s1~regout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|Add14~54_combout\,
	combout => \C2|Add14~56_combout\);

-- Location: LCCOMB_X33_Y27_N2
\C2|Add14~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~80_combout\ = (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & (\C2|currentS.s0~regout\ & \C2|Add14~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s2~regout\,
	datab => \C2|currentS.s1~regout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|Add14~78_combout\,
	combout => \C2|Add14~80_combout\);

-- Location: LCCOMB_X33_Y27_N26
\C2|Add14~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~92_combout\ = (\C2|currentS.s2~regout\) # ((\C2|currentS.s1~regout\) # ((!\C2|Add14~90_combout\) # (!\C2|currentS.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s2~regout\,
	datab => \C2|currentS.s1~regout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|Add14~90_combout\,
	combout => \C2|Add14~92_combout\);

-- Location: LCFF_X24_Y22_N29
\C2|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~20_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(13));

-- Location: LCFF_X25_Y22_N15
\C2|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~21_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(10));

-- Location: LCFF_X24_Y22_N25
\C2|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add15~24_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(12));

-- Location: LCFF_X24_Y22_N23
\C2|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add15~22_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(11));

-- Location: LCCOMB_X25_Y22_N30
\C2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Equal0~0_combout\ = (!\C2|cnt\(12) & (\C2|cnt\(13) & (\C2|cnt\(10) & !\C2|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|cnt\(12),
	datab => \C2|cnt\(13),
	datac => \C2|cnt\(10),
	datad => \C2|cnt\(11),
	combout => \C2|Equal0~0_combout\);

-- Location: LCFF_X25_Y22_N13
\C2|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~22_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(9));

-- Location: LCFF_X25_Y22_N19
\C2|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~23_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(8));

-- Location: LCFF_X24_Y22_N15
\C2|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add15~14_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(7));

-- Location: LCFF_X24_Y22_N13
\C2|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add15~12_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(6));

-- Location: LCCOMB_X25_Y22_N2
\C2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Equal0~1_combout\ = (\C2|cnt\(9) & (\C2|cnt\(8) & (!\C2|cnt\(7) & !\C2|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|cnt\(9),
	datab => \C2|cnt\(8),
	datac => \C2|cnt\(7),
	datad => \C2|cnt\(6),
	combout => \C2|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y22_N0
\C2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Equal0~2_combout\ = (\C2|Equal0~0_combout\ & \C2|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Equal0~0_combout\,
	datad => \C2|Equal0~1_combout\,
	combout => \C2|Equal0~2_combout\);

-- Location: LCFF_X25_Y22_N11
\C2|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~24_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(4));

-- Location: LCFF_X24_Y22_N11
\C2|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add15~10_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(5));

-- Location: LCFF_X24_Y22_N7
\C2|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add15~6_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(3));

-- Location: LCFF_X24_Y22_N5
\C2|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add15~4_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(2));

-- Location: LCCOMB_X25_Y22_N6
\C2|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Equal0~3_combout\ = (\C2|cnt\(4) & (!\C2|cnt\(2) & (!\C2|cnt\(3) & !\C2|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|cnt\(4),
	datab => \C2|cnt\(2),
	datac => \C2|cnt\(3),
	datad => \C2|cnt\(5),
	combout => \C2|Equal0~3_combout\);

-- Location: LCFF_X24_Y22_N3
\C2|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|Add15~2_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(1));

-- Location: LCFF_X24_Y22_N31
\C2|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \C2|cnt~25_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|cnt\(0));

-- Location: LCCOMB_X25_Y22_N26
\C2|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Equal0~4_combout\ = (!\C2|cnt\(1) & (!\C2|cnt\(0) & \C2|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|cnt\(1),
	datac => \C2|cnt\(0),
	datad => \C2|Equal0~3_combout\,
	combout => \C2|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y22_N16
\C2|clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|clk~0_combout\ = \C2|clk~regout\ $ (((\C2|Equal0~4_combout\ & (!\RESET~combout\ & \C2|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal0~4_combout\,
	datab => \RESET~combout\,
	datac => \C2|clk~regout\,
	datad => \C2|Equal0~2_combout\,
	combout => \C2|clk~0_combout\);

-- Location: LCCOMB_X57_Y24_N30
\C2|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~12_combout\ = (\C2|Add16~28_combout\ & (((!\C2|Equal1~3_combout\) # (!\C2|Equal1~1_combout\)) # (!\C2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal1~0_combout\,
	datab => \C2|Equal1~1_combout\,
	datac => \C2|Add16~28_combout\,
	datad => \C2|Equal1~3_combout\,
	combout => \C2|cnt~12_combout\);

-- Location: LCCOMB_X57_Y24_N10
\C2|cnt~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~13_combout\ = (\C2|Add16~26_combout\ & (((!\C2|Equal1~1_combout\) # (!\C2|Equal1~3_combout\)) # (!\C2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal1~0_combout\,
	datab => \C2|Equal1~3_combout\,
	datac => \C2|Equal1~1_combout\,
	datad => \C2|Add16~26_combout\,
	combout => \C2|cnt~13_combout\);

-- Location: LCCOMB_X57_Y24_N14
\C2|cnt~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~14_combout\ = (\C2|Add16~24_combout\ & (((!\C2|Equal1~1_combout\) # (!\C2|Equal1~3_combout\)) # (!\C2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal1~0_combout\,
	datab => \C2|Equal1~3_combout\,
	datac => \C2|Equal1~1_combout\,
	datad => \C2|Add16~24_combout\,
	combout => \C2|cnt~14_combout\);

-- Location: LCCOMB_X57_Y24_N22
\C2|cnt~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~15_combout\ = (\C2|Add16~20_combout\ & (((!\C2|Equal1~1_combout\) # (!\C2|Equal1~3_combout\)) # (!\C2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal1~0_combout\,
	datab => \C2|Equal1~3_combout\,
	datac => \C2|Equal1~1_combout\,
	datad => \C2|Add16~20_combout\,
	combout => \C2|cnt~15_combout\);

-- Location: LCCOMB_X57_Y24_N28
\C2|cnt~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~16_combout\ = (\C2|Add16~16_combout\ & (((!\C2|Equal1~1_combout\) # (!\C2|Equal1~3_combout\)) # (!\C2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal1~0_combout\,
	datab => \C2|Equal1~3_combout\,
	datac => \C2|Equal1~1_combout\,
	datad => \C2|Add16~16_combout\,
	combout => \C2|cnt~16_combout\);

-- Location: LCCOMB_X57_Y24_N12
\C2|cnt~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~17_combout\ = (\C2|Add16~10_combout\ & (((!\C2|Equal1~0_combout\) # (!\C2|Equal1~1_combout\)) # (!\C2|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add16~10_combout\,
	datab => \C2|Equal1~3_combout\,
	datac => \C2|Equal1~1_combout\,
	datad => \C2|Equal1~0_combout\,
	combout => \C2|cnt~17_combout\);

-- Location: LCCOMB_X57_Y24_N24
\C2|cnt~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~18_combout\ = (\C2|Add16~8_combout\ & (((!\C2|Equal1~0_combout\) # (!\C2|Equal1~1_combout\)) # (!\C2|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add16~8_combout\,
	datab => \C2|Equal1~3_combout\,
	datac => \C2|Equal1~1_combout\,
	datad => \C2|Equal1~0_combout\,
	combout => \C2|cnt~18_combout\);

-- Location: LCCOMB_X56_Y24_N0
\C2|cnt~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~19_combout\ = (\C2|Add16~0_combout\ & (((!\C2|Equal1~0_combout\) # (!\C2|Equal1~3_combout\)) # (!\C2|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal1~1_combout\,
	datab => \C2|Add16~0_combout\,
	datac => \C2|Equal1~3_combout\,
	datad => \C2|Equal1~0_combout\,
	combout => \C2|cnt~19_combout\);

-- Location: LCCOMB_X35_Y28_N26
\C2|Add14~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~93_combout\ = (!\C2|currentS.s1~regout\ & (\C2|currentS.s0~regout\ & (\C2|Add14~4_combout\ & !\C2|currentS.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datab => \C2|currentS.s0~regout\,
	datac => \C2|Add14~4_combout\,
	datad => \C2|currentS.s2~regout\,
	combout => \C2|Add14~93_combout\);

-- Location: LCCOMB_X31_Y33_N6
\C3|draw~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~67_combout\ = (!\C3|VPOS\(8) & (!\C3|VPOS\(9) & (\C3|draw~36_combout\ & !\C3|VPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(8),
	datab => \C3|VPOS\(9),
	datac => \C3|draw~36_combout\,
	datad => \C3|VPOS\(7),
	combout => \C3|draw~67_combout\);

-- Location: LCCOMB_X24_Y22_N28
\C2|cnt~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~20_combout\ = (\C2|Add15~26_combout\ & (((!\C2|Equal0~4_combout\) # (!\C2|Equal0~0_combout\)) # (!\C2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal0~1_combout\,
	datab => \C2|Equal0~0_combout\,
	datac => \C2|Equal0~4_combout\,
	datad => \C2|Add15~26_combout\,
	combout => \C2|cnt~20_combout\);

-- Location: LCCOMB_X25_Y22_N14
\C2|cnt~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~21_combout\ = (\C2|Add15~20_combout\ & (((!\C2|Equal0~4_combout\) # (!\C2|Equal0~0_combout\)) # (!\C2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal0~1_combout\,
	datab => \C2|Equal0~0_combout\,
	datac => \C2|Add15~20_combout\,
	datad => \C2|Equal0~4_combout\,
	combout => \C2|cnt~21_combout\);

-- Location: LCCOMB_X25_Y22_N12
\C2|cnt~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~22_combout\ = (\C2|Add15~18_combout\ & (((!\C2|Equal0~4_combout\) # (!\C2|Equal0~0_combout\)) # (!\C2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal0~1_combout\,
	datab => \C2|Equal0~0_combout\,
	datac => \C2|Equal0~4_combout\,
	datad => \C2|Add15~18_combout\,
	combout => \C2|cnt~22_combout\);

-- Location: LCCOMB_X25_Y22_N18
\C2|cnt~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~23_combout\ = (\C2|Add15~16_combout\ & (((!\C2|Equal0~4_combout\) # (!\C2|Equal0~0_combout\)) # (!\C2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal0~1_combout\,
	datab => \C2|Equal0~0_combout\,
	datac => \C2|Equal0~4_combout\,
	datad => \C2|Add15~16_combout\,
	combout => \C2|cnt~23_combout\);

-- Location: LCCOMB_X25_Y22_N10
\C2|cnt~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~24_combout\ = (\C2|Add15~8_combout\ & (((!\C2|Equal0~4_combout\) # (!\C2|Equal0~1_combout\)) # (!\C2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add15~8_combout\,
	datab => \C2|Equal0~0_combout\,
	datac => \C2|Equal0~1_combout\,
	datad => \C2|Equal0~4_combout\,
	combout => \C2|cnt~24_combout\);

-- Location: LCCOMB_X24_Y22_N30
\C2|cnt~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|cnt~25_combout\ = (\C2|Add15~0_combout\ & (((!\C2|Equal0~0_combout\) # (!\C2|Equal0~4_combout\)) # (!\C2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Equal0~1_combout\,
	datab => \C2|Add15~0_combout\,
	datac => \C2|Equal0~4_combout\,
	datad => \C2|Equal0~0_combout\,
	combout => \C2|cnt~25_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G8
\C2|clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C2|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C2|clk~clkctrl_outclk\);

-- Location: CLKCTRL_G5
\C2|process_4:clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C2|process_4:clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C2|process_4:clk~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UP1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_UP1,
	combout => \UP1~combout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DOWN1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DOWN1,
	combout => \DOWN1~combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UP2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_UP2,
	combout => \UP2~combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DOWN2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DOWN2,
	combout => \DOWN2~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_in,
	combout => \CLOCK_in~combout\);

-- Location: PLL_3
\C1|altpll_0|sd1|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 4,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "odd",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 4,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 37037,
	inclk1_input_frequency => 37037,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 28,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 3582,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => GND,
	inclk => \C1|altpll_0|sd1|pll_INCLK_bus\,
	clk => \C1|altpll_0|sd1|pll_CLK_bus\);

-- Location: CLKCTRL_G11
\C1|altpll_0|sd1|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y34_N10
\C3|HPOS[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|HPOS[0]~11_combout\ = \C3|HPOS\(0) $ (VCC)
-- \C3|HPOS[0]~12\ = CARRY(\C3|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(0),
	datad => VCC,
	combout => \C3|HPOS[0]~11_combout\,
	cout => \C3|HPOS[0]~12\);

-- Location: LCCOMB_X32_Y34_N12
\C3|HPOS[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|HPOS[1]~13_combout\ = (\C3|HPOS\(1) & (!\C3|HPOS[0]~12\)) # (!\C3|HPOS\(1) & ((\C3|HPOS[0]~12\) # (GND)))
-- \C3|HPOS[1]~14\ = CARRY((!\C3|HPOS[0]~12\) # (!\C3|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(1),
	datad => VCC,
	cin => \C3|HPOS[0]~12\,
	combout => \C3|HPOS[1]~13_combout\,
	cout => \C3|HPOS[1]~14\);

-- Location: LCCOMB_X32_Y34_N14
\C3|HPOS[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|HPOS[2]~15_combout\ = (\C3|HPOS\(2) & (\C3|HPOS[1]~14\ $ (GND))) # (!\C3|HPOS\(2) & (!\C3|HPOS[1]~14\ & VCC))
-- \C3|HPOS[2]~16\ = CARRY((\C3|HPOS\(2) & !\C3|HPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(2),
	datad => VCC,
	cin => \C3|HPOS[1]~14\,
	combout => \C3|HPOS[2]~15_combout\,
	cout => \C3|HPOS[2]~16\);

-- Location: LCCOMB_X32_Y34_N16
\C3|HPOS[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|HPOS[3]~17_combout\ = (\C3|HPOS\(3) & (!\C3|HPOS[2]~16\)) # (!\C3|HPOS\(3) & ((\C3|HPOS[2]~16\) # (GND)))
-- \C3|HPOS[3]~18\ = CARRY((!\C3|HPOS[2]~16\) # (!\C3|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(3),
	datad => VCC,
	cin => \C3|HPOS[2]~16\,
	combout => \C3|HPOS[3]~17_combout\,
	cout => \C3|HPOS[3]~18\);

-- Location: LCFF_X32_Y34_N17
\C3|HPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|HPOS[3]~17_combout\,
	sclr => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HPOS\(3));

-- Location: LCCOMB_X30_Y34_N14
\C3|LessThan16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan16~0_combout\ = (!\C3|HPOS\(4) & !\C3|HPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|HPOS\(4),
	datad => \C3|HPOS\(3),
	combout => \C3|LessThan16~0_combout\);

-- Location: LCCOMB_X32_Y34_N22
\C3|HPOS[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|HPOS[6]~23_combout\ = (\C3|HPOS\(6) & (\C3|HPOS[5]~22\ $ (GND))) # (!\C3|HPOS\(6) & (!\C3|HPOS[5]~22\ & VCC))
-- \C3|HPOS[6]~24\ = CARRY((\C3|HPOS\(6) & !\C3|HPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(6),
	datad => VCC,
	cin => \C3|HPOS[5]~22\,
	combout => \C3|HPOS[6]~23_combout\,
	cout => \C3|HPOS[6]~24\);

-- Location: LCCOMB_X32_Y34_N24
\C3|HPOS[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|HPOS[7]~25_combout\ = (\C3|HPOS\(7) & (!\C3|HPOS[6]~24\)) # (!\C3|HPOS\(7) & ((\C3|HPOS[6]~24\) # (GND)))
-- \C3|HPOS[7]~26\ = CARRY((!\C3|HPOS[6]~24\) # (!\C3|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(7),
	datad => VCC,
	cin => \C3|HPOS[6]~24\,
	combout => \C3|HPOS[7]~25_combout\,
	cout => \C3|HPOS[7]~26\);

-- Location: LCCOMB_X32_Y34_N26
\C3|HPOS[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|HPOS[8]~27_combout\ = (\C3|HPOS\(8) & (\C3|HPOS[7]~26\ $ (GND))) # (!\C3|HPOS\(8) & (!\C3|HPOS[7]~26\ & VCC))
-- \C3|HPOS[8]~28\ = CARRY((\C3|HPOS\(8) & !\C3|HPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(8),
	datad => VCC,
	cin => \C3|HPOS[7]~26\,
	combout => \C3|HPOS[8]~27_combout\,
	cout => \C3|HPOS[8]~28\);

-- Location: LCFF_X32_Y34_N27
\C3|HPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|HPOS[8]~27_combout\,
	sclr => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HPOS\(8));

-- Location: LCCOMB_X32_Y34_N28
\C3|HPOS[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|HPOS[9]~29_combout\ = (\C3|HPOS\(9) & (!\C3|HPOS[8]~28\)) # (!\C3|HPOS\(9) & ((\C3|HPOS[8]~28\) # (GND)))
-- \C3|HPOS[9]~30\ = CARRY((!\C3|HPOS[8]~28\) # (!\C3|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(9),
	datad => VCC,
	cin => \C3|HPOS[8]~28\,
	combout => \C3|HPOS[9]~29_combout\,
	cout => \C3|HPOS[9]~30\);

-- Location: LCFF_X32_Y34_N29
\C3|HPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|HPOS[9]~29_combout\,
	sclr => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HPOS\(9));

-- Location: LCCOMB_X31_Y32_N20
\C3|LessThan16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan16~1_combout\ = (!\C3|HPOS\(9)) # (!\C3|HPOS\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(8),
	datad => \C3|HPOS\(9),
	combout => \C3|LessThan16~1_combout\);

-- Location: LCFF_X32_Y34_N25
\C3|HPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|HPOS[7]~25_combout\,
	sclr => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HPOS\(7));

-- Location: LCCOMB_X32_Y34_N20
\C3|HPOS[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|HPOS[5]~21_combout\ = (\C3|HPOS\(5) & (!\C3|HPOS[4]~20\)) # (!\C3|HPOS\(5) & ((\C3|HPOS[4]~20\) # (GND)))
-- \C3|HPOS[5]~22\ = CARRY((!\C3|HPOS[4]~20\) # (!\C3|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(5),
	datad => VCC,
	cin => \C3|HPOS[4]~20\,
	combout => \C3|HPOS[5]~21_combout\,
	cout => \C3|HPOS[5]~22\);

-- Location: LCFF_X32_Y34_N21
\C3|HPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|HPOS[5]~21_combout\,
	sclr => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HPOS\(5));

-- Location: LCCOMB_X30_Y34_N28
\C3|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan12~0_combout\ = (!\C3|HPOS\(7) & (!\C3|HPOS\(6) & !\C3|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(7),
	datac => \C3|HPOS\(6),
	datad => \C3|HPOS\(5),
	combout => \C3|LessThan12~0_combout\);

-- Location: LCCOMB_X30_Y34_N26
\C3|LessThan16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan16~2_combout\ = (\C3|HPOS\(10) & (!\C3|LessThan16~1_combout\ & ((!\C3|LessThan12~0_combout\) # (!\C3|LessThan16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(10),
	datab => \C3|LessThan16~0_combout\,
	datac => \C3|LessThan16~1_combout\,
	datad => \C3|LessThan12~0_combout\,
	combout => \C3|LessThan16~2_combout\);

-- Location: LCFF_X32_Y34_N15
\C3|HPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|HPOS[2]~15_combout\,
	sclr => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HPOS\(2));

-- Location: LCCOMB_X32_Y34_N18
\C3|HPOS[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|HPOS[4]~19_combout\ = (\C3|HPOS\(4) & (\C3|HPOS[3]~18\ $ (GND))) # (!\C3|HPOS\(4) & (!\C3|HPOS[3]~18\ & VCC))
-- \C3|HPOS[4]~20\ = CARRY((\C3|HPOS\(4) & !\C3|HPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(4),
	datad => VCC,
	cin => \C3|HPOS[3]~18\,
	combout => \C3|HPOS[4]~19_combout\,
	cout => \C3|HPOS[4]~20\);

-- Location: LCFF_X32_Y34_N19
\C3|HPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|HPOS[4]~19_combout\,
	sclr => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HPOS\(4));

-- Location: LCFF_X32_Y34_N23
\C3|HPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|HPOS[6]~23_combout\,
	sclr => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HPOS\(6));

-- Location: LCCOMB_X33_Y34_N24
\C3|LessThan75~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan75~1_combout\ = (\C3|HPOS\(4) & (\C3|HPOS\(5) & \C3|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(4),
	datac => \C3|HPOS\(5),
	datad => \C3|HPOS\(3),
	combout => \C3|LessThan75~1_combout\);

-- Location: LCFF_X32_Y34_N13
\C3|HPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|HPOS[1]~13_combout\,
	sclr => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HPOS\(1));

-- Location: LCCOMB_X33_Y34_N10
\C3|LessThan75~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan75~0_combout\ = (\C3|HPOS\(2) & ((\C3|HPOS\(0)) # (\C3|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(0),
	datac => \C3|HPOS\(2),
	datad => \C3|HPOS\(1),
	combout => \C3|LessThan75~0_combout\);

-- Location: LCCOMB_X33_Y34_N18
\C3|LessThan75~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan75~2_combout\ = (\C3|HPOS\(6)) # ((\C3|LessThan75~1_combout\ & \C3|LessThan75~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(6),
	datac => \C3|LessThan75~1_combout\,
	datad => \C3|LessThan75~0_combout\,
	combout => \C3|LessThan75~2_combout\);

-- Location: LCCOMB_X34_Y34_N8
\C3|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|process_0~1_combout\ = (\C3|HPOS\(6)) # ((\C3|process_0~0_combout\ & (\C3|HPOS\(5) & \C3|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|process_0~0_combout\,
	datab => \C3|HPOS\(5),
	datac => \C3|HPOS\(6),
	datad => \C3|HPOS\(4),
	combout => \C3|process_0~1_combout\);

-- Location: LCCOMB_X29_Y34_N0
\C3|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|process_0~3_combout\ = ((\C3|HPOS\(7) & ((\C3|process_0~1_combout\))) # (!\C3|HPOS\(7) & (!\C3|LessThan75~2_combout\))) # (!\C3|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|process_0~2_combout\,
	datab => \C3|LessThan75~2_combout\,
	datac => \C3|HPOS\(7),
	datad => \C3|process_0~1_combout\,
	combout => \C3|process_0~3_combout\);

-- Location: LCFF_X30_Y34_N13
\C3|HSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|process_0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HSYNC~regout\);

-- Location: LCCOMB_X32_Y33_N10
\C3|VPOS[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|VPOS[0]~10_combout\ = \C3|VPOS\(0) $ (VCC)
-- \C3|VPOS[0]~11\ = CARRY(\C3|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(0),
	datad => VCC,
	combout => \C3|VPOS[0]~10_combout\,
	cout => \C3|VPOS[0]~11\);

-- Location: LCCOMB_X32_Y33_N12
\C3|VPOS[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|VPOS[1]~12_combout\ = (\C3|VPOS\(1) & (!\C3|VPOS[0]~11\)) # (!\C3|VPOS\(1) & ((\C3|VPOS[0]~11\) # (GND)))
-- \C3|VPOS[1]~13\ = CARRY((!\C3|VPOS[0]~11\) # (!\C3|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(1),
	datad => VCC,
	cin => \C3|VPOS[0]~11\,
	combout => \C3|VPOS[1]~12_combout\,
	cout => \C3|VPOS[1]~13\);

-- Location: LCCOMB_X32_Y33_N14
\C3|VPOS[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|VPOS[2]~14_combout\ = (\C3|VPOS\(2) & (\C3|VPOS[1]~13\ $ (GND))) # (!\C3|VPOS\(2) & (!\C3|VPOS[1]~13\ & VCC))
-- \C3|VPOS[2]~15\ = CARRY((\C3|VPOS\(2) & !\C3|VPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(2),
	datad => VCC,
	cin => \C3|VPOS[1]~13\,
	combout => \C3|VPOS[2]~14_combout\,
	cout => \C3|VPOS[2]~15\);

-- Location: LCCOMB_X32_Y33_N16
\C3|VPOS[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|VPOS[3]~16_combout\ = (\C3|VPOS\(3) & (!\C3|VPOS[2]~15\)) # (!\C3|VPOS\(3) & ((\C3|VPOS[2]~15\) # (GND)))
-- \C3|VPOS[3]~17\ = CARRY((!\C3|VPOS[2]~15\) # (!\C3|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(3),
	datad => VCC,
	cin => \C3|VPOS[2]~15\,
	combout => \C3|VPOS[3]~16_combout\,
	cout => \C3|VPOS[3]~17\);

-- Location: LCCOMB_X32_Y33_N18
\C3|VPOS[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|VPOS[4]~18_combout\ = (\C3|VPOS\(4) & (\C3|VPOS[3]~17\ $ (GND))) # (!\C3|VPOS\(4) & (!\C3|VPOS[3]~17\ & VCC))
-- \C3|VPOS[4]~19\ = CARRY((\C3|VPOS\(4) & !\C3|VPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(4),
	datad => VCC,
	cin => \C3|VPOS[3]~17\,
	combout => \C3|VPOS[4]~18_combout\,
	cout => \C3|VPOS[4]~19\);

-- Location: LCFF_X32_Y33_N19
\C3|VPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|VPOS[4]~18_combout\,
	sclr => \C3|LessThan20~0_combout\,
	ena => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|VPOS\(4));

-- Location: LCCOMB_X32_Y33_N20
\C3|VPOS[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|VPOS[5]~20_combout\ = (\C3|VPOS\(5) & (!\C3|VPOS[4]~19\)) # (!\C3|VPOS\(5) & ((\C3|VPOS[4]~19\) # (GND)))
-- \C3|VPOS[5]~21\ = CARRY((!\C3|VPOS[4]~19\) # (!\C3|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(5),
	datad => VCC,
	cin => \C3|VPOS[4]~19\,
	combout => \C3|VPOS[5]~20_combout\,
	cout => \C3|VPOS[5]~21\);

-- Location: LCFF_X32_Y33_N21
\C3|VPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|VPOS[5]~20_combout\,
	sclr => \C3|LessThan20~0_combout\,
	ena => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|VPOS\(5));

-- Location: LCCOMB_X32_Y33_N22
\C3|VPOS[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|VPOS[6]~22_combout\ = (\C3|VPOS\(6) & (\C3|VPOS[5]~21\ $ (GND))) # (!\C3|VPOS\(6) & (!\C3|VPOS[5]~21\ & VCC))
-- \C3|VPOS[6]~23\ = CARRY((\C3|VPOS\(6) & !\C3|VPOS[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(6),
	datad => VCC,
	cin => \C3|VPOS[5]~21\,
	combout => \C3|VPOS[6]~22_combout\,
	cout => \C3|VPOS[6]~23\);

-- Location: LCFF_X32_Y33_N23
\C3|VPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|VPOS[6]~22_combout\,
	sclr => \C3|LessThan20~0_combout\,
	ena => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|VPOS\(6));

-- Location: LCCOMB_X32_Y33_N8
\C3|LessThan41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan41~0_combout\ = (\C3|VPOS\(5) & \C3|VPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|VPOS\(5),
	datad => \C3|VPOS\(6),
	combout => \C3|LessThan41~0_combout\);

-- Location: LCCOMB_X32_Y33_N24
\C3|VPOS[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|VPOS[7]~24_combout\ = (\C3|VPOS\(7) & (!\C3|VPOS[6]~23\)) # (!\C3|VPOS\(7) & ((\C3|VPOS[6]~23\) # (GND)))
-- \C3|VPOS[7]~25\ = CARRY((!\C3|VPOS[6]~23\) # (!\C3|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(7),
	datad => VCC,
	cin => \C3|VPOS[6]~23\,
	combout => \C3|VPOS[7]~24_combout\,
	cout => \C3|VPOS[7]~25\);

-- Location: LCCOMB_X32_Y33_N26
\C3|VPOS[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|VPOS[8]~26_combout\ = (\C3|VPOS\(8) & (\C3|VPOS[7]~25\ $ (GND))) # (!\C3|VPOS\(8) & (!\C3|VPOS[7]~25\ & VCC))
-- \C3|VPOS[8]~27\ = CARRY((\C3|VPOS\(8) & !\C3|VPOS[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(8),
	datad => VCC,
	cin => \C3|VPOS[7]~25\,
	combout => \C3|VPOS[8]~26_combout\,
	cout => \C3|VPOS[8]~27\);

-- Location: LCFF_X32_Y33_N27
\C3|VPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|VPOS[8]~26_combout\,
	sclr => \C3|LessThan20~0_combout\,
	ena => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|VPOS\(8));

-- Location: LCCOMB_X32_Y33_N28
\C3|VPOS[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|VPOS[9]~28_combout\ = \C3|VPOS[8]~27\ $ (\C3|VPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C3|VPOS\(9),
	cin => \C3|VPOS[8]~27\,
	combout => \C3|VPOS[9]~28_combout\);

-- Location: LCFF_X32_Y33_N29
\C3|VPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|VPOS[9]~28_combout\,
	sclr => \C3|LessThan20~0_combout\,
	ena => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|VPOS\(9));

-- Location: LCFF_X32_Y33_N25
\C3|VPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|VPOS[7]~24_combout\,
	sclr => \C3|LessThan20~0_combout\,
	ena => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|VPOS\(7));

-- Location: LCCOMB_X31_Y33_N0
\C3|draw~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~34_combout\ = (\C3|VPOS\(9) & (\C3|VPOS\(8) & \C3|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(9),
	datac => \C3|VPOS\(8),
	datad => \C3|VPOS\(7),
	combout => \C3|draw~34_combout\);

-- Location: LCCOMB_X29_Y33_N20
\C3|LessThan20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan20~0_combout\ = (\C3|LessThan41~0_combout\ & (\C3|draw~34_combout\ & ((\C3|VPOS\(4)) # (\C3|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(4),
	datab => \C3|VPOS\(3),
	datac => \C3|LessThan41~0_combout\,
	datad => \C3|draw~34_combout\,
	combout => \C3|LessThan20~0_combout\);

-- Location: LCFF_X32_Y33_N15
\C3|VPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|VPOS[2]~14_combout\,
	sclr => \C3|LessThan20~0_combout\,
	ena => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|VPOS\(2));

-- Location: LCFF_X32_Y33_N17
\C3|VPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|VPOS[3]~16_combout\,
	sclr => \C3|LessThan20~0_combout\,
	ena => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|VPOS\(3));

-- Location: LCFF_X32_Y33_N11
\C3|VPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|VPOS[0]~10_combout\,
	sclr => \C3|LessThan20~0_combout\,
	ena => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|VPOS\(0));

-- Location: LCCOMB_X33_Y33_N16
\C3|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|process_0~4_combout\ = (!\C3|VPOS\(1) & (!\C3|VPOS\(0) & !\C3|VPOS\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(1),
	datac => \C3|VPOS\(0),
	datad => \C3|VPOS\(2),
	combout => \C3|process_0~4_combout\);

-- Location: LCCOMB_X28_Y33_N30
\C3|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|process_0~5_combout\ = (!\C3|VPOS\(4) & (!\C3|VPOS\(3) & \C3|process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(4),
	datab => \C3|VPOS\(3),
	datad => \C3|process_0~4_combout\,
	combout => \C3|process_0~5_combout\);

-- Location: LCCOMB_X28_Y33_N8
\C3|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|process_0~6_combout\ = ((\C3|process_0~5_combout\) # (\C3|VPOS\(9))) # (!\C3|LessThan46~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan46~0_combout\,
	datab => \C3|process_0~5_combout\,
	datad => \C3|VPOS\(9),
	combout => \C3|process_0~6_combout\);

-- Location: LCFF_X28_Y33_N9
\C3|VSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|VSYNC~regout\);

-- Location: LCCOMB_X34_Y31_N30
\C2|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector0~0_combout\ = (\UP2~combout\ & (\DOWN1~combout\ & (\DOWN2~combout\ & \UP1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP2~combout\,
	datab => \DOWN1~combout\,
	datac => \DOWN2~combout\,
	datad => \UP1~combout\,
	combout => \C2|Selector0~0_combout\);

-- Location: LCCOMB_X37_Y32_N0
\C2|SCORE1[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[0]~33_combout\ = (\C2|GOAL1~regout\ & (\C2|SCORE1\(0) $ (VCC))) # (!\C2|GOAL1~regout\ & (\C2|SCORE1\(0) & VCC))
-- \C2|SCORE1[0]~34\ = CARRY((\C2|GOAL1~regout\ & \C2|SCORE1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|GOAL1~regout\,
	datab => \C2|SCORE1\(0),
	datad => VCC,
	combout => \C2|SCORE1[0]~33_combout\,
	cout => \C2|SCORE1[0]~34\);

-- Location: LCCOMB_X33_Y32_N20
\C2|GOAL2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|GOAL2~0_combout\ = (\C2|GOAL2~regout\ & ((\C2|currentS.s1~regout\) # ((!\C2|currentS.s2~regout\ & \C2|currentS.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|GOAL2~regout\,
	combout => \C2|GOAL2~0_combout\);

-- Location: LCCOMB_X36_Y26_N16
\C2|Add11~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~17_combout\ = ((\C2|BHDir~regout\ $ (\C2|BH\(8) $ (!\C2|Add11~16\)))) # (GND)
-- \C2|Add11~18\ = CARRY((\C2|BHDir~regout\ & (!\C2|BH\(8) & !\C2|Add11~16\)) # (!\C2|BHDir~regout\ & ((!\C2|Add11~16\) # (!\C2|BH\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(8),
	datad => VCC,
	cin => \C2|Add11~16\,
	combout => \C2|Add11~17_combout\,
	cout => \C2|Add11~18\);

-- Location: LCCOMB_X36_Y26_N20
\C2|Add11~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~21_combout\ = ((\C2|BH\(10) $ (\C2|BHDir~regout\ $ (\C2|Add11~20\)))) # (GND)
-- \C2|Add11~22\ = CARRY((\C2|BH\(10) & ((!\C2|Add11~20\) # (!\C2|BHDir~regout\))) # (!\C2|BH\(10) & (!\C2|BHDir~regout\ & !\C2|Add11~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(10),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~20\,
	combout => \C2|Add11~21_combout\,
	cout => \C2|Add11~22\);

-- Location: LCCOMB_X34_Y26_N12
\C2|Add11~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~86_combout\ = (\C2|Add11~21_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add11~21_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~86_combout\);

-- Location: LCFF_X33_Y26_N25
\C2|BH[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~86_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(10));

-- Location: LCCOMB_X34_Y26_N2
\C2|Add11~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~87_combout\ = (!\C2|Add11~19_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add11~19_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~87_combout\);

-- Location: LCFF_X33_Y26_N23
\C2|BH[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~87_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(9));

-- Location: LCCOMB_X36_Y26_N22
\C2|Add11~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~23_combout\ = (\C2|BHDir~regout\ & ((\C2|BH\(11) & (!\C2|Add11~22\)) # (!\C2|BH\(11) & ((\C2|Add11~22\) # (GND))))) # (!\C2|BHDir~regout\ & ((\C2|BH\(11) & (\C2|Add11~22\ & VCC)) # (!\C2|BH\(11) & (!\C2|Add11~22\))))
-- \C2|Add11~24\ = CARRY((\C2|BHDir~regout\ & ((!\C2|Add11~22\) # (!\C2|BH\(11)))) # (!\C2|BHDir~regout\ & (!\C2|BH\(11) & !\C2|Add11~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(11),
	datad => VCC,
	cin => \C2|Add11~22\,
	combout => \C2|Add11~23_combout\,
	cout => \C2|Add11~24\);

-- Location: LCCOMB_X34_Y26_N22
\C2|Add11~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~85_combout\ = (\C2|Add11~23_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add11~23_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~85_combout\);

-- Location: LCFF_X34_Y26_N23
\C2|BH[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add11~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(11));

-- Location: LCCOMB_X36_Y26_N26
\C2|Add11~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~27_combout\ = (\C2|BHDir~regout\ & ((\C2|BH\(13) & (!\C2|Add11~26\)) # (!\C2|BH\(13) & ((\C2|Add11~26\) # (GND))))) # (!\C2|BHDir~regout\ & ((\C2|BH\(13) & (\C2|Add11~26\ & VCC)) # (!\C2|BH\(13) & (!\C2|Add11~26\))))
-- \C2|Add11~28\ = CARRY((\C2|BHDir~regout\ & ((!\C2|Add11~26\) # (!\C2|BH\(13)))) # (!\C2|BHDir~regout\ & (!\C2|BH\(13) & !\C2|Add11~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(13),
	datad => VCC,
	cin => \C2|Add11~26\,
	combout => \C2|Add11~27_combout\,
	cout => \C2|Add11~28\);

-- Location: LCCOMB_X34_Y26_N8
\C2|Add11~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~83_combout\ = (\C2|Add11~27_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add11~27_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~83_combout\);

-- Location: LCFF_X33_Y26_N27
\C2|BH[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~83_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(13));

-- Location: LCCOMB_X36_Y25_N0
\C2|Add11~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~33_combout\ = ((\C2|BHDir~regout\ $ (\C2|BH\(16) $ (\C2|Add11~32\)))) # (GND)
-- \C2|Add11~34\ = CARRY((\C2|BHDir~regout\ & (\C2|BH\(16) & !\C2|Add11~32\)) # (!\C2|BHDir~regout\ & ((\C2|BH\(16)) # (!\C2|Add11~32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(16),
	datad => VCC,
	cin => \C2|Add11~32\,
	combout => \C2|Add11~33_combout\,
	cout => \C2|Add11~34\);

-- Location: LCCOMB_X34_Y26_N24
\C2|Add11~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~80_combout\ = (\C2|Add11~33_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add11~33_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~80_combout\);

-- Location: LCFF_X33_Y26_N7
\C2|BH[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~80_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(16));

-- Location: LCCOMB_X36_Y25_N2
\C2|Add11~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~35_combout\ = (\C2|BHDir~regout\ & ((\C2|BH\(17) & (!\C2|Add11~34\)) # (!\C2|BH\(17) & ((\C2|Add11~34\) # (GND))))) # (!\C2|BHDir~regout\ & ((\C2|BH\(17) & (\C2|Add11~34\ & VCC)) # (!\C2|BH\(17) & (!\C2|Add11~34\))))
-- \C2|Add11~36\ = CARRY((\C2|BHDir~regout\ & ((!\C2|Add11~34\) # (!\C2|BH\(17)))) # (!\C2|BHDir~regout\ & (!\C2|BH\(17) & !\C2|Add11~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(17),
	datad => VCC,
	cin => \C2|Add11~34\,
	combout => \C2|Add11~35_combout\,
	cout => \C2|Add11~36\);

-- Location: LCCOMB_X33_Y28_N28
\C2|Add11~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~79_combout\ = (\C2|Add11~35_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add11~35_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~79_combout\);

-- Location: LCFF_X33_Y25_N27
\C2|BH[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~79_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(17));

-- Location: LCCOMB_X36_Y25_N4
\C2|Add11~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~37_combout\ = ((\C2|BHDir~regout\ $ (\C2|BH\(18) $ (\C2|Add11~36\)))) # (GND)
-- \C2|Add11~38\ = CARRY((\C2|BHDir~regout\ & (\C2|BH\(18) & !\C2|Add11~36\)) # (!\C2|BHDir~regout\ & ((\C2|BH\(18)) # (!\C2|Add11~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(18),
	datad => VCC,
	cin => \C2|Add11~36\,
	combout => \C2|Add11~37_combout\,
	cout => \C2|Add11~38\);

-- Location: LCCOMB_X33_Y25_N30
\C2|Add11~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~78_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|currentS.s1~regout\,
	datad => \C2|Add11~37_combout\,
	combout => \C2|Add11~78_combout\);

-- Location: LCFF_X33_Y25_N31
\C2|BH[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add11~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(18));

-- Location: LCCOMB_X36_Y25_N6
\C2|Add11~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~39_combout\ = (\C2|BHDir~regout\ & ((\C2|BH\(19) & (!\C2|Add11~38\)) # (!\C2|BH\(19) & ((\C2|Add11~38\) # (GND))))) # (!\C2|BHDir~regout\ & ((\C2|BH\(19) & (\C2|Add11~38\ & VCC)) # (!\C2|BH\(19) & (!\C2|Add11~38\))))
-- \C2|Add11~40\ = CARRY((\C2|BHDir~regout\ & ((!\C2|Add11~38\) # (!\C2|BH\(19)))) # (!\C2|BHDir~regout\ & (!\C2|BH\(19) & !\C2|Add11~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(19),
	datad => VCC,
	cin => \C2|Add11~38\,
	combout => \C2|Add11~39_combout\,
	cout => \C2|Add11~40\);

-- Location: LCCOMB_X35_Y25_N12
\C2|Add11~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~77_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add11~39_combout\,
	combout => \C2|Add11~77_combout\);

-- Location: LCFF_X34_Y25_N13
\C2|BH[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~77_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(19));

-- Location: LCCOMB_X36_Y25_N8
\C2|Add11~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~41_combout\ = ((\C2|BHDir~regout\ $ (\C2|BH\(20) $ (\C2|Add11~40\)))) # (GND)
-- \C2|Add11~42\ = CARRY((\C2|BHDir~regout\ & (\C2|BH\(20) & !\C2|Add11~40\)) # (!\C2|BHDir~regout\ & ((\C2|BH\(20)) # (!\C2|Add11~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(20),
	datad => VCC,
	cin => \C2|Add11~40\,
	combout => \C2|Add11~41_combout\,
	cout => \C2|Add11~42\);

-- Location: LCCOMB_X35_Y25_N2
\C2|Add11~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~76_combout\ = (\C2|Add11~41_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add11~41_combout\,
	datac => \C2|currentS.s1~regout\,
	combout => \C2|Add11~76_combout\);

-- Location: LCFF_X34_Y25_N19
\C2|BH[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(20));

-- Location: LCCOMB_X36_Y25_N10
\C2|Add11~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~43_combout\ = (\C2|BHDir~regout\ & ((\C2|BH\(21) & (!\C2|Add11~42\)) # (!\C2|BH\(21) & ((\C2|Add11~42\) # (GND))))) # (!\C2|BHDir~regout\ & ((\C2|BH\(21) & (\C2|Add11~42\ & VCC)) # (!\C2|BH\(21) & (!\C2|Add11~42\))))
-- \C2|Add11~44\ = CARRY((\C2|BHDir~regout\ & ((!\C2|Add11~42\) # (!\C2|BH\(21)))) # (!\C2|BHDir~regout\ & (!\C2|BH\(21) & !\C2|Add11~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(21),
	datad => VCC,
	cin => \C2|Add11~42\,
	combout => \C2|Add11~43_combout\,
	cout => \C2|Add11~44\);

-- Location: LCCOMB_X35_Y25_N0
\C2|Add11~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~75_combout\ = (\C2|Add11~43_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add11~43_combout\,
	datac => \C2|currentS.s1~regout\,
	combout => \C2|Add11~75_combout\);

-- Location: LCFF_X34_Y25_N25
\C2|BH[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~75_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(21));

-- Location: LCCOMB_X36_Y25_N12
\C2|Add11~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~45_combout\ = ((\C2|BHDir~regout\ $ (\C2|BH\(22) $ (\C2|Add11~44\)))) # (GND)
-- \C2|Add11~46\ = CARRY((\C2|BHDir~regout\ & (\C2|BH\(22) & !\C2|Add11~44\)) # (!\C2|BHDir~regout\ & ((\C2|BH\(22)) # (!\C2|Add11~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(22),
	datad => VCC,
	cin => \C2|Add11~44\,
	combout => \C2|Add11~45_combout\,
	cout => \C2|Add11~46\);

-- Location: LCCOMB_X35_Y25_N14
\C2|Add11~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~74_combout\ = (\C2|Add11~45_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add11~45_combout\,
	datac => \C2|currentS.s1~regout\,
	combout => \C2|Add11~74_combout\);

-- Location: LCFF_X34_Y25_N11
\C2|BH[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~74_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(22));

-- Location: LCCOMB_X35_Y25_N4
\C2|LessThan9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan9~4_combout\ = (!\C2|BH\(19) & (!\C2|BH\(20) & (!\C2|BH\(21) & !\C2|BH\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(19),
	datab => \C2|BH\(20),
	datac => \C2|BH\(21),
	datad => \C2|BH\(22),
	combout => \C2|LessThan9~4_combout\);

-- Location: LCCOMB_X35_Y25_N10
\C2|Add11~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~72_combout\ = (\C2|Add11~49_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add11~49_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~72_combout\);

-- Location: LCFF_X34_Y25_N23
\C2|BH[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~72_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(24));

-- Location: LCCOMB_X36_Y25_N14
\C2|Add11~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~47_combout\ = (\C2|BHDir~regout\ & ((\C2|BH\(23) & (!\C2|Add11~46\)) # (!\C2|BH\(23) & ((\C2|Add11~46\) # (GND))))) # (!\C2|BHDir~regout\ & ((\C2|BH\(23) & (\C2|Add11~46\ & VCC)) # (!\C2|BH\(23) & (!\C2|Add11~46\))))
-- \C2|Add11~48\ = CARRY((\C2|BHDir~regout\ & ((!\C2|Add11~46\) # (!\C2|BH\(23)))) # (!\C2|BHDir~regout\ & (!\C2|BH\(23) & !\C2|Add11~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(23),
	datad => VCC,
	cin => \C2|Add11~46\,
	combout => \C2|Add11~47_combout\,
	cout => \C2|Add11~48\);

-- Location: LCCOMB_X35_Y25_N8
\C2|Add11~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~73_combout\ = (\C2|Add11~47_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add11~47_combout\,
	datac => \C2|currentS.s1~regout\,
	combout => \C2|Add11~73_combout\);

-- Location: LCFF_X34_Y25_N5
\C2|BH[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~73_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(23));

-- Location: LCCOMB_X36_Y25_N18
\C2|Add11~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~51_combout\ = (\C2|BH\(25) & ((\C2|BHDir~regout\ & (!\C2|Add11~50\)) # (!\C2|BHDir~regout\ & (\C2|Add11~50\ & VCC)))) # (!\C2|BH\(25) & ((\C2|BHDir~regout\ & ((\C2|Add11~50\) # (GND))) # (!\C2|BHDir~regout\ & (!\C2|Add11~50\))))
-- \C2|Add11~52\ = CARRY((\C2|BH\(25) & (\C2|BHDir~regout\ & !\C2|Add11~50\)) # (!\C2|BH\(25) & ((\C2|BHDir~regout\) # (!\C2|Add11~50\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(25),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~50\,
	combout => \C2|Add11~51_combout\,
	cout => \C2|Add11~52\);

-- Location: LCCOMB_X35_Y25_N16
\C2|Add11~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~71_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add11~51_combout\,
	combout => \C2|Add11~71_combout\);

-- Location: LCFF_X34_Y25_N9
\C2|BH[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~71_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(25));

-- Location: LCCOMB_X35_Y25_N18
\C2|LessThan9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan9~5_combout\ = (!\C2|BH\(26) & (!\C2|BH\(24) & (!\C2|BH\(23) & !\C2|BH\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(26),
	datab => \C2|BH\(24),
	datac => \C2|BH\(23),
	datad => \C2|BH\(25),
	combout => \C2|LessThan9~5_combout\);

-- Location: LCCOMB_X34_Y26_N20
\C2|LessThan9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan9~2_combout\ = (!\C2|BH\(15) & !\C2|BH\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(15),
	datac => \C2|BH\(16),
	combout => \C2|LessThan9~2_combout\);

-- Location: LCCOMB_X34_Y26_N18
\C2|LessThan9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan9~3_combout\ = (\C2|LessThan9~1_combout\ & (!\C2|BH\(17) & (\C2|LessThan9~2_combout\ & !\C2|BH\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan9~1_combout\,
	datab => \C2|BH\(17),
	datac => \C2|LessThan9~2_combout\,
	datad => \C2|BH\(18),
	combout => \C2|LessThan9~3_combout\);

-- Location: LCCOMB_X30_Y26_N12
\C2|LessThan9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan9~6_combout\ = (\C2|LessThan9~0_combout\ & (\C2|LessThan9~4_combout\ & (\C2|LessThan9~5_combout\ & \C2|LessThan9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan9~0_combout\,
	datab => \C2|LessThan9~4_combout\,
	datac => \C2|LessThan9~5_combout\,
	datad => \C2|LessThan9~3_combout\,
	combout => \C2|LessThan9~6_combout\);

-- Location: LCCOMB_X30_Y26_N6
\C2|LessThan9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan9~7_combout\ = (\C2|LessThan9~6_combout\ & ((\C2|BH\(9)) # (!\C2|BH\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(10),
	datac => \C2|BH\(9),
	datad => \C2|LessThan9~6_combout\,
	combout => \C2|LessThan9~7_combout\);

-- Location: LCCOMB_X30_Y26_N4
\C2|BHDir~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BHDir~7_combout\ = (\C2|LessThan10~3_combout\ & ((!\C2|LessThan9~7_combout\) # (!\C2|BHDir~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|BHDir~regout\,
	datac => \C2|LessThan10~3_combout\,
	datad => \C2|LessThan9~7_combout\,
	combout => \C2|BHDir~7_combout\);

-- Location: LCCOMB_X29_Y28_N4
\C2|Add8~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~71_combout\ = (\C2|Add8~42_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add8~42_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~71_combout\);

-- Location: LCFF_X31_Y28_N3
\C2|BV[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~71_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(20));

-- Location: LCCOMB_X36_Y26_N0
\C2|Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~0_combout\ = \C2|BH\(0) $ (VCC)
-- \C2|Add11~1\ = CARRY(\C2|BH\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(0),
	datad => VCC,
	combout => \C2|Add11~0_combout\,
	cout => \C2|Add11~1\);

-- Location: LCCOMB_X31_Y30_N28
\C2|Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~2_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add11~0_combout\,
	combout => \C2|Add11~2_combout\);

-- Location: LCFF_X31_Y30_N29
\C2|BH[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(0));

-- Location: LCCOMB_X29_Y29_N30
\C2|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~0_combout\ = (\C2|BH\(0)) # (!\C2|BVDir~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|BVDir~regout\,
	datac => \C2|BH\(0),
	combout => \C2|Add8~0_combout\);

-- Location: LCCOMB_X28_Y29_N0
\C2|Add8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~3_cout\ = CARRY((\C2|Add8~1_combout\ & !\C2|BVDir~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add8~1_combout\,
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cout => \C2|Add8~3_cout\);

-- Location: LCCOMB_X28_Y29_N2
\C2|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~4_combout\ = (\C2|BV\(1) & ((\C2|Add8~0_combout\ & (\C2|Add8~3_cout\ & VCC)) # (!\C2|Add8~0_combout\ & (!\C2|Add8~3_cout\)))) # (!\C2|BV\(1) & ((\C2|Add8~0_combout\ & (!\C2|Add8~3_cout\)) # (!\C2|Add8~0_combout\ & ((\C2|Add8~3_cout\) # (GND)))))
-- \C2|Add8~5\ = CARRY((\C2|BV\(1) & (!\C2|Add8~0_combout\ & !\C2|Add8~3_cout\)) # (!\C2|BV\(1) & ((!\C2|Add8~3_cout\) # (!\C2|Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(1),
	datab => \C2|Add8~0_combout\,
	datad => VCC,
	cin => \C2|Add8~3_cout\,
	combout => \C2|Add8~4_combout\,
	cout => \C2|Add8~5\);

-- Location: LCCOMB_X28_Y29_N4
\C2|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~6_combout\ = ((\C2|BVDir~regout\ $ (\C2|BV\(2) $ (!\C2|Add8~5\)))) # (GND)
-- \C2|Add8~7\ = CARRY((\C2|BVDir~regout\ & (!\C2|BV\(2) & !\C2|Add8~5\)) # (!\C2|BVDir~regout\ & ((!\C2|Add8~5\) # (!\C2|BV\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(2),
	datad => VCC,
	cin => \C2|Add8~5\,
	combout => \C2|Add8~6_combout\,
	cout => \C2|Add8~7\);

-- Location: LCCOMB_X32_Y29_N14
\C2|Add8~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~89_combout\ = (!\C2|Add8~6_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~6_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~89_combout\);

-- Location: LCFF_X31_Y29_N5
\C2|BV[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~89_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(2));

-- Location: LCCOMB_X28_Y29_N6
\C2|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~8_combout\ = (\C2|BV\(3) & ((\C2|BVDir~regout\ & (!\C2|Add8~7\)) # (!\C2|BVDir~regout\ & (\C2|Add8~7\ & VCC)))) # (!\C2|BV\(3) & ((\C2|BVDir~regout\ & ((\C2|Add8~7\) # (GND))) # (!\C2|BVDir~regout\ & (!\C2|Add8~7\))))
-- \C2|Add8~9\ = CARRY((\C2|BV\(3) & (\C2|BVDir~regout\ & !\C2|Add8~7\)) # (!\C2|BV\(3) & ((\C2|BVDir~regout\) # (!\C2|Add8~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(3),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~7\,
	combout => \C2|Add8~8_combout\,
	cout => \C2|Add8~9\);

-- Location: LCCOMB_X28_Y29_N8
\C2|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~10_combout\ = ((\C2|BV\(4) $ (\C2|BVDir~regout\ $ (\C2|Add8~9\)))) # (GND)
-- \C2|Add8~11\ = CARRY((\C2|BV\(4) & ((!\C2|Add8~9\) # (!\C2|BVDir~regout\))) # (!\C2|BV\(4) & (!\C2|BVDir~regout\ & !\C2|Add8~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(4),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~9\,
	combout => \C2|Add8~10_combout\,
	cout => \C2|Add8~11\);

-- Location: LCCOMB_X28_Y29_N10
\C2|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~12_combout\ = (\C2|BVDir~regout\ & ((\C2|BV\(5) & ((\C2|Add8~11\) # (GND))) # (!\C2|BV\(5) & (!\C2|Add8~11\)))) # (!\C2|BVDir~regout\ & ((\C2|BV\(5) & (!\C2|Add8~11\)) # (!\C2|BV\(5) & (\C2|Add8~11\ & VCC))))
-- \C2|Add8~13\ = CARRY((\C2|BVDir~regout\ & ((\C2|BV\(5)) # (!\C2|Add8~11\))) # (!\C2|BVDir~regout\ & (\C2|BV\(5) & !\C2|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(5),
	datad => VCC,
	cin => \C2|Add8~11\,
	combout => \C2|Add8~12_combout\,
	cout => \C2|Add8~13\);

-- Location: LCCOMB_X32_Y29_N2
\C2|Add8~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~86_combout\ = (!\C2|Add8~12_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~12_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~86_combout\);

-- Location: LCFF_X32_Y29_N3
\C2|BV[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(5));

-- Location: LCCOMB_X28_Y29_N12
\C2|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~14_combout\ = ((\C2|BV\(6) $ (\C2|BVDir~regout\ $ (\C2|Add8~13\)))) # (GND)
-- \C2|Add8~15\ = CARRY((\C2|BV\(6) & ((!\C2|Add8~13\) # (!\C2|BVDir~regout\))) # (!\C2|BV\(6) & (!\C2|BVDir~regout\ & !\C2|Add8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(6),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~13\,
	combout => \C2|Add8~14_combout\,
	cout => \C2|Add8~15\);

-- Location: LCCOMB_X28_Y29_N14
\C2|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~16_combout\ = (\C2|BV\(7) & ((\C2|BVDir~regout\ & ((\C2|Add8~15\) # (GND))) # (!\C2|BVDir~regout\ & (!\C2|Add8~15\)))) # (!\C2|BV\(7) & ((\C2|BVDir~regout\ & (!\C2|Add8~15\)) # (!\C2|BVDir~regout\ & (\C2|Add8~15\ & VCC))))
-- \C2|Add8~17\ = CARRY((\C2|BV\(7) & ((\C2|BVDir~regout\) # (!\C2|Add8~15\))) # (!\C2|BV\(7) & (\C2|BVDir~regout\ & !\C2|Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(7),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~15\,
	combout => \C2|Add8~16_combout\,
	cout => \C2|Add8~17\);

-- Location: LCCOMB_X28_Y29_N16
\C2|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~18_combout\ = ((\C2|BV\(8) $ (\C2|BVDir~regout\ $ (!\C2|Add8~17\)))) # (GND)
-- \C2|Add8~19\ = CARRY((\C2|BV\(8) & (!\C2|BVDir~regout\ & !\C2|Add8~17\)) # (!\C2|BV\(8) & ((!\C2|Add8~17\) # (!\C2|BVDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(8),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~17\,
	combout => \C2|Add8~18_combout\,
	cout => \C2|Add8~19\);

-- Location: LCCOMB_X28_Y29_N18
\C2|Add8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~20_combout\ = (\C2|BVDir~regout\ & ((\C2|BV\(9) & (!\C2|Add8~19\)) # (!\C2|BV\(9) & ((\C2|Add8~19\) # (GND))))) # (!\C2|BVDir~regout\ & ((\C2|BV\(9) & (\C2|Add8~19\ & VCC)) # (!\C2|BV\(9) & (!\C2|Add8~19\))))
-- \C2|Add8~21\ = CARRY((\C2|BVDir~regout\ & ((!\C2|Add8~19\) # (!\C2|BV\(9)))) # (!\C2|BVDir~regout\ & (!\C2|BV\(9) & !\C2|Add8~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(9),
	datad => VCC,
	cin => \C2|Add8~19\,
	combout => \C2|Add8~20_combout\,
	cout => \C2|Add8~21\);

-- Location: LCCOMB_X29_Y29_N24
\C2|Add8~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~82_combout\ = (\C2|Add8~20_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add8~20_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~82_combout\);

-- Location: LCFF_X30_Y29_N27
\C2|BV[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~82_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(9));

-- Location: LCCOMB_X28_Y29_N20
\C2|Add8~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~22_combout\ = ((\C2|BV\(10) $ (\C2|BVDir~regout\ $ (\C2|Add8~21\)))) # (GND)
-- \C2|Add8~23\ = CARRY((\C2|BV\(10) & ((!\C2|Add8~21\) # (!\C2|BVDir~regout\))) # (!\C2|BV\(10) & (!\C2|BVDir~regout\ & !\C2|Add8~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(10),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~21\,
	combout => \C2|Add8~22_combout\,
	cout => \C2|Add8~23\);

-- Location: LCCOMB_X28_Y29_N22
\C2|Add8~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~24_combout\ = (\C2|BVDir~regout\ & ((\C2|BV\(11) & (!\C2|Add8~23\)) # (!\C2|BV\(11) & ((\C2|Add8~23\) # (GND))))) # (!\C2|BVDir~regout\ & ((\C2|BV\(11) & (\C2|Add8~23\ & VCC)) # (!\C2|BV\(11) & (!\C2|Add8~23\))))
-- \C2|Add8~25\ = CARRY((\C2|BVDir~regout\ & ((!\C2|Add8~23\) # (!\C2|BV\(11)))) # (!\C2|BVDir~regout\ & (!\C2|BV\(11) & !\C2|Add8~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(11),
	datad => VCC,
	cin => \C2|Add8~23\,
	combout => \C2|Add8~24_combout\,
	cout => \C2|Add8~25\);

-- Location: LCCOMB_X32_Y29_N22
\C2|Add8~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~80_combout\ = (\C2|Add8~24_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~24_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~80_combout\);

-- Location: LCFF_X31_Y29_N13
\C2|BV[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~80_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(11));

-- Location: LCCOMB_X28_Y29_N24
\C2|Add8~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~26_combout\ = ((\C2|BVDir~regout\ $ (\C2|BV\(12) $ (\C2|Add8~25\)))) # (GND)
-- \C2|Add8~27\ = CARRY((\C2|BVDir~regout\ & (\C2|BV\(12) & !\C2|Add8~25\)) # (!\C2|BVDir~regout\ & ((\C2|BV\(12)) # (!\C2|Add8~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(12),
	datad => VCC,
	cin => \C2|Add8~25\,
	combout => \C2|Add8~26_combout\,
	cout => \C2|Add8~27\);

-- Location: LCCOMB_X32_Y29_N12
\C2|Add8~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~79_combout\ = (\C2|Add8~26_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~26_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~79_combout\);

-- Location: LCFF_X31_Y29_N17
\C2|BV[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~79_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(12));

-- Location: LCCOMB_X28_Y29_N26
\C2|Add8~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~28_combout\ = (\C2|BVDir~regout\ & ((\C2|BV\(13) & (!\C2|Add8~27\)) # (!\C2|BV\(13) & ((\C2|Add8~27\) # (GND))))) # (!\C2|BVDir~regout\ & ((\C2|BV\(13) & (\C2|Add8~27\ & VCC)) # (!\C2|BV\(13) & (!\C2|Add8~27\))))
-- \C2|Add8~29\ = CARRY((\C2|BVDir~regout\ & ((!\C2|Add8~27\) # (!\C2|BV\(13)))) # (!\C2|BVDir~regout\ & (!\C2|BV\(13) & !\C2|Add8~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(13),
	datad => VCC,
	cin => \C2|Add8~27\,
	combout => \C2|Add8~28_combout\,
	cout => \C2|Add8~29\);

-- Location: LCCOMB_X32_Y29_N26
\C2|Add8~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~78_combout\ = (\C2|Add8~28_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~28_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~78_combout\);

-- Location: LCFF_X31_Y29_N21
\C2|BV[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~78_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(13));

-- Location: LCCOMB_X28_Y29_N28
\C2|Add8~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~30_combout\ = ((\C2|BVDir~regout\ $ (\C2|BV\(14) $ (\C2|Add8~29\)))) # (GND)
-- \C2|Add8~31\ = CARRY((\C2|BVDir~regout\ & (\C2|BV\(14) & !\C2|Add8~29\)) # (!\C2|BVDir~regout\ & ((\C2|BV\(14)) # (!\C2|Add8~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(14),
	datad => VCC,
	cin => \C2|Add8~29\,
	combout => \C2|Add8~30_combout\,
	cout => \C2|Add8~31\);

-- Location: LCCOMB_X32_Y29_N28
\C2|Add8~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~77_combout\ = (\C2|currentS.s1~regout\ & \C2|Add8~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|currentS.s1~regout\,
	datad => \C2|Add8~30_combout\,
	combout => \C2|Add8~77_combout\);

-- Location: LCFF_X32_Y29_N29
\C2|BV[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(14));

-- Location: LCCOMB_X28_Y29_N30
\C2|Add8~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~32_combout\ = (\C2|BVDir~regout\ & ((\C2|BV\(15) & (!\C2|Add8~31\)) # (!\C2|BV\(15) & ((\C2|Add8~31\) # (GND))))) # (!\C2|BVDir~regout\ & ((\C2|BV\(15) & (\C2|Add8~31\ & VCC)) # (!\C2|BV\(15) & (!\C2|Add8~31\))))
-- \C2|Add8~33\ = CARRY((\C2|BVDir~regout\ & ((!\C2|Add8~31\) # (!\C2|BV\(15)))) # (!\C2|BVDir~regout\ & (!\C2|BV\(15) & !\C2|Add8~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(15),
	datad => VCC,
	cin => \C2|Add8~31\,
	combout => \C2|Add8~32_combout\,
	cout => \C2|Add8~33\);

-- Location: LCCOMB_X32_Y29_N16
\C2|Add8~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~76_combout\ = (\C2|Add8~32_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~32_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~76_combout\);

-- Location: LCFF_X31_Y29_N31
\C2|BV[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(15));

-- Location: LCCOMB_X28_Y28_N0
\C2|Add8~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~34_combout\ = ((\C2|BVDir~regout\ $ (\C2|BV\(16) $ (\C2|Add8~33\)))) # (GND)
-- \C2|Add8~35\ = CARRY((\C2|BVDir~regout\ & (\C2|BV\(16) & !\C2|Add8~33\)) # (!\C2|BVDir~regout\ & ((\C2|BV\(16)) # (!\C2|Add8~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(16),
	datad => VCC,
	cin => \C2|Add8~33\,
	combout => \C2|Add8~34_combout\,
	cout => \C2|Add8~35\);

-- Location: LCCOMB_X32_Y29_N10
\C2|Add8~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~75_combout\ = (\C2|Add8~34_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~34_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~75_combout\);

-- Location: LCFF_X31_Y29_N27
\C2|BV[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~75_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(16));

-- Location: LCCOMB_X28_Y28_N2
\C2|Add8~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~36_combout\ = (\C2|BVDir~regout\ & ((\C2|BV\(17) & (!\C2|Add8~35\)) # (!\C2|BV\(17) & ((\C2|Add8~35\) # (GND))))) # (!\C2|BVDir~regout\ & ((\C2|BV\(17) & (\C2|Add8~35\ & VCC)) # (!\C2|BV\(17) & (!\C2|Add8~35\))))
-- \C2|Add8~37\ = CARRY((\C2|BVDir~regout\ & ((!\C2|Add8~35\) # (!\C2|BV\(17)))) # (!\C2|BVDir~regout\ & (!\C2|BV\(17) & !\C2|Add8~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(17),
	datad => VCC,
	cin => \C2|Add8~35\,
	combout => \C2|Add8~36_combout\,
	cout => \C2|Add8~37\);

-- Location: LCCOMB_X32_Y28_N12
\C2|Add8~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~74_combout\ = (\C2|Add8~36_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~36_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~74_combout\);

-- Location: LCFF_X31_Y28_N29
\C2|BV[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~74_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(17));

-- Location: LCCOMB_X28_Y28_N4
\C2|Add8~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~38_combout\ = ((\C2|BVDir~regout\ $ (\C2|BV\(18) $ (\C2|Add8~37\)))) # (GND)
-- \C2|Add8~39\ = CARRY((\C2|BVDir~regout\ & (\C2|BV\(18) & !\C2|Add8~37\)) # (!\C2|BVDir~regout\ & ((\C2|BV\(18)) # (!\C2|Add8~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(18),
	datad => VCC,
	cin => \C2|Add8~37\,
	combout => \C2|Add8~38_combout\,
	cout => \C2|Add8~39\);

-- Location: LCCOMB_X29_Y28_N30
\C2|Add8~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~73_combout\ = (\C2|Add8~38_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~38_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~73_combout\);

-- Location: LCFF_X30_Y28_N31
\C2|BV[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~73_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(18));

-- Location: LCCOMB_X28_Y28_N6
\C2|Add8~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~40_combout\ = (\C2|BVDir~regout\ & ((\C2|BV\(19) & (!\C2|Add8~39\)) # (!\C2|BV\(19) & ((\C2|Add8~39\) # (GND))))) # (!\C2|BVDir~regout\ & ((\C2|BV\(19) & (\C2|Add8~39\ & VCC)) # (!\C2|BV\(19) & (!\C2|Add8~39\))))
-- \C2|Add8~41\ = CARRY((\C2|BVDir~regout\ & ((!\C2|Add8~39\) # (!\C2|BV\(19)))) # (!\C2|BVDir~regout\ & (!\C2|BV\(19) & !\C2|Add8~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(19),
	datad => VCC,
	cin => \C2|Add8~39\,
	combout => \C2|Add8~40_combout\,
	cout => \C2|Add8~41\);

-- Location: LCCOMB_X32_Y28_N14
\C2|Add8~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~72_combout\ = (\C2|currentS.s1~regout\ & \C2|Add8~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|currentS.s1~regout\,
	datad => \C2|Add8~40_combout\,
	combout => \C2|Add8~72_combout\);

-- Location: LCFF_X31_Y28_N9
\C2|BV[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~72_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(19));

-- Location: LCCOMB_X28_Y28_N10
\C2|Add8~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~44_combout\ = (\C2|BVDir~regout\ & ((\C2|BV\(21) & (!\C2|Add8~43\)) # (!\C2|BV\(21) & ((\C2|Add8~43\) # (GND))))) # (!\C2|BVDir~regout\ & ((\C2|BV\(21) & (\C2|Add8~43\ & VCC)) # (!\C2|BV\(21) & (!\C2|Add8~43\))))
-- \C2|Add8~45\ = CARRY((\C2|BVDir~regout\ & ((!\C2|Add8~43\) # (!\C2|BV\(21)))) # (!\C2|BVDir~regout\ & (!\C2|BV\(21) & !\C2|Add8~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(21),
	datad => VCC,
	cin => \C2|Add8~43\,
	combout => \C2|Add8~44_combout\,
	cout => \C2|Add8~45\);

-- Location: LCCOMB_X32_Y28_N8
\C2|Add8~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~70_combout\ = (\C2|currentS.s1~regout\ & \C2|Add8~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|currentS.s1~regout\,
	datad => \C2|Add8~44_combout\,
	combout => \C2|Add8~70_combout\);

-- Location: LCFF_X31_Y28_N1
\C2|BV[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(21));

-- Location: LCCOMB_X28_Y28_N12
\C2|Add8~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~46_combout\ = ((\C2|BVDir~regout\ $ (\C2|BV\(22) $ (\C2|Add8~45\)))) # (GND)
-- \C2|Add8~47\ = CARRY((\C2|BVDir~regout\ & (\C2|BV\(22) & !\C2|Add8~45\)) # (!\C2|BVDir~regout\ & ((\C2|BV\(22)) # (!\C2|Add8~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(22),
	datad => VCC,
	cin => \C2|Add8~45\,
	combout => \C2|Add8~46_combout\,
	cout => \C2|Add8~47\);

-- Location: LCCOMB_X29_Y28_N18
\C2|Add8~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~69_combout\ = (\C2|Add8~46_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~46_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~69_combout\);

-- Location: LCFF_X31_Y28_N19
\C2|BV[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~69_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(22));

-- Location: LCCOMB_X28_Y28_N14
\C2|Add8~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~48_combout\ = (\C2|BVDir~regout\ & ((\C2|BV\(23) & (!\C2|Add8~47\)) # (!\C2|BV\(23) & ((\C2|Add8~47\) # (GND))))) # (!\C2|BVDir~regout\ & ((\C2|BV\(23) & (\C2|Add8~47\ & VCC)) # (!\C2|BV\(23) & (!\C2|Add8~47\))))
-- \C2|Add8~49\ = CARRY((\C2|BVDir~regout\ & ((!\C2|Add8~47\) # (!\C2|BV\(23)))) # (!\C2|BVDir~regout\ & (!\C2|BV\(23) & !\C2|Add8~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BV\(23),
	datad => VCC,
	cin => \C2|Add8~47\,
	combout => \C2|Add8~48_combout\,
	cout => \C2|Add8~49\);

-- Location: LCCOMB_X32_Y28_N30
\C2|Add8~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~68_combout\ = (\C2|Add8~48_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~48_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~68_combout\);

-- Location: LCFF_X32_Y28_N31
\C2|BV[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(23));

-- Location: LCCOMB_X28_Y28_N16
\C2|Add8~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~50_combout\ = ((\C2|BV\(24) $ (\C2|BVDir~regout\ $ (\C2|Add8~49\)))) # (GND)
-- \C2|Add8~51\ = CARRY((\C2|BV\(24) & ((!\C2|Add8~49\) # (!\C2|BVDir~regout\))) # (!\C2|BV\(24) & (!\C2|BVDir~regout\ & !\C2|Add8~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(24),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~49\,
	combout => \C2|Add8~50_combout\,
	cout => \C2|Add8~51\);

-- Location: LCCOMB_X28_Y28_N18
\C2|Add8~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~52_combout\ = (\C2|BV\(25) & ((\C2|BVDir~regout\ & (!\C2|Add8~51\)) # (!\C2|BVDir~regout\ & (\C2|Add8~51\ & VCC)))) # (!\C2|BV\(25) & ((\C2|BVDir~regout\ & ((\C2|Add8~51\) # (GND))) # (!\C2|BVDir~regout\ & (!\C2|Add8~51\))))
-- \C2|Add8~53\ = CARRY((\C2|BV\(25) & (\C2|BVDir~regout\ & !\C2|Add8~51\)) # (!\C2|BV\(25) & ((\C2|BVDir~regout\) # (!\C2|Add8~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(25),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~51\,
	combout => \C2|Add8~52_combout\,
	cout => \C2|Add8~53\);

-- Location: LCCOMB_X28_Y28_N20
\C2|Add8~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~54_combout\ = ((\C2|BV\(26) $ (\C2|BVDir~regout\ $ (\C2|Add8~53\)))) # (GND)
-- \C2|Add8~55\ = CARRY((\C2|BV\(26) & ((!\C2|Add8~53\) # (!\C2|BVDir~regout\))) # (!\C2|BV\(26) & (!\C2|BVDir~regout\ & !\C2|Add8~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(26),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~53\,
	combout => \C2|Add8~54_combout\,
	cout => \C2|Add8~55\);

-- Location: LCCOMB_X28_Y28_N22
\C2|Add8~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~56_combout\ = (\C2|BV\(27) & ((\C2|BVDir~regout\ & (!\C2|Add8~55\)) # (!\C2|BVDir~regout\ & (\C2|Add8~55\ & VCC)))) # (!\C2|BV\(27) & ((\C2|BVDir~regout\ & ((\C2|Add8~55\) # (GND))) # (!\C2|BVDir~regout\ & (!\C2|Add8~55\))))
-- \C2|Add8~57\ = CARRY((\C2|BV\(27) & (\C2|BVDir~regout\ & !\C2|Add8~55\)) # (!\C2|BV\(27) & ((\C2|BVDir~regout\) # (!\C2|Add8~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(27),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~55\,
	combout => \C2|Add8~56_combout\,
	cout => \C2|Add8~57\);

-- Location: LCCOMB_X28_Y28_N24
\C2|Add8~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~58_combout\ = ((\C2|BV\(28) $ (\C2|BVDir~regout\ $ (\C2|Add8~57\)))) # (GND)
-- \C2|Add8~59\ = CARRY((\C2|BV\(28) & ((!\C2|Add8~57\) # (!\C2|BVDir~regout\))) # (!\C2|BV\(28) & (!\C2|BVDir~regout\ & !\C2|Add8~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(28),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~57\,
	combout => \C2|Add8~58_combout\,
	cout => \C2|Add8~59\);

-- Location: LCCOMB_X28_Y28_N26
\C2|Add8~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~60_combout\ = (\C2|BV\(29) & ((\C2|BVDir~regout\ & (!\C2|Add8~59\)) # (!\C2|BVDir~regout\ & (\C2|Add8~59\ & VCC)))) # (!\C2|BV\(29) & ((\C2|BVDir~regout\ & ((\C2|Add8~59\) # (GND))) # (!\C2|BVDir~regout\ & (!\C2|Add8~59\))))
-- \C2|Add8~61\ = CARRY((\C2|BV\(29) & (\C2|BVDir~regout\ & !\C2|Add8~59\)) # (!\C2|BV\(29) & ((\C2|BVDir~regout\) # (!\C2|Add8~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(29),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~59\,
	combout => \C2|Add8~60_combout\,
	cout => \C2|Add8~61\);

-- Location: LCCOMB_X29_Y28_N24
\C2|Add8~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~62_combout\ = (\C2|currentS.s1~regout\ & \C2|Add8~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add8~60_combout\,
	combout => \C2|Add8~62_combout\);

-- Location: LCFF_X29_Y28_N25
\C2|BV[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(29));

-- Location: LCCOMB_X29_Y28_N20
\C2|Add8~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~64_combout\ = (\C2|currentS.s1~regout\ & \C2|Add8~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add8~56_combout\,
	combout => \C2|Add8~64_combout\);

-- Location: LCFF_X29_Y28_N21
\C2|BV[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(27));

-- Location: LCCOMB_X29_Y28_N6
\C2|Add8~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~65_combout\ = (\C2|Add8~54_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~54_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~65_combout\);

-- Location: LCFF_X29_Y28_N7
\C2|BV[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(26));

-- Location: LCCOMB_X32_Y29_N4
\C2|BVDir~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~9_combout\ = (\C2|BV\(28)) # ((\C2|BV\(29)) # ((\C2|BV\(27)) # (\C2|BV\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(28),
	datab => \C2|BV\(29),
	datac => \C2|BV\(27),
	datad => \C2|BV\(26),
	combout => \C2|BVDir~9_combout\);

-- Location: LCCOMB_X32_Y28_N24
\C2|Add8~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~67_combout\ = (\C2|currentS.s1~regout\ & \C2|Add8~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|currentS.s1~regout\,
	datad => \C2|Add8~50_combout\,
	combout => \C2|Add8~67_combout\);

-- Location: LCFF_X32_Y28_N25
\C2|BV[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(24));

-- Location: LCCOMB_X32_Y28_N4
\C2|BVDir~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~7_combout\ = (\C2|BV\(25)) # ((\C2|BV\(22)) # ((\C2|BV\(24)) # (\C2|BV\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(25),
	datab => \C2|BV\(22),
	datac => \C2|BV\(24),
	datad => \C2|BV\(23),
	combout => \C2|BVDir~7_combout\);

-- Location: LCCOMB_X32_Y28_N20
\C2|BVDir~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~5_combout\ = (\C2|BV\(14)) # ((\C2|BV\(16)) # ((\C2|BV\(15)) # (\C2|BV\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(14),
	datab => \C2|BV\(16),
	datac => \C2|BV\(15),
	datad => \C2|BV\(17),
	combout => \C2|BVDir~5_combout\);

-- Location: LCCOMB_X32_Y28_N2
\C2|BVDir~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~4_combout\ = (\C2|BV\(10)) # ((\C2|BV\(12)) # ((\C2|BV\(13)) # (\C2|BV\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(10),
	datab => \C2|BV\(12),
	datac => \C2|BV\(13),
	datad => \C2|BV\(11),
	combout => \C2|BVDir~4_combout\);

-- Location: LCCOMB_X32_Y28_N6
\C2|BVDir~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~8_combout\ = (\C2|BVDir~6_combout\) # ((\C2|BVDir~7_combout\) # ((\C2|BVDir~5_combout\) # (\C2|BVDir~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~6_combout\,
	datab => \C2|BVDir~7_combout\,
	datac => \C2|BVDir~5_combout\,
	datad => \C2|BVDir~4_combout\,
	combout => \C2|BVDir~8_combout\);

-- Location: LCCOMB_X29_Y29_N26
\C2|BVDir~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~10_combout\ = (\C2|BV\(30)) # ((\C2|BVDir~9_combout\) # (\C2|BVDir~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(30),
	datac => \C2|BVDir~9_combout\,
	datad => \C2|BVDir~8_combout\,
	combout => \C2|BVDir~10_combout\);

-- Location: LCCOMB_X32_Y29_N30
\C2|Add8~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~84_combout\ = (!\C2|Add8~16_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~16_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~84_combout\);

-- Location: LCFF_X32_Y29_N31
\C2|BV[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(7));

-- Location: LCCOMB_X32_Y28_N18
\C2|BVDir~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~1_combout\ = (\C2|BV\(2) & (((\C2|BVDir~regout\)))) # (!\C2|BV\(2) & (!\C2|BVDir~regout\ & ((\C2|BV\(1)) # (\C2|BH\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(1),
	datab => \C2|BH\(0),
	datac => \C2|BV\(2),
	datad => \C2|BVDir~regout\,
	combout => \C2|BVDir~1_combout\);

-- Location: LCCOMB_X32_Y29_N0
\C2|Add8~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~85_combout\ = (\C2|currentS.s1~regout\ & \C2|Add8~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|currentS.s1~regout\,
	datad => \C2|Add8~14_combout\,
	combout => \C2|Add8~85_combout\);

-- Location: LCFF_X32_Y29_N1
\C2|BV[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(6));

-- Location: LCCOMB_X31_Y29_N0
\C2|Add8~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~87_combout\ = (\C2|Add8~10_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~10_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~87_combout\);

-- Location: LCFF_X31_Y29_N1
\C2|BV[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(4));

-- Location: LCCOMB_X29_Y29_N20
\C2|Add8~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~88_combout\ = (\C2|Add8~8_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add8~8_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~88_combout\);

-- Location: LCFF_X30_Y29_N15
\C2|BV[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~88_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(3));

-- Location: LCCOMB_X32_Y28_N28
\C2|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan7~0_combout\ = (!\C2|BV\(4) & (\C2|BV\(5) & !\C2|BV\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(4),
	datac => \C2|BV\(5),
	datad => \C2|BV\(3),
	combout => \C2|LessThan7~0_combout\);

-- Location: LCCOMB_X32_Y28_N0
\C2|BVDir~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~2_combout\ = (\C2|LessThan7~0_combout\ & (!\C2|BVDir~1_combout\ & (\C2|BVDir~regout\ $ (!\C2|BV\(6))))) # (!\C2|LessThan7~0_combout\ & (\C2|BVDir~regout\ & ((\C2|BV\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~regout\,
	datab => \C2|BVDir~1_combout\,
	datac => \C2|BV\(6),
	datad => \C2|LessThan7~0_combout\,
	combout => \C2|BVDir~2_combout\);

-- Location: LCCOMB_X32_Y29_N6
\C2|BVDir~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~3_combout\ = (\C2|BVDir~0_combout\ & ((\C2|BVDir~regout\ $ (!\C2|BVDir~2_combout\)) # (!\C2|BV\(7)))) # (!\C2|BVDir~0_combout\ & (!\C2|BVDir~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BVDir~0_combout\,
	datab => \C2|BVDir~regout\,
	datac => \C2|BV\(7),
	datad => \C2|BVDir~2_combout\,
	combout => \C2|BVDir~3_combout\);

-- Location: LCCOMB_X29_Y29_N28
\C2|BVDir~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BVDir~11_combout\ = (\C2|BV\(31)) # ((!\C2|BVDir~10_combout\ & !\C2|BVDir~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(31),
	datab => \C2|BVDir~10_combout\,
	datad => \C2|BVDir~3_combout\,
	combout => \C2|BVDir~11_combout\);

-- Location: LCFF_X29_Y29_N29
\C2|BVDir\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|BVDir~11_combout\,
	ena => \C2|currentS.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BVDir~regout\);

-- Location: LCCOMB_X28_Y28_N28
\C2|Add8~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~90_combout\ = ((\C2|BV\(30) $ (\C2|BVDir~regout\ $ (\C2|Add8~61\)))) # (GND)
-- \C2|Add8~91\ = CARRY((\C2|BV\(30) & ((!\C2|Add8~61\) # (!\C2|BVDir~regout\))) # (!\C2|BV\(30) & (!\C2|BVDir~regout\ & !\C2|Add8~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(30),
	datab => \C2|BVDir~regout\,
	datad => VCC,
	cin => \C2|Add8~61\,
	combout => \C2|Add8~90_combout\,
	cout => \C2|Add8~91\);

-- Location: LCCOMB_X28_Y28_N30
\C2|Add8~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~94_combout\ = \C2|BV\(31) $ (\C2|Add8~91\ $ (!\C2|BVDir~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(31),
	datad => \C2|BVDir~regout\,
	cin => \C2|Add8~91\,
	combout => \C2|Add8~94_combout\);

-- Location: LCCOMB_X29_Y28_N10
\C2|Add8~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~96_combout\ = (\C2|Add8~94_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~94_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~96_combout\);

-- Location: LCFF_X29_Y28_N11
\C2|BV[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(31));

-- Location: LCCOMB_X34_Y31_N18
\C2|process_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|process_2~2_combout\ = (!\UP1~combout\ & (!\C2|P1\(31) & \DOWN1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP1~combout\,
	datac => \C2|P1\(31),
	datad => \DOWN1~combout\,
	combout => \C2|process_2~2_combout\);

-- Location: LCCOMB_X35_Y30_N0
\C2|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~0_combout\ = \C2|P1\(0) $ (GND)
-- \C2|Add1~1\ = CARRY(!\C2|P1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(0),
	datad => VCC,
	combout => \C2|Add1~0_combout\,
	cout => \C2|Add1~1\);

-- Location: LCCOMB_X34_Y31_N20
\C2|P1[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P1[0]~7_combout\ = !\C2|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|Add1~0_combout\,
	combout => \C2|P1[0]~7_combout\);

-- Location: LCCOMB_X35_Y30_N16
\C2|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~16_combout\ = ((\C2|P1\(8) $ (\C2|process_2~3_combout\ $ (\C2|Add1~15\)))) # (GND)
-- \C2|Add1~17\ = CARRY((\C2|P1\(8) & (\C2|process_2~3_combout\ & !\C2|Add1~15\)) # (!\C2|P1\(8) & ((\C2|process_2~3_combout\) # (!\C2|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(8),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~15\,
	combout => \C2|Add1~16_combout\,
	cout => \C2|Add1~17\);

-- Location: LCCOMB_X35_Y30_N18
\C2|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~18_combout\ = (\C2|process_2~3_combout\ & ((\C2|P1\(9) & (\C2|Add1~17\ & VCC)) # (!\C2|P1\(9) & (!\C2|Add1~17\)))) # (!\C2|process_2~3_combout\ & ((\C2|P1\(9) & (!\C2|Add1~17\)) # (!\C2|P1\(9) & ((\C2|Add1~17\) # (GND)))))
-- \C2|Add1~19\ = CARRY((\C2|process_2~3_combout\ & (!\C2|P1\(9) & !\C2|Add1~17\)) # (!\C2|process_2~3_combout\ & ((!\C2|Add1~17\) # (!\C2|P1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(9),
	datad => VCC,
	cin => \C2|Add1~17\,
	combout => \C2|Add1~18_combout\,
	cout => \C2|Add1~19\);

-- Location: LCFF_X35_Y30_N19
\C2|P1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~18_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(9));

-- Location: LCCOMB_X35_Y30_N20
\C2|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~20_combout\ = ((\C2|process_2~3_combout\ $ (\C2|P1\(10) $ (!\C2|Add1~19\)))) # (GND)
-- \C2|Add1~21\ = CARRY((\C2|process_2~3_combout\ & ((\C2|P1\(10)) # (!\C2|Add1~19\))) # (!\C2|process_2~3_combout\ & (\C2|P1\(10) & !\C2|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(10),
	datad => VCC,
	cin => \C2|Add1~19\,
	combout => \C2|Add1~20_combout\,
	cout => \C2|Add1~21\);

-- Location: LCFF_X35_Y30_N21
\C2|P1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~20_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(10));

-- Location: LCCOMB_X35_Y30_N22
\C2|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~22_combout\ = (\C2|process_2~3_combout\ & ((\C2|P1\(11) & (\C2|Add1~21\ & VCC)) # (!\C2|P1\(11) & (!\C2|Add1~21\)))) # (!\C2|process_2~3_combout\ & ((\C2|P1\(11) & (!\C2|Add1~21\)) # (!\C2|P1\(11) & ((\C2|Add1~21\) # (GND)))))
-- \C2|Add1~23\ = CARRY((\C2|process_2~3_combout\ & (!\C2|P1\(11) & !\C2|Add1~21\)) # (!\C2|process_2~3_combout\ & ((!\C2|Add1~21\) # (!\C2|P1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(11),
	datad => VCC,
	cin => \C2|Add1~21\,
	combout => \C2|Add1~22_combout\,
	cout => \C2|Add1~23\);

-- Location: LCFF_X35_Y30_N23
\C2|P1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~22_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(11));

-- Location: LCCOMB_X35_Y30_N24
\C2|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~24_combout\ = ((\C2|process_2~3_combout\ $ (\C2|P1\(12) $ (!\C2|Add1~23\)))) # (GND)
-- \C2|Add1~25\ = CARRY((\C2|process_2~3_combout\ & ((\C2|P1\(12)) # (!\C2|Add1~23\))) # (!\C2|process_2~3_combout\ & (\C2|P1\(12) & !\C2|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(12),
	datad => VCC,
	cin => \C2|Add1~23\,
	combout => \C2|Add1~24_combout\,
	cout => \C2|Add1~25\);

-- Location: LCFF_X35_Y30_N25
\C2|P1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~24_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(12));

-- Location: LCCOMB_X35_Y30_N28
\C2|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~28_combout\ = ((\C2|process_2~3_combout\ $ (\C2|P1\(14) $ (!\C2|Add1~27\)))) # (GND)
-- \C2|Add1~29\ = CARRY((\C2|process_2~3_combout\ & ((\C2|P1\(14)) # (!\C2|Add1~27\))) # (!\C2|process_2~3_combout\ & (\C2|P1\(14) & !\C2|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(14),
	datad => VCC,
	cin => \C2|Add1~27\,
	combout => \C2|Add1~28_combout\,
	cout => \C2|Add1~29\);

-- Location: LCFF_X35_Y30_N29
\C2|P1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~28_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(14));

-- Location: LCCOMB_X35_Y30_N30
\C2|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~30_combout\ = (\C2|process_2~3_combout\ & ((\C2|P1\(15) & (\C2|Add1~29\ & VCC)) # (!\C2|P1\(15) & (!\C2|Add1~29\)))) # (!\C2|process_2~3_combout\ & ((\C2|P1\(15) & (!\C2|Add1~29\)) # (!\C2|P1\(15) & ((\C2|Add1~29\) # (GND)))))
-- \C2|Add1~31\ = CARRY((\C2|process_2~3_combout\ & (!\C2|P1\(15) & !\C2|Add1~29\)) # (!\C2|process_2~3_combout\ & ((!\C2|Add1~29\) # (!\C2|P1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(15),
	datad => VCC,
	cin => \C2|Add1~29\,
	combout => \C2|Add1~30_combout\,
	cout => \C2|Add1~31\);

-- Location: LCFF_X35_Y30_N31
\C2|P1[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~30_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(15));

-- Location: LCCOMB_X35_Y29_N0
\C2|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~32_combout\ = ((\C2|process_2~3_combout\ $ (\C2|P1\(16) $ (!\C2|Add1~31\)))) # (GND)
-- \C2|Add1~33\ = CARRY((\C2|process_2~3_combout\ & ((\C2|P1\(16)) # (!\C2|Add1~31\))) # (!\C2|process_2~3_combout\ & (\C2|P1\(16) & !\C2|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(16),
	datad => VCC,
	cin => \C2|Add1~31\,
	combout => \C2|Add1~32_combout\,
	cout => \C2|Add1~33\);

-- Location: LCFF_X35_Y29_N1
\C2|P1[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~32_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(16));

-- Location: LCCOMB_X35_Y29_N2
\C2|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~34_combout\ = (\C2|process_2~3_combout\ & ((\C2|P1\(17) & (\C2|Add1~33\ & VCC)) # (!\C2|P1\(17) & (!\C2|Add1~33\)))) # (!\C2|process_2~3_combout\ & ((\C2|P1\(17) & (!\C2|Add1~33\)) # (!\C2|P1\(17) & ((\C2|Add1~33\) # (GND)))))
-- \C2|Add1~35\ = CARRY((\C2|process_2~3_combout\ & (!\C2|P1\(17) & !\C2|Add1~33\)) # (!\C2|process_2~3_combout\ & ((!\C2|Add1~33\) # (!\C2|P1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(17),
	datad => VCC,
	cin => \C2|Add1~33\,
	combout => \C2|Add1~34_combout\,
	cout => \C2|Add1~35\);

-- Location: LCFF_X35_Y29_N3
\C2|P1[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~34_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(17));

-- Location: LCCOMB_X35_Y29_N4
\C2|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~36_combout\ = ((\C2|P1\(18) $ (\C2|process_2~3_combout\ $ (!\C2|Add1~35\)))) # (GND)
-- \C2|Add1~37\ = CARRY((\C2|P1\(18) & ((\C2|process_2~3_combout\) # (!\C2|Add1~35\))) # (!\C2|P1\(18) & (\C2|process_2~3_combout\ & !\C2|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(18),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~35\,
	combout => \C2|Add1~36_combout\,
	cout => \C2|Add1~37\);

-- Location: LCCOMB_X35_Y29_N8
\C2|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~40_combout\ = ((\C2|P1\(20) $ (\C2|process_2~3_combout\ $ (!\C2|Add1~39\)))) # (GND)
-- \C2|Add1~41\ = CARRY((\C2|P1\(20) & ((\C2|process_2~3_combout\) # (!\C2|Add1~39\))) # (!\C2|P1\(20) & (\C2|process_2~3_combout\ & !\C2|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(20),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~39\,
	combout => \C2|Add1~40_combout\,
	cout => \C2|Add1~41\);

-- Location: LCCOMB_X35_Y29_N10
\C2|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~42_combout\ = (\C2|P1\(21) & ((\C2|process_2~3_combout\ & (\C2|Add1~41\ & VCC)) # (!\C2|process_2~3_combout\ & (!\C2|Add1~41\)))) # (!\C2|P1\(21) & ((\C2|process_2~3_combout\ & (!\C2|Add1~41\)) # (!\C2|process_2~3_combout\ & ((\C2|Add1~41\) # 
-- (GND)))))
-- \C2|Add1~43\ = CARRY((\C2|P1\(21) & (!\C2|process_2~3_combout\ & !\C2|Add1~41\)) # (!\C2|P1\(21) & ((!\C2|Add1~41\) # (!\C2|process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(21),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~41\,
	combout => \C2|Add1~42_combout\,
	cout => \C2|Add1~43\);

-- Location: LCCOMB_X35_Y29_N12
\C2|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~44_combout\ = ((\C2|P1\(22) $ (\C2|process_2~3_combout\ $ (!\C2|Add1~43\)))) # (GND)
-- \C2|Add1~45\ = CARRY((\C2|P1\(22) & ((\C2|process_2~3_combout\) # (!\C2|Add1~43\))) # (!\C2|P1\(22) & (\C2|process_2~3_combout\ & !\C2|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(22),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~43\,
	combout => \C2|Add1~44_combout\,
	cout => \C2|Add1~45\);

-- Location: LCCOMB_X35_Y29_N14
\C2|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~46_combout\ = (\C2|P1\(23) & ((\C2|process_2~3_combout\ & (\C2|Add1~45\ & VCC)) # (!\C2|process_2~3_combout\ & (!\C2|Add1~45\)))) # (!\C2|P1\(23) & ((\C2|process_2~3_combout\ & (!\C2|Add1~45\)) # (!\C2|process_2~3_combout\ & ((\C2|Add1~45\) # 
-- (GND)))))
-- \C2|Add1~47\ = CARRY((\C2|P1\(23) & (!\C2|process_2~3_combout\ & !\C2|Add1~45\)) # (!\C2|P1\(23) & ((!\C2|Add1~45\) # (!\C2|process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(23),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~45\,
	combout => \C2|Add1~46_combout\,
	cout => \C2|Add1~47\);

-- Location: LCCOMB_X35_Y29_N16
\C2|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~48_combout\ = ((\C2|process_2~3_combout\ $ (\C2|P1\(24) $ (!\C2|Add1~47\)))) # (GND)
-- \C2|Add1~49\ = CARRY((\C2|process_2~3_combout\ & ((\C2|P1\(24)) # (!\C2|Add1~47\))) # (!\C2|process_2~3_combout\ & (\C2|P1\(24) & !\C2|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(24),
	datad => VCC,
	cin => \C2|Add1~47\,
	combout => \C2|Add1~48_combout\,
	cout => \C2|Add1~49\);

-- Location: LCFF_X35_Y29_N17
\C2|P1[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~48_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(24));

-- Location: LCCOMB_X35_Y29_N18
\C2|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~50_combout\ = (\C2|process_2~3_combout\ & ((\C2|P1\(25) & (\C2|Add1~49\ & VCC)) # (!\C2|P1\(25) & (!\C2|Add1~49\)))) # (!\C2|process_2~3_combout\ & ((\C2|P1\(25) & (!\C2|Add1~49\)) # (!\C2|P1\(25) & ((\C2|Add1~49\) # (GND)))))
-- \C2|Add1~51\ = CARRY((\C2|process_2~3_combout\ & (!\C2|P1\(25) & !\C2|Add1~49\)) # (!\C2|process_2~3_combout\ & ((!\C2|Add1~49\) # (!\C2|P1\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(25),
	datad => VCC,
	cin => \C2|Add1~49\,
	combout => \C2|Add1~50_combout\,
	cout => \C2|Add1~51\);

-- Location: LCFF_X35_Y29_N19
\C2|P1[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~50_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(25));

-- Location: LCFF_X35_Y29_N15
\C2|P1[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~46_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(23));

-- Location: LCCOMB_X35_Y31_N2
\C2|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan3~3_combout\ = (!\C2|P1\(22) & (!\C2|P1\(25) & (!\C2|P1\(24) & !\C2|P1\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(22),
	datab => \C2|P1\(25),
	datac => \C2|P1\(24),
	datad => \C2|P1\(23),
	combout => \C2|LessThan3~3_combout\);

-- Location: LCFF_X35_Y29_N5
\C2|P1[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~36_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(18));

-- Location: LCFF_X35_Y29_N11
\C2|P1[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~42_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(21));

-- Location: LCFF_X35_Y29_N9
\C2|P1[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~40_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(20));

-- Location: LCCOMB_X35_Y31_N4
\C2|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan3~2_combout\ = (!\C2|P1\(19) & (!\C2|P1\(18) & (!\C2|P1\(21) & !\C2|P1\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(19),
	datab => \C2|P1\(18),
	datac => \C2|P1\(21),
	datad => \C2|P1\(20),
	combout => \C2|LessThan3~2_combout\);

-- Location: LCCOMB_X35_Y31_N18
\C2|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan3~1_combout\ = (!\C2|P1\(16) & (!\C2|P1\(14) & (!\C2|P1\(17) & !\C2|P1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(16),
	datab => \C2|P1\(14),
	datac => \C2|P1\(17),
	datad => \C2|P1\(15),
	combout => \C2|LessThan3~1_combout\);

-- Location: LCCOMB_X35_Y31_N16
\C2|LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan3~4_combout\ = (\C2|LessThan3~0_combout\ & (\C2|LessThan3~3_combout\ & (\C2|LessThan3~2_combout\ & \C2|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan3~0_combout\,
	datab => \C2|LessThan3~3_combout\,
	datac => \C2|LessThan3~2_combout\,
	datad => \C2|LessThan3~1_combout\,
	combout => \C2|LessThan3~4_combout\);

-- Location: LCCOMB_X35_Y30_N4
\C2|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~4_combout\ = ((\C2|P1\(2) $ (\C2|process_2~3_combout\ $ (\C2|Add1~3\)))) # (GND)
-- \C2|Add1~5\ = CARRY((\C2|P1\(2) & (\C2|process_2~3_combout\ & !\C2|Add1~3\)) # (!\C2|P1\(2) & ((\C2|process_2~3_combout\) # (!\C2|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(2),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~3\,
	combout => \C2|Add1~4_combout\,
	cout => \C2|Add1~5\);

-- Location: LCCOMB_X35_Y27_N2
\C2|P1[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P1[2]~6_combout\ = !\C2|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add1~4_combout\,
	combout => \C2|P1[2]~6_combout\);

-- Location: LCFF_X35_Y27_N3
\C2|P1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|P1[2]~6_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(2));

-- Location: LCCOMB_X35_Y30_N6
\C2|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~6_combout\ = (\C2|P1\(3) & ((\C2|process_2~3_combout\ & (\C2|Add1~5\ & VCC)) # (!\C2|process_2~3_combout\ & (!\C2|Add1~5\)))) # (!\C2|P1\(3) & ((\C2|process_2~3_combout\ & (!\C2|Add1~5\)) # (!\C2|process_2~3_combout\ & ((\C2|Add1~5\) # (GND)))))
-- \C2|Add1~7\ = CARRY((\C2|P1\(3) & (!\C2|process_2~3_combout\ & !\C2|Add1~5\)) # (!\C2|P1\(3) & ((!\C2|Add1~5\) # (!\C2|process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(3),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~5\,
	combout => \C2|Add1~6_combout\,
	cout => \C2|Add1~7\);

-- Location: LCFF_X35_Y30_N7
\C2|P1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~6_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(3));

-- Location: LCCOMB_X35_Y30_N10
\C2|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~10_combout\ = (\C2|P1\(5) & ((\C2|process_2~3_combout\ & (\C2|Add1~9\ & VCC)) # (!\C2|process_2~3_combout\ & (!\C2|Add1~9\)))) # (!\C2|P1\(5) & ((\C2|process_2~3_combout\ & (!\C2|Add1~9\)) # (!\C2|process_2~3_combout\ & ((\C2|Add1~9\) # (GND)))))
-- \C2|Add1~11\ = CARRY((\C2|P1\(5) & (!\C2|process_2~3_combout\ & !\C2|Add1~9\)) # (!\C2|P1\(5) & ((!\C2|Add1~9\) # (!\C2|process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(5),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~9\,
	combout => \C2|Add1~10_combout\,
	cout => \C2|Add1~11\);

-- Location: LCFF_X35_Y30_N11
\C2|P1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~10_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(5));

-- Location: LCCOMB_X35_Y30_N8
\C2|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~8_combout\ = ((\C2|P1\(4) $ (\C2|process_2~3_combout\ $ (!\C2|Add1~7\)))) # (GND)
-- \C2|Add1~9\ = CARRY((\C2|P1\(4) & ((\C2|process_2~3_combout\) # (!\C2|Add1~7\))) # (!\C2|P1\(4) & (\C2|process_2~3_combout\ & !\C2|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(4),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~7\,
	combout => \C2|Add1~8_combout\,
	cout => \C2|Add1~9\);

-- Location: LCFF_X35_Y30_N9
\C2|P1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~8_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(4));

-- Location: LCCOMB_X34_Y31_N10
\C2|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan3~7_combout\ = (\C2|P1\(6) & (!\C2|P1\(3) & (!\C2|P1\(5) & !\C2|P1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(6),
	datab => \C2|P1\(3),
	datac => \C2|P1\(5),
	datad => \C2|P1\(4),
	combout => \C2|LessThan3~7_combout\);

-- Location: LCCOMB_X34_Y31_N26
\C2|P1[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P1[3]~0_combout\ = ((\C2|LessThan3~7_combout\ & ((\C2|P1\(2)) # (!\C2|P1\(1))))) # (!\C2|P1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(1),
	datab => \C2|P1\(2),
	datac => \C2|P1\(7),
	datad => \C2|LessThan3~7_combout\,
	combout => \C2|P1[3]~0_combout\);

-- Location: LCCOMB_X34_Y31_N24
\C2|P1[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P1[3]~1_combout\ = (\C2|LessThan3~4_combout\ & (((\C2|P1\(8) & \C2|P1[3]~0_combout\)) # (!\C2|P1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(9),
	datab => \C2|P1\(8),
	datac => \C2|LessThan3~4_combout\,
	datad => \C2|P1[3]~0_combout\,
	combout => \C2|P1[3]~1_combout\);

-- Location: LCCOMB_X35_Y29_N20
\C2|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~52_combout\ = ((\C2|process_2~3_combout\ $ (\C2|P1\(26) $ (!\C2|Add1~51\)))) # (GND)
-- \C2|Add1~53\ = CARRY((\C2|process_2~3_combout\ & ((\C2|P1\(26)) # (!\C2|Add1~51\))) # (!\C2|process_2~3_combout\ & (\C2|P1\(26) & !\C2|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(26),
	datad => VCC,
	cin => \C2|Add1~51\,
	combout => \C2|Add1~52_combout\,
	cout => \C2|Add1~53\);

-- Location: LCFF_X35_Y29_N21
\C2|P1[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~52_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(26));

-- Location: LCCOMB_X35_Y29_N22
\C2|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~54_combout\ = (\C2|process_2~3_combout\ & ((\C2|P1\(27) & (\C2|Add1~53\ & VCC)) # (!\C2|P1\(27) & (!\C2|Add1~53\)))) # (!\C2|process_2~3_combout\ & ((\C2|P1\(27) & (!\C2|Add1~53\)) # (!\C2|P1\(27) & ((\C2|Add1~53\) # (GND)))))
-- \C2|Add1~55\ = CARRY((\C2|process_2~3_combout\ & (!\C2|P1\(27) & !\C2|Add1~53\)) # (!\C2|process_2~3_combout\ & ((!\C2|Add1~53\) # (!\C2|P1\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(27),
	datad => VCC,
	cin => \C2|Add1~53\,
	combout => \C2|Add1~54_combout\,
	cout => \C2|Add1~55\);

-- Location: LCFF_X35_Y29_N23
\C2|P1[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~54_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(27));

-- Location: LCCOMB_X35_Y29_N24
\C2|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~56_combout\ = ((\C2|process_2~3_combout\ $ (\C2|P1\(28) $ (!\C2|Add1~55\)))) # (GND)
-- \C2|Add1~57\ = CARRY((\C2|process_2~3_combout\ & ((\C2|P1\(28)) # (!\C2|Add1~55\))) # (!\C2|process_2~3_combout\ & (\C2|P1\(28) & !\C2|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(28),
	datad => VCC,
	cin => \C2|Add1~55\,
	combout => \C2|Add1~56_combout\,
	cout => \C2|Add1~57\);

-- Location: LCFF_X35_Y29_N25
\C2|P1[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~56_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(28));

-- Location: LCCOMB_X34_Y29_N30
\C2|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan3~5_combout\ = (!\C2|P1\(29) & (!\C2|P1\(27) & (!\C2|P1\(28) & !\C2|P1\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(29),
	datab => \C2|P1\(27),
	datac => \C2|P1\(28),
	datad => \C2|P1\(26),
	combout => \C2|LessThan3~5_combout\);

-- Location: LCCOMB_X35_Y29_N26
\C2|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~58_combout\ = (\C2|process_2~3_combout\ & ((\C2|P1\(29) & (\C2|Add1~57\ & VCC)) # (!\C2|P1\(29) & (!\C2|Add1~57\)))) # (!\C2|process_2~3_combout\ & ((\C2|P1\(29) & (!\C2|Add1~57\)) # (!\C2|P1\(29) & ((\C2|Add1~57\) # (GND)))))
-- \C2|Add1~59\ = CARRY((\C2|process_2~3_combout\ & (!\C2|P1\(29) & !\C2|Add1~57\)) # (!\C2|process_2~3_combout\ & ((!\C2|Add1~57\) # (!\C2|P1\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(29),
	datad => VCC,
	cin => \C2|Add1~57\,
	combout => \C2|Add1~58_combout\,
	cout => \C2|Add1~59\);

-- Location: LCFF_X35_Y29_N27
\C2|P1[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~58_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(29));

-- Location: LCCOMB_X35_Y29_N28
\C2|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~60_combout\ = ((\C2|P1\(30) $ (\C2|process_2~3_combout\ $ (!\C2|Add1~59\)))) # (GND)
-- \C2|Add1~61\ = CARRY((\C2|P1\(30) & ((\C2|process_2~3_combout\) # (!\C2|Add1~59\))) # (!\C2|P1\(30) & (\C2|process_2~3_combout\ & !\C2|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(30),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~59\,
	combout => \C2|Add1~60_combout\,
	cout => \C2|Add1~61\);

-- Location: LCFF_X35_Y29_N29
\C2|P1[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~60_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(30));

-- Location: LCCOMB_X34_Y31_N28
\C2|LessThan3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan3~6_combout\ = (\C2|LessThan3~5_combout\ & !\C2|P1\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|LessThan3~5_combout\,
	datac => \C2|P1\(30),
	combout => \C2|LessThan3~6_combout\);

-- Location: LCCOMB_X34_Y31_N22
\C2|P1[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P1[3]~2_combout\ = (\UP1~combout\ & ((\C2|P1\(31)) # ((\C2|P1[3]~1_combout\ & \C2|LessThan3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP1~combout\,
	datab => \C2|P1\(31),
	datac => \C2|P1[3]~1_combout\,
	datad => \C2|LessThan3~6_combout\,
	combout => \C2|P1[3]~2_combout\);

-- Location: LCCOMB_X34_Y31_N16
\C2|P1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P1[3]~3_combout\ = (\C2|currentS.s1~regout\ & ((\C2|process_2~3_combout\) # ((!\DOWN1~combout\ & \C2|P1[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \DOWN1~combout\,
	datac => \C2|currentS.s1~regout\,
	datad => \C2|P1[3]~2_combout\,
	combout => \C2|P1[3]~3_combout\);

-- Location: LCFF_X34_Y31_N21
\C2|P1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|P1[0]~7_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(0));

-- Location: LCCOMB_X35_Y30_N2
\C2|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~2_combout\ = (\C2|P1\(1) & ((\C2|process_2~3_combout\ & (\C2|Add1~1\ & VCC)) # (!\C2|process_2~3_combout\ & (!\C2|Add1~1\)))) # (!\C2|P1\(1) & ((\C2|process_2~3_combout\ & (!\C2|Add1~1\)) # (!\C2|process_2~3_combout\ & ((\C2|Add1~1\) # (GND)))))
-- \C2|Add1~3\ = CARRY((\C2|P1\(1) & (!\C2|process_2~3_combout\ & !\C2|Add1~1\)) # (!\C2|P1\(1) & ((!\C2|Add1~1\) # (!\C2|process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(1),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~1\,
	combout => \C2|Add1~2_combout\,
	cout => \C2|Add1~3\);

-- Location: LCCOMB_X35_Y30_N12
\C2|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~12_combout\ = ((\C2|P1\(6) $ (\C2|process_2~3_combout\ $ (\C2|Add1~11\)))) # (GND)
-- \C2|Add1~13\ = CARRY((\C2|P1\(6) & (\C2|process_2~3_combout\ & !\C2|Add1~11\)) # (!\C2|P1\(6) & ((\C2|process_2~3_combout\) # (!\C2|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(6),
	datab => \C2|process_2~3_combout\,
	datad => VCC,
	cin => \C2|Add1~11\,
	combout => \C2|Add1~12_combout\,
	cout => \C2|Add1~13\);

-- Location: LCCOMB_X35_Y30_N14
\C2|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~14_combout\ = (\C2|process_2~3_combout\ & ((\C2|P1\(7) & (\C2|Add1~13\ & VCC)) # (!\C2|P1\(7) & (!\C2|Add1~13\)))) # (!\C2|process_2~3_combout\ & ((\C2|P1\(7) & (!\C2|Add1~13\)) # (!\C2|P1\(7) & ((\C2|Add1~13\) # (GND)))))
-- \C2|Add1~15\ = CARRY((\C2|process_2~3_combout\ & (!\C2|P1\(7) & !\C2|Add1~13\)) # (!\C2|process_2~3_combout\ & ((!\C2|Add1~13\) # (!\C2|P1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~3_combout\,
	datab => \C2|P1\(7),
	datad => VCC,
	cin => \C2|Add1~13\,
	combout => \C2|Add1~14_combout\,
	cout => \C2|Add1~15\);

-- Location: LCFF_X35_Y30_N15
\C2|P1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~14_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(7));

-- Location: LCCOMB_X34_Y30_N0
\C2|P1[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P1[8]~4_combout\ = !\C2|Add1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add1~16_combout\,
	combout => \C2|P1[8]~4_combout\);

-- Location: LCFF_X34_Y30_N1
\C2|P1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|P1[8]~4_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(8));

-- Location: LCFF_X34_Y30_N9
\C2|P1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add1~2_combout\,
	sload => VCC,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(1));

-- Location: LCCOMB_X34_Y31_N8
\C2|LessThan3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan3~8_combout\ = (!\C2|P1\(7) & ((\C2|P1\(2)) # ((\C2|P1\(0) & !\C2|P1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(2),
	datab => \C2|P1\(7),
	datac => \C2|P1\(0),
	datad => \C2|P1\(1),
	combout => \C2|LessThan3~8_combout\);

-- Location: LCCOMB_X34_Y31_N14
\C2|LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan3~9_combout\ = (!\C2|P1\(9) & (\C2|P1\(8) & (\C2|LessThan3~8_combout\ & \C2|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(9),
	datab => \C2|P1\(8),
	datac => \C2|LessThan3~8_combout\,
	datad => \C2|LessThan3~7_combout\,
	combout => \C2|LessThan3~9_combout\);

-- Location: LCCOMB_X34_Y31_N12
\C2|process_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|process_2~3_combout\ = (\C2|process_2~2_combout\ & (((!\C2|LessThan3~6_combout\) # (!\C2|LessThan3~9_combout\)) # (!\C2|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan3~4_combout\,
	datab => \C2|process_2~2_combout\,
	datac => \C2|LessThan3~9_combout\,
	datad => \C2|LessThan3~6_combout\,
	combout => \C2|process_2~3_combout\);

-- Location: LCCOMB_X35_Y29_N30
\C2|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add1~62_combout\ = \C2|P1\(31) $ (\C2|Add1~61\ $ (\C2|process_2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(31),
	datad => \C2|process_2~3_combout\,
	cin => \C2|Add1~61\,
	combout => \C2|Add1~62_combout\);

-- Location: LCFF_X35_Y29_N31
\C2|P1[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~62_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(31));

-- Location: LCFF_X35_Y29_N13
\C2|P1[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add1~44_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(22));

-- Location: LCCOMB_X35_Y27_N0
\C2|P1[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P1[6]~5_combout\ = !\C2|Add1~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|Add1~12_combout\,
	combout => \C2|P1[6]~5_combout\);

-- Location: LCFF_X35_Y27_N1
\C2|P1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|P1[6]~5_combout\,
	ena => \C2|P1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P1\(6));

-- Location: LCCOMB_X35_Y27_N6
\C2|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~2_combout\ = (\C2|P1\(4) & (!\C2|Add4~1\)) # (!\C2|P1\(4) & ((\C2|Add4~1\) # (GND)))
-- \C2|Add4~3\ = CARRY((!\C2|Add4~1\) # (!\C2|P1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(4),
	datad => VCC,
	cin => \C2|Add4~1\,
	combout => \C2|Add4~2_combout\,
	cout => \C2|Add4~3\);

-- Location: LCCOMB_X35_Y27_N8
\C2|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~4_combout\ = (\C2|P1\(5) & (\C2|Add4~3\ $ (GND))) # (!\C2|P1\(5) & (!\C2|Add4~3\ & VCC))
-- \C2|Add4~5\ = CARRY((\C2|P1\(5) & !\C2|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(5),
	datad => VCC,
	cin => \C2|Add4~3\,
	combout => \C2|Add4~4_combout\,
	cout => \C2|Add4~5\);

-- Location: LCCOMB_X35_Y27_N10
\C2|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~6_combout\ = (\C2|P1\(6) & (!\C2|Add4~5\)) # (!\C2|P1\(6) & (\C2|Add4~5\ & VCC))
-- \C2|Add4~7\ = CARRY((\C2|P1\(6) & !\C2|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(6),
	datad => VCC,
	cin => \C2|Add4~5\,
	combout => \C2|Add4~6_combout\,
	cout => \C2|Add4~7\);

-- Location: LCCOMB_X35_Y27_N12
\C2|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~8_combout\ = (\C2|P1\(7) & ((GND) # (!\C2|Add4~7\))) # (!\C2|P1\(7) & (\C2|Add4~7\ $ (GND)))
-- \C2|Add4~9\ = CARRY((\C2|P1\(7)) # (!\C2|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(7),
	datad => VCC,
	cin => \C2|Add4~7\,
	combout => \C2|Add4~8_combout\,
	cout => \C2|Add4~9\);

-- Location: LCCOMB_X35_Y27_N16
\C2|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~12_combout\ = (\C2|P1\(9) & ((GND) # (!\C2|Add4~11\))) # (!\C2|P1\(9) & (\C2|Add4~11\ $ (GND)))
-- \C2|Add4~13\ = CARRY((\C2|P1\(9)) # (!\C2|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(9),
	datad => VCC,
	cin => \C2|Add4~11\,
	combout => \C2|Add4~12_combout\,
	cout => \C2|Add4~13\);

-- Location: LCCOMB_X35_Y27_N22
\C2|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~18_combout\ = (\C2|P1\(12) & (\C2|Add4~17\ & VCC)) # (!\C2|P1\(12) & (!\C2|Add4~17\))
-- \C2|Add4~19\ = CARRY((!\C2|P1\(12) & !\C2|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(12),
	datad => VCC,
	cin => \C2|Add4~17\,
	combout => \C2|Add4~18_combout\,
	cout => \C2|Add4~19\);

-- Location: LCCOMB_X35_Y27_N24
\C2|Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~20_combout\ = (\C2|P1\(13) & ((GND) # (!\C2|Add4~19\))) # (!\C2|P1\(13) & (\C2|Add4~19\ $ (GND)))
-- \C2|Add4~21\ = CARRY((\C2|P1\(13)) # (!\C2|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(13),
	datad => VCC,
	cin => \C2|Add4~19\,
	combout => \C2|Add4~20_combout\,
	cout => \C2|Add4~21\);

-- Location: LCCOMB_X35_Y27_N30
\C2|Add4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~26_combout\ = (\C2|P1\(16) & (\C2|Add4~25\ & VCC)) # (!\C2|P1\(16) & (!\C2|Add4~25\))
-- \C2|Add4~27\ = CARRY((!\C2|P1\(16) & !\C2|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(16),
	datad => VCC,
	cin => \C2|Add4~25\,
	combout => \C2|Add4~26_combout\,
	cout => \C2|Add4~27\);

-- Location: LCCOMB_X35_Y26_N0
\C2|Add4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~28_combout\ = (\C2|P1\(17) & ((GND) # (!\C2|Add4~27\))) # (!\C2|P1\(17) & (\C2|Add4~27\ $ (GND)))
-- \C2|Add4~29\ = CARRY((\C2|P1\(17)) # (!\C2|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(17),
	datad => VCC,
	cin => \C2|Add4~27\,
	combout => \C2|Add4~28_combout\,
	cout => \C2|Add4~29\);

-- Location: LCCOMB_X35_Y26_N2
\C2|Add4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~30_combout\ = (\C2|P1\(18) & (\C2|Add4~29\ & VCC)) # (!\C2|P1\(18) & (!\C2|Add4~29\))
-- \C2|Add4~31\ = CARRY((!\C2|P1\(18) & !\C2|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(18),
	datad => VCC,
	cin => \C2|Add4~29\,
	combout => \C2|Add4~30_combout\,
	cout => \C2|Add4~31\);

-- Location: LCCOMB_X35_Y26_N6
\C2|Add4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~34_combout\ = (\C2|P1\(20) & (\C2|Add4~33\ & VCC)) # (!\C2|P1\(20) & (!\C2|Add4~33\))
-- \C2|Add4~35\ = CARRY((!\C2|P1\(20) & !\C2|Add4~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(20),
	datad => VCC,
	cin => \C2|Add4~33\,
	combout => \C2|Add4~34_combout\,
	cout => \C2|Add4~35\);

-- Location: LCCOMB_X35_Y26_N12
\C2|Add4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~40_combout\ = (\C2|P1\(23) & ((GND) # (!\C2|Add4~39\))) # (!\C2|P1\(23) & (\C2|Add4~39\ $ (GND)))
-- \C2|Add4~41\ = CARRY((\C2|P1\(23)) # (!\C2|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(23),
	datad => VCC,
	cin => \C2|Add4~39\,
	combout => \C2|Add4~40_combout\,
	cout => \C2|Add4~41\);

-- Location: LCCOMB_X35_Y26_N18
\C2|Add4~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~46_combout\ = (\C2|P1\(26) & (\C2|Add4~45\ & VCC)) # (!\C2|P1\(26) & (!\C2|Add4~45\))
-- \C2|Add4~47\ = CARRY((!\C2|P1\(26) & !\C2|Add4~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(26),
	datad => VCC,
	cin => \C2|Add4~45\,
	combout => \C2|Add4~46_combout\,
	cout => \C2|Add4~47\);

-- Location: LCCOMB_X35_Y26_N20
\C2|Add4~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~48_combout\ = (\C2|P1\(27) & ((GND) # (!\C2|Add4~47\))) # (!\C2|P1\(27) & (\C2|Add4~47\ $ (GND)))
-- \C2|Add4~49\ = CARRY((\C2|P1\(27)) # (!\C2|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(27),
	datad => VCC,
	cin => \C2|Add4~47\,
	combout => \C2|Add4~48_combout\,
	cout => \C2|Add4~49\);

-- Location: LCCOMB_X35_Y26_N24
\C2|Add4~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~52_combout\ = (\C2|P1\(29) & ((GND) # (!\C2|Add4~51\))) # (!\C2|P1\(29) & (\C2|Add4~51\ $ (GND)))
-- \C2|Add4~53\ = CARRY((\C2|P1\(29)) # (!\C2|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(29),
	datad => VCC,
	cin => \C2|Add4~51\,
	combout => \C2|Add4~52_combout\,
	cout => \C2|Add4~53\);

-- Location: LCCOMB_X35_Y26_N26
\C2|Add4~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~54_combout\ = (\C2|P1\(30) & (\C2|Add4~53\ & VCC)) # (!\C2|P1\(30) & (!\C2|Add4~53\))
-- \C2|Add4~55\ = CARRY((!\C2|P1\(30) & !\C2|Add4~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(30),
	datad => VCC,
	cin => \C2|Add4~53\,
	combout => \C2|Add4~54_combout\,
	cout => \C2|Add4~55\);

-- Location: LCCOMB_X35_Y26_N28
\C2|Add4~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add4~56_combout\ = \C2|Add4~55\ $ (\C2|P1\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C2|P1\(31),
	cin => \C2|Add4~55\,
	combout => \C2|Add4~56_combout\);

-- Location: LCCOMB_X29_Y28_N26
\C2|Add8~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~63_combout\ = (\C2|currentS.s1~regout\ & \C2|Add8~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add8~58_combout\,
	combout => \C2|Add8~63_combout\);

-- Location: LCFF_X29_Y28_N27
\C2|BV[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(28));

-- Location: LCCOMB_X29_Y28_N0
\C2|Add8~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~66_combout\ = (\C2|currentS.s1~regout\ & \C2|Add8~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add8~52_combout\,
	combout => \C2|Add8~66_combout\);

-- Location: LCFF_X30_Y28_N13
\C2|BV[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~66_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(25));

-- Location: LCCOMB_X32_Y29_N8
\C2|Add8~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~81_combout\ = (\C2|Add8~22_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~22_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~81_combout\);

-- Location: LCFF_X31_Y29_N15
\C2|BV[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~81_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(10));

-- Location: LCCOMB_X29_Y29_N22
\C2|Add8~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~83_combout\ = (!\C2|Add8~18_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add8~18_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~83_combout\);

-- Location: LCFF_X31_Y29_N25
\C2|BV[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add8~83_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(8));

-- Location: LCCOMB_X31_Y27_N0
\C2|LessThan13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~1_cout\ = CARRY((\C2|BH\(0) & \C2|P1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(0),
	datab => \C2|P1\(0),
	datad => VCC,
	cout => \C2|LessThan13~1_cout\);

-- Location: LCCOMB_X31_Y27_N2
\C2|LessThan13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~3_cout\ = CARRY((\C2|BV\(1) & (\C2|P1\(1) & !\C2|LessThan13~1_cout\)) # (!\C2|BV\(1) & ((\C2|P1\(1)) # (!\C2|LessThan13~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(1),
	datab => \C2|P1\(1),
	datad => VCC,
	cin => \C2|LessThan13~1_cout\,
	cout => \C2|LessThan13~3_cout\);

-- Location: LCCOMB_X31_Y27_N4
\C2|LessThan13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~5_cout\ = CARRY((\C2|P1\(2) & (!\C2|BV\(2) & !\C2|LessThan13~3_cout\)) # (!\C2|P1\(2) & ((!\C2|LessThan13~3_cout\) # (!\C2|BV\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(2),
	datab => \C2|BV\(2),
	datad => VCC,
	cin => \C2|LessThan13~3_cout\,
	cout => \C2|LessThan13~5_cout\);

-- Location: LCCOMB_X31_Y27_N6
\C2|LessThan13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~7_cout\ = CARRY((\C2|Add4~0_combout\ & ((!\C2|LessThan13~5_cout\) # (!\C2|BV\(3)))) # (!\C2|Add4~0_combout\ & (!\C2|BV\(3) & !\C2|LessThan13~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~0_combout\,
	datab => \C2|BV\(3),
	datad => VCC,
	cin => \C2|LessThan13~5_cout\,
	cout => \C2|LessThan13~7_cout\);

-- Location: LCCOMB_X31_Y27_N8
\C2|LessThan13~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~9_cout\ = CARRY((\C2|BV\(4) & ((!\C2|LessThan13~7_cout\) # (!\C2|Add4~2_combout\))) # (!\C2|BV\(4) & (!\C2|Add4~2_combout\ & !\C2|LessThan13~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(4),
	datab => \C2|Add4~2_combout\,
	datad => VCC,
	cin => \C2|LessThan13~7_cout\,
	cout => \C2|LessThan13~9_cout\);

-- Location: LCCOMB_X31_Y27_N10
\C2|LessThan13~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~11_cout\ = CARRY((\C2|BV\(5) & ((\C2|Add4~4_combout\) # (!\C2|LessThan13~9_cout\))) # (!\C2|BV\(5) & (\C2|Add4~4_combout\ & !\C2|LessThan13~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(5),
	datab => \C2|Add4~4_combout\,
	datad => VCC,
	cin => \C2|LessThan13~9_cout\,
	cout => \C2|LessThan13~11_cout\);

-- Location: LCCOMB_X31_Y27_N12
\C2|LessThan13~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~13_cout\ = CARRY((\C2|BV\(6) & ((!\C2|LessThan13~11_cout\) # (!\C2|Add4~6_combout\))) # (!\C2|BV\(6) & (!\C2|Add4~6_combout\ & !\C2|LessThan13~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(6),
	datab => \C2|Add4~6_combout\,
	datad => VCC,
	cin => \C2|LessThan13~11_cout\,
	cout => \C2|LessThan13~13_cout\);

-- Location: LCCOMB_X31_Y27_N14
\C2|LessThan13~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~15_cout\ = CARRY((\C2|BV\(7) & ((\C2|Add4~8_combout\) # (!\C2|LessThan13~13_cout\))) # (!\C2|BV\(7) & (\C2|Add4~8_combout\ & !\C2|LessThan13~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(7),
	datab => \C2|Add4~8_combout\,
	datad => VCC,
	cin => \C2|LessThan13~13_cout\,
	cout => \C2|LessThan13~15_cout\);

-- Location: LCCOMB_X31_Y27_N16
\C2|LessThan13~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~17_cout\ = CARRY((\C2|Add4~10_combout\ & (!\C2|BV\(8) & !\C2|LessThan13~15_cout\)) # (!\C2|Add4~10_combout\ & ((!\C2|LessThan13~15_cout\) # (!\C2|BV\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~10_combout\,
	datab => \C2|BV\(8),
	datad => VCC,
	cin => \C2|LessThan13~15_cout\,
	cout => \C2|LessThan13~17_cout\);

-- Location: LCCOMB_X31_Y27_N18
\C2|LessThan13~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~19_cout\ = CARRY((\C2|BV\(9) & (\C2|Add4~12_combout\ & !\C2|LessThan13~17_cout\)) # (!\C2|BV\(9) & ((\C2|Add4~12_combout\) # (!\C2|LessThan13~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(9),
	datab => \C2|Add4~12_combout\,
	datad => VCC,
	cin => \C2|LessThan13~17_cout\,
	cout => \C2|LessThan13~19_cout\);

-- Location: LCCOMB_X31_Y27_N20
\C2|LessThan13~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~21_cout\ = CARRY((\C2|Add4~14_combout\ & (\C2|BV\(10) & !\C2|LessThan13~19_cout\)) # (!\C2|Add4~14_combout\ & ((\C2|BV\(10)) # (!\C2|LessThan13~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~14_combout\,
	datab => \C2|BV\(10),
	datad => VCC,
	cin => \C2|LessThan13~19_cout\,
	cout => \C2|LessThan13~21_cout\);

-- Location: LCCOMB_X31_Y27_N22
\C2|LessThan13~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~23_cout\ = CARRY((\C2|Add4~16_combout\ & ((!\C2|LessThan13~21_cout\) # (!\C2|BV\(11)))) # (!\C2|Add4~16_combout\ & (!\C2|BV\(11) & !\C2|LessThan13~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~16_combout\,
	datab => \C2|BV\(11),
	datad => VCC,
	cin => \C2|LessThan13~21_cout\,
	cout => \C2|LessThan13~23_cout\);

-- Location: LCCOMB_X31_Y27_N24
\C2|LessThan13~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~25_cout\ = CARRY((\C2|BV\(12) & ((!\C2|LessThan13~23_cout\) # (!\C2|Add4~18_combout\))) # (!\C2|BV\(12) & (!\C2|Add4~18_combout\ & !\C2|LessThan13~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(12),
	datab => \C2|Add4~18_combout\,
	datad => VCC,
	cin => \C2|LessThan13~23_cout\,
	cout => \C2|LessThan13~25_cout\);

-- Location: LCCOMB_X31_Y27_N26
\C2|LessThan13~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~27_cout\ = CARRY((\C2|BV\(13) & (\C2|Add4~20_combout\ & !\C2|LessThan13~25_cout\)) # (!\C2|BV\(13) & ((\C2|Add4~20_combout\) # (!\C2|LessThan13~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(13),
	datab => \C2|Add4~20_combout\,
	datad => VCC,
	cin => \C2|LessThan13~25_cout\,
	cout => \C2|LessThan13~27_cout\);

-- Location: LCCOMB_X31_Y27_N28
\C2|LessThan13~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~29_cout\ = CARRY((\C2|Add4~22_combout\ & (\C2|BV\(14) & !\C2|LessThan13~27_cout\)) # (!\C2|Add4~22_combout\ & ((\C2|BV\(14)) # (!\C2|LessThan13~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~22_combout\,
	datab => \C2|BV\(14),
	datad => VCC,
	cin => \C2|LessThan13~27_cout\,
	cout => \C2|LessThan13~29_cout\);

-- Location: LCCOMB_X31_Y27_N30
\C2|LessThan13~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~31_cout\ = CARRY((\C2|Add4~24_combout\ & ((!\C2|LessThan13~29_cout\) # (!\C2|BV\(15)))) # (!\C2|Add4~24_combout\ & (!\C2|BV\(15) & !\C2|LessThan13~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~24_combout\,
	datab => \C2|BV\(15),
	datad => VCC,
	cin => \C2|LessThan13~29_cout\,
	cout => \C2|LessThan13~31_cout\);

-- Location: LCCOMB_X31_Y26_N0
\C2|LessThan13~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~33_cout\ = CARRY((\C2|BV\(16) & ((!\C2|LessThan13~31_cout\) # (!\C2|Add4~26_combout\))) # (!\C2|BV\(16) & (!\C2|Add4~26_combout\ & !\C2|LessThan13~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(16),
	datab => \C2|Add4~26_combout\,
	datad => VCC,
	cin => \C2|LessThan13~31_cout\,
	cout => \C2|LessThan13~33_cout\);

-- Location: LCCOMB_X31_Y26_N2
\C2|LessThan13~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~35_cout\ = CARRY((\C2|BV\(17) & (\C2|Add4~28_combout\ & !\C2|LessThan13~33_cout\)) # (!\C2|BV\(17) & ((\C2|Add4~28_combout\) # (!\C2|LessThan13~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(17),
	datab => \C2|Add4~28_combout\,
	datad => VCC,
	cin => \C2|LessThan13~33_cout\,
	cout => \C2|LessThan13~35_cout\);

-- Location: LCCOMB_X31_Y26_N4
\C2|LessThan13~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~37_cout\ = CARRY((\C2|BV\(18) & ((!\C2|LessThan13~35_cout\) # (!\C2|Add4~30_combout\))) # (!\C2|BV\(18) & (!\C2|Add4~30_combout\ & !\C2|LessThan13~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(18),
	datab => \C2|Add4~30_combout\,
	datad => VCC,
	cin => \C2|LessThan13~35_cout\,
	cout => \C2|LessThan13~37_cout\);

-- Location: LCCOMB_X31_Y26_N6
\C2|LessThan13~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~39_cout\ = CARRY((\C2|Add4~32_combout\ & ((!\C2|LessThan13~37_cout\) # (!\C2|BV\(19)))) # (!\C2|Add4~32_combout\ & (!\C2|BV\(19) & !\C2|LessThan13~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~32_combout\,
	datab => \C2|BV\(19),
	datad => VCC,
	cin => \C2|LessThan13~37_cout\,
	cout => \C2|LessThan13~39_cout\);

-- Location: LCCOMB_X31_Y26_N8
\C2|LessThan13~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~41_cout\ = CARRY((\C2|BV\(20) & ((!\C2|LessThan13~39_cout\) # (!\C2|Add4~34_combout\))) # (!\C2|BV\(20) & (!\C2|Add4~34_combout\ & !\C2|LessThan13~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(20),
	datab => \C2|Add4~34_combout\,
	datad => VCC,
	cin => \C2|LessThan13~39_cout\,
	cout => \C2|LessThan13~41_cout\);

-- Location: LCCOMB_X31_Y26_N10
\C2|LessThan13~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~43_cout\ = CARRY((\C2|Add4~36_combout\ & ((!\C2|LessThan13~41_cout\) # (!\C2|BV\(21)))) # (!\C2|Add4~36_combout\ & (!\C2|BV\(21) & !\C2|LessThan13~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~36_combout\,
	datab => \C2|BV\(21),
	datad => VCC,
	cin => \C2|LessThan13~41_cout\,
	cout => \C2|LessThan13~43_cout\);

-- Location: LCCOMB_X31_Y26_N12
\C2|LessThan13~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~45_cout\ = CARRY((\C2|Add4~38_combout\ & (\C2|BV\(22) & !\C2|LessThan13~43_cout\)) # (!\C2|Add4~38_combout\ & ((\C2|BV\(22)) # (!\C2|LessThan13~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~38_combout\,
	datab => \C2|BV\(22),
	datad => VCC,
	cin => \C2|LessThan13~43_cout\,
	cout => \C2|LessThan13~45_cout\);

-- Location: LCCOMB_X31_Y26_N14
\C2|LessThan13~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~47_cout\ = CARRY((\C2|BV\(23) & (\C2|Add4~40_combout\ & !\C2|LessThan13~45_cout\)) # (!\C2|BV\(23) & ((\C2|Add4~40_combout\) # (!\C2|LessThan13~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(23),
	datab => \C2|Add4~40_combout\,
	datad => VCC,
	cin => \C2|LessThan13~45_cout\,
	cout => \C2|LessThan13~47_cout\);

-- Location: LCCOMB_X31_Y26_N16
\C2|LessThan13~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~49_cout\ = CARRY((\C2|Add4~42_combout\ & (\C2|BV\(24) & !\C2|LessThan13~47_cout\)) # (!\C2|Add4~42_combout\ & ((\C2|BV\(24)) # (!\C2|LessThan13~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~42_combout\,
	datab => \C2|BV\(24),
	datad => VCC,
	cin => \C2|LessThan13~47_cout\,
	cout => \C2|LessThan13~49_cout\);

-- Location: LCCOMB_X31_Y26_N18
\C2|LessThan13~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~51_cout\ = CARRY((\C2|Add4~44_combout\ & ((!\C2|LessThan13~49_cout\) # (!\C2|BV\(25)))) # (!\C2|Add4~44_combout\ & (!\C2|BV\(25) & !\C2|LessThan13~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~44_combout\,
	datab => \C2|BV\(25),
	datad => VCC,
	cin => \C2|LessThan13~49_cout\,
	cout => \C2|LessThan13~51_cout\);

-- Location: LCCOMB_X31_Y26_N20
\C2|LessThan13~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~53_cout\ = CARRY((\C2|BV\(26) & ((!\C2|LessThan13~51_cout\) # (!\C2|Add4~46_combout\))) # (!\C2|BV\(26) & (!\C2|Add4~46_combout\ & !\C2|LessThan13~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(26),
	datab => \C2|Add4~46_combout\,
	datad => VCC,
	cin => \C2|LessThan13~51_cout\,
	cout => \C2|LessThan13~53_cout\);

-- Location: LCCOMB_X31_Y26_N22
\C2|LessThan13~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~55_cout\ = CARRY((\C2|BV\(27) & (\C2|Add4~48_combout\ & !\C2|LessThan13~53_cout\)) # (!\C2|BV\(27) & ((\C2|Add4~48_combout\) # (!\C2|LessThan13~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(27),
	datab => \C2|Add4~48_combout\,
	datad => VCC,
	cin => \C2|LessThan13~53_cout\,
	cout => \C2|LessThan13~55_cout\);

-- Location: LCCOMB_X31_Y26_N24
\C2|LessThan13~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~57_cout\ = CARRY((\C2|Add4~50_combout\ & (\C2|BV\(28) & !\C2|LessThan13~55_cout\)) # (!\C2|Add4~50_combout\ & ((\C2|BV\(28)) # (!\C2|LessThan13~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add4~50_combout\,
	datab => \C2|BV\(28),
	datad => VCC,
	cin => \C2|LessThan13~55_cout\,
	cout => \C2|LessThan13~57_cout\);

-- Location: LCCOMB_X31_Y26_N26
\C2|LessThan13~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~59_cout\ = CARRY((\C2|BV\(29) & (\C2|Add4~52_combout\ & !\C2|LessThan13~57_cout\)) # (!\C2|BV\(29) & ((\C2|Add4~52_combout\) # (!\C2|LessThan13~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(29),
	datab => \C2|Add4~52_combout\,
	datad => VCC,
	cin => \C2|LessThan13~57_cout\,
	cout => \C2|LessThan13~59_cout\);

-- Location: LCCOMB_X31_Y26_N28
\C2|LessThan13~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~61_cout\ = CARRY((\C2|BV\(30) & ((!\C2|LessThan13~59_cout\) # (!\C2|Add4~54_combout\))) # (!\C2|BV\(30) & (!\C2|Add4~54_combout\ & !\C2|LessThan13~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(30),
	datab => \C2|Add4~54_combout\,
	datad => VCC,
	cin => \C2|LessThan13~59_cout\,
	cout => \C2|LessThan13~61_cout\);

-- Location: LCCOMB_X31_Y26_N30
\C2|LessThan13~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan13~62_combout\ = (\C2|BV\(31) & (\C2|LessThan13~61_cout\ & \C2|Add4~56_combout\)) # (!\C2|BV\(31) & ((\C2|LessThan13~61_cout\) # (\C2|Add4~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(31),
	datad => \C2|Add4~56_combout\,
	cin => \C2|LessThan13~61_cout\,
	combout => \C2|LessThan13~62_combout\);

-- Location: LCCOMB_X34_Y30_N4
\C3|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~2_combout\ = (\C2|P1\(3) & (\C3|Add1~1\ & VCC)) # (!\C2|P1\(3) & (!\C3|Add1~1\))
-- \C3|Add1~3\ = CARRY((!\C2|P1\(3) & !\C3|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(3),
	datad => VCC,
	cin => \C3|Add1~1\,
	combout => \C3|Add1~2_combout\,
	cout => \C3|Add1~3\);

-- Location: LCCOMB_X34_Y30_N6
\C3|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~4_combout\ = (\C2|P1\(4) & ((GND) # (!\C3|Add1~3\))) # (!\C2|P1\(4) & (\C3|Add1~3\ $ (GND)))
-- \C3|Add1~5\ = CARRY((\C2|P1\(4)) # (!\C3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(4),
	datad => VCC,
	cin => \C3|Add1~3\,
	combout => \C3|Add1~4_combout\,
	cout => \C3|Add1~5\);

-- Location: LCCOMB_X34_Y30_N8
\C3|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~6_combout\ = (\C2|P1\(5) & (\C3|Add1~5\ & VCC)) # (!\C2|P1\(5) & (!\C3|Add1~5\))
-- \C3|Add1~7\ = CARRY((!\C2|P1\(5) & !\C3|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(5),
	datad => VCC,
	cin => \C3|Add1~5\,
	combout => \C3|Add1~6_combout\,
	cout => \C3|Add1~7\);

-- Location: LCCOMB_X34_Y30_N10
\C3|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~8_combout\ = (\C2|P1\(6) & (\C3|Add1~7\ $ (GND))) # (!\C2|P1\(6) & ((GND) # (!\C3|Add1~7\)))
-- \C3|Add1~9\ = CARRY((!\C3|Add1~7\) # (!\C2|P1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(6),
	datad => VCC,
	cin => \C3|Add1~7\,
	combout => \C3|Add1~8_combout\,
	cout => \C3|Add1~9\);

-- Location: LCCOMB_X34_Y30_N12
\C3|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~10_combout\ = (\C2|P1\(7) & (\C3|Add1~9\ & VCC)) # (!\C2|P1\(7) & (!\C3|Add1~9\))
-- \C3|Add1~11\ = CARRY((!\C2|P1\(7) & !\C3|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(7),
	datad => VCC,
	cin => \C3|Add1~9\,
	combout => \C3|Add1~10_combout\,
	cout => \C3|Add1~11\);

-- Location: LCCOMB_X34_Y30_N14
\C3|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~12_combout\ = (\C2|P1\(8) & (!\C3|Add1~11\ & VCC)) # (!\C2|P1\(8) & (\C3|Add1~11\ $ (GND)))
-- \C3|Add1~13\ = CARRY((!\C2|P1\(8) & !\C3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(8),
	datad => VCC,
	cin => \C3|Add1~11\,
	combout => \C3|Add1~12_combout\,
	cout => \C3|Add1~13\);

-- Location: LCCOMB_X34_Y30_N16
\C3|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~14_combout\ = (\C2|P1\(9) & (!\C3|Add1~13\)) # (!\C2|P1\(9) & ((\C3|Add1~13\) # (GND)))
-- \C3|Add1~15\ = CARRY((!\C3|Add1~13\) # (!\C2|P1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(9),
	datad => VCC,
	cin => \C3|Add1~13\,
	combout => \C3|Add1~14_combout\,
	cout => \C3|Add1~15\);

-- Location: LCCOMB_X34_Y30_N18
\C3|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~16_combout\ = (\C2|P1\(10) & (\C3|Add1~15\ $ (GND))) # (!\C2|P1\(10) & (!\C3|Add1~15\ & VCC))
-- \C3|Add1~17\ = CARRY((\C2|P1\(10) & !\C3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(10),
	datad => VCC,
	cin => \C3|Add1~15\,
	combout => \C3|Add1~16_combout\,
	cout => \C3|Add1~17\);

-- Location: LCCOMB_X34_Y30_N20
\C3|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~18_combout\ = (\C2|P1\(11) & (!\C3|Add1~17\)) # (!\C2|P1\(11) & ((\C3|Add1~17\) # (GND)))
-- \C3|Add1~19\ = CARRY((!\C3|Add1~17\) # (!\C2|P1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(11),
	datad => VCC,
	cin => \C3|Add1~17\,
	combout => \C3|Add1~18_combout\,
	cout => \C3|Add1~19\);

-- Location: LCCOMB_X34_Y30_N22
\C3|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~20_combout\ = (\C2|P1\(12) & (\C3|Add1~19\ $ (GND))) # (!\C2|P1\(12) & (!\C3|Add1~19\ & VCC))
-- \C3|Add1~21\ = CARRY((\C2|P1\(12) & !\C3|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(12),
	datad => VCC,
	cin => \C3|Add1~19\,
	combout => \C3|Add1~20_combout\,
	cout => \C3|Add1~21\);

-- Location: LCCOMB_X34_Y30_N24
\C3|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~22_combout\ = (\C2|P1\(13) & (!\C3|Add1~21\)) # (!\C2|P1\(13) & ((\C3|Add1~21\) # (GND)))
-- \C3|Add1~23\ = CARRY((!\C3|Add1~21\) # (!\C2|P1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(13),
	datad => VCC,
	cin => \C3|Add1~21\,
	combout => \C3|Add1~22_combout\,
	cout => \C3|Add1~23\);

-- Location: LCCOMB_X34_Y30_N26
\C3|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~24_combout\ = (\C2|P1\(14) & (\C3|Add1~23\ $ (GND))) # (!\C2|P1\(14) & (!\C3|Add1~23\ & VCC))
-- \C3|Add1~25\ = CARRY((\C2|P1\(14) & !\C3|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(14),
	datad => VCC,
	cin => \C3|Add1~23\,
	combout => \C3|Add1~24_combout\,
	cout => \C3|Add1~25\);

-- Location: LCCOMB_X34_Y30_N28
\C3|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~26_combout\ = (\C2|P1\(15) & (!\C3|Add1~25\)) # (!\C2|P1\(15) & ((\C3|Add1~25\) # (GND)))
-- \C3|Add1~27\ = CARRY((!\C3|Add1~25\) # (!\C2|P1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(15),
	datad => VCC,
	cin => \C3|Add1~25\,
	combout => \C3|Add1~26_combout\,
	cout => \C3|Add1~27\);

-- Location: LCCOMB_X34_Y30_N30
\C3|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~28_combout\ = (\C2|P1\(16) & (\C3|Add1~27\ $ (GND))) # (!\C2|P1\(16) & (!\C3|Add1~27\ & VCC))
-- \C3|Add1~29\ = CARRY((\C2|P1\(16) & !\C3|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(16),
	datad => VCC,
	cin => \C3|Add1~27\,
	combout => \C3|Add1~28_combout\,
	cout => \C3|Add1~29\);

-- Location: LCCOMB_X34_Y29_N0
\C3|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~30_combout\ = (\C2|P1\(17) & (!\C3|Add1~29\)) # (!\C2|P1\(17) & ((\C3|Add1~29\) # (GND)))
-- \C3|Add1~31\ = CARRY((!\C3|Add1~29\) # (!\C2|P1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(17),
	datad => VCC,
	cin => \C3|Add1~29\,
	combout => \C3|Add1~30_combout\,
	cout => \C3|Add1~31\);

-- Location: LCCOMB_X34_Y29_N2
\C3|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~32_combout\ = (\C2|P1\(18) & (\C3|Add1~31\ $ (GND))) # (!\C2|P1\(18) & (!\C3|Add1~31\ & VCC))
-- \C3|Add1~33\ = CARRY((\C2|P1\(18) & !\C3|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(18),
	datad => VCC,
	cin => \C3|Add1~31\,
	combout => \C3|Add1~32_combout\,
	cout => \C3|Add1~33\);

-- Location: LCCOMB_X34_Y29_N4
\C3|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~34_combout\ = (\C2|P1\(19) & (!\C3|Add1~33\)) # (!\C2|P1\(19) & ((\C3|Add1~33\) # (GND)))
-- \C3|Add1~35\ = CARRY((!\C3|Add1~33\) # (!\C2|P1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(19),
	datad => VCC,
	cin => \C3|Add1~33\,
	combout => \C3|Add1~34_combout\,
	cout => \C3|Add1~35\);

-- Location: LCCOMB_X34_Y29_N8
\C3|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~38_combout\ = (\C2|P1\(21) & (!\C3|Add1~37\)) # (!\C2|P1\(21) & ((\C3|Add1~37\) # (GND)))
-- \C3|Add1~39\ = CARRY((!\C3|Add1~37\) # (!\C2|P1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(21),
	datad => VCC,
	cin => \C3|Add1~37\,
	combout => \C3|Add1~38_combout\,
	cout => \C3|Add1~39\);

-- Location: LCCOMB_X34_Y29_N10
\C3|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~40_combout\ = (\C2|P1\(22) & (\C3|Add1~39\ $ (GND))) # (!\C2|P1\(22) & (!\C3|Add1~39\ & VCC))
-- \C3|Add1~41\ = CARRY((\C2|P1\(22) & !\C3|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(22),
	datad => VCC,
	cin => \C3|Add1~39\,
	combout => \C3|Add1~40_combout\,
	cout => \C3|Add1~41\);

-- Location: LCCOMB_X34_Y29_N12
\C3|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~42_combout\ = (\C2|P1\(23) & (!\C3|Add1~41\)) # (!\C2|P1\(23) & ((\C3|Add1~41\) # (GND)))
-- \C3|Add1~43\ = CARRY((!\C3|Add1~41\) # (!\C2|P1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(23),
	datad => VCC,
	cin => \C3|Add1~41\,
	combout => \C3|Add1~42_combout\,
	cout => \C3|Add1~43\);

-- Location: LCCOMB_X34_Y29_N14
\C3|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~44_combout\ = (\C2|P1\(24) & (\C3|Add1~43\ $ (GND))) # (!\C2|P1\(24) & (!\C3|Add1~43\ & VCC))
-- \C3|Add1~45\ = CARRY((\C2|P1\(24) & !\C3|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(24),
	datad => VCC,
	cin => \C3|Add1~43\,
	combout => \C3|Add1~44_combout\,
	cout => \C3|Add1~45\);

-- Location: LCCOMB_X34_Y29_N18
\C3|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~48_combout\ = (\C2|P1\(26) & (\C3|Add1~47\ $ (GND))) # (!\C2|P1\(26) & (!\C3|Add1~47\ & VCC))
-- \C3|Add1~49\ = CARRY((\C2|P1\(26) & !\C3|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(26),
	datad => VCC,
	cin => \C3|Add1~47\,
	combout => \C3|Add1~48_combout\,
	cout => \C3|Add1~49\);

-- Location: LCCOMB_X34_Y29_N20
\C3|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~50_combout\ = (\C2|P1\(27) & (!\C3|Add1~49\)) # (!\C2|P1\(27) & ((\C3|Add1~49\) # (GND)))
-- \C3|Add1~51\ = CARRY((!\C3|Add1~49\) # (!\C2|P1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(27),
	datad => VCC,
	cin => \C3|Add1~49\,
	combout => \C3|Add1~50_combout\,
	cout => \C3|Add1~51\);

-- Location: LCCOMB_X34_Y29_N22
\C3|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~52_combout\ = (\C2|P1\(28) & (\C3|Add1~51\ $ (GND))) # (!\C2|P1\(28) & (!\C3|Add1~51\ & VCC))
-- \C3|Add1~53\ = CARRY((\C2|P1\(28) & !\C3|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(28),
	datad => VCC,
	cin => \C3|Add1~51\,
	combout => \C3|Add1~52_combout\,
	cout => \C3|Add1~53\);

-- Location: LCCOMB_X34_Y29_N24
\C3|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~54_combout\ = (\C2|P1\(29) & (!\C3|Add1~53\)) # (!\C2|P1\(29) & ((\C3|Add1~53\) # (GND)))
-- \C3|Add1~55\ = CARRY((!\C3|Add1~53\) # (!\C2|P1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(29),
	datad => VCC,
	cin => \C3|Add1~53\,
	combout => \C3|Add1~54_combout\,
	cout => \C3|Add1~55\);

-- Location: LCCOMB_X34_Y29_N26
\C3|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~56_combout\ = (\C2|P1\(30) & (\C3|Add1~55\ $ (GND))) # (!\C2|P1\(30) & (!\C3|Add1~55\ & VCC))
-- \C3|Add1~57\ = CARRY((\C2|P1\(30) & !\C3|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P1\(30),
	datad => VCC,
	cin => \C3|Add1~55\,
	combout => \C3|Add1~56_combout\,
	cout => \C3|Add1~57\);

-- Location: LCCOMB_X34_Y29_N28
\C3|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add1~58_combout\ = \C3|Add1~57\ $ (\C2|P1\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C2|P1\(31),
	cin => \C3|Add1~57\,
	combout => \C3|Add1~58_combout\);

-- Location: LCCOMB_X29_Y28_N12
\C2|Add8~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~92_combout\ = (\C2|currentS.s1~regout\ & \C2|Add8~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add8~90_combout\,
	combout => \C2|Add8~92_combout\);

-- Location: LCFF_X29_Y28_N13
\C2|BV[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(30));

-- Location: LCCOMB_X30_Y30_N0
\C2|Add8~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add8~93_combout\ = (\C2|Add8~4_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add8~4_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add8~93_combout\);

-- Location: LCFF_X30_Y30_N1
\C2|BV[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add8~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BV\(1));

-- Location: LCCOMB_X33_Y30_N0
\C2|LessThan14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~1_cout\ = CARRY((!\C2|BH\(0) & !\C2|P1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(0),
	datab => \C2|P1\(0),
	datad => VCC,
	cout => \C2|LessThan14~1_cout\);

-- Location: LCCOMB_X33_Y30_N2
\C2|LessThan14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~3_cout\ = CARRY((\C2|P1\(1) & ((\C2|BV\(1)) # (!\C2|LessThan14~1_cout\))) # (!\C2|P1\(1) & (\C2|BV\(1) & !\C2|LessThan14~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(1),
	datab => \C2|BV\(1),
	datad => VCC,
	cin => \C2|LessThan14~1_cout\,
	cout => \C2|LessThan14~3_cout\);

-- Location: LCCOMB_X33_Y30_N4
\C2|LessThan14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~5_cout\ = CARRY((\C3|Add1~0_combout\ & ((\C2|BV\(2)) # (!\C2|LessThan14~3_cout\))) # (!\C3|Add1~0_combout\ & (\C2|BV\(2) & !\C2|LessThan14~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~0_combout\,
	datab => \C2|BV\(2),
	datad => VCC,
	cin => \C2|LessThan14~3_cout\,
	cout => \C2|LessThan14~5_cout\);

-- Location: LCCOMB_X33_Y30_N6
\C2|LessThan14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~7_cout\ = CARRY((\C3|Add1~2_combout\ & (\C2|BV\(3) & !\C2|LessThan14~5_cout\)) # (!\C3|Add1~2_combout\ & ((\C2|BV\(3)) # (!\C2|LessThan14~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~2_combout\,
	datab => \C2|BV\(3),
	datad => VCC,
	cin => \C2|LessThan14~5_cout\,
	cout => \C2|LessThan14~7_cout\);

-- Location: LCCOMB_X33_Y30_N8
\C2|LessThan14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~9_cout\ = CARRY((\C3|Add1~4_combout\ & ((!\C2|LessThan14~7_cout\) # (!\C2|BV\(4)))) # (!\C3|Add1~4_combout\ & (!\C2|BV\(4) & !\C2|LessThan14~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~4_combout\,
	datab => \C2|BV\(4),
	datad => VCC,
	cin => \C2|LessThan14~7_cout\,
	cout => \C2|LessThan14~9_cout\);

-- Location: LCCOMB_X33_Y30_N10
\C2|LessThan14~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~11_cout\ = CARRY((\C2|BV\(5) & (!\C3|Add1~6_combout\ & !\C2|LessThan14~9_cout\)) # (!\C2|BV\(5) & ((!\C2|LessThan14~9_cout\) # (!\C3|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(5),
	datab => \C3|Add1~6_combout\,
	datad => VCC,
	cin => \C2|LessThan14~9_cout\,
	cout => \C2|LessThan14~11_cout\);

-- Location: LCCOMB_X33_Y30_N12
\C2|LessThan14~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~13_cout\ = CARRY((\C2|BV\(6) & (\C3|Add1~8_combout\ & !\C2|LessThan14~11_cout\)) # (!\C2|BV\(6) & ((\C3|Add1~8_combout\) # (!\C2|LessThan14~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(6),
	datab => \C3|Add1~8_combout\,
	datad => VCC,
	cin => \C2|LessThan14~11_cout\,
	cout => \C2|LessThan14~13_cout\);

-- Location: LCCOMB_X33_Y30_N14
\C2|LessThan14~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~15_cout\ = CARRY((\C2|BV\(7) & (!\C3|Add1~10_combout\ & !\C2|LessThan14~13_cout\)) # (!\C2|BV\(7) & ((!\C2|LessThan14~13_cout\) # (!\C3|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(7),
	datab => \C3|Add1~10_combout\,
	datad => VCC,
	cin => \C2|LessThan14~13_cout\,
	cout => \C2|LessThan14~15_cout\);

-- Location: LCCOMB_X33_Y30_N16
\C2|LessThan14~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~17_cout\ = CARRY((\C2|BV\(8) & ((\C3|Add1~12_combout\) # (!\C2|LessThan14~15_cout\))) # (!\C2|BV\(8) & (\C3|Add1~12_combout\ & !\C2|LessThan14~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(8),
	datab => \C3|Add1~12_combout\,
	datad => VCC,
	cin => \C2|LessThan14~15_cout\,
	cout => \C2|LessThan14~17_cout\);

-- Location: LCCOMB_X33_Y30_N18
\C2|LessThan14~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~19_cout\ = CARRY((\C3|Add1~14_combout\ & (\C2|BV\(9) & !\C2|LessThan14~17_cout\)) # (!\C3|Add1~14_combout\ & ((\C2|BV\(9)) # (!\C2|LessThan14~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~14_combout\,
	datab => \C2|BV\(9),
	datad => VCC,
	cin => \C2|LessThan14~17_cout\,
	cout => \C2|LessThan14~19_cout\);

-- Location: LCCOMB_X33_Y30_N20
\C2|LessThan14~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~21_cout\ = CARRY((\C2|BV\(10) & (\C3|Add1~16_combout\ & !\C2|LessThan14~19_cout\)) # (!\C2|BV\(10) & ((\C3|Add1~16_combout\) # (!\C2|LessThan14~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(10),
	datab => \C3|Add1~16_combout\,
	datad => VCC,
	cin => \C2|LessThan14~19_cout\,
	cout => \C2|LessThan14~21_cout\);

-- Location: LCCOMB_X33_Y30_N22
\C2|LessThan14~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~23_cout\ = CARRY((\C2|BV\(11) & ((!\C2|LessThan14~21_cout\) # (!\C3|Add1~18_combout\))) # (!\C2|BV\(11) & (!\C3|Add1~18_combout\ & !\C2|LessThan14~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(11),
	datab => \C3|Add1~18_combout\,
	datad => VCC,
	cin => \C2|LessThan14~21_cout\,
	cout => \C2|LessThan14~23_cout\);

-- Location: LCCOMB_X33_Y30_N24
\C2|LessThan14~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~25_cout\ = CARRY((\C3|Add1~20_combout\ & ((!\C2|LessThan14~23_cout\) # (!\C2|BV\(12)))) # (!\C3|Add1~20_combout\ & (!\C2|BV\(12) & !\C2|LessThan14~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~20_combout\,
	datab => \C2|BV\(12),
	datad => VCC,
	cin => \C2|LessThan14~23_cout\,
	cout => \C2|LessThan14~25_cout\);

-- Location: LCCOMB_X33_Y30_N26
\C2|LessThan14~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~27_cout\ = CARRY((\C2|BV\(13) & ((!\C2|LessThan14~25_cout\) # (!\C3|Add1~22_combout\))) # (!\C2|BV\(13) & (!\C3|Add1~22_combout\ & !\C2|LessThan14~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(13),
	datab => \C3|Add1~22_combout\,
	datad => VCC,
	cin => \C2|LessThan14~25_cout\,
	cout => \C2|LessThan14~27_cout\);

-- Location: LCCOMB_X33_Y30_N28
\C2|LessThan14~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~29_cout\ = CARRY((\C3|Add1~24_combout\ & ((!\C2|LessThan14~27_cout\) # (!\C2|BV\(14)))) # (!\C3|Add1~24_combout\ & (!\C2|BV\(14) & !\C2|LessThan14~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~24_combout\,
	datab => \C2|BV\(14),
	datad => VCC,
	cin => \C2|LessThan14~27_cout\,
	cout => \C2|LessThan14~29_cout\);

-- Location: LCCOMB_X33_Y30_N30
\C2|LessThan14~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~31_cout\ = CARRY((\C2|BV\(15) & ((!\C2|LessThan14~29_cout\) # (!\C3|Add1~26_combout\))) # (!\C2|BV\(15) & (!\C3|Add1~26_combout\ & !\C2|LessThan14~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(15),
	datab => \C3|Add1~26_combout\,
	datad => VCC,
	cin => \C2|LessThan14~29_cout\,
	cout => \C2|LessThan14~31_cout\);

-- Location: LCCOMB_X33_Y29_N0
\C2|LessThan14~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~33_cout\ = CARRY((\C2|BV\(16) & (\C3|Add1~28_combout\ & !\C2|LessThan14~31_cout\)) # (!\C2|BV\(16) & ((\C3|Add1~28_combout\) # (!\C2|LessThan14~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(16),
	datab => \C3|Add1~28_combout\,
	datad => VCC,
	cin => \C2|LessThan14~31_cout\,
	cout => \C2|LessThan14~33_cout\);

-- Location: LCCOMB_X33_Y29_N2
\C2|LessThan14~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~35_cout\ = CARRY((\C2|BV\(17) & ((!\C2|LessThan14~33_cout\) # (!\C3|Add1~30_combout\))) # (!\C2|BV\(17) & (!\C3|Add1~30_combout\ & !\C2|LessThan14~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(17),
	datab => \C3|Add1~30_combout\,
	datad => VCC,
	cin => \C2|LessThan14~33_cout\,
	cout => \C2|LessThan14~35_cout\);

-- Location: LCCOMB_X33_Y29_N4
\C2|LessThan14~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~37_cout\ = CARRY((\C3|Add1~32_combout\ & ((!\C2|LessThan14~35_cout\) # (!\C2|BV\(18)))) # (!\C3|Add1~32_combout\ & (!\C2|BV\(18) & !\C2|LessThan14~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~32_combout\,
	datab => \C2|BV\(18),
	datad => VCC,
	cin => \C2|LessThan14~35_cout\,
	cout => \C2|LessThan14~37_cout\);

-- Location: LCCOMB_X33_Y29_N6
\C2|LessThan14~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~39_cout\ = CARRY((\C3|Add1~34_combout\ & (\C2|BV\(19) & !\C2|LessThan14~37_cout\)) # (!\C3|Add1~34_combout\ & ((\C2|BV\(19)) # (!\C2|LessThan14~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~34_combout\,
	datab => \C2|BV\(19),
	datad => VCC,
	cin => \C2|LessThan14~37_cout\,
	cout => \C2|LessThan14~39_cout\);

-- Location: LCCOMB_X33_Y29_N8
\C2|LessThan14~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~41_cout\ = CARRY((\C3|Add1~36_combout\ & ((!\C2|LessThan14~39_cout\) # (!\C2|BV\(20)))) # (!\C3|Add1~36_combout\ & (!\C2|BV\(20) & !\C2|LessThan14~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~36_combout\,
	datab => \C2|BV\(20),
	datad => VCC,
	cin => \C2|LessThan14~39_cout\,
	cout => \C2|LessThan14~41_cout\);

-- Location: LCCOMB_X33_Y29_N10
\C2|LessThan14~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~43_cout\ = CARRY((\C2|BV\(21) & ((!\C2|LessThan14~41_cout\) # (!\C3|Add1~38_combout\))) # (!\C2|BV\(21) & (!\C3|Add1~38_combout\ & !\C2|LessThan14~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(21),
	datab => \C3|Add1~38_combout\,
	datad => VCC,
	cin => \C2|LessThan14~41_cout\,
	cout => \C2|LessThan14~43_cout\);

-- Location: LCCOMB_X33_Y29_N12
\C2|LessThan14~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~45_cout\ = CARRY((\C2|BV\(22) & (\C3|Add1~40_combout\ & !\C2|LessThan14~43_cout\)) # (!\C2|BV\(22) & ((\C3|Add1~40_combout\) # (!\C2|LessThan14~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(22),
	datab => \C3|Add1~40_combout\,
	datad => VCC,
	cin => \C2|LessThan14~43_cout\,
	cout => \C2|LessThan14~45_cout\);

-- Location: LCCOMB_X33_Y29_N14
\C2|LessThan14~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~47_cout\ = CARRY((\C2|BV\(23) & ((!\C2|LessThan14~45_cout\) # (!\C3|Add1~42_combout\))) # (!\C2|BV\(23) & (!\C3|Add1~42_combout\ & !\C2|LessThan14~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(23),
	datab => \C3|Add1~42_combout\,
	datad => VCC,
	cin => \C2|LessThan14~45_cout\,
	cout => \C2|LessThan14~47_cout\);

-- Location: LCCOMB_X33_Y29_N16
\C2|LessThan14~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~49_cout\ = CARRY((\C2|BV\(24) & (\C3|Add1~44_combout\ & !\C2|LessThan14~47_cout\)) # (!\C2|BV\(24) & ((\C3|Add1~44_combout\) # (!\C2|LessThan14~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(24),
	datab => \C3|Add1~44_combout\,
	datad => VCC,
	cin => \C2|LessThan14~47_cout\,
	cout => \C2|LessThan14~49_cout\);

-- Location: LCCOMB_X33_Y29_N18
\C2|LessThan14~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~51_cout\ = CARRY((\C3|Add1~46_combout\ & (\C2|BV\(25) & !\C2|LessThan14~49_cout\)) # (!\C3|Add1~46_combout\ & ((\C2|BV\(25)) # (!\C2|LessThan14~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~46_combout\,
	datab => \C2|BV\(25),
	datad => VCC,
	cin => \C2|LessThan14~49_cout\,
	cout => \C2|LessThan14~51_cout\);

-- Location: LCCOMB_X33_Y29_N20
\C2|LessThan14~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~53_cout\ = CARRY((\C2|BV\(26) & (\C3|Add1~48_combout\ & !\C2|LessThan14~51_cout\)) # (!\C2|BV\(26) & ((\C3|Add1~48_combout\) # (!\C2|LessThan14~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(26),
	datab => \C3|Add1~48_combout\,
	datad => VCC,
	cin => \C2|LessThan14~51_cout\,
	cout => \C2|LessThan14~53_cout\);

-- Location: LCCOMB_X33_Y29_N22
\C2|LessThan14~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~55_cout\ = CARRY((\C2|BV\(27) & ((!\C2|LessThan14~53_cout\) # (!\C3|Add1~50_combout\))) # (!\C2|BV\(27) & (!\C3|Add1~50_combout\ & !\C2|LessThan14~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(27),
	datab => \C3|Add1~50_combout\,
	datad => VCC,
	cin => \C2|LessThan14~53_cout\,
	cout => \C2|LessThan14~55_cout\);

-- Location: LCCOMB_X33_Y29_N24
\C2|LessThan14~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~57_cout\ = CARRY((\C2|BV\(28) & (\C3|Add1~52_combout\ & !\C2|LessThan14~55_cout\)) # (!\C2|BV\(28) & ((\C3|Add1~52_combout\) # (!\C2|LessThan14~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(28),
	datab => \C3|Add1~52_combout\,
	datad => VCC,
	cin => \C2|LessThan14~55_cout\,
	cout => \C2|LessThan14~57_cout\);

-- Location: LCCOMB_X33_Y29_N26
\C2|LessThan14~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~59_cout\ = CARRY((\C2|BV\(29) & ((!\C2|LessThan14~57_cout\) # (!\C3|Add1~54_combout\))) # (!\C2|BV\(29) & (!\C3|Add1~54_combout\ & !\C2|LessThan14~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(29),
	datab => \C3|Add1~54_combout\,
	datad => VCC,
	cin => \C2|LessThan14~57_cout\,
	cout => \C2|LessThan14~59_cout\);

-- Location: LCCOMB_X33_Y29_N28
\C2|LessThan14~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~61_cout\ = CARRY((\C3|Add1~56_combout\ & ((!\C2|LessThan14~59_cout\) # (!\C2|BV\(30)))) # (!\C3|Add1~56_combout\ & (!\C2|BV\(30) & !\C2|LessThan14~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~56_combout\,
	datab => \C2|BV\(30),
	datad => VCC,
	cin => \C2|LessThan14~59_cout\,
	cout => \C2|LessThan14~61_cout\);

-- Location: LCCOMB_X33_Y29_N30
\C2|LessThan14~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan14~62_combout\ = (\C2|BV\(31) & ((\C2|LessThan14~61_cout\) # (!\C3|Add1~58_combout\))) # (!\C2|BV\(31) & (\C2|LessThan14~61_cout\ & !\C3|Add1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(31),
	datad => \C3|Add1~58_combout\,
	cin => \C2|LessThan14~61_cout\,
	combout => \C2|LessThan14~62_combout\);

-- Location: LCCOMB_X30_Y26_N14
\C2|BHDir~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BHDir~0_combout\ = (((\C2|BH\(10)) # (!\C2|LessThan14~62_combout\)) # (!\C2|LessThan13~62_combout\)) # (!\C2|BH\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(8),
	datab => \C2|LessThan13~62_combout\,
	datac => \C2|BH\(10),
	datad => \C2|LessThan14~62_combout\,
	combout => \C2|BHDir~0_combout\);

-- Location: LCCOMB_X27_Y30_N28
\C2|Add3~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~60_combout\ = ((\C2|process_2~1_combout\ $ (\C2|P2\(30) $ (!\C2|Add3~59\)))) # (GND)
-- \C2|Add3~61\ = CARRY((\C2|process_2~1_combout\ & ((\C2|P2\(30)) # (!\C2|Add3~59\))) # (!\C2|process_2~1_combout\ & (\C2|P2\(30) & !\C2|Add3~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(30),
	datad => VCC,
	cin => \C2|Add3~59\,
	combout => \C2|Add3~60_combout\,
	cout => \C2|Add3~61\);

-- Location: LCCOMB_X27_Y30_N30
\C2|Add3~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~62_combout\ = \C2|P2\(31) $ (\C2|Add3~61\ $ (\C2|process_2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(31),
	datad => \C2|process_2~1_combout\,
	cin => \C2|Add3~61\,
	combout => \C2|Add3~62_combout\);

-- Location: LCCOMB_X28_Y32_N12
\C2|P2[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~6_combout\ = (!\C2|P2\(27) & (!\C2|P2\(28) & (!\C2|P2\(26) & !\C2|P2\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(27),
	datab => \C2|P2\(28),
	datac => \C2|P2\(26),
	datad => \C2|P2\(29),
	combout => \C2|P2[3]~6_combout\);

-- Location: LCCOMB_X28_Y32_N14
\C2|P2[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~7_combout\ = (!\C2|P2\(30) & \C2|P2[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(30),
	datad => \C2|P2[3]~6_combout\,
	combout => \C2|P2[3]~7_combout\);

-- Location: LCCOMB_X27_Y31_N0
\C2|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~0_combout\ = \C2|P2\(0) $ (GND)
-- \C2|Add3~1\ = CARRY(!\C2|P2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(0),
	datad => VCC,
	combout => \C2|Add3~0_combout\,
	cout => \C2|Add3~1\);

-- Location: LCCOMB_X30_Y31_N0
\C2|P2[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[0]~15_combout\ = !\C2|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|Add3~0_combout\,
	combout => \C2|P2[0]~15_combout\);

-- Location: LCFF_X29_Y31_N21
\C2|P2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|P2[0]~15_combout\,
	sload => VCC,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(0));

-- Location: LCCOMB_X27_Y31_N2
\C2|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~2_combout\ = (\C2|P2\(1) & ((\C2|process_2~1_combout\ & (\C2|Add3~1\ & VCC)) # (!\C2|process_2~1_combout\ & (!\C2|Add3~1\)))) # (!\C2|P2\(1) & ((\C2|process_2~1_combout\ & (!\C2|Add3~1\)) # (!\C2|process_2~1_combout\ & ((\C2|Add3~1\) # (GND)))))
-- \C2|Add3~3\ = CARRY((\C2|P2\(1) & (!\C2|process_2~1_combout\ & !\C2|Add3~1\)) # (!\C2|P2\(1) & ((!\C2|Add3~1\) # (!\C2|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(1),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~1\,
	combout => \C2|Add3~2_combout\,
	cout => \C2|Add3~3\);

-- Location: LCCOMB_X27_Y31_N4
\C2|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~4_combout\ = ((\C2|P2\(2) $ (\C2|process_2~1_combout\ $ (\C2|Add3~3\)))) # (GND)
-- \C2|Add3~5\ = CARRY((\C2|P2\(2) & (\C2|process_2~1_combout\ & !\C2|Add3~3\)) # (!\C2|P2\(2) & ((\C2|process_2~1_combout\) # (!\C2|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(2),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~3\,
	combout => \C2|Add3~4_combout\,
	cout => \C2|Add3~5\);

-- Location: LCCOMB_X27_Y31_N6
\C2|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~6_combout\ = (\C2|P2\(3) & ((\C2|process_2~1_combout\ & (\C2|Add3~5\ & VCC)) # (!\C2|process_2~1_combout\ & (!\C2|Add3~5\)))) # (!\C2|P2\(3) & ((\C2|process_2~1_combout\ & (!\C2|Add3~5\)) # (!\C2|process_2~1_combout\ & ((\C2|Add3~5\) # (GND)))))
-- \C2|Add3~7\ = CARRY((\C2|P2\(3) & (!\C2|process_2~1_combout\ & !\C2|Add3~5\)) # (!\C2|P2\(3) & ((!\C2|Add3~5\) # (!\C2|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(3),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~5\,
	combout => \C2|Add3~6_combout\,
	cout => \C2|Add3~7\);

-- Location: LCCOMB_X27_Y31_N10
\C2|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~10_combout\ = (\C2|P2\(5) & ((\C2|process_2~1_combout\ & (\C2|Add3~9\ & VCC)) # (!\C2|process_2~1_combout\ & (!\C2|Add3~9\)))) # (!\C2|P2\(5) & ((\C2|process_2~1_combout\ & (!\C2|Add3~9\)) # (!\C2|process_2~1_combout\ & ((\C2|Add3~9\) # (GND)))))
-- \C2|Add3~11\ = CARRY((\C2|P2\(5) & (!\C2|process_2~1_combout\ & !\C2|Add3~9\)) # (!\C2|P2\(5) & ((!\C2|Add3~9\) # (!\C2|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(5),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~9\,
	combout => \C2|Add3~10_combout\,
	cout => \C2|Add3~11\);

-- Location: LCCOMB_X27_Y31_N12
\C2|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~12_combout\ = ((\C2|process_2~1_combout\ $ (\C2|P2\(6) $ (\C2|Add3~11\)))) # (GND)
-- \C2|Add3~13\ = CARRY((\C2|process_2~1_combout\ & ((!\C2|Add3~11\) # (!\C2|P2\(6)))) # (!\C2|process_2~1_combout\ & (!\C2|P2\(6) & !\C2|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(6),
	datad => VCC,
	cin => \C2|Add3~11\,
	combout => \C2|Add3~12_combout\,
	cout => \C2|Add3~13\);

-- Location: LCCOMB_X28_Y31_N0
\C2|P2[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[6]~13_combout\ = !\C2|Add3~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|Add3~12_combout\,
	combout => \C2|P2[6]~13_combout\);

-- Location: LCFF_X28_Y31_N1
\C2|P2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|P2[6]~13_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(6));

-- Location: LCCOMB_X27_Y31_N14
\C2|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~14_combout\ = (\C2|process_2~1_combout\ & ((\C2|P2\(7) & (\C2|Add3~13\ & VCC)) # (!\C2|P2\(7) & (!\C2|Add3~13\)))) # (!\C2|process_2~1_combout\ & ((\C2|P2\(7) & (!\C2|Add3~13\)) # (!\C2|P2\(7) & ((\C2|Add3~13\) # (GND)))))
-- \C2|Add3~15\ = CARRY((\C2|process_2~1_combout\ & (!\C2|P2\(7) & !\C2|Add3~13\)) # (!\C2|process_2~1_combout\ & ((!\C2|Add3~13\) # (!\C2|P2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(7),
	datad => VCC,
	cin => \C2|Add3~13\,
	combout => \C2|Add3~14_combout\,
	cout => \C2|Add3~15\);

-- Location: LCFF_X27_Y31_N15
\C2|P2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~14_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(7));

-- Location: LCCOMB_X27_Y31_N16
\C2|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~16_combout\ = ((\C2|P2\(8) $ (\C2|process_2~1_combout\ $ (\C2|Add3~15\)))) # (GND)
-- \C2|Add3~17\ = CARRY((\C2|P2\(8) & (\C2|process_2~1_combout\ & !\C2|Add3~15\)) # (!\C2|P2\(8) & ((\C2|process_2~1_combout\) # (!\C2|Add3~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(8),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~15\,
	combout => \C2|Add3~16_combout\,
	cout => \C2|Add3~17\);

-- Location: LCCOMB_X27_Y31_N18
\C2|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~18_combout\ = (\C2|process_2~1_combout\ & ((\C2|P2\(9) & (\C2|Add3~17\ & VCC)) # (!\C2|P2\(9) & (!\C2|Add3~17\)))) # (!\C2|process_2~1_combout\ & ((\C2|P2\(9) & (!\C2|Add3~17\)) # (!\C2|P2\(9) & ((\C2|Add3~17\) # (GND)))))
-- \C2|Add3~19\ = CARRY((\C2|process_2~1_combout\ & (!\C2|P2\(9) & !\C2|Add3~17\)) # (!\C2|process_2~1_combout\ & ((!\C2|Add3~17\) # (!\C2|P2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(9),
	datad => VCC,
	cin => \C2|Add3~17\,
	combout => \C2|Add3~18_combout\,
	cout => \C2|Add3~19\);

-- Location: LCFF_X27_Y31_N19
\C2|P2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~18_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(9));

-- Location: LCCOMB_X28_Y27_N0
\C2|P2[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[8]~12_combout\ = !\C2|Add3~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|Add3~16_combout\,
	combout => \C2|P2[8]~12_combout\);

-- Location: LCFF_X28_Y27_N1
\C2|P2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|P2[8]~12_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(8));

-- Location: LCCOMB_X27_Y31_N20
\C2|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~20_combout\ = ((\C2|P2\(10) $ (\C2|process_2~1_combout\ $ (!\C2|Add3~19\)))) # (GND)
-- \C2|Add3~21\ = CARRY((\C2|P2\(10) & ((\C2|process_2~1_combout\) # (!\C2|Add3~19\))) # (!\C2|P2\(10) & (\C2|process_2~1_combout\ & !\C2|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(10),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~19\,
	combout => \C2|Add3~20_combout\,
	cout => \C2|Add3~21\);

-- Location: LCFF_X27_Y31_N21
\C2|P2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~20_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(10));

-- Location: LCCOMB_X27_Y31_N22
\C2|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~22_combout\ = (\C2|process_2~1_combout\ & ((\C2|P2\(11) & (\C2|Add3~21\ & VCC)) # (!\C2|P2\(11) & (!\C2|Add3~21\)))) # (!\C2|process_2~1_combout\ & ((\C2|P2\(11) & (!\C2|Add3~21\)) # (!\C2|P2\(11) & ((\C2|Add3~21\) # (GND)))))
-- \C2|Add3~23\ = CARRY((\C2|process_2~1_combout\ & (!\C2|P2\(11) & !\C2|Add3~21\)) # (!\C2|process_2~1_combout\ & ((!\C2|Add3~21\) # (!\C2|P2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(11),
	datad => VCC,
	cin => \C2|Add3~21\,
	combout => \C2|Add3~22_combout\,
	cout => \C2|Add3~23\);

-- Location: LCFF_X27_Y31_N23
\C2|P2[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~22_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(11));

-- Location: LCCOMB_X27_Y31_N24
\C2|Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~24_combout\ = ((\C2|process_2~1_combout\ $ (\C2|P2\(12) $ (!\C2|Add3~23\)))) # (GND)
-- \C2|Add3~25\ = CARRY((\C2|process_2~1_combout\ & ((\C2|P2\(12)) # (!\C2|Add3~23\))) # (!\C2|process_2~1_combout\ & (\C2|P2\(12) & !\C2|Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(12),
	datad => VCC,
	cin => \C2|Add3~23\,
	combout => \C2|Add3~24_combout\,
	cout => \C2|Add3~25\);

-- Location: LCFF_X27_Y31_N25
\C2|P2[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~24_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(12));

-- Location: LCCOMB_X27_Y31_N26
\C2|Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~26_combout\ = (\C2|process_2~1_combout\ & ((\C2|P2\(13) & (\C2|Add3~25\ & VCC)) # (!\C2|P2\(13) & (!\C2|Add3~25\)))) # (!\C2|process_2~1_combout\ & ((\C2|P2\(13) & (!\C2|Add3~25\)) # (!\C2|P2\(13) & ((\C2|Add3~25\) # (GND)))))
-- \C2|Add3~27\ = CARRY((\C2|process_2~1_combout\ & (!\C2|P2\(13) & !\C2|Add3~25\)) # (!\C2|process_2~1_combout\ & ((!\C2|Add3~25\) # (!\C2|P2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(13),
	datad => VCC,
	cin => \C2|Add3~25\,
	combout => \C2|Add3~26_combout\,
	cout => \C2|Add3~27\);

-- Location: LCFF_X27_Y31_N27
\C2|P2[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~26_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(13));

-- Location: LCCOMB_X27_Y29_N0
\C2|P2[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~1_combout\ = (!\C2|P2\(11) & (!\C2|P2\(10) & (!\C2|P2\(12) & !\C2|P2\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(11),
	datab => \C2|P2\(10),
	datac => \C2|P2\(12),
	datad => \C2|P2\(13),
	combout => \C2|P2[3]~1_combout\);

-- Location: LCCOMB_X27_Y31_N28
\C2|Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~28_combout\ = ((\C2|P2\(14) $ (\C2|process_2~1_combout\ $ (!\C2|Add3~27\)))) # (GND)
-- \C2|Add3~29\ = CARRY((\C2|P2\(14) & ((\C2|process_2~1_combout\) # (!\C2|Add3~27\))) # (!\C2|P2\(14) & (\C2|process_2~1_combout\ & !\C2|Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(14),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~27\,
	combout => \C2|Add3~28_combout\,
	cout => \C2|Add3~29\);

-- Location: LCFF_X27_Y31_N29
\C2|P2[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~28_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(14));

-- Location: LCCOMB_X27_Y31_N30
\C2|Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~30_combout\ = (\C2|process_2~1_combout\ & ((\C2|P2\(15) & (\C2|Add3~29\ & VCC)) # (!\C2|P2\(15) & (!\C2|Add3~29\)))) # (!\C2|process_2~1_combout\ & ((\C2|P2\(15) & (!\C2|Add3~29\)) # (!\C2|P2\(15) & ((\C2|Add3~29\) # (GND)))))
-- \C2|Add3~31\ = CARRY((\C2|process_2~1_combout\ & (!\C2|P2\(15) & !\C2|Add3~29\)) # (!\C2|process_2~1_combout\ & ((!\C2|Add3~29\) # (!\C2|P2\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(15),
	datad => VCC,
	cin => \C2|Add3~29\,
	combout => \C2|Add3~30_combout\,
	cout => \C2|Add3~31\);

-- Location: LCFF_X27_Y31_N31
\C2|P2[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~30_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(15));

-- Location: LCCOMB_X27_Y30_N0
\C2|Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~32_combout\ = ((\C2|P2\(16) $ (\C2|process_2~1_combout\ $ (!\C2|Add3~31\)))) # (GND)
-- \C2|Add3~33\ = CARRY((\C2|P2\(16) & ((\C2|process_2~1_combout\) # (!\C2|Add3~31\))) # (!\C2|P2\(16) & (\C2|process_2~1_combout\ & !\C2|Add3~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(16),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~31\,
	combout => \C2|Add3~32_combout\,
	cout => \C2|Add3~33\);

-- Location: LCFF_X27_Y30_N1
\C2|P2[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~32_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(16));

-- Location: LCCOMB_X27_Y29_N14
\C2|P2[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~2_combout\ = (!\C2|P2\(17) & (!\C2|P2\(14) & (!\C2|P2\(15) & !\C2|P2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(17),
	datab => \C2|P2\(14),
	datac => \C2|P2\(15),
	datad => \C2|P2\(16),
	combout => \C2|P2[3]~2_combout\);

-- Location: LCCOMB_X27_Y30_N4
\C2|Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~36_combout\ = ((\C2|P2\(18) $ (\C2|process_2~1_combout\ $ (!\C2|Add3~35\)))) # (GND)
-- \C2|Add3~37\ = CARRY((\C2|P2\(18) & ((\C2|process_2~1_combout\) # (!\C2|Add3~35\))) # (!\C2|P2\(18) & (\C2|process_2~1_combout\ & !\C2|Add3~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(18),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~35\,
	combout => \C2|Add3~36_combout\,
	cout => \C2|Add3~37\);

-- Location: LCFF_X27_Y30_N5
\C2|P2[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~36_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(18));

-- Location: LCCOMB_X27_Y30_N6
\C2|Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~38_combout\ = (\C2|P2\(19) & ((\C2|process_2~1_combout\ & (\C2|Add3~37\ & VCC)) # (!\C2|process_2~1_combout\ & (!\C2|Add3~37\)))) # (!\C2|P2\(19) & ((\C2|process_2~1_combout\ & (!\C2|Add3~37\)) # (!\C2|process_2~1_combout\ & ((\C2|Add3~37\) # 
-- (GND)))))
-- \C2|Add3~39\ = CARRY((\C2|P2\(19) & (!\C2|process_2~1_combout\ & !\C2|Add3~37\)) # (!\C2|P2\(19) & ((!\C2|Add3~37\) # (!\C2|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(19),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~37\,
	combout => \C2|Add3~38_combout\,
	cout => \C2|Add3~39\);

-- Location: LCFF_X27_Y30_N7
\C2|P2[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~38_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(19));

-- Location: LCCOMB_X27_Y30_N8
\C2|Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~40_combout\ = ((\C2|P2\(20) $ (\C2|process_2~1_combout\ $ (!\C2|Add3~39\)))) # (GND)
-- \C2|Add3~41\ = CARRY((\C2|P2\(20) & ((\C2|process_2~1_combout\) # (!\C2|Add3~39\))) # (!\C2|P2\(20) & (\C2|process_2~1_combout\ & !\C2|Add3~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(20),
	datab => \C2|process_2~1_combout\,
	datad => VCC,
	cin => \C2|Add3~39\,
	combout => \C2|Add3~40_combout\,
	cout => \C2|Add3~41\);

-- Location: LCFF_X27_Y30_N9
\C2|P2[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~40_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(20));

-- Location: LCCOMB_X28_Y30_N30
\C2|P2[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~3_combout\ = (!\C2|P2\(21) & (!\C2|P2\(18) & (!\C2|P2\(19) & !\C2|P2\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(21),
	datab => \C2|P2\(18),
	datac => \C2|P2\(19),
	datad => \C2|P2\(20),
	combout => \C2|P2[3]~3_combout\);

-- Location: LCCOMB_X27_Y29_N18
\C2|P2[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~5_combout\ = (\C2|P2[3]~4_combout\ & (\C2|P2[3]~1_combout\ & (\C2|P2[3]~2_combout\ & \C2|P2[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2[3]~4_combout\,
	datab => \C2|P2[3]~1_combout\,
	datac => \C2|P2[3]~2_combout\,
	datad => \C2|P2[3]~3_combout\,
	combout => \C2|P2[3]~5_combout\);

-- Location: LCCOMB_X28_Y32_N28
\C2|P2[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~9_combout\ = (\C2|P2[3]~5_combout\ & (((\C2|P2[3]~8_combout\ & \C2|P2\(8))) # (!\C2|P2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2[3]~8_combout\,
	datab => \C2|P2\(9),
	datac => \C2|P2\(8),
	datad => \C2|P2[3]~5_combout\,
	combout => \C2|P2[3]~9_combout\);

-- Location: LCCOMB_X28_Y32_N2
\C2|P2[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~10_combout\ = (\UP2~combout\ & ((\C2|P2\(31)) # ((\C2|P2[3]~7_combout\ & \C2|P2[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(31),
	datab => \UP2~combout\,
	datac => \C2|P2[3]~7_combout\,
	datad => \C2|P2[3]~9_combout\,
	combout => \C2|P2[3]~10_combout\);

-- Location: LCCOMB_X28_Y32_N16
\C2|P2[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[3]~11_combout\ = (\C2|currentS.s1~regout\ & ((\C2|process_2~1_combout\) # ((!\DOWN2~combout\ & \C2|P2[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOWN2~combout\,
	datab => \C2|P2[3]~10_combout\,
	datac => \C2|process_2~1_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|P2[3]~11_combout\);

-- Location: LCFF_X27_Y30_N31
\C2|P2[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~62_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(31));

-- Location: LCCOMB_X28_Y32_N4
\C2|process_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|process_2~0_combout\ = (!\UP2~combout\ & (!\C2|P2\(31) & \DOWN2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UP2~combout\,
	datac => \C2|P2\(31),
	datad => \DOWN2~combout\,
	combout => \C2|process_2~0_combout\);

-- Location: LCCOMB_X28_Y32_N20
\C2|process_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|process_2~1_combout\ = (\C2|process_2~0_combout\ & ((\C2|LessThan5~1_combout\) # ((!\C2|P2[3]~5_combout\) # (!\C2|P2[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan5~1_combout\,
	datab => \C2|process_2~0_combout\,
	datac => \C2|P2[3]~7_combout\,
	datad => \C2|P2[3]~5_combout\,
	combout => \C2|process_2~1_combout\);

-- Location: LCCOMB_X27_Y30_N16
\C2|Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~48_combout\ = ((\C2|process_2~1_combout\ $ (\C2|P2\(24) $ (!\C2|Add3~47\)))) # (GND)
-- \C2|Add3~49\ = CARRY((\C2|process_2~1_combout\ & ((\C2|P2\(24)) # (!\C2|Add3~47\))) # (!\C2|process_2~1_combout\ & (\C2|P2\(24) & !\C2|Add3~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(24),
	datad => VCC,
	cin => \C2|Add3~47\,
	combout => \C2|Add3~48_combout\,
	cout => \C2|Add3~49\);

-- Location: LCFF_X27_Y30_N17
\C2|P2[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~48_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(24));

-- Location: LCCOMB_X27_Y30_N18
\C2|Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~50_combout\ = (\C2|process_2~1_combout\ & ((\C2|P2\(25) & (\C2|Add3~49\ & VCC)) # (!\C2|P2\(25) & (!\C2|Add3~49\)))) # (!\C2|process_2~1_combout\ & ((\C2|P2\(25) & (!\C2|Add3~49\)) # (!\C2|P2\(25) & ((\C2|Add3~49\) # (GND)))))
-- \C2|Add3~51\ = CARRY((\C2|process_2~1_combout\ & (!\C2|P2\(25) & !\C2|Add3~49\)) # (!\C2|process_2~1_combout\ & ((!\C2|Add3~49\) # (!\C2|P2\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(25),
	datad => VCC,
	cin => \C2|Add3~49\,
	combout => \C2|Add3~50_combout\,
	cout => \C2|Add3~51\);

-- Location: LCFF_X27_Y30_N19
\C2|P2[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~50_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(25));

-- Location: LCCOMB_X27_Y30_N20
\C2|Add3~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~52_combout\ = ((\C2|process_2~1_combout\ $ (\C2|P2\(26) $ (!\C2|Add3~51\)))) # (GND)
-- \C2|Add3~53\ = CARRY((\C2|process_2~1_combout\ & ((\C2|P2\(26)) # (!\C2|Add3~51\))) # (!\C2|process_2~1_combout\ & (\C2|P2\(26) & !\C2|Add3~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(26),
	datad => VCC,
	cin => \C2|Add3~51\,
	combout => \C2|Add3~52_combout\,
	cout => \C2|Add3~53\);

-- Location: LCFF_X27_Y30_N21
\C2|P2[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~52_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(26));

-- Location: LCCOMB_X27_Y30_N22
\C2|Add3~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~54_combout\ = (\C2|process_2~1_combout\ & ((\C2|P2\(27) & (\C2|Add3~53\ & VCC)) # (!\C2|P2\(27) & (!\C2|Add3~53\)))) # (!\C2|process_2~1_combout\ & ((\C2|P2\(27) & (!\C2|Add3~53\)) # (!\C2|P2\(27) & ((\C2|Add3~53\) # (GND)))))
-- \C2|Add3~55\ = CARRY((\C2|process_2~1_combout\ & (!\C2|P2\(27) & !\C2|Add3~53\)) # (!\C2|process_2~1_combout\ & ((!\C2|Add3~53\) # (!\C2|P2\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(27),
	datad => VCC,
	cin => \C2|Add3~53\,
	combout => \C2|Add3~54_combout\,
	cout => \C2|Add3~55\);

-- Location: LCFF_X27_Y30_N23
\C2|P2[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~54_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(27));

-- Location: LCCOMB_X27_Y30_N24
\C2|Add3~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~56_combout\ = ((\C2|process_2~1_combout\ $ (\C2|P2\(28) $ (!\C2|Add3~55\)))) # (GND)
-- \C2|Add3~57\ = CARRY((\C2|process_2~1_combout\ & ((\C2|P2\(28)) # (!\C2|Add3~55\))) # (!\C2|process_2~1_combout\ & (\C2|P2\(28) & !\C2|Add3~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(28),
	datad => VCC,
	cin => \C2|Add3~55\,
	combout => \C2|Add3~56_combout\,
	cout => \C2|Add3~57\);

-- Location: LCFF_X27_Y30_N25
\C2|P2[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~56_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(28));

-- Location: LCCOMB_X27_Y30_N26
\C2|Add3~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add3~58_combout\ = (\C2|process_2~1_combout\ & ((\C2|P2\(29) & (\C2|Add3~57\ & VCC)) # (!\C2|P2\(29) & (!\C2|Add3~57\)))) # (!\C2|process_2~1_combout\ & ((\C2|P2\(29) & (!\C2|Add3~57\)) # (!\C2|P2\(29) & ((\C2|Add3~57\) # (GND)))))
-- \C2|Add3~59\ = CARRY((\C2|process_2~1_combout\ & (!\C2|P2\(29) & !\C2|Add3~57\)) # (!\C2|process_2~1_combout\ & ((!\C2|Add3~57\) # (!\C2|P2\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_2~1_combout\,
	datab => \C2|P2\(29),
	datad => VCC,
	cin => \C2|Add3~57\,
	combout => \C2|Add3~58_combout\,
	cout => \C2|Add3~59\);

-- Location: LCFF_X27_Y30_N27
\C2|P2[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~58_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(29));

-- Location: LCFF_X27_Y30_N29
\C2|P2[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~60_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(30));

-- Location: LCFF_X27_Y31_N7
\C2|P2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~6_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(3));

-- Location: LCCOMB_X28_Y31_N4
\C2|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~0_combout\ = (\C2|P2\(2) & (\C2|P2\(3) & VCC)) # (!\C2|P2\(2) & (\C2|P2\(3) $ (VCC)))
-- \C2|Add6~1\ = CARRY((!\C2|P2\(2) & \C2|P2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(2),
	datab => \C2|P2\(3),
	datad => VCC,
	combout => \C2|Add6~0_combout\,
	cout => \C2|Add6~1\);

-- Location: LCCOMB_X28_Y31_N6
\C2|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~2_combout\ = (\C2|P2\(4) & (!\C2|Add6~1\)) # (!\C2|P2\(4) & ((\C2|Add6~1\) # (GND)))
-- \C2|Add6~3\ = CARRY((!\C2|Add6~1\) # (!\C2|P2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(4),
	datad => VCC,
	cin => \C2|Add6~1\,
	combout => \C2|Add6~2_combout\,
	cout => \C2|Add6~3\);

-- Location: LCCOMB_X28_Y31_N16
\C2|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~12_combout\ = (\C2|P2\(9) & ((GND) # (!\C2|Add6~11\))) # (!\C2|P2\(9) & (\C2|Add6~11\ $ (GND)))
-- \C2|Add6~13\ = CARRY((\C2|P2\(9)) # (!\C2|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(9),
	datad => VCC,
	cin => \C2|Add6~11\,
	combout => \C2|Add6~12_combout\,
	cout => \C2|Add6~13\);

-- Location: LCCOMB_X28_Y31_N18
\C2|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~14_combout\ = (\C2|P2\(10) & (\C2|Add6~13\ & VCC)) # (!\C2|P2\(10) & (!\C2|Add6~13\))
-- \C2|Add6~15\ = CARRY((!\C2|P2\(10) & !\C2|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(10),
	datad => VCC,
	cin => \C2|Add6~13\,
	combout => \C2|Add6~14_combout\,
	cout => \C2|Add6~15\);

-- Location: LCCOMB_X28_Y31_N20
\C2|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~16_combout\ = (\C2|P2\(11) & ((GND) # (!\C2|Add6~15\))) # (!\C2|P2\(11) & (\C2|Add6~15\ $ (GND)))
-- \C2|Add6~17\ = CARRY((\C2|P2\(11)) # (!\C2|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(11),
	datad => VCC,
	cin => \C2|Add6~15\,
	combout => \C2|Add6~16_combout\,
	cout => \C2|Add6~17\);

-- Location: LCCOMB_X28_Y31_N22
\C2|Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~18_combout\ = (\C2|P2\(12) & (\C2|Add6~17\ & VCC)) # (!\C2|P2\(12) & (!\C2|Add6~17\))
-- \C2|Add6~19\ = CARRY((!\C2|P2\(12) & !\C2|Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(12),
	datad => VCC,
	cin => \C2|Add6~17\,
	combout => \C2|Add6~18_combout\,
	cout => \C2|Add6~19\);

-- Location: LCCOMB_X28_Y31_N24
\C2|Add6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~20_combout\ = (\C2|P2\(13) & ((GND) # (!\C2|Add6~19\))) # (!\C2|P2\(13) & (\C2|Add6~19\ $ (GND)))
-- \C2|Add6~21\ = CARRY((\C2|P2\(13)) # (!\C2|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(13),
	datad => VCC,
	cin => \C2|Add6~19\,
	combout => \C2|Add6~20_combout\,
	cout => \C2|Add6~21\);

-- Location: LCCOMB_X28_Y31_N26
\C2|Add6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~22_combout\ = (\C2|P2\(14) & (\C2|Add6~21\ & VCC)) # (!\C2|P2\(14) & (!\C2|Add6~21\))
-- \C2|Add6~23\ = CARRY((!\C2|P2\(14) & !\C2|Add6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(14),
	datad => VCC,
	cin => \C2|Add6~21\,
	combout => \C2|Add6~22_combout\,
	cout => \C2|Add6~23\);

-- Location: LCCOMB_X28_Y31_N28
\C2|Add6~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~24_combout\ = (\C2|P2\(15) & ((GND) # (!\C2|Add6~23\))) # (!\C2|P2\(15) & (\C2|Add6~23\ $ (GND)))
-- \C2|Add6~25\ = CARRY((\C2|P2\(15)) # (!\C2|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(15),
	datad => VCC,
	cin => \C2|Add6~23\,
	combout => \C2|Add6~24_combout\,
	cout => \C2|Add6~25\);

-- Location: LCCOMB_X28_Y30_N0
\C2|Add6~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~28_combout\ = (\C2|P2\(17) & ((GND) # (!\C2|Add6~27\))) # (!\C2|P2\(17) & (\C2|Add6~27\ $ (GND)))
-- \C2|Add6~29\ = CARRY((\C2|P2\(17)) # (!\C2|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(17),
	datad => VCC,
	cin => \C2|Add6~27\,
	combout => \C2|Add6~28_combout\,
	cout => \C2|Add6~29\);

-- Location: LCCOMB_X28_Y30_N4
\C2|Add6~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~32_combout\ = (\C2|P2\(19) & ((GND) # (!\C2|Add6~31\))) # (!\C2|P2\(19) & (\C2|Add6~31\ $ (GND)))
-- \C2|Add6~33\ = CARRY((\C2|P2\(19)) # (!\C2|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(19),
	datad => VCC,
	cin => \C2|Add6~31\,
	combout => \C2|Add6~32_combout\,
	cout => \C2|Add6~33\);

-- Location: LCCOMB_X28_Y30_N6
\C2|Add6~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~34_combout\ = (\C2|P2\(20) & (\C2|Add6~33\ & VCC)) # (!\C2|P2\(20) & (!\C2|Add6~33\))
-- \C2|Add6~35\ = CARRY((!\C2|P2\(20) & !\C2|Add6~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(20),
	datad => VCC,
	cin => \C2|Add6~33\,
	combout => \C2|Add6~34_combout\,
	cout => \C2|Add6~35\);

-- Location: LCCOMB_X28_Y30_N16
\C2|Add6~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~44_combout\ = (\C2|P2\(25) & ((GND) # (!\C2|Add6~43\))) # (!\C2|P2\(25) & (\C2|Add6~43\ $ (GND)))
-- \C2|Add6~45\ = CARRY((\C2|P2\(25)) # (!\C2|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(25),
	datad => VCC,
	cin => \C2|Add6~43\,
	combout => \C2|Add6~44_combout\,
	cout => \C2|Add6~45\);

-- Location: LCCOMB_X28_Y30_N18
\C2|Add6~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~46_combout\ = (\C2|P2\(26) & (\C2|Add6~45\ & VCC)) # (!\C2|P2\(26) & (!\C2|Add6~45\))
-- \C2|Add6~47\ = CARRY((!\C2|P2\(26) & !\C2|Add6~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(26),
	datad => VCC,
	cin => \C2|Add6~45\,
	combout => \C2|Add6~46_combout\,
	cout => \C2|Add6~47\);

-- Location: LCCOMB_X28_Y30_N22
\C2|Add6~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~50_combout\ = (\C2|P2\(28) & (\C2|Add6~49\ & VCC)) # (!\C2|P2\(28) & (!\C2|Add6~49\))
-- \C2|Add6~51\ = CARRY((!\C2|P2\(28) & !\C2|Add6~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(28),
	datad => VCC,
	cin => \C2|Add6~49\,
	combout => \C2|Add6~50_combout\,
	cout => \C2|Add6~51\);

-- Location: LCCOMB_X28_Y30_N24
\C2|Add6~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~52_combout\ = (\C2|P2\(29) & ((GND) # (!\C2|Add6~51\))) # (!\C2|P2\(29) & (\C2|Add6~51\ $ (GND)))
-- \C2|Add6~53\ = CARRY((\C2|P2\(29)) # (!\C2|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(29),
	datad => VCC,
	cin => \C2|Add6~51\,
	combout => \C2|Add6~52_combout\,
	cout => \C2|Add6~53\);

-- Location: LCCOMB_X28_Y30_N26
\C2|Add6~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~54_combout\ = (\C2|P2\(30) & (\C2|Add6~53\ & VCC)) # (!\C2|P2\(30) & (!\C2|Add6~53\))
-- \C2|Add6~55\ = CARRY((!\C2|P2\(30) & !\C2|Add6~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(30),
	datad => VCC,
	cin => \C2|Add6~53\,
	combout => \C2|Add6~54_combout\,
	cout => \C2|Add6~55\);

-- Location: LCCOMB_X28_Y30_N28
\C2|Add6~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add6~56_combout\ = \C2|P2\(31) $ (\C2|Add6~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(31),
	cin => \C2|Add6~55\,
	combout => \C2|Add6~56_combout\);

-- Location: LCFF_X27_Y31_N3
\C2|P2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~2_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(1));

-- Location: LCCOMB_X29_Y31_N0
\C2|LessThan17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~1_cout\ = CARRY((\C2|P2\(0) & \C2|BH\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(0),
	datab => \C2|BH\(0),
	datad => VCC,
	cout => \C2|LessThan17~1_cout\);

-- Location: LCCOMB_X29_Y31_N2
\C2|LessThan17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~3_cout\ = CARRY((\C2|BV\(1) & (\C2|P2\(1) & !\C2|LessThan17~1_cout\)) # (!\C2|BV\(1) & ((\C2|P2\(1)) # (!\C2|LessThan17~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(1),
	datab => \C2|P2\(1),
	datad => VCC,
	cin => \C2|LessThan17~1_cout\,
	cout => \C2|LessThan17~3_cout\);

-- Location: LCCOMB_X29_Y31_N4
\C2|LessThan17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~5_cout\ = CARRY((\C2|P2\(2) & (!\C2|BV\(2) & !\C2|LessThan17~3_cout\)) # (!\C2|P2\(2) & ((!\C2|LessThan17~3_cout\) # (!\C2|BV\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(2),
	datab => \C2|BV\(2),
	datad => VCC,
	cin => \C2|LessThan17~3_cout\,
	cout => \C2|LessThan17~5_cout\);

-- Location: LCCOMB_X29_Y31_N6
\C2|LessThan17~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~7_cout\ = CARRY((\C2|BV\(3) & (\C2|Add6~0_combout\ & !\C2|LessThan17~5_cout\)) # (!\C2|BV\(3) & ((\C2|Add6~0_combout\) # (!\C2|LessThan17~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(3),
	datab => \C2|Add6~0_combout\,
	datad => VCC,
	cin => \C2|LessThan17~5_cout\,
	cout => \C2|LessThan17~7_cout\);

-- Location: LCCOMB_X29_Y31_N8
\C2|LessThan17~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~9_cout\ = CARRY((\C2|BV\(4) & ((!\C2|LessThan17~7_cout\) # (!\C2|Add6~2_combout\))) # (!\C2|BV\(4) & (!\C2|Add6~2_combout\ & !\C2|LessThan17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(4),
	datab => \C2|Add6~2_combout\,
	datad => VCC,
	cin => \C2|LessThan17~7_cout\,
	cout => \C2|LessThan17~9_cout\);

-- Location: LCCOMB_X29_Y31_N10
\C2|LessThan17~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~11_cout\ = CARRY((\C2|Add6~4_combout\ & ((\C2|BV\(5)) # (!\C2|LessThan17~9_cout\))) # (!\C2|Add6~4_combout\ & (\C2|BV\(5) & !\C2|LessThan17~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add6~4_combout\,
	datab => \C2|BV\(5),
	datad => VCC,
	cin => \C2|LessThan17~9_cout\,
	cout => \C2|LessThan17~11_cout\);

-- Location: LCCOMB_X29_Y31_N12
\C2|LessThan17~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~13_cout\ = CARRY((\C2|Add6~6_combout\ & (\C2|BV\(6) & !\C2|LessThan17~11_cout\)) # (!\C2|Add6~6_combout\ & ((\C2|BV\(6)) # (!\C2|LessThan17~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add6~6_combout\,
	datab => \C2|BV\(6),
	datad => VCC,
	cin => \C2|LessThan17~11_cout\,
	cout => \C2|LessThan17~13_cout\);

-- Location: LCCOMB_X29_Y31_N14
\C2|LessThan17~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~15_cout\ = CARRY((\C2|Add6~8_combout\ & ((\C2|BV\(7)) # (!\C2|LessThan17~13_cout\))) # (!\C2|Add6~8_combout\ & (\C2|BV\(7) & !\C2|LessThan17~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add6~8_combout\,
	datab => \C2|BV\(7),
	datad => VCC,
	cin => \C2|LessThan17~13_cout\,
	cout => \C2|LessThan17~15_cout\);

-- Location: LCCOMB_X29_Y31_N16
\C2|LessThan17~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~17_cout\ = CARRY((\C2|Add6~10_combout\ & (!\C2|BV\(8) & !\C2|LessThan17~15_cout\)) # (!\C2|Add6~10_combout\ & ((!\C2|LessThan17~15_cout\) # (!\C2|BV\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add6~10_combout\,
	datab => \C2|BV\(8),
	datad => VCC,
	cin => \C2|LessThan17~15_cout\,
	cout => \C2|LessThan17~17_cout\);

-- Location: LCCOMB_X29_Y31_N18
\C2|LessThan17~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~19_cout\ = CARRY((\C2|BV\(9) & (\C2|Add6~12_combout\ & !\C2|LessThan17~17_cout\)) # (!\C2|BV\(9) & ((\C2|Add6~12_combout\) # (!\C2|LessThan17~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(9),
	datab => \C2|Add6~12_combout\,
	datad => VCC,
	cin => \C2|LessThan17~17_cout\,
	cout => \C2|LessThan17~19_cout\);

-- Location: LCCOMB_X29_Y31_N20
\C2|LessThan17~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~21_cout\ = CARRY((\C2|BV\(10) & ((!\C2|LessThan17~19_cout\) # (!\C2|Add6~14_combout\))) # (!\C2|BV\(10) & (!\C2|Add6~14_combout\ & !\C2|LessThan17~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(10),
	datab => \C2|Add6~14_combout\,
	datad => VCC,
	cin => \C2|LessThan17~19_cout\,
	cout => \C2|LessThan17~21_cout\);

-- Location: LCCOMB_X29_Y31_N22
\C2|LessThan17~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~23_cout\ = CARRY((\C2|BV\(11) & (\C2|Add6~16_combout\ & !\C2|LessThan17~21_cout\)) # (!\C2|BV\(11) & ((\C2|Add6~16_combout\) # (!\C2|LessThan17~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(11),
	datab => \C2|Add6~16_combout\,
	datad => VCC,
	cin => \C2|LessThan17~21_cout\,
	cout => \C2|LessThan17~23_cout\);

-- Location: LCCOMB_X29_Y31_N24
\C2|LessThan17~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~25_cout\ = CARRY((\C2|BV\(12) & ((!\C2|LessThan17~23_cout\) # (!\C2|Add6~18_combout\))) # (!\C2|BV\(12) & (!\C2|Add6~18_combout\ & !\C2|LessThan17~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(12),
	datab => \C2|Add6~18_combout\,
	datad => VCC,
	cin => \C2|LessThan17~23_cout\,
	cout => \C2|LessThan17~25_cout\);

-- Location: LCCOMB_X29_Y31_N26
\C2|LessThan17~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~27_cout\ = CARRY((\C2|BV\(13) & (\C2|Add6~20_combout\ & !\C2|LessThan17~25_cout\)) # (!\C2|BV\(13) & ((\C2|Add6~20_combout\) # (!\C2|LessThan17~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(13),
	datab => \C2|Add6~20_combout\,
	datad => VCC,
	cin => \C2|LessThan17~25_cout\,
	cout => \C2|LessThan17~27_cout\);

-- Location: LCCOMB_X29_Y31_N28
\C2|LessThan17~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~29_cout\ = CARRY((\C2|BV\(14) & ((!\C2|LessThan17~27_cout\) # (!\C2|Add6~22_combout\))) # (!\C2|BV\(14) & (!\C2|Add6~22_combout\ & !\C2|LessThan17~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(14),
	datab => \C2|Add6~22_combout\,
	datad => VCC,
	cin => \C2|LessThan17~27_cout\,
	cout => \C2|LessThan17~29_cout\);

-- Location: LCCOMB_X29_Y31_N30
\C2|LessThan17~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~31_cout\ = CARRY((\C2|BV\(15) & (\C2|Add6~24_combout\ & !\C2|LessThan17~29_cout\)) # (!\C2|BV\(15) & ((\C2|Add6~24_combout\) # (!\C2|LessThan17~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(15),
	datab => \C2|Add6~24_combout\,
	datad => VCC,
	cin => \C2|LessThan17~29_cout\,
	cout => \C2|LessThan17~31_cout\);

-- Location: LCCOMB_X29_Y30_N0
\C2|LessThan17~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~33_cout\ = CARRY((\C2|Add6~26_combout\ & (\C2|BV\(16) & !\C2|LessThan17~31_cout\)) # (!\C2|Add6~26_combout\ & ((\C2|BV\(16)) # (!\C2|LessThan17~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add6~26_combout\,
	datab => \C2|BV\(16),
	datad => VCC,
	cin => \C2|LessThan17~31_cout\,
	cout => \C2|LessThan17~33_cout\);

-- Location: LCCOMB_X29_Y30_N2
\C2|LessThan17~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~35_cout\ = CARRY((\C2|BV\(17) & (\C2|Add6~28_combout\ & !\C2|LessThan17~33_cout\)) # (!\C2|BV\(17) & ((\C2|Add6~28_combout\) # (!\C2|LessThan17~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(17),
	datab => \C2|Add6~28_combout\,
	datad => VCC,
	cin => \C2|LessThan17~33_cout\,
	cout => \C2|LessThan17~35_cout\);

-- Location: LCCOMB_X29_Y30_N4
\C2|LessThan17~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~37_cout\ = CARRY((\C2|Add6~30_combout\ & (\C2|BV\(18) & !\C2|LessThan17~35_cout\)) # (!\C2|Add6~30_combout\ & ((\C2|BV\(18)) # (!\C2|LessThan17~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add6~30_combout\,
	datab => \C2|BV\(18),
	datad => VCC,
	cin => \C2|LessThan17~35_cout\,
	cout => \C2|LessThan17~37_cout\);

-- Location: LCCOMB_X29_Y30_N6
\C2|LessThan17~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~39_cout\ = CARRY((\C2|BV\(19) & (\C2|Add6~32_combout\ & !\C2|LessThan17~37_cout\)) # (!\C2|BV\(19) & ((\C2|Add6~32_combout\) # (!\C2|LessThan17~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(19),
	datab => \C2|Add6~32_combout\,
	datad => VCC,
	cin => \C2|LessThan17~37_cout\,
	cout => \C2|LessThan17~39_cout\);

-- Location: LCCOMB_X29_Y30_N8
\C2|LessThan17~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~41_cout\ = CARRY((\C2|BV\(20) & ((!\C2|LessThan17~39_cout\) # (!\C2|Add6~34_combout\))) # (!\C2|BV\(20) & (!\C2|Add6~34_combout\ & !\C2|LessThan17~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(20),
	datab => \C2|Add6~34_combout\,
	datad => VCC,
	cin => \C2|LessThan17~39_cout\,
	cout => \C2|LessThan17~41_cout\);

-- Location: LCCOMB_X29_Y30_N10
\C2|LessThan17~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~43_cout\ = CARRY((\C2|Add6~36_combout\ & ((!\C2|LessThan17~41_cout\) # (!\C2|BV\(21)))) # (!\C2|Add6~36_combout\ & (!\C2|BV\(21) & !\C2|LessThan17~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add6~36_combout\,
	datab => \C2|BV\(21),
	datad => VCC,
	cin => \C2|LessThan17~41_cout\,
	cout => \C2|LessThan17~43_cout\);

-- Location: LCCOMB_X29_Y30_N12
\C2|LessThan17~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~45_cout\ = CARRY((\C2|Add6~38_combout\ & (\C2|BV\(22) & !\C2|LessThan17~43_cout\)) # (!\C2|Add6~38_combout\ & ((\C2|BV\(22)) # (!\C2|LessThan17~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add6~38_combout\,
	datab => \C2|BV\(22),
	datad => VCC,
	cin => \C2|LessThan17~43_cout\,
	cout => \C2|LessThan17~45_cout\);

-- Location: LCCOMB_X29_Y30_N14
\C2|LessThan17~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~47_cout\ = CARRY((\C2|Add6~40_combout\ & ((!\C2|LessThan17~45_cout\) # (!\C2|BV\(23)))) # (!\C2|Add6~40_combout\ & (!\C2|BV\(23) & !\C2|LessThan17~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add6~40_combout\,
	datab => \C2|BV\(23),
	datad => VCC,
	cin => \C2|LessThan17~45_cout\,
	cout => \C2|LessThan17~47_cout\);

-- Location: LCCOMB_X29_Y30_N16
\C2|LessThan17~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~49_cout\ = CARRY((\C2|Add6~42_combout\ & (\C2|BV\(24) & !\C2|LessThan17~47_cout\)) # (!\C2|Add6~42_combout\ & ((\C2|BV\(24)) # (!\C2|LessThan17~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add6~42_combout\,
	datab => \C2|BV\(24),
	datad => VCC,
	cin => \C2|LessThan17~47_cout\,
	cout => \C2|LessThan17~49_cout\);

-- Location: LCCOMB_X29_Y30_N18
\C2|LessThan17~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~51_cout\ = CARRY((\C2|BV\(25) & (\C2|Add6~44_combout\ & !\C2|LessThan17~49_cout\)) # (!\C2|BV\(25) & ((\C2|Add6~44_combout\) # (!\C2|LessThan17~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(25),
	datab => \C2|Add6~44_combout\,
	datad => VCC,
	cin => \C2|LessThan17~49_cout\,
	cout => \C2|LessThan17~51_cout\);

-- Location: LCCOMB_X29_Y30_N20
\C2|LessThan17~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~53_cout\ = CARRY((\C2|BV\(26) & ((!\C2|LessThan17~51_cout\) # (!\C2|Add6~46_combout\))) # (!\C2|BV\(26) & (!\C2|Add6~46_combout\ & !\C2|LessThan17~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(26),
	datab => \C2|Add6~46_combout\,
	datad => VCC,
	cin => \C2|LessThan17~51_cout\,
	cout => \C2|LessThan17~53_cout\);

-- Location: LCCOMB_X29_Y30_N22
\C2|LessThan17~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~55_cout\ = CARRY((\C2|Add6~48_combout\ & ((!\C2|LessThan17~53_cout\) # (!\C2|BV\(27)))) # (!\C2|Add6~48_combout\ & (!\C2|BV\(27) & !\C2|LessThan17~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add6~48_combout\,
	datab => \C2|BV\(27),
	datad => VCC,
	cin => \C2|LessThan17~53_cout\,
	cout => \C2|LessThan17~55_cout\);

-- Location: LCCOMB_X29_Y30_N24
\C2|LessThan17~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~57_cout\ = CARRY((\C2|BV\(28) & ((!\C2|LessThan17~55_cout\) # (!\C2|Add6~50_combout\))) # (!\C2|BV\(28) & (!\C2|Add6~50_combout\ & !\C2|LessThan17~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(28),
	datab => \C2|Add6~50_combout\,
	datad => VCC,
	cin => \C2|LessThan17~55_cout\,
	cout => \C2|LessThan17~57_cout\);

-- Location: LCCOMB_X29_Y30_N26
\C2|LessThan17~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~59_cout\ = CARRY((\C2|BV\(29) & (\C2|Add6~52_combout\ & !\C2|LessThan17~57_cout\)) # (!\C2|BV\(29) & ((\C2|Add6~52_combout\) # (!\C2|LessThan17~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(29),
	datab => \C2|Add6~52_combout\,
	datad => VCC,
	cin => \C2|LessThan17~57_cout\,
	cout => \C2|LessThan17~59_cout\);

-- Location: LCCOMB_X29_Y30_N28
\C2|LessThan17~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~61_cout\ = CARRY((\C2|BV\(30) & ((!\C2|LessThan17~59_cout\) # (!\C2|Add6~54_combout\))) # (!\C2|BV\(30) & (!\C2|Add6~54_combout\ & !\C2|LessThan17~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(30),
	datab => \C2|Add6~54_combout\,
	datad => VCC,
	cin => \C2|LessThan17~59_cout\,
	cout => \C2|LessThan17~61_cout\);

-- Location: LCCOMB_X29_Y30_N30
\C2|LessThan17~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan17~62_combout\ = (\C2|BV\(31) & (\C2|LessThan17~61_cout\ & \C2|Add6~56_combout\)) # (!\C2|BV\(31) & ((\C2|LessThan17~61_cout\) # (\C2|Add6~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(31),
	datad => \C2|Add6~56_combout\,
	cin => \C2|LessThan17~61_cout\,
	combout => \C2|LessThan17~62_combout\);

-- Location: LCFF_X27_Y31_N11
\C2|P2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add3~10_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(5));

-- Location: LCCOMB_X28_Y31_N2
\C2|P2[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|P2[2]~14_combout\ = !\C2|Add3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add3~4_combout\,
	combout => \C2|P2[2]~14_combout\);

-- Location: LCFF_X28_Y31_N3
\C2|P2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|P2[2]~14_combout\,
	ena => \C2|P2[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|P2\(2));

-- Location: LCCOMB_X28_Y27_N4
\C3|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~2_combout\ = (\C2|P2\(3) & (\C3|Add4~1\ & VCC)) # (!\C2|P2\(3) & (!\C3|Add4~1\))
-- \C3|Add4~3\ = CARRY((!\C2|P2\(3) & !\C3|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(3),
	datad => VCC,
	cin => \C3|Add4~1\,
	combout => \C3|Add4~2_combout\,
	cout => \C3|Add4~3\);

-- Location: LCCOMB_X28_Y27_N6
\C3|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~4_combout\ = (\C2|P2\(4) & ((GND) # (!\C3|Add4~3\))) # (!\C2|P2\(4) & (\C3|Add4~3\ $ (GND)))
-- \C3|Add4~5\ = CARRY((\C2|P2\(4)) # (!\C3|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(4),
	datad => VCC,
	cin => \C3|Add4~3\,
	combout => \C3|Add4~4_combout\,
	cout => \C3|Add4~5\);

-- Location: LCCOMB_X28_Y27_N8
\C3|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~6_combout\ = (\C2|P2\(5) & (\C3|Add4~5\ & VCC)) # (!\C2|P2\(5) & (!\C3|Add4~5\))
-- \C3|Add4~7\ = CARRY((!\C2|P2\(5) & !\C3|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(5),
	datad => VCC,
	cin => \C3|Add4~5\,
	combout => \C3|Add4~6_combout\,
	cout => \C3|Add4~7\);

-- Location: LCCOMB_X28_Y27_N10
\C3|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~8_combout\ = (\C2|P2\(6) & (\C3|Add4~7\ $ (GND))) # (!\C2|P2\(6) & ((GND) # (!\C3|Add4~7\)))
-- \C3|Add4~9\ = CARRY((!\C3|Add4~7\) # (!\C2|P2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(6),
	datad => VCC,
	cin => \C3|Add4~7\,
	combout => \C3|Add4~8_combout\,
	cout => \C3|Add4~9\);

-- Location: LCCOMB_X28_Y27_N12
\C3|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~10_combout\ = (\C2|P2\(7) & (\C3|Add4~9\ & VCC)) # (!\C2|P2\(7) & (!\C3|Add4~9\))
-- \C3|Add4~11\ = CARRY((!\C2|P2\(7) & !\C3|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(7),
	datad => VCC,
	cin => \C3|Add4~9\,
	combout => \C3|Add4~10_combout\,
	cout => \C3|Add4~11\);

-- Location: LCCOMB_X28_Y27_N14
\C3|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~12_combout\ = (\C2|P2\(8) & (!\C3|Add4~11\ & VCC)) # (!\C2|P2\(8) & (\C3|Add4~11\ $ (GND)))
-- \C3|Add4~13\ = CARRY((!\C2|P2\(8) & !\C3|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(8),
	datad => VCC,
	cin => \C3|Add4~11\,
	combout => \C3|Add4~12_combout\,
	cout => \C3|Add4~13\);

-- Location: LCCOMB_X28_Y27_N16
\C3|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~14_combout\ = (\C2|P2\(9) & (!\C3|Add4~13\)) # (!\C2|P2\(9) & ((\C3|Add4~13\) # (GND)))
-- \C3|Add4~15\ = CARRY((!\C3|Add4~13\) # (!\C2|P2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(9),
	datad => VCC,
	cin => \C3|Add4~13\,
	combout => \C3|Add4~14_combout\,
	cout => \C3|Add4~15\);

-- Location: LCCOMB_X28_Y27_N18
\C3|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~16_combout\ = (\C2|P2\(10) & (\C3|Add4~15\ $ (GND))) # (!\C2|P2\(10) & (!\C3|Add4~15\ & VCC))
-- \C3|Add4~17\ = CARRY((\C2|P2\(10) & !\C3|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(10),
	datad => VCC,
	cin => \C3|Add4~15\,
	combout => \C3|Add4~16_combout\,
	cout => \C3|Add4~17\);

-- Location: LCCOMB_X28_Y27_N22
\C3|Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~20_combout\ = (\C2|P2\(12) & (\C3|Add4~19\ $ (GND))) # (!\C2|P2\(12) & (!\C3|Add4~19\ & VCC))
-- \C3|Add4~21\ = CARRY((\C2|P2\(12) & !\C3|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(12),
	datad => VCC,
	cin => \C3|Add4~19\,
	combout => \C3|Add4~20_combout\,
	cout => \C3|Add4~21\);

-- Location: LCCOMB_X28_Y27_N24
\C3|Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~22_combout\ = (\C2|P2\(13) & (!\C3|Add4~21\)) # (!\C2|P2\(13) & ((\C3|Add4~21\) # (GND)))
-- \C3|Add4~23\ = CARRY((!\C3|Add4~21\) # (!\C2|P2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(13),
	datad => VCC,
	cin => \C3|Add4~21\,
	combout => \C3|Add4~22_combout\,
	cout => \C3|Add4~23\);

-- Location: LCCOMB_X28_Y27_N26
\C3|Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~24_combout\ = (\C2|P2\(14) & (\C3|Add4~23\ $ (GND))) # (!\C2|P2\(14) & (!\C3|Add4~23\ & VCC))
-- \C3|Add4~25\ = CARRY((\C2|P2\(14) & !\C3|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(14),
	datad => VCC,
	cin => \C3|Add4~23\,
	combout => \C3|Add4~24_combout\,
	cout => \C3|Add4~25\);

-- Location: LCCOMB_X28_Y27_N28
\C3|Add4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~26_combout\ = (\C2|P2\(15) & (!\C3|Add4~25\)) # (!\C2|P2\(15) & ((\C3|Add4~25\) # (GND)))
-- \C3|Add4~27\ = CARRY((!\C3|Add4~25\) # (!\C2|P2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(15),
	datad => VCC,
	cin => \C3|Add4~25\,
	combout => \C3|Add4~26_combout\,
	cout => \C3|Add4~27\);

-- Location: LCCOMB_X28_Y27_N30
\C3|Add4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~28_combout\ = (\C2|P2\(16) & (\C3|Add4~27\ $ (GND))) # (!\C2|P2\(16) & (!\C3|Add4~27\ & VCC))
-- \C3|Add4~29\ = CARRY((\C2|P2\(16) & !\C3|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(16),
	datad => VCC,
	cin => \C3|Add4~27\,
	combout => \C3|Add4~28_combout\,
	cout => \C3|Add4~29\);

-- Location: LCCOMB_X28_Y26_N0
\C3|Add4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~30_combout\ = (\C2|P2\(17) & (!\C3|Add4~29\)) # (!\C2|P2\(17) & ((\C3|Add4~29\) # (GND)))
-- \C3|Add4~31\ = CARRY((!\C3|Add4~29\) # (!\C2|P2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(17),
	datad => VCC,
	cin => \C3|Add4~29\,
	combout => \C3|Add4~30_combout\,
	cout => \C3|Add4~31\);

-- Location: LCCOMB_X28_Y26_N4
\C3|Add4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~34_combout\ = (\C2|P2\(19) & (!\C3|Add4~33\)) # (!\C2|P2\(19) & ((\C3|Add4~33\) # (GND)))
-- \C3|Add4~35\ = CARRY((!\C3|Add4~33\) # (!\C2|P2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(19),
	datad => VCC,
	cin => \C3|Add4~33\,
	combout => \C3|Add4~34_combout\,
	cout => \C3|Add4~35\);

-- Location: LCCOMB_X28_Y26_N6
\C3|Add4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~36_combout\ = (\C2|P2\(20) & (\C3|Add4~35\ $ (GND))) # (!\C2|P2\(20) & (!\C3|Add4~35\ & VCC))
-- \C3|Add4~37\ = CARRY((\C2|P2\(20) & !\C3|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(20),
	datad => VCC,
	cin => \C3|Add4~35\,
	combout => \C3|Add4~36_combout\,
	cout => \C3|Add4~37\);

-- Location: LCCOMB_X28_Y26_N8
\C3|Add4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~38_combout\ = (\C2|P2\(21) & (!\C3|Add4~37\)) # (!\C2|P2\(21) & ((\C3|Add4~37\) # (GND)))
-- \C3|Add4~39\ = CARRY((!\C3|Add4~37\) # (!\C2|P2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(21),
	datad => VCC,
	cin => \C3|Add4~37\,
	combout => \C3|Add4~38_combout\,
	cout => \C3|Add4~39\);

-- Location: LCCOMB_X28_Y26_N10
\C3|Add4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~40_combout\ = (\C2|P2\(22) & (\C3|Add4~39\ $ (GND))) # (!\C2|P2\(22) & (!\C3|Add4~39\ & VCC))
-- \C3|Add4~41\ = CARRY((\C2|P2\(22) & !\C3|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(22),
	datad => VCC,
	cin => \C3|Add4~39\,
	combout => \C3|Add4~40_combout\,
	cout => \C3|Add4~41\);

-- Location: LCCOMB_X28_Y26_N12
\C3|Add4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~42_combout\ = (\C2|P2\(23) & (!\C3|Add4~41\)) # (!\C2|P2\(23) & ((\C3|Add4~41\) # (GND)))
-- \C3|Add4~43\ = CARRY((!\C3|Add4~41\) # (!\C2|P2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(23),
	datad => VCC,
	cin => \C3|Add4~41\,
	combout => \C3|Add4~42_combout\,
	cout => \C3|Add4~43\);

-- Location: LCCOMB_X28_Y26_N14
\C3|Add4~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~44_combout\ = (\C2|P2\(24) & (\C3|Add4~43\ $ (GND))) # (!\C2|P2\(24) & (!\C3|Add4~43\ & VCC))
-- \C3|Add4~45\ = CARRY((\C2|P2\(24) & !\C3|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(24),
	datad => VCC,
	cin => \C3|Add4~43\,
	combout => \C3|Add4~44_combout\,
	cout => \C3|Add4~45\);

-- Location: LCCOMB_X28_Y26_N16
\C3|Add4~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~46_combout\ = (\C2|P2\(25) & (!\C3|Add4~45\)) # (!\C2|P2\(25) & ((\C3|Add4~45\) # (GND)))
-- \C3|Add4~47\ = CARRY((!\C3|Add4~45\) # (!\C2|P2\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(25),
	datad => VCC,
	cin => \C3|Add4~45\,
	combout => \C3|Add4~46_combout\,
	cout => \C3|Add4~47\);

-- Location: LCCOMB_X28_Y26_N18
\C3|Add4~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~48_combout\ = (\C2|P2\(26) & (\C3|Add4~47\ $ (GND))) # (!\C2|P2\(26) & (!\C3|Add4~47\ & VCC))
-- \C3|Add4~49\ = CARRY((\C2|P2\(26) & !\C3|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(26),
	datad => VCC,
	cin => \C3|Add4~47\,
	combout => \C3|Add4~48_combout\,
	cout => \C3|Add4~49\);

-- Location: LCCOMB_X28_Y26_N20
\C3|Add4~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~50_combout\ = (\C2|P2\(27) & (!\C3|Add4~49\)) # (!\C2|P2\(27) & ((\C3|Add4~49\) # (GND)))
-- \C3|Add4~51\ = CARRY((!\C3|Add4~49\) # (!\C2|P2\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(27),
	datad => VCC,
	cin => \C3|Add4~49\,
	combout => \C3|Add4~50_combout\,
	cout => \C3|Add4~51\);

-- Location: LCCOMB_X28_Y26_N22
\C3|Add4~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~52_combout\ = (\C2|P2\(28) & (\C3|Add4~51\ $ (GND))) # (!\C2|P2\(28) & (!\C3|Add4~51\ & VCC))
-- \C3|Add4~53\ = CARRY((\C2|P2\(28) & !\C3|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(28),
	datad => VCC,
	cin => \C3|Add4~51\,
	combout => \C3|Add4~52_combout\,
	cout => \C3|Add4~53\);

-- Location: LCCOMB_X28_Y26_N24
\C3|Add4~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~54_combout\ = (\C2|P2\(29) & (!\C3|Add4~53\)) # (!\C2|P2\(29) & ((\C3|Add4~53\) # (GND)))
-- \C3|Add4~55\ = CARRY((!\C3|Add4~53\) # (!\C2|P2\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|P2\(29),
	datad => VCC,
	cin => \C3|Add4~53\,
	combout => \C3|Add4~54_combout\,
	cout => \C3|Add4~55\);

-- Location: LCCOMB_X28_Y26_N26
\C3|Add4~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~56_combout\ = (\C2|P2\(30) & (\C3|Add4~55\ $ (GND))) # (!\C2|P2\(30) & (!\C3|Add4~55\ & VCC))
-- \C3|Add4~57\ = CARRY((\C2|P2\(30) & !\C3|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(30),
	datad => VCC,
	cin => \C3|Add4~55\,
	combout => \C3|Add4~56_combout\,
	cout => \C3|Add4~57\);

-- Location: LCCOMB_X28_Y26_N28
\C3|Add4~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add4~58_combout\ = \C2|P2\(31) $ (\C3|Add4~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(31),
	cin => \C3|Add4~57\,
	combout => \C3|Add4~58_combout\);

-- Location: LCCOMB_X27_Y27_N0
\C2|LessThan18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~1_cout\ = CARRY((!\C2|BH\(0) & !\C2|P2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(0),
	datab => \C2|P2\(0),
	datad => VCC,
	cout => \C2|LessThan18~1_cout\);

-- Location: LCCOMB_X27_Y27_N2
\C2|LessThan18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~3_cout\ = CARRY((\C2|BV\(1) & ((\C2|P2\(1)) # (!\C2|LessThan18~1_cout\))) # (!\C2|BV\(1) & (\C2|P2\(1) & !\C2|LessThan18~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(1),
	datab => \C2|P2\(1),
	datad => VCC,
	cin => \C2|LessThan18~1_cout\,
	cout => \C2|LessThan18~3_cout\);

-- Location: LCCOMB_X27_Y27_N4
\C2|LessThan18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~5_cout\ = CARRY((\C3|Add4~0_combout\ & ((\C2|BV\(2)) # (!\C2|LessThan18~3_cout\))) # (!\C3|Add4~0_combout\ & (\C2|BV\(2) & !\C2|LessThan18~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~0_combout\,
	datab => \C2|BV\(2),
	datad => VCC,
	cin => \C2|LessThan18~3_cout\,
	cout => \C2|LessThan18~5_cout\);

-- Location: LCCOMB_X27_Y27_N6
\C2|LessThan18~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~7_cout\ = CARRY((\C3|Add4~2_combout\ & (\C2|BV\(3) & !\C2|LessThan18~5_cout\)) # (!\C3|Add4~2_combout\ & ((\C2|BV\(3)) # (!\C2|LessThan18~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~2_combout\,
	datab => \C2|BV\(3),
	datad => VCC,
	cin => \C2|LessThan18~5_cout\,
	cout => \C2|LessThan18~7_cout\);

-- Location: LCCOMB_X27_Y27_N8
\C2|LessThan18~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~9_cout\ = CARRY((\C3|Add4~4_combout\ & ((!\C2|LessThan18~7_cout\) # (!\C2|BV\(4)))) # (!\C3|Add4~4_combout\ & (!\C2|BV\(4) & !\C2|LessThan18~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~4_combout\,
	datab => \C2|BV\(4),
	datad => VCC,
	cin => \C2|LessThan18~7_cout\,
	cout => \C2|LessThan18~9_cout\);

-- Location: LCCOMB_X27_Y27_N10
\C2|LessThan18~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~11_cout\ = CARRY((\C2|BV\(5) & (!\C3|Add4~6_combout\ & !\C2|LessThan18~9_cout\)) # (!\C2|BV\(5) & ((!\C2|LessThan18~9_cout\) # (!\C3|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(5),
	datab => \C3|Add4~6_combout\,
	datad => VCC,
	cin => \C2|LessThan18~9_cout\,
	cout => \C2|LessThan18~11_cout\);

-- Location: LCCOMB_X27_Y27_N12
\C2|LessThan18~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~13_cout\ = CARRY((\C2|BV\(6) & (\C3|Add4~8_combout\ & !\C2|LessThan18~11_cout\)) # (!\C2|BV\(6) & ((\C3|Add4~8_combout\) # (!\C2|LessThan18~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(6),
	datab => \C3|Add4~8_combout\,
	datad => VCC,
	cin => \C2|LessThan18~11_cout\,
	cout => \C2|LessThan18~13_cout\);

-- Location: LCCOMB_X27_Y27_N14
\C2|LessThan18~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~15_cout\ = CARRY((\C2|BV\(7) & (!\C3|Add4~10_combout\ & !\C2|LessThan18~13_cout\)) # (!\C2|BV\(7) & ((!\C2|LessThan18~13_cout\) # (!\C3|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(7),
	datab => \C3|Add4~10_combout\,
	datad => VCC,
	cin => \C2|LessThan18~13_cout\,
	cout => \C2|LessThan18~15_cout\);

-- Location: LCCOMB_X27_Y27_N16
\C2|LessThan18~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~17_cout\ = CARRY((\C2|BV\(8) & ((\C3|Add4~12_combout\) # (!\C2|LessThan18~15_cout\))) # (!\C2|BV\(8) & (\C3|Add4~12_combout\ & !\C2|LessThan18~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(8),
	datab => \C3|Add4~12_combout\,
	datad => VCC,
	cin => \C2|LessThan18~15_cout\,
	cout => \C2|LessThan18~17_cout\);

-- Location: LCCOMB_X27_Y27_N18
\C2|LessThan18~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~19_cout\ = CARRY((\C3|Add4~14_combout\ & (\C2|BV\(9) & !\C2|LessThan18~17_cout\)) # (!\C3|Add4~14_combout\ & ((\C2|BV\(9)) # (!\C2|LessThan18~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~14_combout\,
	datab => \C2|BV\(9),
	datad => VCC,
	cin => \C2|LessThan18~17_cout\,
	cout => \C2|LessThan18~19_cout\);

-- Location: LCCOMB_X27_Y27_N20
\C2|LessThan18~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~21_cout\ = CARRY((\C2|BV\(10) & (\C3|Add4~16_combout\ & !\C2|LessThan18~19_cout\)) # (!\C2|BV\(10) & ((\C3|Add4~16_combout\) # (!\C2|LessThan18~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(10),
	datab => \C3|Add4~16_combout\,
	datad => VCC,
	cin => \C2|LessThan18~19_cout\,
	cout => \C2|LessThan18~21_cout\);

-- Location: LCCOMB_X27_Y27_N22
\C2|LessThan18~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~23_cout\ = CARRY((\C3|Add4~18_combout\ & (\C2|BV\(11) & !\C2|LessThan18~21_cout\)) # (!\C3|Add4~18_combout\ & ((\C2|BV\(11)) # (!\C2|LessThan18~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~18_combout\,
	datab => \C2|BV\(11),
	datad => VCC,
	cin => \C2|LessThan18~21_cout\,
	cout => \C2|LessThan18~23_cout\);

-- Location: LCCOMB_X27_Y27_N24
\C2|LessThan18~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~25_cout\ = CARRY((\C2|BV\(12) & (\C3|Add4~20_combout\ & !\C2|LessThan18~23_cout\)) # (!\C2|BV\(12) & ((\C3|Add4~20_combout\) # (!\C2|LessThan18~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(12),
	datab => \C3|Add4~20_combout\,
	datad => VCC,
	cin => \C2|LessThan18~23_cout\,
	cout => \C2|LessThan18~25_cout\);

-- Location: LCCOMB_X27_Y27_N26
\C2|LessThan18~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~27_cout\ = CARRY((\C2|BV\(13) & ((!\C2|LessThan18~25_cout\) # (!\C3|Add4~22_combout\))) # (!\C2|BV\(13) & (!\C3|Add4~22_combout\ & !\C2|LessThan18~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(13),
	datab => \C3|Add4~22_combout\,
	datad => VCC,
	cin => \C2|LessThan18~25_cout\,
	cout => \C2|LessThan18~27_cout\);

-- Location: LCCOMB_X27_Y27_N28
\C2|LessThan18~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~29_cout\ = CARRY((\C3|Add4~24_combout\ & ((!\C2|LessThan18~27_cout\) # (!\C2|BV\(14)))) # (!\C3|Add4~24_combout\ & (!\C2|BV\(14) & !\C2|LessThan18~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~24_combout\,
	datab => \C2|BV\(14),
	datad => VCC,
	cin => \C2|LessThan18~27_cout\,
	cout => \C2|LessThan18~29_cout\);

-- Location: LCCOMB_X27_Y27_N30
\C2|LessThan18~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~31_cout\ = CARRY((\C2|BV\(15) & ((!\C2|LessThan18~29_cout\) # (!\C3|Add4~26_combout\))) # (!\C2|BV\(15) & (!\C3|Add4~26_combout\ & !\C2|LessThan18~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(15),
	datab => \C3|Add4~26_combout\,
	datad => VCC,
	cin => \C2|LessThan18~29_cout\,
	cout => \C2|LessThan18~31_cout\);

-- Location: LCCOMB_X27_Y26_N0
\C2|LessThan18~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~33_cout\ = CARRY((\C2|BV\(16) & (\C3|Add4~28_combout\ & !\C2|LessThan18~31_cout\)) # (!\C2|BV\(16) & ((\C3|Add4~28_combout\) # (!\C2|LessThan18~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(16),
	datab => \C3|Add4~28_combout\,
	datad => VCC,
	cin => \C2|LessThan18~31_cout\,
	cout => \C2|LessThan18~33_cout\);

-- Location: LCCOMB_X27_Y26_N2
\C2|LessThan18~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~35_cout\ = CARRY((\C2|BV\(17) & ((!\C2|LessThan18~33_cout\) # (!\C3|Add4~30_combout\))) # (!\C2|BV\(17) & (!\C3|Add4~30_combout\ & !\C2|LessThan18~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(17),
	datab => \C3|Add4~30_combout\,
	datad => VCC,
	cin => \C2|LessThan18~33_cout\,
	cout => \C2|LessThan18~35_cout\);

-- Location: LCCOMB_X27_Y26_N4
\C2|LessThan18~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~37_cout\ = CARRY((\C3|Add4~32_combout\ & ((!\C2|LessThan18~35_cout\) # (!\C2|BV\(18)))) # (!\C3|Add4~32_combout\ & (!\C2|BV\(18) & !\C2|LessThan18~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~32_combout\,
	datab => \C2|BV\(18),
	datad => VCC,
	cin => \C2|LessThan18~35_cout\,
	cout => \C2|LessThan18~37_cout\);

-- Location: LCCOMB_X27_Y26_N6
\C2|LessThan18~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~39_cout\ = CARRY((\C3|Add4~34_combout\ & (\C2|BV\(19) & !\C2|LessThan18~37_cout\)) # (!\C3|Add4~34_combout\ & ((\C2|BV\(19)) # (!\C2|LessThan18~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~34_combout\,
	datab => \C2|BV\(19),
	datad => VCC,
	cin => \C2|LessThan18~37_cout\,
	cout => \C2|LessThan18~39_cout\);

-- Location: LCCOMB_X27_Y26_N8
\C2|LessThan18~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~41_cout\ = CARRY((\C3|Add4~36_combout\ & ((!\C2|LessThan18~39_cout\) # (!\C2|BV\(20)))) # (!\C3|Add4~36_combout\ & (!\C2|BV\(20) & !\C2|LessThan18~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~36_combout\,
	datab => \C2|BV\(20),
	datad => VCC,
	cin => \C2|LessThan18~39_cout\,
	cout => \C2|LessThan18~41_cout\);

-- Location: LCCOMB_X27_Y26_N10
\C2|LessThan18~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~43_cout\ = CARRY((\C2|BV\(21) & ((!\C2|LessThan18~41_cout\) # (!\C3|Add4~38_combout\))) # (!\C2|BV\(21) & (!\C3|Add4~38_combout\ & !\C2|LessThan18~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(21),
	datab => \C3|Add4~38_combout\,
	datad => VCC,
	cin => \C2|LessThan18~41_cout\,
	cout => \C2|LessThan18~43_cout\);

-- Location: LCCOMB_X27_Y26_N12
\C2|LessThan18~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~45_cout\ = CARRY((\C2|BV\(22) & (\C3|Add4~40_combout\ & !\C2|LessThan18~43_cout\)) # (!\C2|BV\(22) & ((\C3|Add4~40_combout\) # (!\C2|LessThan18~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(22),
	datab => \C3|Add4~40_combout\,
	datad => VCC,
	cin => \C2|LessThan18~43_cout\,
	cout => \C2|LessThan18~45_cout\);

-- Location: LCCOMB_X27_Y26_N14
\C2|LessThan18~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~47_cout\ = CARRY((\C2|BV\(23) & ((!\C2|LessThan18~45_cout\) # (!\C3|Add4~42_combout\))) # (!\C2|BV\(23) & (!\C3|Add4~42_combout\ & !\C2|LessThan18~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(23),
	datab => \C3|Add4~42_combout\,
	datad => VCC,
	cin => \C2|LessThan18~45_cout\,
	cout => \C2|LessThan18~47_cout\);

-- Location: LCCOMB_X27_Y26_N16
\C2|LessThan18~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~49_cout\ = CARRY((\C2|BV\(24) & (\C3|Add4~44_combout\ & !\C2|LessThan18~47_cout\)) # (!\C2|BV\(24) & ((\C3|Add4~44_combout\) # (!\C2|LessThan18~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(24),
	datab => \C3|Add4~44_combout\,
	datad => VCC,
	cin => \C2|LessThan18~47_cout\,
	cout => \C2|LessThan18~49_cout\);

-- Location: LCCOMB_X27_Y26_N18
\C2|LessThan18~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~51_cout\ = CARRY((\C3|Add4~46_combout\ & (\C2|BV\(25) & !\C2|LessThan18~49_cout\)) # (!\C3|Add4~46_combout\ & ((\C2|BV\(25)) # (!\C2|LessThan18~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~46_combout\,
	datab => \C2|BV\(25),
	datad => VCC,
	cin => \C2|LessThan18~49_cout\,
	cout => \C2|LessThan18~51_cout\);

-- Location: LCCOMB_X27_Y26_N20
\C2|LessThan18~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~53_cout\ = CARRY((\C2|BV\(26) & (\C3|Add4~48_combout\ & !\C2|LessThan18~51_cout\)) # (!\C2|BV\(26) & ((\C3|Add4~48_combout\) # (!\C2|LessThan18~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(26),
	datab => \C3|Add4~48_combout\,
	datad => VCC,
	cin => \C2|LessThan18~51_cout\,
	cout => \C2|LessThan18~53_cout\);

-- Location: LCCOMB_X27_Y26_N22
\C2|LessThan18~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~55_cout\ = CARRY((\C2|BV\(27) & ((!\C2|LessThan18~53_cout\) # (!\C3|Add4~50_combout\))) # (!\C2|BV\(27) & (!\C3|Add4~50_combout\ & !\C2|LessThan18~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(27),
	datab => \C3|Add4~50_combout\,
	datad => VCC,
	cin => \C2|LessThan18~53_cout\,
	cout => \C2|LessThan18~55_cout\);

-- Location: LCCOMB_X27_Y26_N24
\C2|LessThan18~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~57_cout\ = CARRY((\C2|BV\(28) & (\C3|Add4~52_combout\ & !\C2|LessThan18~55_cout\)) # (!\C2|BV\(28) & ((\C3|Add4~52_combout\) # (!\C2|LessThan18~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(28),
	datab => \C3|Add4~52_combout\,
	datad => VCC,
	cin => \C2|LessThan18~55_cout\,
	cout => \C2|LessThan18~57_cout\);

-- Location: LCCOMB_X27_Y26_N26
\C2|LessThan18~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~59_cout\ = CARRY((\C2|BV\(29) & ((!\C2|LessThan18~57_cout\) # (!\C3|Add4~54_combout\))) # (!\C2|BV\(29) & (!\C3|Add4~54_combout\ & !\C2|LessThan18~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(29),
	datab => \C3|Add4~54_combout\,
	datad => VCC,
	cin => \C2|LessThan18~57_cout\,
	cout => \C2|LessThan18~59_cout\);

-- Location: LCCOMB_X27_Y26_N28
\C2|LessThan18~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~61_cout\ = CARRY((\C3|Add4~56_combout\ & ((!\C2|LessThan18~59_cout\) # (!\C2|BV\(30)))) # (!\C3|Add4~56_combout\ & (!\C2|BV\(30) & !\C2|LessThan18~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~56_combout\,
	datab => \C2|BV\(30),
	datad => VCC,
	cin => \C2|LessThan18~59_cout\,
	cout => \C2|LessThan18~61_cout\);

-- Location: LCCOMB_X27_Y26_N30
\C2|LessThan18~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan18~62_combout\ = (\C2|BV\(31) & ((\C2|LessThan18~61_cout\) # (!\C3|Add4~58_combout\))) # (!\C2|BV\(31) & (\C2|LessThan18~61_cout\ & !\C3|Add4~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(31),
	datad => \C3|Add4~58_combout\,
	cin => \C2|LessThan18~61_cout\,
	combout => \C2|LessThan18~62_combout\);

-- Location: LCCOMB_X30_Y26_N28
\C2|BHDir~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BHDir~5_combout\ = (!\C2|BH\(8) & (\C2|BH\(10) & (\C2|LessThan17~62_combout\ & \C2|LessThan18~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(8),
	datab => \C2|BH\(10),
	datac => \C2|LessThan17~62_combout\,
	datad => \C2|LessThan18~62_combout\,
	combout => \C2|BHDir~5_combout\);

-- Location: LCCOMB_X30_Y26_N18
\C2|BHDir~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BHDir~6_combout\ = (\C2|BHDir~4_combout\ & ((\C2|BHDir~regout\ & ((\C2|BHDir~5_combout\))) # (!\C2|BHDir~regout\ & (!\C2|BHDir~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~4_combout\,
	datab => \C2|BHDir~regout\,
	datac => \C2|BHDir~0_combout\,
	datad => \C2|BHDir~5_combout\,
	combout => \C2|BHDir~6_combout\);

-- Location: LCCOMB_X30_Y26_N0
\C2|BHDir~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|BHDir~8_combout\ = (\C2|BH\(31)) # ((\C2|BHDir~6_combout\ & ((!\C2|BHDir~regout\))) # (!\C2|BHDir~6_combout\ & (!\C2|BHDir~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(31),
	datab => \C2|BHDir~7_combout\,
	datac => \C2|BHDir~regout\,
	datad => \C2|BHDir~6_combout\,
	combout => \C2|BHDir~8_combout\);

-- Location: LCFF_X30_Y26_N1
\C2|BHDir\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|BHDir~8_combout\,
	ena => \C2|currentS.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BHDir~regout\);

-- Location: LCCOMB_X36_Y26_N2
\C2|Add11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~3_combout\ = (\C2|BHDir~regout\ & ((\C2|BH\(1) & ((\C2|Add11~1\) # (GND))) # (!\C2|BH\(1) & (!\C2|Add11~1\)))) # (!\C2|BHDir~regout\ & ((\C2|BH\(1) & (!\C2|Add11~1\)) # (!\C2|BH\(1) & (\C2|Add11~1\ & VCC))))
-- \C2|Add11~4\ = CARRY((\C2|BHDir~regout\ & ((\C2|BH\(1)) # (!\C2|Add11~1\))) # (!\C2|BHDir~regout\ & (\C2|BH\(1) & !\C2|Add11~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(1),
	datad => VCC,
	cin => \C2|Add11~1\,
	combout => \C2|Add11~3_combout\,
	cout => \C2|Add11~4\);

-- Location: LCCOMB_X32_Y30_N20
\C2|Add11~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~95_combout\ = (!\C2|Add11~3_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add11~3_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~95_combout\);

-- Location: LCFF_X32_Y30_N21
\C2|BH[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add11~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(1));

-- Location: LCCOMB_X36_Y26_N4
\C2|Add11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~5_combout\ = ((\C2|BHDir~regout\ $ (\C2|BH\(2) $ (\C2|Add11~4\)))) # (GND)
-- \C2|Add11~6\ = CARRY((\C2|BHDir~regout\ & (\C2|BH\(2) & !\C2|Add11~4\)) # (!\C2|BHDir~regout\ & ((\C2|BH\(2)) # (!\C2|Add11~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(2),
	datad => VCC,
	cin => \C2|Add11~4\,
	combout => \C2|Add11~5_combout\,
	cout => \C2|Add11~6\);

-- Location: LCCOMB_X32_Y28_N26
\C2|Add11~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~94_combout\ = (\C2|Add11~5_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add11~5_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~94_combout\);

-- Location: LCFF_X33_Y26_N29
\C2|BH[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~94_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(2));

-- Location: LCCOMB_X36_Y26_N6
\C2|Add11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~7_combout\ = (\C2|BHDir~regout\ & ((\C2|BH\(3) & (!\C2|Add11~6\)) # (!\C2|BH\(3) & ((\C2|Add11~6\) # (GND))))) # (!\C2|BHDir~regout\ & ((\C2|BH\(3) & (\C2|Add11~6\ & VCC)) # (!\C2|BH\(3) & (!\C2|Add11~6\))))
-- \C2|Add11~8\ = CARRY((\C2|BHDir~regout\ & ((!\C2|Add11~6\) # (!\C2|BH\(3)))) # (!\C2|BHDir~regout\ & (!\C2|BH\(3) & !\C2|Add11~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(3),
	datad => VCC,
	cin => \C2|Add11~6\,
	combout => \C2|Add11~7_combout\,
	cout => \C2|Add11~8\);

-- Location: LCCOMB_X34_Y26_N28
\C2|Add11~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~93_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|currentS.s1~regout\,
	datad => \C2|Add11~7_combout\,
	combout => \C2|Add11~93_combout\);

-- Location: LCFF_X33_Y26_N13
\C2|BH[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~93_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(3));

-- Location: LCCOMB_X36_Y26_N8
\C2|Add11~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~9_combout\ = ((\C2|BH\(4) $ (\C2|BHDir~regout\ $ (\C2|Add11~8\)))) # (GND)
-- \C2|Add11~10\ = CARRY((\C2|BH\(4) & ((!\C2|Add11~8\) # (!\C2|BHDir~regout\))) # (!\C2|BH\(4) & (!\C2|BHDir~regout\ & !\C2|Add11~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(4),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~8\,
	combout => \C2|Add11~9_combout\,
	cout => \C2|Add11~10\);

-- Location: LCCOMB_X36_Y26_N10
\C2|Add11~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~11_combout\ = (\C2|BHDir~regout\ & ((\C2|BH\(5) & (!\C2|Add11~10\)) # (!\C2|BH\(5) & ((\C2|Add11~10\) # (GND))))) # (!\C2|BHDir~regout\ & ((\C2|BH\(5) & (\C2|Add11~10\ & VCC)) # (!\C2|BH\(5) & (!\C2|Add11~10\))))
-- \C2|Add11~12\ = CARRY((\C2|BHDir~regout\ & ((!\C2|Add11~10\) # (!\C2|BH\(5)))) # (!\C2|BHDir~regout\ & (!\C2|BH\(5) & !\C2|Add11~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(5),
	datad => VCC,
	cin => \C2|Add11~10\,
	combout => \C2|Add11~11_combout\,
	cout => \C2|Add11~12\);

-- Location: LCCOMB_X34_Y26_N10
\C2|Add11~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~91_combout\ = (\C2|Add11~11_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add11~11_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~91_combout\);

-- Location: LCFF_X33_Y26_N17
\C2|BH[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~91_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(5));

-- Location: LCCOMB_X36_Y26_N12
\C2|Add11~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~13_combout\ = ((\C2|BH\(6) $ (\C2|BHDir~regout\ $ (\C2|Add11~12\)))) # (GND)
-- \C2|Add11~14\ = CARRY((\C2|BH\(6) & ((!\C2|Add11~12\) # (!\C2|BHDir~regout\))) # (!\C2|BH\(6) & (!\C2|BHDir~regout\ & !\C2|Add11~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(6),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~12\,
	combout => \C2|Add11~13_combout\,
	cout => \C2|Add11~14\);

-- Location: LCCOMB_X36_Y26_N14
\C2|Add11~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~15_combout\ = (\C2|BHDir~regout\ & ((\C2|BH\(7) & (!\C2|Add11~14\)) # (!\C2|BH\(7) & ((\C2|Add11~14\) # (GND))))) # (!\C2|BHDir~regout\ & ((\C2|BH\(7) & (\C2|Add11~14\ & VCC)) # (!\C2|BH\(7) & (!\C2|Add11~14\))))
-- \C2|Add11~16\ = CARRY((\C2|BHDir~regout\ & ((!\C2|Add11~14\) # (!\C2|BH\(7)))) # (!\C2|BHDir~regout\ & (!\C2|BH\(7) & !\C2|Add11~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datab => \C2|BH\(7),
	datad => VCC,
	cin => \C2|Add11~14\,
	combout => \C2|Add11~15_combout\,
	cout => \C2|Add11~16\);

-- Location: LCCOMB_X34_Y26_N14
\C2|Add11~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~89_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|currentS.s1~regout\,
	datad => \C2|Add11~15_combout\,
	combout => \C2|Add11~89_combout\);

-- Location: LCFF_X33_Y26_N3
\C2|BH[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~89_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(7));

-- Location: LCCOMB_X34_Y26_N0
\C2|Add11~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~88_combout\ = (!\C2|Add11~17_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add11~17_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~88_combout\);

-- Location: LCFF_X33_Y26_N5
\C2|BH[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~88_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(8));

-- Location: LCCOMB_X33_Y26_N0
\C2|Add11~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~92_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|currentS.s1~regout\,
	datad => \C2|Add11~9_combout\,
	combout => \C2|Add11~92_combout\);

-- Location: LCFF_X33_Y26_N1
\C2|BH[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add11~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(4));

-- Location: LCCOMB_X32_Y26_N2
\C2|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan10~0_combout\ = (\C2|BH\(3)) # (((\C2|BH\(4)) # (\C2|BH\(10))) # (!\C2|BH\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(3),
	datab => \C2|BH\(8),
	datac => \C2|BH\(4),
	datad => \C2|BH\(10),
	combout => \C2|LessThan10~0_combout\);

-- Location: LCCOMB_X34_Y26_N4
\C2|Add11~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~90_combout\ = (\C2|Add11~13_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add11~13_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~90_combout\);

-- Location: LCFF_X33_Y26_N19
\C2|BH[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~90_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(6));

-- Location: LCCOMB_X32_Y30_N12
\C2|LessThan10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan10~1_combout\ = (\C2|BH\(2) & ((\C2|BH\(0)) # (!\C2|BH\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(1),
	datac => \C2|BH\(2),
	datad => \C2|BH\(0),
	combout => \C2|LessThan10~1_combout\);

-- Location: LCCOMB_X32_Y30_N22
\C2|LessThan10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan10~2_combout\ = (\C2|BH\(7)) # ((\C2|BH\(6)) # ((\C2|BH\(5)) # (\C2|LessThan10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(7),
	datab => \C2|BH\(6),
	datac => \C2|BH\(5),
	datad => \C2|LessThan10~1_combout\,
	combout => \C2|LessThan10~2_combout\);

-- Location: LCCOMB_X30_Y26_N8
\C2|LessThan10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan10~3_combout\ = ((\C2|LessThan10~0_combout\) # ((\C2|LessThan10~2_combout\) # (!\C2|BH\(9)))) # (!\C2|LessThan9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan9~6_combout\,
	datab => \C2|LessThan10~0_combout\,
	datac => \C2|BH\(9),
	datad => \C2|LessThan10~2_combout\,
	combout => \C2|LessThan10~3_combout\);

-- Location: LCCOMB_X36_Y25_N22
\C2|Add11~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~55_combout\ = (\C2|BH\(27) & ((\C2|BHDir~regout\ & (!\C2|Add11~54\)) # (!\C2|BHDir~regout\ & (\C2|Add11~54\ & VCC)))) # (!\C2|BH\(27) & ((\C2|BHDir~regout\ & ((\C2|Add11~54\) # (GND))) # (!\C2|BHDir~regout\ & (!\C2|Add11~54\))))
-- \C2|Add11~56\ = CARRY((\C2|BH\(27) & (\C2|BHDir~regout\ & !\C2|Add11~54\)) # (!\C2|BH\(27) & ((\C2|BHDir~regout\) # (!\C2|Add11~54\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(27),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~54\,
	combout => \C2|Add11~55_combout\,
	cout => \C2|Add11~56\);

-- Location: LCCOMB_X36_Y25_N24
\C2|Add11~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~57_combout\ = ((\C2|BH\(28) $ (\C2|BHDir~regout\ $ (\C2|Add11~56\)))) # (GND)
-- \C2|Add11~58\ = CARRY((\C2|BH\(28) & ((!\C2|Add11~56\) # (!\C2|BHDir~regout\))) # (!\C2|BH\(28) & (!\C2|BHDir~regout\ & !\C2|Add11~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(28),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~56\,
	combout => \C2|Add11~57_combout\,
	cout => \C2|Add11~58\);

-- Location: LCCOMB_X36_Y25_N28
\C2|Add11~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~61_combout\ = ((\C2|BH\(30) $ (\C2|BHDir~regout\ $ (\C2|Add11~60\)))) # (GND)
-- \C2|Add11~62\ = CARRY((\C2|BH\(30) & ((!\C2|Add11~60\) # (!\C2|BHDir~regout\))) # (!\C2|BH\(30) & (!\C2|BHDir~regout\ & !\C2|Add11~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(30),
	datab => \C2|BHDir~regout\,
	datad => VCC,
	cin => \C2|Add11~60\,
	combout => \C2|Add11~61_combout\,
	cout => \C2|Add11~62\);

-- Location: LCCOMB_X36_Y25_N30
\C2|Add11~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~63_combout\ = \C2|BHDir~regout\ $ (\C2|Add11~62\ $ (!\C2|BH\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BHDir~regout\,
	datad => \C2|BH\(31),
	cin => \C2|Add11~62\,
	combout => \C2|Add11~63_combout\);

-- Location: LCCOMB_X35_Y25_N28
\C2|Add11~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~65_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add11~63_combout\,
	combout => \C2|Add11~65_combout\);

-- Location: LCFF_X35_Y25_N29
\C2|BH[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add11~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(31));

-- Location: LCCOMB_X33_Y32_N26
\C2|GOAL2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|GOAL2~1_combout\ = (\C2|GOAL2~0_combout\) # ((\C2|currentS.s1~regout\ & ((\C2|BH\(31)) # (!\C2|LessThan10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datab => \C2|GOAL2~0_combout\,
	datac => \C2|LessThan10~3_combout\,
	datad => \C2|BH\(31),
	combout => \C2|GOAL2~1_combout\);

-- Location: LCFF_X33_Y32_N27
\C2|GOAL2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|GOAL2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|GOAL2~regout\);

-- Location: LCCOMB_X33_Y32_N18
\C2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector2~0_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s3~regout\ & ((\C2|GOAL1~regout\) # (\C2|GOAL2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|GOAL1~regout\,
	datab => \C2|currentS.s0~regout\,
	datac => \C2|GOAL2~regout\,
	datad => \C2|currentS.s3~regout\,
	combout => \C2|Selector2~0_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: LCFF_X33_Y32_N19
\C2|currentS.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|clk~clkctrl_outclk\,
	datain => \C2|Selector2~0_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|currentS.s2~regout\);

-- Location: LCCOMB_X33_Y32_N24
\C2|SCORE1[31]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[31]~32_combout\ = (!\C2|currentS.s1~regout\ & ((\C2|currentS.s2~regout\) # (!\C2|currentS.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|currentS.s2~regout\,
	combout => \C2|SCORE1[31]~32_combout\);

-- Location: LCFF_X34_Y32_N13
\C2|SCORE1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|SCORE1[0]~33_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	sload => VCC,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(0));

-- Location: LCCOMB_X37_Y32_N2
\C2|SCORE1[1]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[1]~35_combout\ = (\C2|SCORE1\(1) & (!\C2|SCORE1[0]~34\)) # (!\C2|SCORE1\(1) & ((\C2|SCORE1[0]~34\) # (GND)))
-- \C2|SCORE1[1]~36\ = CARRY((!\C2|SCORE1[0]~34\) # (!\C2|SCORE1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(1),
	datad => VCC,
	cin => \C2|SCORE1[0]~34\,
	combout => \C2|SCORE1[1]~35_combout\,
	cout => \C2|SCORE1[1]~36\);

-- Location: LCFF_X37_Y32_N3
\C2|SCORE1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[1]~35_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(1));

-- Location: LCCOMB_X37_Y32_N4
\C2|SCORE1[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[2]~37_combout\ = (\C2|SCORE1\(2) & (\C2|SCORE1[1]~36\ $ (GND))) # (!\C2|SCORE1\(2) & (!\C2|SCORE1[1]~36\ & VCC))
-- \C2|SCORE1[2]~38\ = CARRY((\C2|SCORE1\(2) & !\C2|SCORE1[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(2),
	datad => VCC,
	cin => \C2|SCORE1[1]~36\,
	combout => \C2|SCORE1[2]~37_combout\,
	cout => \C2|SCORE1[2]~38\);

-- Location: LCFF_X37_Y32_N5
\C2|SCORE1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[2]~37_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(2));

-- Location: LCCOMB_X37_Y32_N8
\C2|SCORE1[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[4]~41_combout\ = (\C2|SCORE1\(4) & (\C2|SCORE1[3]~40\ $ (GND))) # (!\C2|SCORE1\(4) & (!\C2|SCORE1[3]~40\ & VCC))
-- \C2|SCORE1[4]~42\ = CARRY((\C2|SCORE1\(4) & !\C2|SCORE1[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(4),
	datad => VCC,
	cin => \C2|SCORE1[3]~40\,
	combout => \C2|SCORE1[4]~41_combout\,
	cout => \C2|SCORE1[4]~42\);

-- Location: LCFF_X37_Y32_N9
\C2|SCORE1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[4]~41_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(4));

-- Location: LCCOMB_X37_Y32_N14
\C2|SCORE1[7]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[7]~47_combout\ = (\C2|SCORE1\(7) & (!\C2|SCORE1[6]~46\)) # (!\C2|SCORE1\(7) & ((\C2|SCORE1[6]~46\) # (GND)))
-- \C2|SCORE1[7]~48\ = CARRY((!\C2|SCORE1[6]~46\) # (!\C2|SCORE1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(7),
	datad => VCC,
	cin => \C2|SCORE1[6]~46\,
	combout => \C2|SCORE1[7]~47_combout\,
	cout => \C2|SCORE1[7]~48\);

-- Location: LCFF_X37_Y32_N15
\C2|SCORE1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[7]~47_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(7));

-- Location: LCCOMB_X37_Y32_N16
\C2|SCORE1[8]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[8]~49_combout\ = (\C2|SCORE1\(8) & (\C2|SCORE1[7]~48\ $ (GND))) # (!\C2|SCORE1\(8) & (!\C2|SCORE1[7]~48\ & VCC))
-- \C2|SCORE1[8]~50\ = CARRY((\C2|SCORE1\(8) & !\C2|SCORE1[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(8),
	datad => VCC,
	cin => \C2|SCORE1[7]~48\,
	combout => \C2|SCORE1[8]~49_combout\,
	cout => \C2|SCORE1[8]~50\);

-- Location: LCCOMB_X37_Y32_N18
\C2|SCORE1[9]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[9]~51_combout\ = (\C2|SCORE1\(9) & (!\C2|SCORE1[8]~50\)) # (!\C2|SCORE1\(9) & ((\C2|SCORE1[8]~50\) # (GND)))
-- \C2|SCORE1[9]~52\ = CARRY((!\C2|SCORE1[8]~50\) # (!\C2|SCORE1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(9),
	datad => VCC,
	cin => \C2|SCORE1[8]~50\,
	combout => \C2|SCORE1[9]~51_combout\,
	cout => \C2|SCORE1[9]~52\);

-- Location: LCFF_X37_Y32_N19
\C2|SCORE1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[9]~51_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(9));

-- Location: LCCOMB_X37_Y32_N20
\C2|SCORE1[10]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[10]~53_combout\ = (\C2|SCORE1\(10) & (\C2|SCORE1[9]~52\ $ (GND))) # (!\C2|SCORE1\(10) & (!\C2|SCORE1[9]~52\ & VCC))
-- \C2|SCORE1[10]~54\ = CARRY((\C2|SCORE1\(10) & !\C2|SCORE1[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(10),
	datad => VCC,
	cin => \C2|SCORE1[9]~52\,
	combout => \C2|SCORE1[10]~53_combout\,
	cout => \C2|SCORE1[10]~54\);

-- Location: LCCOMB_X37_Y32_N22
\C2|SCORE1[11]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[11]~55_combout\ = (\C2|SCORE1\(11) & (!\C2|SCORE1[10]~54\)) # (!\C2|SCORE1\(11) & ((\C2|SCORE1[10]~54\) # (GND)))
-- \C2|SCORE1[11]~56\ = CARRY((!\C2|SCORE1[10]~54\) # (!\C2|SCORE1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(11),
	datad => VCC,
	cin => \C2|SCORE1[10]~54\,
	combout => \C2|SCORE1[11]~55_combout\,
	cout => \C2|SCORE1[11]~56\);

-- Location: LCFF_X37_Y32_N23
\C2|SCORE1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[11]~55_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(11));

-- Location: LCCOMB_X37_Y32_N26
\C2|SCORE1[13]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[13]~59_combout\ = (\C2|SCORE1\(13) & (!\C2|SCORE1[12]~58\)) # (!\C2|SCORE1\(13) & ((\C2|SCORE1[12]~58\) # (GND)))
-- \C2|SCORE1[13]~60\ = CARRY((!\C2|SCORE1[12]~58\) # (!\C2|SCORE1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(13),
	datad => VCC,
	cin => \C2|SCORE1[12]~58\,
	combout => \C2|SCORE1[13]~59_combout\,
	cout => \C2|SCORE1[13]~60\);

-- Location: LCFF_X37_Y32_N27
\C2|SCORE1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[13]~59_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(13));

-- Location: LCCOMB_X37_Y32_N28
\C2|SCORE1[14]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[14]~61_combout\ = (\C2|SCORE1\(14) & (\C2|SCORE1[13]~60\ $ (GND))) # (!\C2|SCORE1\(14) & (!\C2|SCORE1[13]~60\ & VCC))
-- \C2|SCORE1[14]~62\ = CARRY((\C2|SCORE1\(14) & !\C2|SCORE1[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(14),
	datad => VCC,
	cin => \C2|SCORE1[13]~60\,
	combout => \C2|SCORE1[14]~61_combout\,
	cout => \C2|SCORE1[14]~62\);

-- Location: LCFF_X37_Y32_N29
\C2|SCORE1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[14]~61_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(14));

-- Location: LCCOMB_X37_Y32_N30
\C2|SCORE1[15]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[15]~63_combout\ = (\C2|SCORE1\(15) & (!\C2|SCORE1[14]~62\)) # (!\C2|SCORE1\(15) & ((\C2|SCORE1[14]~62\) # (GND)))
-- \C2|SCORE1[15]~64\ = CARRY((!\C2|SCORE1[14]~62\) # (!\C2|SCORE1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(15),
	datad => VCC,
	cin => \C2|SCORE1[14]~62\,
	combout => \C2|SCORE1[15]~63_combout\,
	cout => \C2|SCORE1[15]~64\);

-- Location: LCFF_X37_Y32_N31
\C2|SCORE1[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[15]~63_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(15));

-- Location: LCCOMB_X37_Y31_N0
\C2|SCORE1[16]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[16]~65_combout\ = (\C2|SCORE1\(16) & (\C2|SCORE1[15]~64\ $ (GND))) # (!\C2|SCORE1\(16) & (!\C2|SCORE1[15]~64\ & VCC))
-- \C2|SCORE1[16]~66\ = CARRY((\C2|SCORE1\(16) & !\C2|SCORE1[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(16),
	datad => VCC,
	cin => \C2|SCORE1[15]~64\,
	combout => \C2|SCORE1[16]~65_combout\,
	cout => \C2|SCORE1[16]~66\);

-- Location: LCFF_X37_Y31_N1
\C2|SCORE1[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[16]~65_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(16));

-- Location: LCCOMB_X37_Y31_N2
\C2|SCORE1[17]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[17]~67_combout\ = (\C2|SCORE1\(17) & (!\C2|SCORE1[16]~66\)) # (!\C2|SCORE1\(17) & ((\C2|SCORE1[16]~66\) # (GND)))
-- \C2|SCORE1[17]~68\ = CARRY((!\C2|SCORE1[16]~66\) # (!\C2|SCORE1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(17),
	datad => VCC,
	cin => \C2|SCORE1[16]~66\,
	combout => \C2|SCORE1[17]~67_combout\,
	cout => \C2|SCORE1[17]~68\);

-- Location: LCFF_X37_Y31_N3
\C2|SCORE1[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[17]~67_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(17));

-- Location: LCCOMB_X37_Y31_N4
\C2|SCORE1[18]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[18]~69_combout\ = (\C2|SCORE1\(18) & (\C2|SCORE1[17]~68\ $ (GND))) # (!\C2|SCORE1\(18) & (!\C2|SCORE1[17]~68\ & VCC))
-- \C2|SCORE1[18]~70\ = CARRY((\C2|SCORE1\(18) & !\C2|SCORE1[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(18),
	datad => VCC,
	cin => \C2|SCORE1[17]~68\,
	combout => \C2|SCORE1[18]~69_combout\,
	cout => \C2|SCORE1[18]~70\);

-- Location: LCFF_X37_Y31_N5
\C2|SCORE1[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[18]~69_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(18));

-- Location: LCCOMB_X37_Y31_N6
\C2|SCORE1[19]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[19]~71_combout\ = (\C2|SCORE1\(19) & (!\C2|SCORE1[18]~70\)) # (!\C2|SCORE1\(19) & ((\C2|SCORE1[18]~70\) # (GND)))
-- \C2|SCORE1[19]~72\ = CARRY((!\C2|SCORE1[18]~70\) # (!\C2|SCORE1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(19),
	datad => VCC,
	cin => \C2|SCORE1[18]~70\,
	combout => \C2|SCORE1[19]~71_combout\,
	cout => \C2|SCORE1[19]~72\);

-- Location: LCCOMB_X37_Y31_N8
\C2|SCORE1[20]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[20]~73_combout\ = (\C2|SCORE1\(20) & (\C2|SCORE1[19]~72\ $ (GND))) # (!\C2|SCORE1\(20) & (!\C2|SCORE1[19]~72\ & VCC))
-- \C2|SCORE1[20]~74\ = CARRY((\C2|SCORE1\(20) & !\C2|SCORE1[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(20),
	datad => VCC,
	cin => \C2|SCORE1[19]~72\,
	combout => \C2|SCORE1[20]~73_combout\,
	cout => \C2|SCORE1[20]~74\);

-- Location: LCFF_X37_Y31_N9
\C2|SCORE1[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[20]~73_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(20));

-- Location: LCCOMB_X37_Y31_N10
\C2|SCORE1[21]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[21]~75_combout\ = (\C2|SCORE1\(21) & (!\C2|SCORE1[20]~74\)) # (!\C2|SCORE1\(21) & ((\C2|SCORE1[20]~74\) # (GND)))
-- \C2|SCORE1[21]~76\ = CARRY((!\C2|SCORE1[20]~74\) # (!\C2|SCORE1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(21),
	datad => VCC,
	cin => \C2|SCORE1[20]~74\,
	combout => \C2|SCORE1[21]~75_combout\,
	cout => \C2|SCORE1[21]~76\);

-- Location: LCCOMB_X37_Y31_N12
\C2|SCORE1[22]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[22]~77_combout\ = (\C2|SCORE1\(22) & (\C2|SCORE1[21]~76\ $ (GND))) # (!\C2|SCORE1\(22) & (!\C2|SCORE1[21]~76\ & VCC))
-- \C2|SCORE1[22]~78\ = CARRY((\C2|SCORE1\(22) & !\C2|SCORE1[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(22),
	datad => VCC,
	cin => \C2|SCORE1[21]~76\,
	combout => \C2|SCORE1[22]~77_combout\,
	cout => \C2|SCORE1[22]~78\);

-- Location: LCCOMB_X37_Y31_N14
\C2|SCORE1[23]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[23]~79_combout\ = (\C2|SCORE1\(23) & (!\C2|SCORE1[22]~78\)) # (!\C2|SCORE1\(23) & ((\C2|SCORE1[22]~78\) # (GND)))
-- \C2|SCORE1[23]~80\ = CARRY((!\C2|SCORE1[22]~78\) # (!\C2|SCORE1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(23),
	datad => VCC,
	cin => \C2|SCORE1[22]~78\,
	combout => \C2|SCORE1[23]~79_combout\,
	cout => \C2|SCORE1[23]~80\);

-- Location: LCFF_X37_Y31_N15
\C2|SCORE1[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[23]~79_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(23));

-- Location: LCCOMB_X37_Y31_N16
\C2|SCORE1[24]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[24]~81_combout\ = (\C2|SCORE1\(24) & (\C2|SCORE1[23]~80\ $ (GND))) # (!\C2|SCORE1\(24) & (!\C2|SCORE1[23]~80\ & VCC))
-- \C2|SCORE1[24]~82\ = CARRY((\C2|SCORE1\(24) & !\C2|SCORE1[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(24),
	datad => VCC,
	cin => \C2|SCORE1[23]~80\,
	combout => \C2|SCORE1[24]~81_combout\,
	cout => \C2|SCORE1[24]~82\);

-- Location: LCCOMB_X37_Y31_N18
\C2|SCORE1[25]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[25]~83_combout\ = (\C2|SCORE1\(25) & (!\C2|SCORE1[24]~82\)) # (!\C2|SCORE1\(25) & ((\C2|SCORE1[24]~82\) # (GND)))
-- \C2|SCORE1[25]~84\ = CARRY((!\C2|SCORE1[24]~82\) # (!\C2|SCORE1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(25),
	datad => VCC,
	cin => \C2|SCORE1[24]~82\,
	combout => \C2|SCORE1[25]~83_combout\,
	cout => \C2|SCORE1[25]~84\);

-- Location: LCFF_X37_Y31_N19
\C2|SCORE1[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[25]~83_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(25));

-- Location: LCCOMB_X37_Y31_N20
\C2|SCORE1[26]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[26]~85_combout\ = (\C2|SCORE1\(26) & (\C2|SCORE1[25]~84\ $ (GND))) # (!\C2|SCORE1\(26) & (!\C2|SCORE1[25]~84\ & VCC))
-- \C2|SCORE1[26]~86\ = CARRY((\C2|SCORE1\(26) & !\C2|SCORE1[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(26),
	datad => VCC,
	cin => \C2|SCORE1[25]~84\,
	combout => \C2|SCORE1[26]~85_combout\,
	cout => \C2|SCORE1[26]~86\);

-- Location: LCCOMB_X37_Y31_N22
\C2|SCORE1[27]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[27]~87_combout\ = (\C2|SCORE1\(27) & (!\C2|SCORE1[26]~86\)) # (!\C2|SCORE1\(27) & ((\C2|SCORE1[26]~86\) # (GND)))
-- \C2|SCORE1[27]~88\ = CARRY((!\C2|SCORE1[26]~86\) # (!\C2|SCORE1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(27),
	datad => VCC,
	cin => \C2|SCORE1[26]~86\,
	combout => \C2|SCORE1[27]~87_combout\,
	cout => \C2|SCORE1[27]~88\);

-- Location: LCFF_X37_Y31_N23
\C2|SCORE1[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[27]~87_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(27));

-- Location: LCCOMB_X37_Y31_N26
\C2|SCORE1[29]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[29]~91_combout\ = (\C2|SCORE1\(29) & (!\C2|SCORE1[28]~90\)) # (!\C2|SCORE1\(29) & ((\C2|SCORE1[28]~90\) # (GND)))
-- \C2|SCORE1[29]~92\ = CARRY((!\C2|SCORE1[28]~90\) # (!\C2|SCORE1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(29),
	datad => VCC,
	cin => \C2|SCORE1[28]~90\,
	combout => \C2|SCORE1[29]~91_combout\,
	cout => \C2|SCORE1[29]~92\);

-- Location: LCFF_X37_Y31_N27
\C2|SCORE1[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[29]~91_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(29));

-- Location: LCCOMB_X37_Y31_N28
\C2|SCORE1[30]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[30]~93_combout\ = (\C2|SCORE1\(30) & (\C2|SCORE1[29]~92\ $ (GND))) # (!\C2|SCORE1\(30) & (!\C2|SCORE1[29]~92\ & VCC))
-- \C2|SCORE1[30]~94\ = CARRY((\C2|SCORE1\(30) & !\C2|SCORE1[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE1\(30),
	datad => VCC,
	cin => \C2|SCORE1[29]~92\,
	combout => \C2|SCORE1[30]~93_combout\,
	cout => \C2|SCORE1[30]~94\);

-- Location: LCFF_X37_Y31_N29
\C2|SCORE1[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[30]~93_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(30));

-- Location: LCCOMB_X37_Y31_N30
\C2|SCORE1[31]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE1[31]~95_combout\ = \C2|SCORE1[30]~94\ $ (\C2|SCORE1\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C2|SCORE1\(31),
	cin => \C2|SCORE1[30]~94\,
	combout => \C2|SCORE1[31]~95_combout\);

-- Location: LCFF_X37_Y31_N31
\C2|SCORE1[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[31]~95_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(31));

-- Location: LCCOMB_X34_Y32_N28
\C2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan0~0_combout\ = ((!\C2|SCORE1\(0) & !\C2|SCORE1\(1))) # (!\C2|SCORE1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(0),
	datac => \C2|SCORE1\(1),
	datad => \C2|SCORE1\(2),
	combout => \C2|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y31_N0
\C3|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal0~7_combout\ = (!\C2|SCORE1\(28) & (!\C2|SCORE1\(27) & (!\C2|SCORE1\(30) & !\C2|SCORE1\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(28),
	datab => \C2|SCORE1\(27),
	datac => \C2|SCORE1\(30),
	datad => \C2|SCORE1\(29),
	combout => \C3|Equal0~7_combout\);

-- Location: LCFF_X37_Y31_N7
\C2|SCORE1[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[19]~71_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(19));

-- Location: LCFF_X37_Y31_N13
\C2|SCORE1[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[22]~77_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(22));

-- Location: LCFF_X37_Y31_N11
\C2|SCORE1[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[21]~75_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(21));

-- Location: LCCOMB_X38_Y31_N4
\C3|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal0~5_combout\ = (!\C2|SCORE1\(20) & (!\C2|SCORE1\(19) & (!\C2|SCORE1\(22) & !\C2|SCORE1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(20),
	datab => \C2|SCORE1\(19),
	datac => \C2|SCORE1\(22),
	datad => \C2|SCORE1\(21),
	combout => \C3|Equal0~5_combout\);

-- Location: LCFF_X37_Y31_N17
\C2|SCORE1[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[24]~81_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(24));

-- Location: LCFF_X37_Y31_N21
\C2|SCORE1[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[26]~85_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(26));

-- Location: LCCOMB_X38_Y31_N6
\C3|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal0~6_combout\ = (!\C2|SCORE1\(23) & (!\C2|SCORE1\(24) & (!\C2|SCORE1\(26) & !\C2|SCORE1\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(23),
	datab => \C2|SCORE1\(24),
	datac => \C2|SCORE1\(26),
	datad => \C2|SCORE1\(25),
	combout => \C3|Equal0~6_combout\);

-- Location: LCCOMB_X34_Y32_N20
\C3|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal0~8_combout\ = (\C3|Equal0~7_combout\ & (\C3|Equal0~5_combout\ & \C3|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|Equal0~7_combout\,
	datac => \C3|Equal0~5_combout\,
	datad => \C3|Equal0~6_combout\,
	combout => \C3|Equal0~8_combout\);

-- Location: LCFF_X37_Y32_N17
\C2|SCORE1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[8]~49_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(8));

-- Location: LCFF_X37_Y32_N21
\C2|SCORE1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE1[10]~53_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE1\(10));

-- Location: LCCOMB_X38_Y32_N10
\C3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal0~1_combout\ = (!\C2|SCORE1\(7) & (!\C2|SCORE1\(8) & (!\C2|SCORE1\(10) & !\C2|SCORE1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(7),
	datab => \C2|SCORE1\(8),
	datac => \C2|SCORE1\(10),
	datad => \C2|SCORE1\(9),
	combout => \C3|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y32_N26
\C3|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal0~3_combout\ = (!\C2|SCORE1\(17) & (!\C2|SCORE1\(15) & (!\C2|SCORE1\(16) & !\C2|SCORE1\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(17),
	datab => \C2|SCORE1\(15),
	datac => \C2|SCORE1\(16),
	datad => \C2|SCORE1\(18),
	combout => \C3|Equal0~3_combout\);

-- Location: LCCOMB_X38_Y32_N8
\C3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal0~2_combout\ = (!\C2|SCORE1\(12) & (!\C2|SCORE1\(13) & (!\C2|SCORE1\(14) & !\C2|SCORE1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(12),
	datab => \C2|SCORE1\(13),
	datac => \C2|SCORE1\(14),
	datad => \C2|SCORE1\(11),
	combout => \C3|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y32_N30
\C3|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal0~4_combout\ = (\C3|Equal0~0_combout\ & (\C3|Equal0~1_combout\ & (\C3|Equal0~3_combout\ & \C3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Equal0~0_combout\,
	datab => \C3|Equal0~1_combout\,
	datac => \C3|Equal0~3_combout\,
	datad => \C3|Equal0~2_combout\,
	combout => \C3|Equal0~4_combout\);

-- Location: LCCOMB_X34_Y32_N14
\C2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan0~1_combout\ = (\C2|LessThan0~0_combout\ & (\C3|Equal0~8_combout\ & \C3|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|LessThan0~0_combout\,
	datac => \C3|Equal0~8_combout\,
	datad => \C3|Equal0~4_combout\,
	combout => \C2|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y32_N0
\C2|SCORE2[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[0]~32_combout\ = (\C2|GOAL2~regout\ & (\C2|SCORE2\(0) $ (VCC))) # (!\C2|GOAL2~regout\ & (\C2|SCORE2\(0) & VCC))
-- \C2|SCORE2[0]~33\ = CARRY((\C2|GOAL2~regout\ & \C2|SCORE2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|GOAL2~regout\,
	datab => \C2|SCORE2\(0),
	datad => VCC,
	combout => \C2|SCORE2[0]~32_combout\,
	cout => \C2|SCORE2[0]~33\);

-- Location: LCFF_X36_Y32_N1
\C2|SCORE2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[0]~32_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(0));

-- Location: LCCOMB_X36_Y32_N2
\C2|SCORE2[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[1]~34_combout\ = (\C2|SCORE2\(1) & (!\C2|SCORE2[0]~33\)) # (!\C2|SCORE2\(1) & ((\C2|SCORE2[0]~33\) # (GND)))
-- \C2|SCORE2[1]~35\ = CARRY((!\C2|SCORE2[0]~33\) # (!\C2|SCORE2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(1),
	datad => VCC,
	cin => \C2|SCORE2[0]~33\,
	combout => \C2|SCORE2[1]~34_combout\,
	cout => \C2|SCORE2[1]~35\);

-- Location: LCFF_X36_Y32_N3
\C2|SCORE2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[1]~34_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(1));

-- Location: LCCOMB_X36_Y32_N4
\C2|SCORE2[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[2]~36_combout\ = (\C2|SCORE2\(2) & (\C2|SCORE2[1]~35\ $ (GND))) # (!\C2|SCORE2\(2) & (!\C2|SCORE2[1]~35\ & VCC))
-- \C2|SCORE2[2]~37\ = CARRY((\C2|SCORE2\(2) & !\C2|SCORE2[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(2),
	datad => VCC,
	cin => \C2|SCORE2[1]~35\,
	combout => \C2|SCORE2[2]~36_combout\,
	cout => \C2|SCORE2[2]~37\);

-- Location: LCFF_X36_Y32_N5
\C2|SCORE2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[2]~36_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(2));

-- Location: LCCOMB_X36_Y32_N8
\C2|SCORE2[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[4]~40_combout\ = (\C2|SCORE2\(4) & (\C2|SCORE2[3]~39\ $ (GND))) # (!\C2|SCORE2\(4) & (!\C2|SCORE2[3]~39\ & VCC))
-- \C2|SCORE2[4]~41\ = CARRY((\C2|SCORE2\(4) & !\C2|SCORE2[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(4),
	datad => VCC,
	cin => \C2|SCORE2[3]~39\,
	combout => \C2|SCORE2[4]~40_combout\,
	cout => \C2|SCORE2[4]~41\);

-- Location: LCFF_X36_Y32_N9
\C2|SCORE2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[4]~40_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(4));

-- Location: LCCOMB_X36_Y32_N14
\C2|SCORE2[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[7]~46_combout\ = (\C2|SCORE2\(7) & (!\C2|SCORE2[6]~45\)) # (!\C2|SCORE2\(7) & ((\C2|SCORE2[6]~45\) # (GND)))
-- \C2|SCORE2[7]~47\ = CARRY((!\C2|SCORE2[6]~45\) # (!\C2|SCORE2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(7),
	datad => VCC,
	cin => \C2|SCORE2[6]~45\,
	combout => \C2|SCORE2[7]~46_combout\,
	cout => \C2|SCORE2[7]~47\);

-- Location: LCFF_X36_Y32_N15
\C2|SCORE2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[7]~46_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(7));

-- Location: LCCOMB_X36_Y32_N18
\C2|SCORE2[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[9]~50_combout\ = (\C2|SCORE2\(9) & (!\C2|SCORE2[8]~49\)) # (!\C2|SCORE2\(9) & ((\C2|SCORE2[8]~49\) # (GND)))
-- \C2|SCORE2[9]~51\ = CARRY((!\C2|SCORE2[8]~49\) # (!\C2|SCORE2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(9),
	datad => VCC,
	cin => \C2|SCORE2[8]~49\,
	combout => \C2|SCORE2[9]~50_combout\,
	cout => \C2|SCORE2[9]~51\);

-- Location: LCFF_X36_Y32_N19
\C2|SCORE2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[9]~50_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(9));

-- Location: LCCOMB_X36_Y32_N22
\C2|SCORE2[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[11]~54_combout\ = (\C2|SCORE2\(11) & (!\C2|SCORE2[10]~53\)) # (!\C2|SCORE2\(11) & ((\C2|SCORE2[10]~53\) # (GND)))
-- \C2|SCORE2[11]~55\ = CARRY((!\C2|SCORE2[10]~53\) # (!\C2|SCORE2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(11),
	datad => VCC,
	cin => \C2|SCORE2[10]~53\,
	combout => \C2|SCORE2[11]~54_combout\,
	cout => \C2|SCORE2[11]~55\);

-- Location: LCFF_X36_Y32_N23
\C2|SCORE2[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[11]~54_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(11));

-- Location: LCCOMB_X36_Y32_N26
\C2|SCORE2[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[13]~58_combout\ = (\C2|SCORE2\(13) & (!\C2|SCORE2[12]~57\)) # (!\C2|SCORE2\(13) & ((\C2|SCORE2[12]~57\) # (GND)))
-- \C2|SCORE2[13]~59\ = CARRY((!\C2|SCORE2[12]~57\) # (!\C2|SCORE2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(13),
	datad => VCC,
	cin => \C2|SCORE2[12]~57\,
	combout => \C2|SCORE2[13]~58_combout\,
	cout => \C2|SCORE2[13]~59\);

-- Location: LCFF_X36_Y32_N27
\C2|SCORE2[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[13]~58_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(13));

-- Location: LCCOMB_X36_Y32_N28
\C2|SCORE2[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[14]~60_combout\ = (\C2|SCORE2\(14) & (\C2|SCORE2[13]~59\ $ (GND))) # (!\C2|SCORE2\(14) & (!\C2|SCORE2[13]~59\ & VCC))
-- \C2|SCORE2[14]~61\ = CARRY((\C2|SCORE2\(14) & !\C2|SCORE2[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(14),
	datad => VCC,
	cin => \C2|SCORE2[13]~59\,
	combout => \C2|SCORE2[14]~60_combout\,
	cout => \C2|SCORE2[14]~61\);

-- Location: LCFF_X36_Y32_N29
\C2|SCORE2[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[14]~60_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(14));

-- Location: LCCOMB_X36_Y32_N30
\C2|SCORE2[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[15]~62_combout\ = (\C2|SCORE2\(15) & (!\C2|SCORE2[14]~61\)) # (!\C2|SCORE2\(15) & ((\C2|SCORE2[14]~61\) # (GND)))
-- \C2|SCORE2[15]~63\ = CARRY((!\C2|SCORE2[14]~61\) # (!\C2|SCORE2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(15),
	datad => VCC,
	cin => \C2|SCORE2[14]~61\,
	combout => \C2|SCORE2[15]~62_combout\,
	cout => \C2|SCORE2[15]~63\);

-- Location: LCFF_X36_Y32_N31
\C2|SCORE2[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[15]~62_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(15));

-- Location: LCCOMB_X36_Y31_N0
\C2|SCORE2[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[16]~64_combout\ = (\C2|SCORE2\(16) & (\C2|SCORE2[15]~63\ $ (GND))) # (!\C2|SCORE2\(16) & (!\C2|SCORE2[15]~63\ & VCC))
-- \C2|SCORE2[16]~65\ = CARRY((\C2|SCORE2\(16) & !\C2|SCORE2[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(16),
	datad => VCC,
	cin => \C2|SCORE2[15]~63\,
	combout => \C2|SCORE2[16]~64_combout\,
	cout => \C2|SCORE2[16]~65\);

-- Location: LCFF_X35_Y32_N17
\C2|SCORE2[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|SCORE2[16]~64_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	sload => VCC,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(16));

-- Location: LCCOMB_X36_Y31_N4
\C2|SCORE2[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[18]~68_combout\ = (\C2|SCORE2\(18) & (\C2|SCORE2[17]~67\ $ (GND))) # (!\C2|SCORE2\(18) & (!\C2|SCORE2[17]~67\ & VCC))
-- \C2|SCORE2[18]~69\ = CARRY((\C2|SCORE2\(18) & !\C2|SCORE2[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(18),
	datad => VCC,
	cin => \C2|SCORE2[17]~67\,
	combout => \C2|SCORE2[18]~68_combout\,
	cout => \C2|SCORE2[18]~69\);

-- Location: LCFF_X36_Y31_N5
\C2|SCORE2[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[18]~68_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(18));

-- Location: LCCOMB_X36_Y31_N8
\C2|SCORE2[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[20]~72_combout\ = (\C2|SCORE2\(20) & (\C2|SCORE2[19]~71\ $ (GND))) # (!\C2|SCORE2\(20) & (!\C2|SCORE2[19]~71\ & VCC))
-- \C2|SCORE2[20]~73\ = CARRY((\C2|SCORE2\(20) & !\C2|SCORE2[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(20),
	datad => VCC,
	cin => \C2|SCORE2[19]~71\,
	combout => \C2|SCORE2[20]~72_combout\,
	cout => \C2|SCORE2[20]~73\);

-- Location: LCFF_X36_Y31_N9
\C2|SCORE2[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[20]~72_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(20));

-- Location: LCCOMB_X36_Y31_N10
\C2|SCORE2[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[21]~74_combout\ = (\C2|SCORE2\(21) & (!\C2|SCORE2[20]~73\)) # (!\C2|SCORE2\(21) & ((\C2|SCORE2[20]~73\) # (GND)))
-- \C2|SCORE2[21]~75\ = CARRY((!\C2|SCORE2[20]~73\) # (!\C2|SCORE2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(21),
	datad => VCC,
	cin => \C2|SCORE2[20]~73\,
	combout => \C2|SCORE2[21]~74_combout\,
	cout => \C2|SCORE2[21]~75\);

-- Location: LCCOMB_X36_Y31_N12
\C2|SCORE2[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[22]~76_combout\ = (\C2|SCORE2\(22) & (\C2|SCORE2[21]~75\ $ (GND))) # (!\C2|SCORE2\(22) & (!\C2|SCORE2[21]~75\ & VCC))
-- \C2|SCORE2[22]~77\ = CARRY((\C2|SCORE2\(22) & !\C2|SCORE2[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(22),
	datad => VCC,
	cin => \C2|SCORE2[21]~75\,
	combout => \C2|SCORE2[22]~76_combout\,
	cout => \C2|SCORE2[22]~77\);

-- Location: LCCOMB_X36_Y31_N14
\C2|SCORE2[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[23]~78_combout\ = (\C2|SCORE2\(23) & (!\C2|SCORE2[22]~77\)) # (!\C2|SCORE2\(23) & ((\C2|SCORE2[22]~77\) # (GND)))
-- \C2|SCORE2[23]~79\ = CARRY((!\C2|SCORE2[22]~77\) # (!\C2|SCORE2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(23),
	datad => VCC,
	cin => \C2|SCORE2[22]~77\,
	combout => \C2|SCORE2[23]~78_combout\,
	cout => \C2|SCORE2[23]~79\);

-- Location: LCFF_X36_Y31_N15
\C2|SCORE2[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[23]~78_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(23));

-- Location: LCCOMB_X36_Y31_N18
\C2|SCORE2[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[25]~82_combout\ = (\C2|SCORE2\(25) & (!\C2|SCORE2[24]~81\)) # (!\C2|SCORE2\(25) & ((\C2|SCORE2[24]~81\) # (GND)))
-- \C2|SCORE2[25]~83\ = CARRY((!\C2|SCORE2[24]~81\) # (!\C2|SCORE2\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(25),
	datad => VCC,
	cin => \C2|SCORE2[24]~81\,
	combout => \C2|SCORE2[25]~82_combout\,
	cout => \C2|SCORE2[25]~83\);

-- Location: LCFF_X36_Y31_N19
\C2|SCORE2[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[25]~82_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(25));

-- Location: LCCOMB_X36_Y31_N20
\C2|SCORE2[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[26]~84_combout\ = (\C2|SCORE2\(26) & (\C2|SCORE2[25]~83\ $ (GND))) # (!\C2|SCORE2\(26) & (!\C2|SCORE2[25]~83\ & VCC))
-- \C2|SCORE2[26]~85\ = CARRY((\C2|SCORE2\(26) & !\C2|SCORE2[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(26),
	datad => VCC,
	cin => \C2|SCORE2[25]~83\,
	combout => \C2|SCORE2[26]~84_combout\,
	cout => \C2|SCORE2[26]~85\);

-- Location: LCFF_X36_Y31_N21
\C2|SCORE2[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[26]~84_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(26));

-- Location: LCCOMB_X35_Y31_N10
\C3|Equal6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal6~6_combout\ = (!\C2|SCORE2\(24) & (!\C2|SCORE2\(25) & (!\C2|SCORE2\(23) & !\C2|SCORE2\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(24),
	datab => \C2|SCORE2\(25),
	datac => \C2|SCORE2\(23),
	datad => \C2|SCORE2\(26),
	combout => \C3|Equal6~6_combout\);

-- Location: LCFF_X36_Y31_N13
\C2|SCORE2[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[22]~76_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(22));

-- Location: LCFF_X36_Y31_N11
\C2|SCORE2[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[21]~74_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(21));

-- Location: LCCOMB_X35_Y31_N24
\C3|Equal6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal6~5_combout\ = (!\C2|SCORE2\(19) & (!\C2|SCORE2\(20) & (!\C2|SCORE2\(22) & !\C2|SCORE2\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(19),
	datab => \C2|SCORE2\(20),
	datac => \C2|SCORE2\(22),
	datad => \C2|SCORE2\(21),
	combout => \C3|Equal6~5_combout\);

-- Location: LCCOMB_X36_Y31_N22
\C2|SCORE2[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[27]~86_combout\ = (\C2|SCORE2\(27) & (!\C2|SCORE2[26]~85\)) # (!\C2|SCORE2\(27) & ((\C2|SCORE2[26]~85\) # (GND)))
-- \C2|SCORE2[27]~87\ = CARRY((!\C2|SCORE2[26]~85\) # (!\C2|SCORE2\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(27),
	datad => VCC,
	cin => \C2|SCORE2[26]~85\,
	combout => \C2|SCORE2[27]~86_combout\,
	cout => \C2|SCORE2[27]~87\);

-- Location: LCFF_X36_Y31_N23
\C2|SCORE2[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[27]~86_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(27));

-- Location: LCCOMB_X36_Y31_N24
\C2|SCORE2[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[28]~88_combout\ = (\C2|SCORE2\(28) & (\C2|SCORE2[27]~87\ $ (GND))) # (!\C2|SCORE2\(28) & (!\C2|SCORE2[27]~87\ & VCC))
-- \C2|SCORE2[28]~89\ = CARRY((\C2|SCORE2\(28) & !\C2|SCORE2[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(28),
	datad => VCC,
	cin => \C2|SCORE2[27]~87\,
	combout => \C2|SCORE2[28]~88_combout\,
	cout => \C2|SCORE2[28]~89\);

-- Location: LCFF_X36_Y31_N25
\C2|SCORE2[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[28]~88_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(28));

-- Location: LCCOMB_X36_Y31_N26
\C2|SCORE2[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[29]~90_combout\ = (\C2|SCORE2\(29) & (!\C2|SCORE2[28]~89\)) # (!\C2|SCORE2\(29) & ((\C2|SCORE2[28]~89\) # (GND)))
-- \C2|SCORE2[29]~91\ = CARRY((!\C2|SCORE2[28]~89\) # (!\C2|SCORE2\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(29),
	datad => VCC,
	cin => \C2|SCORE2[28]~89\,
	combout => \C2|SCORE2[29]~90_combout\,
	cout => \C2|SCORE2[29]~91\);

-- Location: LCFF_X36_Y31_N27
\C2|SCORE2[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[29]~90_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(29));

-- Location: LCCOMB_X36_Y31_N28
\C2|SCORE2[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[30]~92_combout\ = (\C2|SCORE2\(30) & (\C2|SCORE2[29]~91\ $ (GND))) # (!\C2|SCORE2\(30) & (!\C2|SCORE2[29]~91\ & VCC))
-- \C2|SCORE2[30]~93\ = CARRY((\C2|SCORE2\(30) & !\C2|SCORE2[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(30),
	datad => VCC,
	cin => \C2|SCORE2[29]~91\,
	combout => \C2|SCORE2[30]~92_combout\,
	cout => \C2|SCORE2[30]~93\);

-- Location: LCFF_X36_Y31_N29
\C2|SCORE2[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[30]~92_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(30));

-- Location: LCCOMB_X35_Y31_N0
\C3|Equal6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal6~7_combout\ = (!\C2|SCORE2\(29) & (!\C2|SCORE2\(28) & (!\C2|SCORE2\(30) & !\C2|SCORE2\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(29),
	datab => \C2|SCORE2\(28),
	datac => \C2|SCORE2\(30),
	datad => \C2|SCORE2\(27),
	combout => \C3|Equal6~7_combout\);

-- Location: LCCOMB_X35_Y32_N2
\C3|Equal6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal6~8_combout\ = (\C3|Equal6~4_combout\ & (\C3|Equal6~6_combout\ & (\C3|Equal6~5_combout\ & \C3|Equal6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Equal6~4_combout\,
	datab => \C3|Equal6~6_combout\,
	datac => \C3|Equal6~5_combout\,
	datad => \C3|Equal6~7_combout\,
	combout => \C3|Equal6~8_combout\);

-- Location: LCCOMB_X35_Y32_N24
\C2|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~0_combout\ = (\C3|Equal6~8_combout\ & (((!\C2|SCORE2\(1) & !\C2|SCORE2\(0))) # (!\C2|SCORE2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(1),
	datab => \C2|SCORE2\(2),
	datac => \C2|SCORE2\(0),
	datad => \C3|Equal6~8_combout\,
	combout => \C2|LessThan1~0_combout\);

-- Location: LCCOMB_X34_Y32_N24
\C2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector1~0_combout\ = (\C2|SCORE2\(31) & ((\C2|SCORE1\(31)) # ((\C2|LessThan0~1_combout\)))) # (!\C2|SCORE2\(31) & (\C2|LessThan1~0_combout\ & ((\C2|SCORE1\(31)) # (\C2|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(31),
	datab => \C2|SCORE1\(31),
	datac => \C2|LessThan0~1_combout\,
	datad => \C2|LessThan1~0_combout\,
	combout => \C2|Selector1~0_combout\);

-- Location: LCCOMB_X33_Y28_N20
\C2|Add14~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~44_combout\ = (\C2|Add14~6_combout\ & (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & \C2|currentS.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add14~6_combout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|currentS.s1~regout\,
	datad => \C2|currentS.s0~regout\,
	combout => \C2|Add14~44_combout\);

-- Location: LCFF_X34_Y28_N31
\C2|COUNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add14~44_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(3));

-- Location: LCCOMB_X33_Y28_N0
\C2|Add14~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~94_combout\ = (\C2|Add14~2_combout\ & (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & \C2|currentS.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add14~2_combout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|currentS.s1~regout\,
	datad => \C2|currentS.s0~regout\,
	combout => \C2|Add14~94_combout\);

-- Location: LCFF_X34_Y28_N19
\C2|COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add14~94_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(1));

-- Location: LCCOMB_X34_Y28_N0
\C2|Add14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~0_combout\ = \C2|COUNT\(0) $ (GND)
-- \C2|Add14~1\ = CARRY(!\C2|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(0),
	datad => VCC,
	combout => \C2|Add14~0_combout\,
	cout => \C2|Add14~1\);

-- Location: LCCOMB_X33_Y28_N30
\C2|Add14~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~95_combout\ = ((\C2|currentS.s2~regout\) # ((\C2|currentS.s1~regout\) # (!\C2|Add14~0_combout\))) # (!\C2|currentS.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~0_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add14~95_combout\);

-- Location: LCFF_X34_Y28_N1
\C2|COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add14~95_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(0));

-- Location: LCCOMB_X34_Y28_N8
\C2|Add14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~8_combout\ = (\C2|COUNT\(4) & (\C2|Add14~7\ $ (GND))) # (!\C2|COUNT\(4) & (!\C2|Add14~7\ & VCC))
-- \C2|Add14~9\ = CARRY((\C2|COUNT\(4) & !\C2|Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(4),
	datad => VCC,
	cin => \C2|Add14~7\,
	combout => \C2|Add14~8_combout\,
	cout => \C2|Add14~9\);

-- Location: LCCOMB_X34_Y28_N12
\C2|Add14~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~12_combout\ = (\C2|COUNT\(6) & (\C2|Add14~11\ $ (GND))) # (!\C2|COUNT\(6) & (!\C2|Add14~11\ & VCC))
-- \C2|Add14~13\ = CARRY((\C2|COUNT\(6) & !\C2|Add14~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(6),
	datad => VCC,
	cin => \C2|Add14~11\,
	combout => \C2|Add14~12_combout\,
	cout => \C2|Add14~13\);

-- Location: LCCOMB_X33_Y28_N22
\C2|Add14~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~47_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & \C2|Add14~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add14~12_combout\,
	combout => \C2|Add14~47_combout\);

-- Location: LCFF_X34_Y28_N9
\C2|COUNT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add14~47_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(6));

-- Location: LCCOMB_X34_Y28_N14
\C2|Add14~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~14_combout\ = (\C2|COUNT\(7) & (!\C2|Add14~13\)) # (!\C2|COUNT\(7) & ((\C2|Add14~13\) # (GND)))
-- \C2|Add14~15\ = CARRY((!\C2|Add14~13\) # (!\C2|COUNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(7),
	datad => VCC,
	cin => \C2|Add14~13\,
	combout => \C2|Add14~14_combout\,
	cout => \C2|Add14~15\);

-- Location: LCCOMB_X33_Y28_N18
\C2|Add14~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~48_combout\ = (!\C2|currentS.s1~regout\ & (!\C2|currentS.s2~regout\ & (\C2|Add14~14_combout\ & \C2|currentS.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~14_combout\,
	datad => \C2|currentS.s0~regout\,
	combout => \C2|Add14~48_combout\);

-- Location: LCFF_X33_Y28_N19
\C2|COUNT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(7));

-- Location: LCCOMB_X34_Y28_N16
\C2|Add14~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~16_combout\ = (\C2|COUNT\(8) & (\C2|Add14~15\ $ (GND))) # (!\C2|COUNT\(8) & (!\C2|Add14~15\ & VCC))
-- \C2|Add14~17\ = CARRY((\C2|COUNT\(8) & !\C2|Add14~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(8),
	datad => VCC,
	cin => \C2|Add14~15\,
	combout => \C2|Add14~16_combout\,
	cout => \C2|Add14~17\);

-- Location: LCCOMB_X35_Y28_N0
\C2|Add14~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~49_combout\ = (!\C2|currentS.s1~regout\ & (\C2|Add14~16_combout\ & (\C2|currentS.s0~regout\ & !\C2|currentS.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datab => \C2|Add14~16_combout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|currentS.s2~regout\,
	combout => \C2|Add14~49_combout\);

-- Location: LCFF_X34_Y28_N15
\C2|COUNT[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add14~49_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(8));

-- Location: LCCOMB_X34_Y28_N18
\C2|Add14~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~18_combout\ = (\C2|COUNT\(9) & (!\C2|Add14~17\)) # (!\C2|COUNT\(9) & ((\C2|Add14~17\) # (GND)))
-- \C2|Add14~19\ = CARRY((!\C2|Add14~17\) # (!\C2|COUNT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(9),
	datad => VCC,
	cin => \C2|Add14~17\,
	combout => \C2|Add14~18_combout\,
	cout => \C2|Add14~19\);

-- Location: LCCOMB_X34_Y28_N20
\C2|Add14~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~20_combout\ = (\C2|COUNT\(10) & (\C2|Add14~19\ $ (GND))) # (!\C2|COUNT\(10) & (!\C2|Add14~19\ & VCC))
-- \C2|Add14~21\ = CARRY((\C2|COUNT\(10) & !\C2|Add14~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(10),
	datad => VCC,
	cin => \C2|Add14~19\,
	combout => \C2|Add14~20_combout\,
	cout => \C2|Add14~21\);

-- Location: LCCOMB_X33_Y28_N26
\C2|Add14~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~22_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & \C2|Add14~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add14~20_combout\,
	combout => \C2|Add14~22_combout\);

-- Location: LCFF_X33_Y28_N27
\C2|COUNT[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(10));

-- Location: LCCOMB_X34_Y28_N26
\C2|Add14~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~29_combout\ = (\C2|COUNT\(13) & (!\C2|Add14~27\)) # (!\C2|COUNT\(13) & ((\C2|Add14~27\) # (GND)))
-- \C2|Add14~30\ = CARRY((!\C2|Add14~27\) # (!\C2|COUNT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(13),
	datad => VCC,
	cin => \C2|Add14~27\,
	combout => \C2|Add14~29_combout\,
	cout => \C2|Add14~30\);

-- Location: LCCOMB_X33_Y28_N24
\C2|Add14~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~31_combout\ = (!\C2|currentS.s1~regout\ & (!\C2|currentS.s2~regout\ & (\C2|Add14~29_combout\ & \C2|currentS.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~29_combout\,
	datad => \C2|currentS.s0~regout\,
	combout => \C2|Add14~31_combout\);

-- Location: LCFF_X33_Y28_N25
\C2|COUNT[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(13));

-- Location: LCCOMB_X34_Y28_N28
\C2|Add14~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~32_combout\ = (\C2|COUNT\(14) & (\C2|Add14~30\ $ (GND))) # (!\C2|COUNT\(14) & (!\C2|Add14~30\ & VCC))
-- \C2|Add14~33\ = CARRY((\C2|COUNT\(14) & !\C2|Add14~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(14),
	datad => VCC,
	cin => \C2|Add14~30\,
	combout => \C2|Add14~32_combout\,
	cout => \C2|Add14~33\);

-- Location: LCCOMB_X35_Y28_N8
\C2|Add14~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~34_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & \C2|Add14~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add14~32_combout\,
	combout => \C2|Add14~34_combout\);

-- Location: LCFF_X35_Y28_N9
\C2|COUNT[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(14));

-- Location: LCCOMB_X34_Y28_N30
\C2|Add14~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~35_combout\ = (\C2|COUNT\(15) & (!\C2|Add14~33\)) # (!\C2|COUNT\(15) & ((\C2|Add14~33\) # (GND)))
-- \C2|Add14~36\ = CARRY((!\C2|Add14~33\) # (!\C2|COUNT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(15),
	datad => VCC,
	cin => \C2|Add14~33\,
	combout => \C2|Add14~35_combout\,
	cout => \C2|Add14~36\);

-- Location: LCCOMB_X35_Y28_N18
\C2|Add14~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~37_combout\ = (!\C2|currentS.s1~regout\ & (\C2|currentS.s0~regout\ & (\C2|Add14~35_combout\ & !\C2|currentS.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datab => \C2|currentS.s0~regout\,
	datac => \C2|Add14~35_combout\,
	datad => \C2|currentS.s2~regout\,
	combout => \C2|Add14~37_combout\);

-- Location: LCFF_X35_Y28_N19
\C2|COUNT[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(15));

-- Location: LCCOMB_X34_Y27_N0
\C2|Add14~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~38_combout\ = (\C2|COUNT\(16) & (\C2|Add14~36\ $ (GND))) # (!\C2|COUNT\(16) & (!\C2|Add14~36\ & VCC))
-- \C2|Add14~39\ = CARRY((\C2|COUNT\(16) & !\C2|Add14~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(16),
	datad => VCC,
	cin => \C2|Add14~36\,
	combout => \C2|Add14~38_combout\,
	cout => \C2|Add14~39\);

-- Location: LCCOMB_X36_Y27_N28
\C2|Add14~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~40_combout\ = (!\C2|currentS.s1~regout\ & (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & \C2|Add14~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datab => \C2|currentS.s0~regout\,
	datac => \C2|currentS.s2~regout\,
	datad => \C2|Add14~38_combout\,
	combout => \C2|Add14~40_combout\);

-- Location: LCFF_X36_Y27_N29
\C2|COUNT[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(16));

-- Location: LCCOMB_X34_Y27_N2
\C2|Add14~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~41_combout\ = (\C2|COUNT\(17) & (!\C2|Add14~39\)) # (!\C2|COUNT\(17) & ((\C2|Add14~39\) # (GND)))
-- \C2|Add14~42\ = CARRY((!\C2|Add14~39\) # (!\C2|COUNT\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(17),
	datad => VCC,
	cin => \C2|Add14~39\,
	combout => \C2|Add14~41_combout\,
	cout => \C2|Add14~42\);

-- Location: LCCOMB_X36_Y27_N14
\C2|Add14~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~43_combout\ = (!\C2|currentS.s1~regout\ & (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & \C2|Add14~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s1~regout\,
	datab => \C2|currentS.s0~regout\,
	datac => \C2|currentS.s2~regout\,
	datad => \C2|Add14~41_combout\,
	combout => \C2|Add14~43_combout\);

-- Location: LCFF_X36_Y27_N15
\C2|COUNT[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(17));

-- Location: LCCOMB_X34_Y27_N4
\C2|Add14~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~51_combout\ = (\C2|COUNT\(18) & (\C2|Add14~42\ $ (GND))) # (!\C2|COUNT\(18) & (!\C2|Add14~42\ & VCC))
-- \C2|Add14~52\ = CARRY((\C2|COUNT\(18) & !\C2|Add14~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(18),
	datad => VCC,
	cin => \C2|Add14~42\,
	combout => \C2|Add14~51_combout\,
	cout => \C2|Add14~52\);

-- Location: LCCOMB_X34_Y27_N8
\C2|Add14~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~57_combout\ = (\C2|COUNT\(20) & (\C2|Add14~55\ $ (GND))) # (!\C2|COUNT\(20) & (!\C2|Add14~55\ & VCC))
-- \C2|Add14~58\ = CARRY((\C2|COUNT\(20) & !\C2|Add14~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(20),
	datad => VCC,
	cin => \C2|Add14~55\,
	combout => \C2|Add14~57_combout\,
	cout => \C2|Add14~58\);

-- Location: LCCOMB_X33_Y27_N24
\C2|Add14~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~59_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (\C2|Add14~57_combout\ & !\C2|currentS.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~57_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add14~59_combout\);

-- Location: LCFF_X33_Y27_N25
\C2|COUNT[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(20));

-- Location: LCCOMB_X34_Y27_N10
\C2|Add14~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~60_combout\ = (\C2|COUNT\(21) & (!\C2|Add14~58\)) # (!\C2|COUNT\(21) & ((\C2|Add14~58\) # (GND)))
-- \C2|Add14~61\ = CARRY((!\C2|Add14~58\) # (!\C2|COUNT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(21),
	datad => VCC,
	cin => \C2|Add14~58\,
	combout => \C2|Add14~60_combout\,
	cout => \C2|Add14~61\);

-- Location: LCCOMB_X34_Y27_N12
\C2|Add14~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~63_combout\ = (\C2|COUNT\(22) & (\C2|Add14~61\ $ (GND))) # (!\C2|COUNT\(22) & (!\C2|Add14~61\ & VCC))
-- \C2|Add14~64\ = CARRY((\C2|COUNT\(22) & !\C2|Add14~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(22),
	datad => VCC,
	cin => \C2|Add14~61\,
	combout => \C2|Add14~63_combout\,
	cout => \C2|Add14~64\);

-- Location: LCCOMB_X33_Y27_N22
\C2|Add14~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~65_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (\C2|Add14~63_combout\ & !\C2|currentS.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~63_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add14~65_combout\);

-- Location: LCFF_X33_Y27_N23
\C2|COUNT[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(22));

-- Location: LCCOMB_X34_Y27_N14
\C2|Add14~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~66_combout\ = (\C2|COUNT\(23) & (!\C2|Add14~64\)) # (!\C2|COUNT\(23) & ((\C2|Add14~64\) # (GND)))
-- \C2|Add14~67\ = CARRY((!\C2|Add14~64\) # (!\C2|COUNT\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(23),
	datad => VCC,
	cin => \C2|Add14~64\,
	combout => \C2|Add14~66_combout\,
	cout => \C2|Add14~67\);

-- Location: LCCOMB_X33_Y27_N8
\C2|Add14~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~68_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (\C2|Add14~66_combout\ & !\C2|currentS.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~66_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add14~68_combout\);

-- Location: LCFF_X33_Y27_N9
\C2|COUNT[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(23));

-- Location: LCCOMB_X34_Y27_N16
\C2|Add14~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~69_combout\ = (\C2|COUNT\(24) & (\C2|Add14~67\ $ (GND))) # (!\C2|COUNT\(24) & (!\C2|Add14~67\ & VCC))
-- \C2|Add14~70\ = CARRY((\C2|COUNT\(24) & !\C2|Add14~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(24),
	datad => VCC,
	cin => \C2|Add14~67\,
	combout => \C2|Add14~69_combout\,
	cout => \C2|Add14~70\);

-- Location: LCCOMB_X33_Y27_N6
\C2|Add14~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~71_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (\C2|Add14~69_combout\ & !\C2|currentS.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~69_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add14~71_combout\);

-- Location: LCFF_X33_Y27_N7
\C2|COUNT[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(24));

-- Location: LCCOMB_X34_Y27_N18
\C2|Add14~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~72_combout\ = (\C2|COUNT\(25) & (!\C2|Add14~70\)) # (!\C2|COUNT\(25) & ((\C2|Add14~70\) # (GND)))
-- \C2|Add14~73\ = CARRY((!\C2|Add14~70\) # (!\C2|COUNT\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(25),
	datad => VCC,
	cin => \C2|Add14~70\,
	combout => \C2|Add14~72_combout\,
	cout => \C2|Add14~73\);

-- Location: LCCOMB_X33_Y27_N16
\C2|Add14~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~74_combout\ = (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & (\C2|currentS.s0~regout\ & \C2|Add14~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s2~regout\,
	datab => \C2|currentS.s1~regout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|Add14~72_combout\,
	combout => \C2|Add14~74_combout\);

-- Location: LCFF_X33_Y27_N17
\C2|COUNT[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(25));

-- Location: LCCOMB_X34_Y27_N20
\C2|Add14~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~75_combout\ = (\C2|COUNT\(26) & (\C2|Add14~73\ $ (GND))) # (!\C2|COUNT\(26) & (!\C2|Add14~73\ & VCC))
-- \C2|Add14~76\ = CARRY((\C2|COUNT\(26) & !\C2|Add14~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(26),
	datad => VCC,
	cin => \C2|Add14~73\,
	combout => \C2|Add14~75_combout\,
	cout => \C2|Add14~76\);

-- Location: LCCOMB_X33_Y27_N0
\C2|Add14~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~77_combout\ = (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & (\C2|currentS.s0~regout\ & \C2|Add14~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s2~regout\,
	datab => \C2|currentS.s1~regout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|Add14~75_combout\,
	combout => \C2|Add14~77_combout\);

-- Location: LCFF_X33_Y27_N1
\C2|COUNT[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(26));

-- Location: LCCOMB_X34_Y27_N24
\C2|Add14~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~81_combout\ = (\C2|COUNT\(28) & (\C2|Add14~79\ $ (GND))) # (!\C2|COUNT\(28) & (!\C2|Add14~79\ & VCC))
-- \C2|Add14~82\ = CARRY((\C2|COUNT\(28) & !\C2|Add14~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(28),
	datad => VCC,
	cin => \C2|Add14~79\,
	combout => \C2|Add14~81_combout\,
	cout => \C2|Add14~82\);

-- Location: LCCOMB_X33_Y27_N28
\C2|Add14~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~83_combout\ = (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & (\C2|currentS.s0~regout\ & \C2|Add14~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s2~regout\,
	datab => \C2|currentS.s1~regout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|Add14~81_combout\,
	combout => \C2|Add14~83_combout\);

-- Location: LCFF_X33_Y27_N29
\C2|COUNT[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(28));

-- Location: LCCOMB_X34_Y27_N26
\C2|Add14~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~84_combout\ = (\C2|COUNT\(29) & (!\C2|Add14~82\)) # (!\C2|COUNT\(29) & ((\C2|Add14~82\) # (GND)))
-- \C2|Add14~85\ = CARRY((!\C2|Add14~82\) # (!\C2|COUNT\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(29),
	datad => VCC,
	cin => \C2|Add14~82\,
	combout => \C2|Add14~84_combout\,
	cout => \C2|Add14~85\);

-- Location: LCCOMB_X33_Y27_N18
\C2|Add14~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~86_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (\C2|Add14~84_combout\ & !\C2|currentS.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~84_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add14~86_combout\);

-- Location: LCFF_X33_Y27_N19
\C2|COUNT[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(29));

-- Location: LCCOMB_X33_Y27_N20
\C2|Add14~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~89_combout\ = (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & (\C2|currentS.s0~regout\ & \C2|Add14~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s2~regout\,
	datab => \C2|currentS.s1~regout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|Add14~87_combout\,
	combout => \C2|Add14~89_combout\);

-- Location: LCFF_X33_Y27_N21
\C2|COUNT[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(30));

-- Location: LCCOMB_X33_Y27_N14
\C2|LessThan2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan2~6_combout\ = (!\C2|COUNT\(24) & (!\C2|COUNT\(23) & (!\C2|COUNT\(25) & !\C2|COUNT\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(24),
	datab => \C2|COUNT\(23),
	datac => \C2|COUNT\(25),
	datad => \C2|COUNT\(22),
	combout => \C2|LessThan2~6_combout\);

-- Location: LCCOMB_X33_Y27_N30
\C2|Add14~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~62_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (\C2|Add14~60_combout\ & !\C2|currentS.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~60_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add14~62_combout\);

-- Location: LCFF_X33_Y27_N31
\C2|COUNT[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(21));

-- Location: LCCOMB_X33_Y27_N12
\C2|Add14~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~53_combout\ = (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & (\C2|currentS.s0~regout\ & \C2|Add14~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s2~regout\,
	datab => \C2|currentS.s1~regout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|Add14~51_combout\,
	combout => \C2|Add14~53_combout\);

-- Location: LCFF_X33_Y27_N13
\C2|COUNT[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(18));

-- Location: LCCOMB_X33_Y27_N4
\C2|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan2~5_combout\ = (!\C2|COUNT\(19) & (!\C2|COUNT\(21) & (!\C2|COUNT\(20) & !\C2|COUNT\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(19),
	datab => \C2|COUNT\(21),
	datac => \C2|COUNT\(20),
	datad => \C2|COUNT\(18),
	combout => \C2|LessThan2~5_combout\);

-- Location: LCCOMB_X32_Y27_N24
\C2|LessThan2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan2~8_combout\ = (\C2|LessThan2~7_combout\ & (!\C2|COUNT\(30) & (\C2|LessThan2~6_combout\ & \C2|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan2~7_combout\,
	datab => \C2|COUNT\(30),
	datac => \C2|LessThan2~6_combout\,
	datad => \C2|LessThan2~5_combout\,
	combout => \C2|LessThan2~8_combout\);

-- Location: LCCOMB_X36_Y27_N20
\C2|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan2~1_combout\ = (!\C2|COUNT\(17) & (!\C2|COUNT\(16) & (!\C2|COUNT\(14) & !\C2|COUNT\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(17),
	datab => \C2|COUNT\(16),
	datac => \C2|COUNT\(14),
	datad => \C2|COUNT\(15),
	combout => \C2|LessThan2~1_combout\);

-- Location: LCCOMB_X33_Y28_N6
\C2|Add14~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~45_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (\C2|Add14~8_combout\ & !\C2|currentS.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|Add14~8_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add14~45_combout\);

-- Location: LCFF_X34_Y28_N13
\C2|COUNT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add14~45_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(4));

-- Location: LCCOMB_X33_Y28_N16
\C2|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan2~2_combout\ = (((!\C2|COUNT\(4) & !\C2|COUNT\(3))) # (!\C2|COUNT\(6))) # (!\C2|COUNT\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(5),
	datab => \C2|COUNT\(6),
	datac => \C2|COUNT\(4),
	datad => \C2|COUNT\(3),
	combout => \C2|LessThan2~2_combout\);

-- Location: LCCOMB_X33_Y28_N12
\C2|Add14~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add14~50_combout\ = (\C2|currentS.s0~regout\ & (!\C2|currentS.s2~regout\ & (!\C2|currentS.s1~regout\ & \C2|Add14~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|currentS.s0~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add14~18_combout\,
	combout => \C2|Add14~50_combout\);

-- Location: LCFF_X33_Y28_N13
\C2|COUNT[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add14~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|COUNT\(9));

-- Location: LCCOMB_X33_Y28_N14
\C2|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan2~3_combout\ = ((!\C2|COUNT\(9)) # (!\C2|COUNT\(8))) # (!\C2|COUNT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|COUNT\(7),
	datac => \C2|COUNT\(8),
	datad => \C2|COUNT\(9),
	combout => \C2|LessThan2~3_combout\);

-- Location: LCCOMB_X32_Y27_N12
\C2|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan2~4_combout\ = (\C2|LessThan2~0_combout\ & (\C2|LessThan2~1_combout\ & ((\C2|LessThan2~2_combout\) # (\C2|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan2~0_combout\,
	datab => \C2|LessThan2~1_combout\,
	datac => \C2|LessThan2~2_combout\,
	datad => \C2|LessThan2~3_combout\,
	combout => \C2|LessThan2~4_combout\);

-- Location: LCCOMB_X32_Y27_N26
\C2|LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan2~9_combout\ = ((\C2|LessThan2~8_combout\ & \C2|LessThan2~4_combout\)) # (!\C2|COUNT\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|COUNT\(31),
	datac => \C2|LessThan2~8_combout\,
	datad => \C2|LessThan2~4_combout\,
	combout => \C2|LessThan2~9_combout\);

-- Location: LCCOMB_X33_Y32_N22
\C2|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector3~1_combout\ = (\C2|Selector3~0_combout\ & (((\C2|currentS.s3~regout\ & \C2|LessThan2~9_combout\)) # (!\C2|Selector1~0_combout\))) # (!\C2|Selector3~0_combout\ & (((\C2|currentS.s3~regout\ & \C2|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Selector3~0_combout\,
	datab => \C2|Selector1~0_combout\,
	datac => \C2|currentS.s3~regout\,
	datad => \C2|LessThan2~9_combout\,
	combout => \C2|Selector3~1_combout\);

-- Location: LCFF_X33_Y32_N23
\C2|currentS.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|clk~clkctrl_outclk\,
	datain => \C2|Selector3~1_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|currentS.s3~regout\);

-- Location: LCCOMB_X33_Y32_N8
\C2|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector0~1_combout\ = (\C2|Selector0~0_combout\ & (\C2|currentS.s0~regout\ & ((\C2|LessThan2~9_combout\) # (!\C2|currentS.s3~regout\)))) # (!\C2|Selector0~0_combout\ & (((\C2|LessThan2~9_combout\)) # (!\C2|currentS.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Selector0~0_combout\,
	datab => \C2|currentS.s3~regout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|LessThan2~9_combout\,
	combout => \C2|Selector0~1_combout\);

-- Location: LCFF_X33_Y32_N9
\C2|currentS.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|clk~clkctrl_outclk\,
	datain => \C2|Selector0~1_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|currentS.s0~regout\);

-- Location: LCCOMB_X33_Y32_N2
\C2|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector1~1_combout\ = (!\C2|GOAL2~regout\ & ((\C2|currentS.s1~regout\) # ((\C2|currentS.s2~regout\ & \C2|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|GOAL2~regout\,
	datab => \C2|currentS.s2~regout\,
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Selector1~0_combout\,
	combout => \C2|Selector1~1_combout\);

-- Location: LCCOMB_X33_Y32_N16
\C2|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector1~2_combout\ = (\C2|GOAL1~regout\ & (!\C2|Selector0~0_combout\ & (!\C2|currentS.s0~regout\))) # (!\C2|GOAL1~regout\ & ((\C2|Selector1~1_combout\) # ((!\C2|Selector0~0_combout\ & !\C2|currentS.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|GOAL1~regout\,
	datab => \C2|Selector0~0_combout\,
	datac => \C2|currentS.s0~regout\,
	datad => \C2|Selector1~1_combout\,
	combout => \C2|Selector1~2_combout\);

-- Location: LCFF_X33_Y32_N17
\C2|currentS.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|clk~clkctrl_outclk\,
	datain => \C2|Selector1~2_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|currentS.s1~regout\);

-- Location: LCCOMB_X35_Y25_N30
\C2|Add11~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~68_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add11~57_combout\,
	combout => \C2|Add11~68_combout\);

-- Location: LCFF_X35_Y25_N31
\C2|BH[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add11~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(28));

-- Location: LCCOMB_X35_Y25_N26
\C2|Add11~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~69_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add11~55_combout\,
	combout => \C2|Add11~69_combout\);

-- Location: LCFF_X34_Y25_N29
\C2|BH[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~69_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(27));

-- Location: LCCOMB_X35_Y25_N24
\C2|Add11~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~70_combout\ = (\C2|Add11~53_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add11~53_combout\,
	datac => \C2|currentS.s1~regout\,
	combout => \C2|Add11~70_combout\);

-- Location: LCFF_X35_Y25_N25
\C2|BH[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add11~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(26));

-- Location: LCCOMB_X33_Y26_N2
\C3|Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~1_cout\ = CARRY(\C2|BH\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(2),
	datad => VCC,
	cout => \C3|Add7~1_cout\);

-- Location: LCCOMB_X33_Y26_N8
\C3|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~6_combout\ = (\C2|BH\(5) & (\C3|Add7~5\ & VCC)) # (!\C2|BH\(5) & (!\C3|Add7~5\))
-- \C3|Add7~7\ = CARRY((!\C2|BH\(5) & !\C3|Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(5),
	datad => VCC,
	cin => \C3|Add7~5\,
	combout => \C3|Add7~6_combout\,
	cout => \C3|Add7~7\);

-- Location: LCCOMB_X33_Y26_N10
\C3|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~8_combout\ = (\C2|BH\(6) & (\C3|Add7~7\ $ (GND))) # (!\C2|BH\(6) & (!\C3|Add7~7\ & VCC))
-- \C3|Add7~9\ = CARRY((\C2|BH\(6) & !\C3|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(6),
	datad => VCC,
	cin => \C3|Add7~7\,
	combout => \C3|Add7~8_combout\,
	cout => \C3|Add7~9\);

-- Location: LCCOMB_X33_Y26_N12
\C3|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~10_combout\ = (\C2|BH\(7) & (!\C3|Add7~9\)) # (!\C2|BH\(7) & ((\C3|Add7~9\) # (GND)))
-- \C3|Add7~11\ = CARRY((!\C3|Add7~9\) # (!\C2|BH\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(7),
	datad => VCC,
	cin => \C3|Add7~9\,
	combout => \C3|Add7~10_combout\,
	cout => \C3|Add7~11\);

-- Location: LCCOMB_X33_Y26_N14
\C3|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~12_combout\ = (\C2|BH\(8) & (!\C3|Add7~11\ & VCC)) # (!\C2|BH\(8) & (\C3|Add7~11\ $ (GND)))
-- \C3|Add7~13\ = CARRY((!\C2|BH\(8) & !\C3|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(8),
	datad => VCC,
	cin => \C3|Add7~11\,
	combout => \C3|Add7~12_combout\,
	cout => \C3|Add7~13\);

-- Location: LCCOMB_X33_Y26_N18
\C3|Add7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~16_combout\ = (\C2|BH\(10) & (\C3|Add7~15\ $ (GND))) # (!\C2|BH\(10) & (!\C3|Add7~15\ & VCC))
-- \C3|Add7~17\ = CARRY((\C2|BH\(10) & !\C3|Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(10),
	datad => VCC,
	cin => \C3|Add7~15\,
	combout => \C3|Add7~16_combout\,
	cout => \C3|Add7~17\);

-- Location: LCCOMB_X33_Y26_N20
\C3|Add7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~18_combout\ = (\C2|BH\(11) & (!\C3|Add7~17\)) # (!\C2|BH\(11) & ((\C3|Add7~17\) # (GND)))
-- \C3|Add7~19\ = CARRY((!\C3|Add7~17\) # (!\C2|BH\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(11),
	datad => VCC,
	cin => \C3|Add7~17\,
	combout => \C3|Add7~18_combout\,
	cout => \C3|Add7~19\);

-- Location: LCCOMB_X33_Y26_N22
\C3|Add7~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~20_combout\ = (\C2|BH\(12) & (\C3|Add7~19\ $ (GND))) # (!\C2|BH\(12) & (!\C3|Add7~19\ & VCC))
-- \C3|Add7~21\ = CARRY((\C2|BH\(12) & !\C3|Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(12),
	datad => VCC,
	cin => \C3|Add7~19\,
	combout => \C3|Add7~20_combout\,
	cout => \C3|Add7~21\);

-- Location: LCCOMB_X33_Y26_N24
\C3|Add7~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~22_combout\ = (\C2|BH\(13) & (!\C3|Add7~21\)) # (!\C2|BH\(13) & ((\C3|Add7~21\) # (GND)))
-- \C3|Add7~23\ = CARRY((!\C3|Add7~21\) # (!\C2|BH\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(13),
	datad => VCC,
	cin => \C3|Add7~21\,
	combout => \C3|Add7~22_combout\,
	cout => \C3|Add7~23\);

-- Location: LCCOMB_X33_Y26_N28
\C3|Add7~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~26_combout\ = (\C2|BH\(15) & (!\C3|Add7~25\)) # (!\C2|BH\(15) & ((\C3|Add7~25\) # (GND)))
-- \C3|Add7~27\ = CARRY((!\C3|Add7~25\) # (!\C2|BH\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(15),
	datad => VCC,
	cin => \C3|Add7~25\,
	combout => \C3|Add7~26_combout\,
	cout => \C3|Add7~27\);

-- Location: LCCOMB_X33_Y26_N30
\C3|Add7~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~28_combout\ = (\C2|BH\(16) & (\C3|Add7~27\ $ (GND))) # (!\C2|BH\(16) & (!\C3|Add7~27\ & VCC))
-- \C3|Add7~29\ = CARRY((\C2|BH\(16) & !\C3|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(16),
	datad => VCC,
	cin => \C3|Add7~27\,
	combout => \C3|Add7~28_combout\,
	cout => \C3|Add7~29\);

-- Location: LCCOMB_X33_Y25_N0
\C3|Add7~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~30_combout\ = (\C2|BH\(17) & (!\C3|Add7~29\)) # (!\C2|BH\(17) & ((\C3|Add7~29\) # (GND)))
-- \C3|Add7~31\ = CARRY((!\C3|Add7~29\) # (!\C2|BH\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(17),
	datad => VCC,
	cin => \C3|Add7~29\,
	combout => \C3|Add7~30_combout\,
	cout => \C3|Add7~31\);

-- Location: LCCOMB_X33_Y25_N8
\C3|Add7~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~38_combout\ = (\C2|BH\(21) & (!\C3|Add7~37\)) # (!\C2|BH\(21) & ((\C3|Add7~37\) # (GND)))
-- \C3|Add7~39\ = CARRY((!\C3|Add7~37\) # (!\C2|BH\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(21),
	datad => VCC,
	cin => \C3|Add7~37\,
	combout => \C3|Add7~38_combout\,
	cout => \C3|Add7~39\);

-- Location: LCCOMB_X33_Y25_N10
\C3|Add7~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~40_combout\ = (\C2|BH\(22) & (\C3|Add7~39\ $ (GND))) # (!\C2|BH\(22) & (!\C3|Add7~39\ & VCC))
-- \C3|Add7~41\ = CARRY((\C2|BH\(22) & !\C3|Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(22),
	datad => VCC,
	cin => \C3|Add7~39\,
	combout => \C3|Add7~40_combout\,
	cout => \C3|Add7~41\);

-- Location: LCCOMB_X33_Y25_N12
\C3|Add7~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~42_combout\ = (\C2|BH\(23) & (!\C3|Add7~41\)) # (!\C2|BH\(23) & ((\C3|Add7~41\) # (GND)))
-- \C3|Add7~43\ = CARRY((!\C3|Add7~41\) # (!\C2|BH\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(23),
	datad => VCC,
	cin => \C3|Add7~41\,
	combout => \C3|Add7~42_combout\,
	cout => \C3|Add7~43\);

-- Location: LCCOMB_X33_Y25_N14
\C3|Add7~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~44_combout\ = (\C2|BH\(24) & (\C3|Add7~43\ $ (GND))) # (!\C2|BH\(24) & (!\C3|Add7~43\ & VCC))
-- \C3|Add7~45\ = CARRY((\C2|BH\(24) & !\C3|Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(24),
	datad => VCC,
	cin => \C3|Add7~43\,
	combout => \C3|Add7~44_combout\,
	cout => \C3|Add7~45\);

-- Location: LCCOMB_X33_Y25_N18
\C3|Add7~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~48_combout\ = (\C2|BH\(26) & (\C3|Add7~47\ $ (GND))) # (!\C2|BH\(26) & (!\C3|Add7~47\ & VCC))
-- \C3|Add7~49\ = CARRY((\C2|BH\(26) & !\C3|Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(26),
	datad => VCC,
	cin => \C3|Add7~47\,
	combout => \C3|Add7~48_combout\,
	cout => \C3|Add7~49\);

-- Location: LCCOMB_X33_Y25_N20
\C3|Add7~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~50_combout\ = (\C2|BH\(27) & (!\C3|Add7~49\)) # (!\C2|BH\(27) & ((\C3|Add7~49\) # (GND)))
-- \C3|Add7~51\ = CARRY((!\C3|Add7~49\) # (!\C2|BH\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(27),
	datad => VCC,
	cin => \C3|Add7~49\,
	combout => \C3|Add7~50_combout\,
	cout => \C3|Add7~51\);

-- Location: LCCOMB_X33_Y25_N22
\C3|Add7~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add7~52_combout\ = (\C2|BH\(28) & (\C3|Add7~51\ $ (GND))) # (!\C2|BH\(28) & (!\C3|Add7~51\ & VCC))
-- \C3|Add7~53\ = CARRY((\C2|BH\(28) & !\C3|Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(28),
	datad => VCC,
	cin => \C3|Add7~51\,
	combout => \C3|Add7~52_combout\,
	cout => \C3|Add7~53\);

-- Location: LCCOMB_X32_Y25_N18
\C3|Add8~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~46_combout\ = (\C3|Add7~48_combout\ & (!\C3|Add8~45\)) # (!\C3|Add7~48_combout\ & ((\C3|Add8~45\) # (GND)))
-- \C3|Add8~47\ = CARRY((!\C3|Add8~45\) # (!\C3|Add7~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~48_combout\,
	datad => VCC,
	cin => \C3|Add8~45\,
	combout => \C3|Add8~46_combout\,
	cout => \C3|Add8~47\);

-- Location: LCCOMB_X32_Y25_N20
\C3|Add8~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~48_combout\ = (\C3|Add7~50_combout\ & (\C3|Add8~47\ $ (GND))) # (!\C3|Add7~50_combout\ & (!\C3|Add8~47\ & VCC))
-- \C3|Add8~49\ = CARRY((\C3|Add7~50_combout\ & !\C3|Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~50_combout\,
	datad => VCC,
	cin => \C3|Add8~47\,
	combout => \C3|Add8~48_combout\,
	cout => \C3|Add8~49\);

-- Location: LCCOMB_X32_Y25_N22
\C3|Add8~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add8~50_combout\ = (\C3|Add7~52_combout\ & (!\C3|Add8~49\)) # (!\C3|Add7~52_combout\ & ((\C3|Add8~49\) # (GND)))
-- \C3|Add8~51\ = CARRY((!\C3|Add8~49\) # (!\C3|Add7~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add7~52_combout\,
	datad => VCC,
	cin => \C3|Add8~49\,
	combout => \C3|Add8~50_combout\,
	cout => \C3|Add8~51\);

-- Location: LCCOMB_X32_Y27_N28
\C3|LessThan69~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~27_combout\ = (\C3|Add8~46_combout\) # (\C3|Add8~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|Add8~46_combout\,
	datad => \C3|Add8~48_combout\,
	combout => \C3|LessThan69~27_combout\);

-- Location: LCCOMB_X32_Y27_N2
\C3|LessThan69~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan69~28_combout\ = (\C3|Add8~52_combout\) # ((\C3|Add8~50_combout\) # ((\C3|Add8~54_combout\) # (\C3|LessThan69~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add8~52_combout\,
	datab => \C3|Add8~50_combout\,
	datac => \C3|Add8~54_combout\,
	datad => \C3|LessThan69~27_combout\,
	combout => \C3|LessThan69~28_combout\);

-- Location: LCCOMB_X31_Y29_N8
\C3|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~6_combout\ = (\C2|BV\(5) & (!\C3|Add9~5\)) # (!\C2|BV\(5) & (\C3|Add9~5\ & VCC))
-- \C3|Add9~7\ = CARRY((\C2|BV\(5) & !\C3|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(5),
	datad => VCC,
	cin => \C3|Add9~5\,
	combout => \C3|Add9~6_combout\,
	cout => \C3|Add9~7\);

-- Location: LCCOMB_X31_Y29_N10
\C3|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~8_combout\ = (\C2|BV\(6) & ((GND) # (!\C3|Add9~7\))) # (!\C2|BV\(6) & (\C3|Add9~7\ $ (GND)))
-- \C3|Add9~9\ = CARRY((\C2|BV\(6)) # (!\C3|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(6),
	datad => VCC,
	cin => \C3|Add9~7\,
	combout => \C3|Add9~8_combout\,
	cout => \C3|Add9~9\);

-- Location: LCCOMB_X31_Y29_N12
\C3|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~10_combout\ = (\C2|BV\(7) & ((\C3|Add9~9\) # (GND))) # (!\C2|BV\(7) & (!\C3|Add9~9\))
-- \C3|Add9~11\ = CARRY((\C2|BV\(7)) # (!\C3|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(7),
	datad => VCC,
	cin => \C3|Add9~9\,
	combout => \C3|Add9~10_combout\,
	cout => \C3|Add9~11\);

-- Location: LCCOMB_X31_Y29_N14
\C3|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~12_combout\ = (\C2|BV\(8) & (!\C3|Add9~11\ & VCC)) # (!\C2|BV\(8) & (\C3|Add9~11\ $ (GND)))
-- \C3|Add9~13\ = CARRY((!\C2|BV\(8) & !\C3|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(8),
	datad => VCC,
	cin => \C3|Add9~11\,
	combout => \C3|Add9~12_combout\,
	cout => \C3|Add9~13\);

-- Location: LCCOMB_X31_Y29_N18
\C3|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~16_combout\ = (\C2|BV\(10) & (\C3|Add9~15\ $ (GND))) # (!\C2|BV\(10) & (!\C3|Add9~15\ & VCC))
-- \C3|Add9~17\ = CARRY((\C2|BV\(10) & !\C3|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(10),
	datad => VCC,
	cin => \C3|Add9~15\,
	combout => \C3|Add9~16_combout\,
	cout => \C3|Add9~17\);

-- Location: LCCOMB_X31_Y29_N20
\C3|Add9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~18_combout\ = (\C2|BV\(11) & (!\C3|Add9~17\)) # (!\C2|BV\(11) & ((\C3|Add9~17\) # (GND)))
-- \C3|Add9~19\ = CARRY((!\C3|Add9~17\) # (!\C2|BV\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(11),
	datad => VCC,
	cin => \C3|Add9~17\,
	combout => \C3|Add9~18_combout\,
	cout => \C3|Add9~19\);

-- Location: LCCOMB_X31_Y29_N22
\C3|Add9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~20_combout\ = (\C2|BV\(12) & (\C3|Add9~19\ $ (GND))) # (!\C2|BV\(12) & (!\C3|Add9~19\ & VCC))
-- \C3|Add9~21\ = CARRY((\C2|BV\(12) & !\C3|Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(12),
	datad => VCC,
	cin => \C3|Add9~19\,
	combout => \C3|Add9~20_combout\,
	cout => \C3|Add9~21\);

-- Location: LCCOMB_X31_Y29_N24
\C3|Add9~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~22_combout\ = (\C2|BV\(13) & (!\C3|Add9~21\)) # (!\C2|BV\(13) & ((\C3|Add9~21\) # (GND)))
-- \C3|Add9~23\ = CARRY((!\C3|Add9~21\) # (!\C2|BV\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(13),
	datad => VCC,
	cin => \C3|Add9~21\,
	combout => \C3|Add9~22_combout\,
	cout => \C3|Add9~23\);

-- Location: LCCOMB_X31_Y29_N28
\C3|Add9~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~26_combout\ = (\C2|BV\(15) & (!\C3|Add9~25\)) # (!\C2|BV\(15) & ((\C3|Add9~25\) # (GND)))
-- \C3|Add9~27\ = CARRY((!\C3|Add9~25\) # (!\C2|BV\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(15),
	datad => VCC,
	cin => \C3|Add9~25\,
	combout => \C3|Add9~26_combout\,
	cout => \C3|Add9~27\);

-- Location: LCCOMB_X31_Y29_N30
\C3|Add9~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~28_combout\ = (\C2|BV\(16) & (\C3|Add9~27\ $ (GND))) # (!\C2|BV\(16) & (!\C3|Add9~27\ & VCC))
-- \C3|Add9~29\ = CARRY((\C2|BV\(16) & !\C3|Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(16),
	datad => VCC,
	cin => \C3|Add9~27\,
	combout => \C3|Add9~28_combout\,
	cout => \C3|Add9~29\);

-- Location: LCCOMB_X31_Y28_N0
\C3|Add9~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~30_combout\ = (\C2|BV\(17) & (!\C3|Add9~29\)) # (!\C2|BV\(17) & ((\C3|Add9~29\) # (GND)))
-- \C3|Add9~31\ = CARRY((!\C3|Add9~29\) # (!\C2|BV\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(17),
	datad => VCC,
	cin => \C3|Add9~29\,
	combout => \C3|Add9~30_combout\,
	cout => \C3|Add9~31\);

-- Location: LCCOMB_X31_Y28_N8
\C3|Add9~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~38_combout\ = (\C2|BV\(21) & (!\C3|Add9~37\)) # (!\C2|BV\(21) & ((\C3|Add9~37\) # (GND)))
-- \C3|Add9~39\ = CARRY((!\C3|Add9~37\) # (!\C2|BV\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(21),
	datad => VCC,
	cin => \C3|Add9~37\,
	combout => \C3|Add9~38_combout\,
	cout => \C3|Add9~39\);

-- Location: LCCOMB_X31_Y28_N10
\C3|Add9~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~40_combout\ = (\C2|BV\(22) & (\C3|Add9~39\ $ (GND))) # (!\C2|BV\(22) & (!\C3|Add9~39\ & VCC))
-- \C3|Add9~41\ = CARRY((\C2|BV\(22) & !\C3|Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(22),
	datad => VCC,
	cin => \C3|Add9~39\,
	combout => \C3|Add9~40_combout\,
	cout => \C3|Add9~41\);

-- Location: LCCOMB_X31_Y28_N12
\C3|Add9~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~42_combout\ = (\C2|BV\(23) & (!\C3|Add9~41\)) # (!\C2|BV\(23) & ((\C3|Add9~41\) # (GND)))
-- \C3|Add9~43\ = CARRY((!\C3|Add9~41\) # (!\C2|BV\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(23),
	datad => VCC,
	cin => \C3|Add9~41\,
	combout => \C3|Add9~42_combout\,
	cout => \C3|Add9~43\);

-- Location: LCCOMB_X31_Y28_N14
\C3|Add9~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~44_combout\ = (\C2|BV\(24) & (\C3|Add9~43\ $ (GND))) # (!\C2|BV\(24) & (!\C3|Add9~43\ & VCC))
-- \C3|Add9~45\ = CARRY((\C2|BV\(24) & !\C3|Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(24),
	datad => VCC,
	cin => \C3|Add9~43\,
	combout => \C3|Add9~44_combout\,
	cout => \C3|Add9~45\);

-- Location: LCCOMB_X31_Y28_N18
\C3|Add9~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~48_combout\ = (\C2|BV\(26) & (\C3|Add9~47\ $ (GND))) # (!\C2|BV\(26) & (!\C3|Add9~47\ & VCC))
-- \C3|Add9~49\ = CARRY((\C2|BV\(26) & !\C3|Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(26),
	datad => VCC,
	cin => \C3|Add9~47\,
	combout => \C3|Add9~48_combout\,
	cout => \C3|Add9~49\);

-- Location: LCCOMB_X31_Y28_N20
\C3|Add9~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~50_combout\ = (\C2|BV\(27) & (!\C3|Add9~49\)) # (!\C2|BV\(27) & ((\C3|Add9~49\) # (GND)))
-- \C3|Add9~51\ = CARRY((!\C3|Add9~49\) # (!\C2|BV\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(27),
	datad => VCC,
	cin => \C3|Add9~49\,
	combout => \C3|Add9~50_combout\,
	cout => \C3|Add9~51\);

-- Location: LCCOMB_X31_Y28_N22
\C3|Add9~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~52_combout\ = (\C2|BV\(28) & (\C3|Add9~51\ $ (GND))) # (!\C2|BV\(28) & (!\C3|Add9~51\ & VCC))
-- \C3|Add9~53\ = CARRY((\C2|BV\(28) & !\C3|Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(28),
	datad => VCC,
	cin => \C3|Add9~51\,
	combout => \C3|Add9~52_combout\,
	cout => \C3|Add9~53\);

-- Location: LCCOMB_X31_Y28_N24
\C3|Add9~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~54_combout\ = (\C2|BV\(29) & (!\C3|Add9~53\)) # (!\C2|BV\(29) & ((\C3|Add9~53\) # (GND)))
-- \C3|Add9~55\ = CARRY((!\C3|Add9~53\) # (!\C2|BV\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BV\(29),
	datad => VCC,
	cin => \C3|Add9~53\,
	combout => \C3|Add9~54_combout\,
	cout => \C3|Add9~55\);

-- Location: LCCOMB_X31_Y28_N28
\C3|Add9~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add9~58_combout\ = \C3|Add9~57\ $ (\C2|BV\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C2|BV\(31),
	cin => \C3|Add9~57\,
	combout => \C3|Add9~58_combout\);

-- Location: LCCOMB_X30_Y29_N2
\C3|Add10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~1_cout\ = CARRY(\C3|Add9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~0_combout\,
	datad => VCC,
	cout => \C3|Add10~1_cout\);

-- Location: LCCOMB_X30_Y29_N4
\C3|Add10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~3_cout\ = CARRY((!\C3|Add9~2_combout\ & !\C3|Add10~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~2_combout\,
	datad => VCC,
	cin => \C3|Add10~1_cout\,
	cout => \C3|Add10~3_cout\);

-- Location: LCCOMB_X30_Y29_N6
\C3|Add10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~5_cout\ = CARRY((\C3|Add9~4_combout\) # (!\C3|Add10~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~4_combout\,
	datad => VCC,
	cin => \C3|Add10~3_cout\,
	cout => \C3|Add10~5_cout\);

-- Location: LCCOMB_X30_Y29_N8
\C3|Add10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~7_cout\ = CARRY((!\C3|Add9~6_combout\ & !\C3|Add10~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~6_combout\,
	datad => VCC,
	cin => \C3|Add10~5_cout\,
	cout => \C3|Add10~7_cout\);

-- Location: LCCOMB_X30_Y29_N10
\C3|Add10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~8_combout\ = (\C3|Add9~8_combout\ & (\C3|Add10~7_cout\ $ (GND))) # (!\C3|Add9~8_combout\ & (!\C3|Add10~7_cout\ & VCC))
-- \C3|Add10~9\ = CARRY((\C3|Add9~8_combout\ & !\C3|Add10~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~8_combout\,
	datad => VCC,
	cin => \C3|Add10~7_cout\,
	combout => \C3|Add10~8_combout\,
	cout => \C3|Add10~9\);

-- Location: LCCOMB_X30_Y29_N12
\C3|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~10_combout\ = (\C3|Add9~10_combout\ & (!\C3|Add10~9\)) # (!\C3|Add9~10_combout\ & ((\C3|Add10~9\) # (GND)))
-- \C3|Add10~11\ = CARRY((!\C3|Add10~9\) # (!\C3|Add9~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~10_combout\,
	datad => VCC,
	cin => \C3|Add10~9\,
	combout => \C3|Add10~10_combout\,
	cout => \C3|Add10~11\);

-- Location: LCCOMB_X30_Y29_N14
\C3|Add10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~12_combout\ = (\C3|Add9~12_combout\ & (\C3|Add10~11\ $ (GND))) # (!\C3|Add9~12_combout\ & (!\C3|Add10~11\ & VCC))
-- \C3|Add10~13\ = CARRY((\C3|Add9~12_combout\ & !\C3|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~12_combout\,
	datad => VCC,
	cin => \C3|Add10~11\,
	combout => \C3|Add10~12_combout\,
	cout => \C3|Add10~13\);

-- Location: LCCOMB_X30_Y29_N18
\C3|Add10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~16_combout\ = (\C3|Add9~16_combout\ & (\C3|Add10~15\ $ (GND))) # (!\C3|Add9~16_combout\ & (!\C3|Add10~15\ & VCC))
-- \C3|Add10~17\ = CARRY((\C3|Add9~16_combout\ & !\C3|Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~16_combout\,
	datad => VCC,
	cin => \C3|Add10~15\,
	combout => \C3|Add10~16_combout\,
	cout => \C3|Add10~17\);

-- Location: LCCOMB_X30_Y29_N22
\C3|Add10~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~20_combout\ = (\C3|Add9~20_combout\ & (\C3|Add10~19\ $ (GND))) # (!\C3|Add9~20_combout\ & (!\C3|Add10~19\ & VCC))
-- \C3|Add10~21\ = CARRY((\C3|Add9~20_combout\ & !\C3|Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~20_combout\,
	datad => VCC,
	cin => \C3|Add10~19\,
	combout => \C3|Add10~20_combout\,
	cout => \C3|Add10~21\);

-- Location: LCCOMB_X30_Y28_N0
\C3|Add10~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~30_combout\ = (\C3|Add9~30_combout\ & (!\C3|Add10~29\)) # (!\C3|Add9~30_combout\ & ((\C3|Add10~29\) # (GND)))
-- \C3|Add10~31\ = CARRY((!\C3|Add10~29\) # (!\C3|Add9~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~30_combout\,
	datad => VCC,
	cin => \C3|Add10~29\,
	combout => \C3|Add10~30_combout\,
	cout => \C3|Add10~31\);

-- Location: LCCOMB_X30_Y28_N4
\C3|Add10~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~34_combout\ = (\C3|Add9~34_combout\ & (!\C3|Add10~33\)) # (!\C3|Add9~34_combout\ & ((\C3|Add10~33\) # (GND)))
-- \C3|Add10~35\ = CARRY((!\C3|Add10~33\) # (!\C3|Add9~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~34_combout\,
	datad => VCC,
	cin => \C3|Add10~33\,
	combout => \C3|Add10~34_combout\,
	cout => \C3|Add10~35\);

-- Location: LCCOMB_X30_Y28_N6
\C3|Add10~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~36_combout\ = (\C3|Add9~36_combout\ & (\C3|Add10~35\ $ (GND))) # (!\C3|Add9~36_combout\ & (!\C3|Add10~35\ & VCC))
-- \C3|Add10~37\ = CARRY((\C3|Add9~36_combout\ & !\C3|Add10~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~36_combout\,
	datad => VCC,
	cin => \C3|Add10~35\,
	combout => \C3|Add10~36_combout\,
	cout => \C3|Add10~37\);

-- Location: LCCOMB_X30_Y28_N8
\C3|Add10~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~38_combout\ = (\C3|Add9~38_combout\ & (!\C3|Add10~37\)) # (!\C3|Add9~38_combout\ & ((\C3|Add10~37\) # (GND)))
-- \C3|Add10~39\ = CARRY((!\C3|Add10~37\) # (!\C3|Add9~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~38_combout\,
	datad => VCC,
	cin => \C3|Add10~37\,
	combout => \C3|Add10~38_combout\,
	cout => \C3|Add10~39\);

-- Location: LCCOMB_X30_Y28_N10
\C3|Add10~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~40_combout\ = (\C3|Add9~40_combout\ & (\C3|Add10~39\ $ (GND))) # (!\C3|Add9~40_combout\ & (!\C3|Add10~39\ & VCC))
-- \C3|Add10~41\ = CARRY((\C3|Add9~40_combout\ & !\C3|Add10~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~40_combout\,
	datad => VCC,
	cin => \C3|Add10~39\,
	combout => \C3|Add10~40_combout\,
	cout => \C3|Add10~41\);

-- Location: LCCOMB_X30_Y28_N12
\C3|Add10~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~42_combout\ = (\C3|Add9~42_combout\ & (!\C3|Add10~41\)) # (!\C3|Add9~42_combout\ & ((\C3|Add10~41\) # (GND)))
-- \C3|Add10~43\ = CARRY((!\C3|Add10~41\) # (!\C3|Add9~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~42_combout\,
	datad => VCC,
	cin => \C3|Add10~41\,
	combout => \C3|Add10~42_combout\,
	cout => \C3|Add10~43\);

-- Location: LCCOMB_X30_Y28_N16
\C3|Add10~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~46_combout\ = (\C3|Add9~46_combout\ & (!\C3|Add10~45\)) # (!\C3|Add9~46_combout\ & ((\C3|Add10~45\) # (GND)))
-- \C3|Add10~47\ = CARRY((!\C3|Add10~45\) # (!\C3|Add9~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~46_combout\,
	datad => VCC,
	cin => \C3|Add10~45\,
	combout => \C3|Add10~46_combout\,
	cout => \C3|Add10~47\);

-- Location: LCCOMB_X30_Y28_N18
\C3|Add10~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~48_combout\ = (\C3|Add9~48_combout\ & (\C3|Add10~47\ $ (GND))) # (!\C3|Add9~48_combout\ & (!\C3|Add10~47\ & VCC))
-- \C3|Add10~49\ = CARRY((\C3|Add9~48_combout\ & !\C3|Add10~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~48_combout\,
	datad => VCC,
	cin => \C3|Add10~47\,
	combout => \C3|Add10~48_combout\,
	cout => \C3|Add10~49\);

-- Location: LCCOMB_X30_Y28_N20
\C3|Add10~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~50_combout\ = (\C3|Add9~50_combout\ & (!\C3|Add10~49\)) # (!\C3|Add9~50_combout\ & ((\C3|Add10~49\) # (GND)))
-- \C3|Add10~51\ = CARRY((!\C3|Add10~49\) # (!\C3|Add9~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~50_combout\,
	datad => VCC,
	cin => \C3|Add10~49\,
	combout => \C3|Add10~50_combout\,
	cout => \C3|Add10~51\);

-- Location: LCCOMB_X30_Y28_N22
\C3|Add10~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~52_combout\ = (\C3|Add9~52_combout\ & (\C3|Add10~51\ $ (GND))) # (!\C3|Add9~52_combout\ & (!\C3|Add10~51\ & VCC))
-- \C3|Add10~53\ = CARRY((\C3|Add9~52_combout\ & !\C3|Add10~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add9~52_combout\,
	datad => VCC,
	cin => \C3|Add10~51\,
	combout => \C3|Add10~52_combout\,
	cout => \C3|Add10~53\);

-- Location: LCCOMB_X30_Y28_N28
\C3|Add10~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add10~58_combout\ = \C3|Add10~57\ $ (\C3|Add9~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C3|Add9~58_combout\,
	cin => \C3|Add10~57\,
	combout => \C3|Add10~58_combout\);

-- Location: LCCOMB_X30_Y28_N30
\C3|LessThan70~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~26_combout\ = (!\C3|Add9~56_combout\ & !\C3|Add9~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~56_combout\,
	datad => \C3|Add9~54_combout\,
	combout => \C3|LessThan70~26_combout\);

-- Location: LCCOMB_X31_Y28_N30
\C3|LessThan70~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~25_combout\ = (!\C3|Add9~46_combout\ & (!\C3|Add9~52_combout\ & (!\C3|Add9~50_combout\ & !\C3|Add9~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add9~46_combout\,
	datab => \C3|Add9~52_combout\,
	datac => \C3|Add9~50_combout\,
	datad => \C3|Add9~48_combout\,
	combout => \C3|LessThan70~25_combout\);

-- Location: LCCOMB_X31_Y31_N14
\C3|LessThan70~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan70~27_combout\ = (\C3|Add9~58_combout\) # ((\C3|LessThan70~24_combout\ & (\C3|LessThan70~26_combout\ & \C3|LessThan70~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan70~24_combout\,
	datab => \C3|Add9~58_combout\,
	datac => \C3|LessThan70~26_combout\,
	datad => \C3|LessThan70~25_combout\,
	combout => \C3|LessThan70~27_combout\);

-- Location: LCCOMB_X35_Y25_N22
\C2|Add11~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~66_combout\ = (\C2|currentS.s1~regout\ & \C2|Add11~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|currentS.s1~regout\,
	datad => \C2|Add11~61_combout\,
	combout => \C2|Add11~66_combout\);

-- Location: LCFF_X35_Y25_N23
\C2|BH[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|Add11~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(30));

-- Location: LCCOMB_X34_Y26_N30
\C2|Add11~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add11~84_combout\ = (\C2|Add11~25_combout\ & \C2|currentS.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add11~25_combout\,
	datad => \C2|currentS.s1~regout\,
	combout => \C2|Add11~84_combout\);

-- Location: LCFF_X33_Y26_N11
\C2|BH[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	sdata => \C2|Add11~84_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|BH\(12));

-- Location: LCCOMB_X34_Y25_N8
\C3|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~4_combout\ = (\C2|BH\(6) & ((GND) # (!\C3|Add6~3\))) # (!\C2|BH\(6) & (\C3|Add6~3\ $ (GND)))
-- \C3|Add6~5\ = CARRY((\C2|BH\(6)) # (!\C3|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(6),
	datad => VCC,
	cin => \C3|Add6~3\,
	combout => \C3|Add6~4_combout\,
	cout => \C3|Add6~5\);

-- Location: LCCOMB_X34_Y25_N12
\C3|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~8_combout\ = (\C2|BH\(8) & (!\C3|Add6~7\ & VCC)) # (!\C2|BH\(8) & (\C3|Add6~7\ $ (GND)))
-- \C3|Add6~9\ = CARRY((!\C2|BH\(8) & !\C3|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(8),
	datad => VCC,
	cin => \C3|Add6~7\,
	combout => \C3|Add6~8_combout\,
	cout => \C3|Add6~9\);

-- Location: LCCOMB_X34_Y25_N14
\C3|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~10_combout\ = (\C2|BH\(9) & ((\C3|Add6~9\) # (GND))) # (!\C2|BH\(9) & (!\C3|Add6~9\))
-- \C3|Add6~11\ = CARRY((\C2|BH\(9)) # (!\C3|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(9),
	datad => VCC,
	cin => \C3|Add6~9\,
	combout => \C3|Add6~10_combout\,
	cout => \C3|Add6~11\);

-- Location: LCCOMB_X34_Y25_N16
\C3|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~12_combout\ = (\C2|BH\(10) & (\C3|Add6~11\ $ (GND))) # (!\C2|BH\(10) & (!\C3|Add6~11\ & VCC))
-- \C3|Add6~13\ = CARRY((\C2|BH\(10) & !\C3|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(10),
	datad => VCC,
	cin => \C3|Add6~11\,
	combout => \C3|Add6~12_combout\,
	cout => \C3|Add6~13\);

-- Location: LCCOMB_X34_Y25_N20
\C3|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~16_combout\ = (\C2|BH\(12) & (\C3|Add6~15\ $ (GND))) # (!\C2|BH\(12) & (!\C3|Add6~15\ & VCC))
-- \C3|Add6~17\ = CARRY((\C2|BH\(12) & !\C3|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(12),
	datad => VCC,
	cin => \C3|Add6~15\,
	combout => \C3|Add6~16_combout\,
	cout => \C3|Add6~17\);

-- Location: LCCOMB_X34_Y25_N22
\C3|Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~18_combout\ = (\C2|BH\(13) & (!\C3|Add6~17\)) # (!\C2|BH\(13) & ((\C3|Add6~17\) # (GND)))
-- \C3|Add6~19\ = CARRY((!\C3|Add6~17\) # (!\C2|BH\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(13),
	datad => VCC,
	cin => \C3|Add6~17\,
	combout => \C3|Add6~18_combout\,
	cout => \C3|Add6~19\);

-- Location: LCCOMB_X34_Y25_N24
\C3|Add6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~20_combout\ = (\C2|BH\(14) & (\C3|Add6~19\ $ (GND))) # (!\C2|BH\(14) & (!\C3|Add6~19\ & VCC))
-- \C3|Add6~21\ = CARRY((\C2|BH\(14) & !\C3|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(14),
	datad => VCC,
	cin => \C3|Add6~19\,
	combout => \C3|Add6~20_combout\,
	cout => \C3|Add6~21\);

-- Location: LCCOMB_X34_Y25_N28
\C3|Add6~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~24_combout\ = (\C2|BH\(16) & (\C3|Add6~23\ $ (GND))) # (!\C2|BH\(16) & (!\C3|Add6~23\ & VCC))
-- \C3|Add6~25\ = CARRY((\C2|BH\(16) & !\C3|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(16),
	datad => VCC,
	cin => \C3|Add6~23\,
	combout => \C3|Add6~24_combout\,
	cout => \C3|Add6~25\);

-- Location: LCCOMB_X34_Y25_N30
\C3|Add6~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~26_combout\ = (\C2|BH\(17) & (!\C3|Add6~25\)) # (!\C2|BH\(17) & ((\C3|Add6~25\) # (GND)))
-- \C3|Add6~27\ = CARRY((!\C3|Add6~25\) # (!\C2|BH\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(17),
	datad => VCC,
	cin => \C3|Add6~25\,
	combout => \C3|Add6~26_combout\,
	cout => \C3|Add6~27\);

-- Location: LCCOMB_X34_Y24_N0
\C3|Add6~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~28_combout\ = (\C2|BH\(18) & (\C3|Add6~27\ $ (GND))) # (!\C2|BH\(18) & (!\C3|Add6~27\ & VCC))
-- \C3|Add6~29\ = CARRY((\C2|BH\(18) & !\C3|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(18),
	datad => VCC,
	cin => \C3|Add6~27\,
	combout => \C3|Add6~28_combout\,
	cout => \C3|Add6~29\);

-- Location: LCCOMB_X34_Y24_N2
\C3|Add6~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~30_combout\ = (\C2|BH\(19) & (!\C3|Add6~29\)) # (!\C2|BH\(19) & ((\C3|Add6~29\) # (GND)))
-- \C3|Add6~31\ = CARRY((!\C3|Add6~29\) # (!\C2|BH\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(19),
	datad => VCC,
	cin => \C3|Add6~29\,
	combout => \C3|Add6~30_combout\,
	cout => \C3|Add6~31\);

-- Location: LCCOMB_X34_Y24_N6
\C3|Add6~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~34_combout\ = (\C2|BH\(21) & (!\C3|Add6~33\)) # (!\C2|BH\(21) & ((\C3|Add6~33\) # (GND)))
-- \C3|Add6~35\ = CARRY((!\C3|Add6~33\) # (!\C2|BH\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(21),
	datad => VCC,
	cin => \C3|Add6~33\,
	combout => \C3|Add6~34_combout\,
	cout => \C3|Add6~35\);

-- Location: LCCOMB_X34_Y24_N18
\C3|Add6~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~46_combout\ = (\C2|BH\(27) & (!\C3|Add6~45\)) # (!\C2|BH\(27) & ((\C3|Add6~45\) # (GND)))
-- \C3|Add6~47\ = CARRY((!\C3|Add6~45\) # (!\C2|BH\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(27),
	datad => VCC,
	cin => \C3|Add6~45\,
	combout => \C3|Add6~46_combout\,
	cout => \C3|Add6~47\);

-- Location: LCCOMB_X34_Y24_N22
\C3|Add6~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~50_combout\ = (\C2|BH\(29) & (!\C3|Add6~49\)) # (!\C2|BH\(29) & ((\C3|Add6~49\) # (GND)))
-- \C3|Add6~51\ = CARRY((!\C3|Add6~49\) # (!\C2|BH\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(29),
	datad => VCC,
	cin => \C3|Add6~49\,
	combout => \C3|Add6~50_combout\,
	cout => \C3|Add6~51\);

-- Location: LCCOMB_X34_Y24_N24
\C3|Add6~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~52_combout\ = (\C2|BH\(30) & (\C3|Add6~51\ $ (GND))) # (!\C2|BH\(30) & (!\C3|Add6~51\ & VCC))
-- \C3|Add6~53\ = CARRY((\C2|BH\(30) & !\C3|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(30),
	datad => VCC,
	cin => \C3|Add6~51\,
	combout => \C3|Add6~52_combout\,
	cout => \C3|Add6~53\);

-- Location: LCCOMB_X34_Y24_N26
\C3|Add6~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add6~54_combout\ = \C2|BH\(31) $ (\C3|Add6~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|BH\(31),
	cin => \C3|Add6~53\,
	combout => \C3|Add6~54_combout\);

-- Location: LCCOMB_X33_Y24_N4
\C3|draw~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~10_combout\ = (!\C3|Add6~32_combout\ & (!\C3|Add6~28_combout\ & (!\C3|Add6~30_combout\ & !\C3|Add6~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add6~32_combout\,
	datab => \C3|Add6~28_combout\,
	datac => \C3|Add6~30_combout\,
	datad => \C3|Add6~34_combout\,
	combout => \C3|draw~10_combout\);

-- Location: LCCOMB_X32_Y34_N30
\C3|HPOS[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|HPOS[10]~31_combout\ = \C3|HPOS[9]~30\ $ (!\C3|HPOS\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C3|HPOS\(10),
	cin => \C3|HPOS[9]~30\,
	combout => \C3|HPOS[10]~31_combout\);

-- Location: LCFF_X32_Y34_N31
\C3|HPOS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|HPOS[10]~31_combout\,
	sclr => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HPOS\(10));

-- Location: LCFF_X32_Y34_N11
\C3|HPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|HPOS[0]~11_combout\,
	sclr => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|HPOS\(0));

-- Location: LCCOMB_X33_Y31_N8
\C3|LessThan68~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan68~1_cout\ = CARRY((!\C2|BH\(0) & \C3|HPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BH\(0),
	datab => \C3|HPOS\(0),
	datad => VCC,
	cout => \C3|LessThan68~1_cout\);

-- Location: LCCOMB_X33_Y31_N10
\C3|LessThan68~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan68~3_cout\ = CARRY((\C3|HPOS\(1) & (!\C2|BH\(1) & !\C3|LessThan68~1_cout\)) # (!\C3|HPOS\(1) & ((!\C3|LessThan68~1_cout\) # (!\C2|BH\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(1),
	datab => \C2|BH\(1),
	datad => VCC,
	cin => \C3|LessThan68~1_cout\,
	cout => \C3|LessThan68~3_cout\);

-- Location: LCCOMB_X33_Y31_N12
\C3|LessThan68~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan68~5_cout\ = CARRY((\C3|HPOS\(2) & ((!\C3|LessThan68~3_cout\) # (!\C2|BH\(2)))) # (!\C3|HPOS\(2) & (!\C2|BH\(2) & !\C3|LessThan68~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(2),
	datab => \C2|BH\(2),
	datad => VCC,
	cin => \C3|LessThan68~3_cout\,
	cout => \C3|LessThan68~5_cout\);

-- Location: LCCOMB_X33_Y31_N14
\C3|LessThan68~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan68~7_cout\ = CARRY((\C3|HPOS\(3) & (!\C2|BH\(3) & !\C3|LessThan68~5_cout\)) # (!\C3|HPOS\(3) & ((!\C3|LessThan68~5_cout\) # (!\C2|BH\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(3),
	datab => \C2|BH\(3),
	datad => VCC,
	cin => \C3|LessThan68~5_cout\,
	cout => \C3|LessThan68~7_cout\);

-- Location: LCCOMB_X33_Y31_N16
\C3|LessThan68~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan68~9_cout\ = CARRY((\C3|Add6~0_combout\ & (\C3|HPOS\(4) & !\C3|LessThan68~7_cout\)) # (!\C3|Add6~0_combout\ & ((\C3|HPOS\(4)) # (!\C3|LessThan68~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add6~0_combout\,
	datab => \C3|HPOS\(4),
	datad => VCC,
	cin => \C3|LessThan68~7_cout\,
	cout => \C3|LessThan68~9_cout\);

-- Location: LCCOMB_X33_Y31_N18
\C3|LessThan68~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan68~11_cout\ = CARRY((\C3|Add6~2_combout\ & ((!\C3|LessThan68~9_cout\) # (!\C3|HPOS\(5)))) # (!\C3|Add6~2_combout\ & (!\C3|HPOS\(5) & !\C3|LessThan68~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add6~2_combout\,
	datab => \C3|HPOS\(5),
	datad => VCC,
	cin => \C3|LessThan68~9_cout\,
	cout => \C3|LessThan68~11_cout\);

-- Location: LCCOMB_X33_Y31_N20
\C3|LessThan68~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan68~13_cout\ = CARRY((\C3|HPOS\(6) & ((!\C3|LessThan68~11_cout\) # (!\C3|Add6~4_combout\))) # (!\C3|HPOS\(6) & (!\C3|Add6~4_combout\ & !\C3|LessThan68~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(6),
	datab => \C3|Add6~4_combout\,
	datad => VCC,
	cin => \C3|LessThan68~11_cout\,
	cout => \C3|LessThan68~13_cout\);

-- Location: LCCOMB_X33_Y31_N22
\C3|LessThan68~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan68~15_cout\ = CARRY((\C3|Add6~6_combout\ & ((!\C3|LessThan68~13_cout\) # (!\C3|HPOS\(7)))) # (!\C3|Add6~6_combout\ & (!\C3|HPOS\(7) & !\C3|LessThan68~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add6~6_combout\,
	datab => \C3|HPOS\(7),
	datad => VCC,
	cin => \C3|LessThan68~13_cout\,
	cout => \C3|LessThan68~15_cout\);

-- Location: LCCOMB_X33_Y31_N24
\C3|LessThan68~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan68~17_cout\ = CARRY((\C3|HPOS\(8) & ((!\C3|LessThan68~15_cout\) # (!\C3|Add6~8_combout\))) # (!\C3|HPOS\(8) & (!\C3|Add6~8_combout\ & !\C3|LessThan68~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(8),
	datab => \C3|Add6~8_combout\,
	datad => VCC,
	cin => \C3|LessThan68~15_cout\,
	cout => \C3|LessThan68~17_cout\);

-- Location: LCCOMB_X33_Y31_N26
\C3|LessThan68~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan68~19_cout\ = CARRY((\C3|HPOS\(9) & (\C3|Add6~10_combout\ & !\C3|LessThan68~17_cout\)) # (!\C3|HPOS\(9) & ((\C3|Add6~10_combout\) # (!\C3|LessThan68~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(9),
	datab => \C3|Add6~10_combout\,
	datad => VCC,
	cin => \C3|LessThan68~17_cout\,
	cout => \C3|LessThan68~19_cout\);

-- Location: LCCOMB_X33_Y31_N28
\C3|LessThan68~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan68~20_combout\ = (\C3|HPOS\(10) & ((!\C3|Add6~12_combout\) # (!\C3|LessThan68~19_cout\))) # (!\C3|HPOS\(10) & (!\C3|LessThan68~19_cout\ & !\C3|Add6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(10),
	datad => \C3|Add6~12_combout\,
	cin => \C3|LessThan68~19_cout\,
	combout => \C3|LessThan68~20_combout\);

-- Location: LCCOMB_X33_Y31_N4
\C3|draw~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~9_combout\ = (!\C3|Add6~14_combout\ & (!\C3|Add6~18_combout\ & (!\C3|Add6~16_combout\ & \C3|LessThan68~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add6~14_combout\,
	datab => \C3|Add6~18_combout\,
	datac => \C3|Add6~16_combout\,
	datad => \C3|LessThan68~20_combout\,
	combout => \C3|draw~9_combout\);

-- Location: LCCOMB_X32_Y31_N12
\C3|draw~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~11_combout\ = (!\C3|Add6~48_combout\ & (!\C3|Add6~52_combout\ & (\C3|draw~10_combout\ & \C3|draw~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add6~48_combout\,
	datab => \C3|Add6~52_combout\,
	datac => \C3|draw~10_combout\,
	datad => \C3|draw~9_combout\,
	combout => \C3|draw~11_combout\);

-- Location: LCCOMB_X34_Y25_N0
\C3|draw~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~7_combout\ = (!\C3|Add6~22_combout\ & (!\C3|Add6~24_combout\ & (!\C3|Add6~20_combout\ & !\C3|Add6~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add6~22_combout\,
	datab => \C3|Add6~24_combout\,
	datac => \C3|Add6~20_combout\,
	datad => \C3|Add6~26_combout\,
	combout => \C3|draw~7_combout\);

-- Location: LCCOMB_X34_Y25_N2
\C3|draw~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~8_combout\ = (!\C3|Add6~44_combout\ & (\C3|draw~7_combout\ & (!\C3|Add6~46_combout\ & !\C3|Add6~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add6~44_combout\,
	datab => \C3|draw~7_combout\,
	datac => \C3|Add6~46_combout\,
	datad => \C3|Add6~50_combout\,
	combout => \C3|draw~8_combout\);

-- Location: LCCOMB_X31_Y31_N10
\C3|draw~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~12_combout\ = (\C3|Add6~54_combout\) # ((\C3|draw~6_combout\ & (\C3|draw~11_combout\ & \C3|draw~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~6_combout\,
	datab => \C3|Add6~54_combout\,
	datac => \C3|draw~11_combout\,
	datad => \C3|draw~8_combout\,
	combout => \C3|draw~12_combout\);

-- Location: LCCOMB_X31_Y31_N20
\C3|draw~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~13_combout\ = (!\C3|Add8~56_combout\ & (!\C3|Add10~58_combout\ & (\C3|LessThan70~27_combout\ & \C3|draw~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add8~56_combout\,
	datab => \C3|Add10~58_combout\,
	datac => \C3|LessThan70~27_combout\,
	datad => \C3|draw~12_combout\,
	combout => \C3|draw~13_combout\);

-- Location: LCCOMB_X31_Y31_N22
\C3|LessThan71~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~2_combout\ = (\C3|LessThan71~1_combout\) # ((\C3|Add10~48_combout\) # ((\C3|Add10~46_combout\) # (\C3|Add10~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan71~1_combout\,
	datab => \C3|Add10~48_combout\,
	datac => \C3|Add10~46_combout\,
	datad => \C3|Add10~52_combout\,
	combout => \C3|LessThan71~2_combout\);

-- Location: LCCOMB_X31_Y31_N24
\C3|LessThan71~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~0_combout\ = (\C3|Add10~44_combout\) # ((\C3|Add10~40_combout\) # ((\C3|Add10~42_combout\) # (\C3|Add10~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add10~44_combout\,
	datab => \C3|Add10~40_combout\,
	datac => \C3|Add10~42_combout\,
	datad => \C3|Add10~38_combout\,
	combout => \C3|LessThan71~0_combout\);

-- Location: LCCOMB_X31_Y31_N28
\C3|LessThan71~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~24_combout\ = (\C3|Add10~32_combout\) # ((\C3|Add10~36_combout\) # ((\C3|Add10~30_combout\) # (\C3|Add10~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add10~32_combout\,
	datab => \C3|Add10~36_combout\,
	datac => \C3|Add10~30_combout\,
	datad => \C3|Add10~34_combout\,
	combout => \C3|LessThan71~24_combout\);

-- Location: LCCOMB_X29_Y29_N0
\C3|LessThan71~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~4_cout\ = CARRY((!\C3|VPOS\(0) & \C2|BH\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(0),
	datab => \C2|BH\(0),
	datad => VCC,
	cout => \C3|LessThan71~4_cout\);

-- Location: LCCOMB_X29_Y29_N2
\C3|LessThan71~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~6_cout\ = CARRY((\C3|VPOS\(1) & ((!\C3|LessThan71~4_cout\) # (!\C2|BV\(1)))) # (!\C3|VPOS\(1) & (!\C2|BV\(1) & !\C3|LessThan71~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(1),
	datab => \C2|BV\(1),
	datad => VCC,
	cin => \C3|LessThan71~4_cout\,
	cout => \C3|LessThan71~6_cout\);

-- Location: LCCOMB_X29_Y29_N4
\C3|LessThan71~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~8_cout\ = CARRY((\C2|BV\(2) & (!\C3|VPOS\(2) & !\C3|LessThan71~6_cout\)) # (!\C2|BV\(2) & ((!\C3|LessThan71~6_cout\) # (!\C3|VPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(2),
	datab => \C3|VPOS\(2),
	datad => VCC,
	cin => \C3|LessThan71~6_cout\,
	cout => \C3|LessThan71~8_cout\);

-- Location: LCCOMB_X29_Y29_N6
\C3|LessThan71~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~10_cout\ = CARRY((\C2|BV\(3) & (\C3|VPOS\(3) & !\C3|LessThan71~8_cout\)) # (!\C2|BV\(3) & ((\C3|VPOS\(3)) # (!\C3|LessThan71~8_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(3),
	datab => \C3|VPOS\(3),
	datad => VCC,
	cin => \C3|LessThan71~8_cout\,
	cout => \C3|LessThan71~10_cout\);

-- Location: LCCOMB_X29_Y29_N8
\C3|LessThan71~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~12_cout\ = CARRY((\C2|BV\(4) & ((!\C3|LessThan71~10_cout\) # (!\C3|VPOS\(4)))) # (!\C2|BV\(4) & (!\C3|VPOS\(4) & !\C3|LessThan71~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(4),
	datab => \C3|VPOS\(4),
	datad => VCC,
	cin => \C3|LessThan71~10_cout\,
	cout => \C3|LessThan71~12_cout\);

-- Location: LCCOMB_X29_Y29_N10
\C3|LessThan71~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~14_cout\ = CARRY((\C2|BV\(5) & (\C3|VPOS\(5) & !\C3|LessThan71~12_cout\)) # (!\C2|BV\(5) & ((\C3|VPOS\(5)) # (!\C3|LessThan71~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|BV\(5),
	datab => \C3|VPOS\(5),
	datad => VCC,
	cin => \C3|LessThan71~12_cout\,
	cout => \C3|LessThan71~14_cout\);

-- Location: LCCOMB_X29_Y29_N12
\C3|LessThan71~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~16_cout\ = CARRY((\C3|VPOS\(6) & (\C3|Add10~8_combout\ & !\C3|LessThan71~14_cout\)) # (!\C3|VPOS\(6) & ((\C3|Add10~8_combout\) # (!\C3|LessThan71~14_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(6),
	datab => \C3|Add10~8_combout\,
	datad => VCC,
	cin => \C3|LessThan71~14_cout\,
	cout => \C3|LessThan71~16_cout\);

-- Location: LCCOMB_X29_Y29_N14
\C3|LessThan71~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~18_cout\ = CARRY((\C3|VPOS\(7) & ((!\C3|LessThan71~16_cout\) # (!\C3|Add10~10_combout\))) # (!\C3|VPOS\(7) & (!\C3|Add10~10_combout\ & !\C3|LessThan71~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(7),
	datab => \C3|Add10~10_combout\,
	datad => VCC,
	cin => \C3|LessThan71~16_cout\,
	cout => \C3|LessThan71~18_cout\);

-- Location: LCCOMB_X29_Y29_N16
\C3|LessThan71~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~20_cout\ = CARRY((\C3|VPOS\(8) & (\C3|Add10~12_combout\ & !\C3|LessThan71~18_cout\)) # (!\C3|VPOS\(8) & ((\C3|Add10~12_combout\) # (!\C3|LessThan71~18_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(8),
	datab => \C3|Add10~12_combout\,
	datad => VCC,
	cin => \C3|LessThan71~18_cout\,
	cout => \C3|LessThan71~20_cout\);

-- Location: LCCOMB_X29_Y29_N18
\C3|LessThan71~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~21_combout\ = (\C3|Add10~14_combout\ & ((\C3|LessThan71~20_cout\) # (!\C3|VPOS\(9)))) # (!\C3|Add10~14_combout\ & (\C3|LessThan71~20_cout\ & !\C3|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add10~14_combout\,
	datad => \C3|VPOS\(9),
	cin => \C3|LessThan71~20_cout\,
	combout => \C3|LessThan71~21_combout\);

-- Location: LCCOMB_X30_Y31_N28
\C3|LessThan71~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~23_combout\ = (\C3|Add10~18_combout\) # ((\C3|Add10~20_combout\) # ((\C3|LessThan71~21_combout\) # (\C3|Add10~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add10~18_combout\,
	datab => \C3|Add10~20_combout\,
	datac => \C3|LessThan71~21_combout\,
	datad => \C3|Add10~16_combout\,
	combout => \C3|LessThan71~23_combout\);

-- Location: LCCOMB_X31_Y31_N18
\C3|LessThan71~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~25_combout\ = (\C3|Add10~56_combout\) # ((\C3|LessThan71~24_combout\) # ((\C3|Add10~50_combout\) # (\C3|LessThan71~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add10~56_combout\,
	datab => \C3|LessThan71~24_combout\,
	datac => \C3|Add10~50_combout\,
	datad => \C3|LessThan71~23_combout\,
	combout => \C3|LessThan71~25_combout\);

-- Location: LCCOMB_X31_Y31_N12
\C3|LessThan71~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan71~26_combout\ = (\C3|Add10~54_combout\) # ((\C3|LessThan71~2_combout\) # ((\C3|LessThan71~0_combout\) # (\C3|LessThan71~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add10~54_combout\,
	datab => \C3|LessThan71~2_combout\,
	datac => \C3|LessThan71~0_combout\,
	datad => \C3|LessThan71~25_combout\,
	combout => \C3|LessThan71~26_combout\);

-- Location: LCCOMB_X31_Y35_N26
\C3|draw~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~65_combout\ = (\C3|draw~13_combout\ & (\C3|LessThan71~26_combout\ & ((\C3|LessThan69~26_combout\) # (\C3|LessThan69~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan69~26_combout\,
	datab => \C3|LessThan69~28_combout\,
	datac => \C3|draw~13_combout\,
	datad => \C3|LessThan71~26_combout\,
	combout => \C3|draw~65_combout\);

-- Location: LCCOMB_X36_Y31_N30
\C2|SCORE2[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|SCORE2[31]~94_combout\ = \C2|SCORE2[30]~93\ $ (\C2|SCORE2\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C2|SCORE2\(31),
	cin => \C2|SCORE2[30]~93\,
	combout => \C2|SCORE2[31]~94_combout\);

-- Location: LCFF_X36_Y31_N31
\C2|SCORE2[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C2|process_4:clk~clkctrl_outclk\,
	datain => \C2|SCORE2[31]~94_combout\,
	sclr => \C2|ALT_INV_currentS.s0~regout\,
	ena => \C2|SCORE1[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|SCORE2\(31));

-- Location: LCCOMB_X35_Y32_N26
\C3|Selector1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~19_combout\ = ((\C2|SCORE2\(31)) # ((\C2|SCORE2\(2) & \C2|SCORE2\(1)))) # (!\C3|Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(2),
	datab => \C3|Equal6~8_combout\,
	datac => \C2|SCORE2\(31),
	datad => \C2|SCORE2\(1),
	combout => \C3|Selector1~19_combout\);

-- Location: LCCOMB_X35_Y33_N2
\C3|Selector1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~12_combout\ = (\C2|SCORE2\(31)) # ((\C2|SCORE2\(1)) # ((\C2|SCORE2\(0) & !\C2|SCORE2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(0),
	datab => \C2|SCORE2\(2),
	datac => \C2|SCORE2\(31),
	datad => \C2|SCORE2\(1),
	combout => \C3|Selector1~12_combout\);

-- Location: LCCOMB_X33_Y33_N22
\C3|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan3~0_combout\ = (!\C3|VPOS\(9) & !\C3|VPOS\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(9),
	datad => \C3|VPOS\(8),
	combout => \C3|LessThan3~0_combout\);

-- Location: LCCOMB_X33_Y33_N8
\C3|draw~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~25_combout\ = (\C3|VPOS\(6)) # ((\C3|VPOS\(5)) # ((\C3|draw~24_combout\ & \C3|VPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~24_combout\,
	datab => \C3|VPOS\(6),
	datac => \C3|VPOS\(5),
	datad => \C3|VPOS\(4),
	combout => \C3|draw~25_combout\);

-- Location: LCFF_X32_Y33_N13
\C3|VPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|VPOS[1]~12_combout\,
	sclr => \C3|LessThan20~0_combout\,
	ena => \C3|LessThan16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|VPOS\(1));

-- Location: LCCOMB_X33_Y33_N24
\C3|LessThan41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan41~1_combout\ = (\C3|VPOS\(3) & ((\C3|VPOS\(2)) # ((\C3|VPOS\(0) & \C3|VPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(2),
	datab => \C3|VPOS\(3),
	datac => \C3|VPOS\(0),
	datad => \C3|VPOS\(1),
	combout => \C3|LessThan41~1_combout\);

-- Location: LCCOMB_X33_Y33_N26
\C3|LessThan41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan41~2_combout\ = (\C3|LessThan41~0_combout\ & (\C3|VPOS\(7) & ((\C3|VPOS\(4)) # (\C3|LessThan41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan41~0_combout\,
	datab => \C3|VPOS\(4),
	datac => \C3|LessThan41~1_combout\,
	datad => \C3|VPOS\(7),
	combout => \C3|LessThan41~2_combout\);

-- Location: LCCOMB_X33_Y33_N30
\C3|draw~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~26_combout\ = (\C3|VPOS\(7) & (\C3|LessThan3~0_combout\ & (\C3|draw~25_combout\ & !\C3|LessThan41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(7),
	datab => \C3|LessThan3~0_combout\,
	datac => \C3|draw~25_combout\,
	datad => \C3|LessThan41~2_combout\,
	combout => \C3|draw~26_combout\);

-- Location: LCCOMB_X35_Y35_N24
\C3|Selector1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~13_combout\ = (\C3|draw~28_combout\ & (!\C3|Selector1~12_combout\ & (\C3|Equal6~8_combout\ & \C3|draw~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~28_combout\,
	datab => \C3|Selector1~12_combout\,
	datac => \C3|Equal6~8_combout\,
	datad => \C3|draw~26_combout\,
	combout => \C3|Selector1~13_combout\);

-- Location: LCCOMB_X35_Y33_N28
\C3|Selector1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~9_combout\ = (\C2|SCORE2\(0)) # ((\C2|SCORE2\(2)) # ((\C2|SCORE2\(31)) # (\C2|SCORE2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(0),
	datab => \C2|SCORE2\(2),
	datac => \C2|SCORE2\(31),
	datad => \C2|SCORE2\(1),
	combout => \C3|Selector1~9_combout\);

-- Location: LCCOMB_X33_Y34_N0
\C3|LessThan12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan12~1_combout\ = (!\C3|HPOS\(0) & (!\C3|HPOS\(3) & (!\C3|HPOS\(2) & !\C3|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(0),
	datab => \C3|HPOS\(3),
	datac => \C3|HPOS\(2),
	datad => \C3|HPOS\(1),
	combout => \C3|LessThan12~1_combout\);

-- Location: LCCOMB_X33_Y34_N28
\C3|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan10~0_combout\ = (\C3|HPOS\(6)) # ((\C3|HPOS\(5) & (!\C3|LessThan12~1_combout\ & \C3|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(5),
	datab => \C3|HPOS\(6),
	datac => \C3|LessThan12~1_combout\,
	datad => \C3|HPOS\(4),
	combout => \C3|LessThan10~0_combout\);

-- Location: LCCOMB_X32_Y34_N8
\C3|LessThan11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan11~2_combout\ = (!\C3|HPOS\(5) & (!\C3|HPOS\(2) & (!\C3|HPOS\(3) & !\C3|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(5),
	datab => \C3|HPOS\(2),
	datac => \C3|HPOS\(3),
	datad => \C3|HPOS\(4),
	combout => \C3|LessThan11~2_combout\);

-- Location: LCCOMB_X33_Y32_N4
\C3|LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan13~0_combout\ = (\C3|LessThan11~2_combout\) # (!\C3|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|HPOS\(6),
	datad => \C3|LessThan11~2_combout\,
	combout => \C3|LessThan13~0_combout\);

-- Location: LCCOMB_X34_Y35_N2
\C3|draw~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~28_combout\ = (\C3|draw~27_combout\ & (!\C3|HPOS\(8) & (\C3|LessThan10~0_combout\ & \C3|LessThan13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~27_combout\,
	datab => \C3|HPOS\(8),
	datac => \C3|LessThan10~0_combout\,
	datad => \C3|LessThan13~0_combout\,
	combout => \C3|draw~28_combout\);

-- Location: LCCOMB_X34_Y35_N28
\C3|Selector1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~10_combout\ = (\C3|draw~22_combout\ & (!\C3|Selector1~9_combout\ & (\C3|Equal6~8_combout\ & \C3|draw~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~22_combout\,
	datab => \C3|Selector1~9_combout\,
	datac => \C3|Equal6~8_combout\,
	datad => \C3|draw~28_combout\,
	combout => \C3|Selector1~10_combout\);

-- Location: LCCOMB_X35_Y32_N6
\C3|Equal6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal6~9_combout\ = (\C3|Equal6~8_combout\ & !\C2|SCORE2\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|Equal6~8_combout\,
	datad => \C2|SCORE2\(31),
	combout => \C3|Equal6~9_combout\);

-- Location: LCCOMB_X35_Y32_N10
\C3|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal11~0_combout\ = (!\C2|SCORE2\(1) & (\C2|SCORE2\(0) & (\C3|Equal6~9_combout\ & \C2|SCORE2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(1),
	datab => \C2|SCORE2\(0),
	datac => \C3|Equal6~9_combout\,
	datad => \C2|SCORE2\(2),
	combout => \C3|Equal11~0_combout\);

-- Location: LCCOMB_X33_Y33_N4
\C3|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan8~1_combout\ = (\C3|VPOS\(8) & ((\C3|VPOS\(5)) # ((\C3|VPOS\(7)) # (\C3|VPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(5),
	datab => \C3|VPOS\(8),
	datac => \C3|VPOS\(7),
	datad => \C3|VPOS\(6),
	combout => \C3|LessThan8~1_combout\);

-- Location: LCCOMB_X33_Y33_N2
\C3|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan7~1_combout\ = (\C3|VPOS\(9)) # ((\C3|VPOS\(7)) # (\C3|VPOS\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(9),
	datac => \C3|VPOS\(7),
	datad => \C3|VPOS\(6),
	combout => \C3|LessThan7~1_combout\);

-- Location: LCCOMB_X33_Y33_N20
\C3|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan7~0_combout\ = (\C3|VPOS\(4)) # ((\C3|VPOS\(2) & \C3|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(2),
	datab => \C3|VPOS\(3),
	datad => \C3|VPOS\(4),
	combout => \C3|LessThan7~0_combout\);

-- Location: LCCOMB_X33_Y33_N28
\C3|LessThan7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan7~2_combout\ = (\C3|LessThan3~0_combout\) # ((!\C3|LessThan7~1_combout\ & ((!\C3|LessThan7~0_combout\) # (!\C3|VPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(5),
	datab => \C3|LessThan7~1_combout\,
	datac => \C3|LessThan7~0_combout\,
	datad => \C3|LessThan3~0_combout\,
	combout => \C3|LessThan7~2_combout\);

-- Location: LCCOMB_X34_Y33_N0
\C3|draw~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~19_combout\ = (\C3|LessThan7~2_combout\ & ((\C3|LessThan8~0_combout\) # ((\C3|VPOS\(9)) # (\C3|LessThan8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan8~0_combout\,
	datab => \C3|VPOS\(9),
	datac => \C3|LessThan8~1_combout\,
	datad => \C3|LessThan7~2_combout\,
	combout => \C3|draw~19_combout\);

-- Location: LCCOMB_X34_Y34_N12
\C3|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan11~0_combout\ = (!\C3|HPOS\(6) & !\C3|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|HPOS\(6),
	datad => \C3|HPOS\(5),
	combout => \C3|LessThan11~0_combout\);

-- Location: LCCOMB_X34_Y34_N2
\C3|LessThan11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan11~1_combout\ = (\C3|LessThan11~0_combout\ & (((!\C3|HPOS\(2) & !\C3|HPOS\(3))) # (!\C3|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(2),
	datab => \C3|HPOS\(4),
	datac => \C3|HPOS\(3),
	datad => \C3|LessThan11~0_combout\,
	combout => \C3|LessThan11~1_combout\);

-- Location: LCCOMB_X34_Y35_N4
\C3|draw~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~15_combout\ = (\C3|draw~14_combout\) # ((\C3|HPOS\(8) & ((!\C3|LessThan11~1_combout\))) # (!\C3|HPOS\(8) & (!\C3|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~14_combout\,
	datab => \C3|HPOS\(8),
	datac => \C3|LessThan10~0_combout\,
	datad => \C3|LessThan11~1_combout\,
	combout => \C3|draw~15_combout\);

-- Location: LCCOMB_X31_Y33_N8
\C3|draw~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~66_combout\ = (!\C3|VPOS\(8) & (!\C3|VPOS\(9) & (!\C3|VPOS\(6) & \C3|VPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(8),
	datab => \C3|VPOS\(9),
	datac => \C3|VPOS\(6),
	datad => \C3|VPOS\(7),
	combout => \C3|draw~66_combout\);

-- Location: LCCOMB_X30_Y33_N20
\C3|draw~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~16_combout\ = (\C3|VPOS\(0) & (\C3|VPOS\(1) & \C3|VPOS\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(0),
	datac => \C3|VPOS\(1),
	datad => \C3|VPOS\(2),
	combout => \C3|draw~16_combout\);

-- Location: LCCOMB_X30_Y33_N30
\C3|draw~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~17_combout\ = (\C3|VPOS\(5) & (!\C3|LessThan3~1_combout\ & ((\C3|VPOS\(3))))) # (!\C3|VPOS\(5) & (((\C3|draw~16_combout\) # (\C3|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan3~1_combout\,
	datab => \C3|VPOS\(5),
	datac => \C3|draw~16_combout\,
	datad => \C3|VPOS\(3),
	combout => \C3|draw~17_combout\);

-- Location: LCCOMB_X30_Y33_N0
\C3|draw~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~18_combout\ = (\C3|draw~66_combout\ & ((\C3|VPOS\(4) & (!\C3|VPOS\(5) & \C3|draw~17_combout\)) # (!\C3|VPOS\(4) & (\C3|VPOS\(5) & !\C3|draw~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(4),
	datab => \C3|VPOS\(5),
	datac => \C3|draw~66_combout\,
	datad => \C3|draw~17_combout\,
	combout => \C3|draw~18_combout\);

-- Location: LCCOMB_X34_Y35_N8
\C3|Selector1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~7_combout\ = (!\C3|draw~15_combout\ & ((\C3|draw~19_combout\) # (\C3|draw~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|draw~19_combout\,
	datac => \C3|draw~15_combout\,
	datad => \C3|draw~18_combout\,
	combout => \C3|Selector1~7_combout\);

-- Location: LCCOMB_X35_Y32_N4
\C3|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~6_combout\ = (\C2|SCORE2\(1) & (!\C2|SCORE2\(0) & (\C3|Equal6~9_combout\ & !\C2|SCORE2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(1),
	datab => \C2|SCORE2\(0),
	datac => \C3|Equal6~9_combout\,
	datad => \C2|SCORE2\(2),
	combout => \C3|Selector1~6_combout\);

-- Location: LCCOMB_X34_Y35_N22
\C3|Selector1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~8_combout\ = (\C3|Selector1~6_combout\ & ((\C3|Selector1~7_combout\) # ((\C3|draw~22_combout\ & \C3|draw~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~22_combout\,
	datab => \C3|draw~28_combout\,
	datac => \C3|Selector1~7_combout\,
	datad => \C3|Selector1~6_combout\,
	combout => \C3|Selector1~8_combout\);

-- Location: LCCOMB_X34_Y35_N24
\C3|Selector1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~11_combout\ = (\C3|Selector1~10_combout\) # ((\C3|Selector1~8_combout\) # ((\C3|draw~29_combout\ & \C3|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~29_combout\,
	datab => \C3|Selector1~10_combout\,
	datac => \C3|Equal11~0_combout\,
	datad => \C3|Selector1~8_combout\,
	combout => \C3|Selector1~11_combout\);

-- Location: LCCOMB_X33_Y34_N6
\C3|draw~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~20_combout\ = ((\C3|HPOS\(9)) # ((\C3|HPOS\(7)) # (!\C3|HPOS\(8)))) # (!\C3|HPOS\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(10),
	datab => \C3|HPOS\(9),
	datac => \C3|HPOS\(8),
	datad => \C3|HPOS\(7),
	combout => \C3|draw~20_combout\);

-- Location: LCCOMB_X34_Y34_N22
\C3|LessThan12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan12~2_combout\ = (\C3|HPOS\(4)) # (!\C3|LessThan12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|LessThan12~1_combout\,
	datad => \C3|HPOS\(4),
	combout => \C3|LessThan12~2_combout\);

-- Location: LCCOMB_X34_Y34_N0
\C3|draw~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~21_combout\ = ((\C3|draw~20_combout\) # ((!\C3|HPOS\(5) & !\C3|LessThan12~2_combout\))) # (!\C3|LessThan11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(5),
	datab => \C3|LessThan11~1_combout\,
	datac => \C3|draw~20_combout\,
	datad => \C3|LessThan12~2_combout\,
	combout => \C3|draw~21_combout\);

-- Location: LCCOMB_X34_Y35_N18
\C3|R~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~6_combout\ = (\C3|draw~23_combout\ & (\C3|draw~15_combout\ & ((\C3|draw~21_combout\) # (!\C3|draw~26_combout\)))) # (!\C3|draw~23_combout\ & (((\C3|draw~21_combout\)) # (!\C3|draw~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~23_combout\,
	datab => \C3|draw~26_combout\,
	datac => \C3|draw~15_combout\,
	datad => \C3|draw~21_combout\,
	combout => \C3|R~6_combout\);

-- Location: LCCOMB_X35_Y32_N14
\C3|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~4_combout\ = ((\C2|SCORE2\(1) & ((\C2|SCORE2\(2)) # (!\C2|SCORE2\(0)))) # (!\C2|SCORE2\(1) & (\C2|SCORE2\(0) $ (\C2|SCORE2\(2))))) # (!\C3|Equal6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE2\(1),
	datab => \C2|SCORE2\(0),
	datac => \C3|Equal6~9_combout\,
	datad => \C2|SCORE2\(2),
	combout => \C3|Selector1~4_combout\);

-- Location: LCCOMB_X33_Y33_N6
\C3|draw~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~22_combout\ = (\C3|LessThan7~2_combout\ & (((\C3|LessThan6~0_combout\ & \C3|VPOS\(7))) # (!\C3|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan6~0_combout\,
	datab => \C3|LessThan3~0_combout\,
	datac => \C3|VPOS\(7),
	datad => \C3|LessThan7~2_combout\,
	combout => \C3|draw~22_combout\);

-- Location: LCCOMB_X34_Y35_N26
\C3|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~2_combout\ = (\C3|draw~15_combout\) # ((!\C3|draw~19_combout\ & !\C3|draw~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|draw~19_combout\,
	datac => \C3|draw~15_combout\,
	datad => \C3|draw~18_combout\,
	combout => \C3|Selector1~2_combout\);

-- Location: LCCOMB_X34_Y35_N12
\C3|R~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~5_combout\ = (\C3|Selector1~2_combout\ & ((\C3|draw~21_combout\) # (!\C3|draw~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|draw~21_combout\,
	datac => \C3|draw~22_combout\,
	datad => \C3|Selector1~2_combout\,
	combout => \C3|R~5_combout\);

-- Location: LCCOMB_X34_Y35_N0
\C3|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~5_combout\ = (\C3|Selector1~3_combout\ & (((!\C3|Selector1~4_combout\ & !\C3|R~5_combout\)))) # (!\C3|Selector1~3_combout\ & (((!\C3|Selector1~4_combout\ & !\C3|R~5_combout\)) # (!\C3|R~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector1~3_combout\,
	datab => \C3|R~6_combout\,
	datac => \C3|Selector1~4_combout\,
	datad => \C3|R~5_combout\,
	combout => \C3|Selector1~5_combout\);

-- Location: LCCOMB_X34_Y35_N10
\C3|Selector1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~17_combout\ = (\C3|Selector1~16_combout\) # ((\C3|Selector1~13_combout\) # ((\C3|Selector1~11_combout\) # (\C3|Selector1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector1~16_combout\,
	datab => \C3|Selector1~13_combout\,
	datac => \C3|Selector1~11_combout\,
	datad => \C3|Selector1~5_combout\,
	combout => \C3|Selector1~17_combout\);

-- Location: LCCOMB_X32_Y32_N0
\C3|draw~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~31_combout\ = (\C3|HPOS\(7)) # ((\C3|HPOS\(8) & ((\C3|HPOS\(6)) # (\C3|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(7),
	datab => \C3|HPOS\(6),
	datac => \C3|HPOS\(8),
	datad => \C3|HPOS\(5),
	combout => \C3|draw~31_combout\);

-- Location: LCCOMB_X33_Y33_N12
\C3|draw~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~23_combout\ = (\C3|LessThan6~0_combout\ & (\C3|LessThan3~0_combout\ & (\C3|VPOS\(7) & !\C3|LessThan41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan6~0_combout\,
	datab => \C3|LessThan3~0_combout\,
	datac => \C3|VPOS\(7),
	datad => \C3|LessThan41~2_combout\,
	combout => \C3|draw~23_combout\);

-- Location: LCCOMB_X33_Y33_N0
\C3|draw~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~30_combout\ = (\C3|HPOS\(9) & (!\C3|HPOS\(10) & \C3|draw~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(9),
	datac => \C3|HPOS\(10),
	datad => \C3|draw~23_combout\,
	combout => \C3|draw~30_combout\);

-- Location: LCCOMB_X32_Y33_N0
\C3|draw~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~32_combout\ = (\C3|draw~30_combout\ & ((\C3|HPOS\(8) & (!\C3|draw~31_combout\)) # (!\C3|HPOS\(8) & (\C3|draw~31_combout\ & \C3|LessThan75~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(8),
	datab => \C3|draw~31_combout\,
	datac => \C3|draw~30_combout\,
	datad => \C3|LessThan75~2_combout\,
	combout => \C3|draw~32_combout\);

-- Location: LCCOMB_X31_Y34_N28
\C3|Selector0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~14_combout\ = (\C3|Selector0~7_combout\ & (\C2|SCORE1\(2) & (!\C2|SCORE1\(0) & \C3|draw~32_combout\))) # (!\C3|Selector0~7_combout\ & (\C2|SCORE1\(2) $ ((\C2|SCORE1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector0~7_combout\,
	datab => \C2|SCORE1\(2),
	datac => \C2|SCORE1\(0),
	datad => \C3|draw~32_combout\,
	combout => \C3|Selector0~14_combout\);

-- Location: LCCOMB_X31_Y34_N22
\C3|Selector0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~15_combout\ = (\C3|Equal0~9_combout\ & (!\C2|SCORE1\(1) & \C3|Selector0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Equal0~9_combout\,
	datac => \C2|SCORE1\(1),
	datad => \C3|Selector0~14_combout\,
	combout => \C3|Selector0~15_combout\);

-- Location: LCCOMB_X34_Y32_N22
\C3|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal0~9_combout\ = (\C3|Equal0~8_combout\ & (\C3|Equal0~4_combout\ & !\C2|SCORE1\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Equal0~8_combout\,
	datac => \C3|Equal0~4_combout\,
	datad => \C2|SCORE1\(31),
	combout => \C3|Equal0~9_combout\);

-- Location: LCCOMB_X34_Y32_N16
\C3|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~5_combout\ = ((\C2|SCORE1\(1) & ((\C2|SCORE1\(2)))) # (!\C2|SCORE1\(1) & ((!\C2|SCORE1\(2)) # (!\C2|SCORE1\(0))))) # (!\C3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(0),
	datab => \C2|SCORE1\(1),
	datac => \C2|SCORE1\(2),
	datad => \C3|Equal0~9_combout\,
	combout => \C3|Selector0~5_combout\);

-- Location: LCCOMB_X34_Y32_N26
\C3|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Equal0~10_combout\ = (!\C2|SCORE1\(0) & (!\C2|SCORE1\(1) & (!\C2|SCORE1\(2) & \C3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(0),
	datab => \C2|SCORE1\(1),
	datac => \C2|SCORE1\(2),
	datad => \C3|Equal0~9_combout\,
	combout => \C3|Equal0~10_combout\);

-- Location: LCCOMB_X33_Y34_N14
\C3|draw~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~39_combout\ = (\C3|HPOS\(10)) # (!\C3|HPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|HPOS\(10),
	datad => \C3|HPOS\(9),
	combout => \C3|draw~39_combout\);

-- Location: LCCOMB_X32_Y34_N6
\C3|draw~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~40_combout\ = (\C3|draw~38_combout\) # ((\C3|draw~39_combout\) # ((!\C3|HPOS\(8) & !\C3|LessThan75~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~38_combout\,
	datab => \C3|HPOS\(8),
	datac => \C3|draw~39_combout\,
	datad => \C3|LessThan75~2_combout\,
	combout => \C3|draw~40_combout\);

-- Location: LCCOMB_X31_Y33_N30
\C3|draw~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~35_combout\ = (!\C3|VPOS\(3) & (\C3|VPOS\(2) & \C3|draw~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(3),
	datac => \C3|VPOS\(2),
	datad => \C3|draw~34_combout\,
	combout => \C3|draw~35_combout\);

-- Location: LCCOMB_X31_Y33_N2
\C3|draw~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~37_combout\ = (!\C3|VPOS\(4) & (\C3|LessThan41~0_combout\ & ((\C3|draw~67_combout\) # (\C3|draw~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~67_combout\,
	datab => \C3|VPOS\(4),
	datac => \C3|LessThan41~0_combout\,
	datad => \C3|draw~35_combout\,
	combout => \C3|draw~37_combout\);

-- Location: LCCOMB_X29_Y34_N30
\C3|R~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~12_combout\ = (!\C3|HPOS\(10) & ((!\C3|HPOS\(6)) # (!\C3|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(10),
	datac => \C3|HPOS\(7),
	datad => \C3|HPOS\(6),
	combout => \C3|R~12_combout\);

-- Location: LCCOMB_X30_Y34_N30
\C3|R~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~13_combout\ = (\C3|R~12_combout\) # ((\C3|HPOS\(10) & ((!\C3|LessThan12~0_combout\) # (!\C3|LessThan16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(10),
	datab => \C3|LessThan16~0_combout\,
	datac => \C3|R~12_combout\,
	datad => \C3|LessThan12~0_combout\,
	combout => \C3|R~13_combout\);

-- Location: LCCOMB_X31_Y34_N4
\C3|R~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~7_combout\ = (\C3|HPOS\(3) & (((!\C3|HPOS\(2))))) # (!\C3|HPOS\(3) & (\C3|HPOS\(2) & ((\C3|HPOS\(0)) # (\C3|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(3),
	datab => \C3|HPOS\(0),
	datac => \C3|HPOS\(1),
	datad => \C3|HPOS\(2),
	combout => \C3|R~7_combout\);

-- Location: LCCOMB_X30_Y34_N4
\C3|R~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~8_combout\ = (\C3|HPOS\(10) & (((\C3|R~7_combout\)))) # (!\C3|HPOS\(10) & (\C3|HPOS\(8) & ((!\C3|R~7_combout\) # (!\C3|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(8),
	datab => \C3|HPOS\(5),
	datac => \C3|HPOS\(10),
	datad => \C3|R~7_combout\,
	combout => \C3|R~8_combout\);

-- Location: LCCOMB_X30_Y34_N6
\C3|R~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~9_combout\ = (\C3|R~8_combout\ & (((!\C3|HPOS\(10))))) # (!\C3|R~8_combout\ & ((\C3|HPOS\(10) & ((!\C3|HPOS\(2)))) # (!\C3|HPOS\(10) & (\C3|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(4),
	datab => \C3|R~8_combout\,
	datac => \C3|HPOS\(10),
	datad => \C3|HPOS\(2),
	combout => \C3|R~9_combout\);

-- Location: LCCOMB_X30_Y34_N24
\C3|R~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~11_combout\ = (\C3|R~9_combout\) # ((!\C3|HPOS\(9) & ((\C3|R~10_combout\) # (\C3|HPOS\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|R~10_combout\,
	datab => \C3|HPOS\(9),
	datac => \C3|HPOS\(10),
	datad => \C3|R~9_combout\,
	combout => \C3|R~11_combout\);

-- Location: LCCOMB_X31_Y34_N2
\C3|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~1_combout\ = (!\C3|draw~37_combout\ & ((\C3|draw~33_combout\) # ((\C3|R~13_combout\) # (\C3|R~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~33_combout\,
	datab => \C3|draw~37_combout\,
	datac => \C3|R~13_combout\,
	datad => \C3|R~11_combout\,
	combout => \C3|Selector0~1_combout\);

-- Location: LCCOMB_X31_Y34_N12
\C3|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~2_combout\ = (\C3|Selector0~1_combout\ & ((\C3|draw~40_combout\) # ((!\C3|draw~18_combout\ & !\C3|draw~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~18_combout\,
	datab => \C3|draw~40_combout\,
	datac => \C3|draw~19_combout\,
	datad => \C3|Selector0~1_combout\,
	combout => \C3|Selector0~2_combout\);

-- Location: LCCOMB_X31_Y34_N26
\C3|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~4_combout\ = (\C3|Equal0~10_combout\ & ((!\C3|Selector0~2_combout\) # (!\C3|R~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|R~15_combout\,
	datac => \C3|Equal0~10_combout\,
	datad => \C3|Selector0~2_combout\,
	combout => \C3|Selector0~4_combout\);

-- Location: LCCOMB_X31_Y34_N8
\C3|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~6_combout\ = (\C3|Selector0~4_combout\) # ((!\C3|Selector0~5_combout\ & ((\C3|draw~32_combout\) # (!\C3|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector0~2_combout\,
	datab => \C3|draw~32_combout\,
	datac => \C3|Selector0~5_combout\,
	datad => \C3|Selector0~4_combout\,
	combout => \C3|Selector0~6_combout\);

-- Location: LCCOMB_X31_Y34_N18
\C3|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan4~0_combout\ = (!\C3|HPOS\(4) & (((!\C3|HPOS\(1) & !\C3|HPOS\(0))) # (!\C3|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(1),
	datab => \C3|HPOS\(4),
	datac => \C3|HPOS\(0),
	datad => \C3|HPOS\(2),
	combout => \C3|LessThan4~0_combout\);

-- Location: LCCOMB_X32_Y34_N0
\C3|draw~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~43_combout\ = (\C3|HPOS\(7)) # (((\C3|HPOS\(5)) # (\C3|HPOS\(6))) # (!\C3|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(7),
	datab => \C3|HPOS\(9),
	datac => \C3|HPOS\(5),
	datad => \C3|HPOS\(6),
	combout => \C3|draw~43_combout\);

-- Location: LCCOMB_X31_Y34_N30
\C3|draw~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~44_combout\ = ((\C3|LessThan4~0_combout\) # ((\C3|draw~43_combout\) # (\C3|LessThan16~0_combout\))) # (!\C3|R~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|R~14_combout\,
	datab => \C3|LessThan4~0_combout\,
	datac => \C3|draw~43_combout\,
	datad => \C3|LessThan16~0_combout\,
	combout => \C3|draw~44_combout\);

-- Location: LCCOMB_X32_Y33_N30
\C3|draw~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~33_combout\ = (!\C3|HPOS\(8) & \C3|HPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|HPOS\(8),
	datad => \C3|HPOS\(9),
	combout => \C3|draw~33_combout\);

-- Location: LCCOMB_X32_Y33_N4
\C3|draw~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~42_combout\ = (\C3|draw~41_combout\) # ((\C3|HPOS\(10)) # ((!\C3|LessThan75~2_combout\) # (!\C3|draw~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~41_combout\,
	datab => \C3|HPOS\(10),
	datac => \C3|draw~33_combout\,
	datad => \C3|LessThan75~2_combout\,
	combout => \C3|draw~42_combout\);

-- Location: LCCOMB_X31_Y34_N20
\C3|Selector0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~8_combout\ = (\C3|draw~45_combout\) # ((\C3|draw~22_combout\ & (!\C2|SCORE1\(0) & !\C3|draw~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~45_combout\,
	datab => \C3|draw~22_combout\,
	datac => \C2|SCORE1\(0),
	datad => \C3|draw~42_combout\,
	combout => \C3|Selector0~8_combout\);

-- Location: LCCOMB_X32_Y33_N6
\C3|Selector0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~12_combout\ = (\C2|SCORE1\(1) & (!\C2|SCORE1\(2))) # (!\C2|SCORE1\(1) & (\C2|SCORE1\(2) & (!\C3|draw~42_combout\ & \C3|draw~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(1),
	datab => \C2|SCORE1\(2),
	datac => \C3|draw~42_combout\,
	datad => \C3|draw~26_combout\,
	combout => \C3|Selector0~12_combout\);

-- Location: LCCOMB_X31_Y34_N14
\C3|Selector0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~13_combout\ = (\C3|Equal0~9_combout\ & (\C3|Selector0~12_combout\ & ((\C2|SCORE1\(2)) # (\C3|Selector0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Equal0~9_combout\,
	datab => \C2|SCORE1\(2),
	datac => \C3|Selector0~8_combout\,
	datad => \C3|Selector0~12_combout\,
	combout => \C3|Selector0~13_combout\);

-- Location: LCCOMB_X31_Y34_N10
\C3|Selector0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~10_combout\ = (\C3|Selector0~13_combout\) # ((!\C3|Selector0~9_combout\ & (!\C3|draw~44_combout\ & \C3|draw~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector0~9_combout\,
	datab => \C3|draw~44_combout\,
	datac => \C3|Selector0~13_combout\,
	datad => \C3|draw~22_combout\,
	combout => \C3|Selector0~10_combout\);

-- Location: LCCOMB_X31_Y34_N0
\C3|Selector0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector0~11_combout\ = (\C3|Selector0~3_combout\) # ((\C3|Selector0~15_combout\) # ((\C3|Selector0~6_combout\) # (\C3|Selector0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector0~3_combout\,
	datab => \C3|Selector0~15_combout\,
	datac => \C3|Selector0~6_combout\,
	datad => \C3|Selector0~10_combout\,
	combout => \C3|Selector0~11_combout\);

-- Location: LCCOMB_X31_Y35_N18
\C3|Selector1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Selector1~18_combout\ = (\C3|Selector1~17_combout\) # ((\C3|Selector0~11_combout\) # ((\C3|R~17_combout\ & \C3|Selector1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|R~17_combout\,
	datab => \C3|Selector1~19_combout\,
	datac => \C3|Selector1~17_combout\,
	datad => \C3|Selector0~11_combout\,
	combout => \C3|Selector1~18_combout\);

-- Location: LCCOMB_X33_Y32_N28
\C3|draw~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~46_combout\ = (!\C2|SCORE2\(31) & (!\C2|LessThan1~0_combout\ & \C2|currentS.s3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|SCORE2\(31),
	datac => \C2|LessThan1~0_combout\,
	datad => \C2|currentS.s3~regout\,
	combout => \C3|draw~46_combout\);

-- Location: LCCOMB_X33_Y32_N14
\C3|R~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~33_combout\ = (!\C2|SCORE1\(31) & (!\C2|LessThan0~1_combout\ & \C2|currentS.s3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|SCORE1\(31),
	datac => \C2|LessThan0~1_combout\,
	datad => \C2|currentS.s3~regout\,
	combout => \C3|R~33_combout\);

-- Location: LCCOMB_X32_Y32_N4
\C3|draw~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~55_combout\ = (!\C3|HPOS\(5) & (((!\C3|HPOS\(3)) # (!\C3|HPOS\(4))) # (!\C3|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(2),
	datab => \C3|HPOS\(4),
	datac => \C3|HPOS\(3),
	datad => \C3|HPOS\(5),
	combout => \C3|draw~55_combout\);

-- Location: LCCOMB_X32_Y32_N10
\C3|draw~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~53_combout\ = (\C3|HPOS\(6)) # ((\C3|HPOS\(5) & ((\C3|HPOS\(4)) # (!\C3|LessThan12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan12~1_combout\,
	datab => \C3|HPOS\(5),
	datac => \C3|HPOS\(6),
	datad => \C3|HPOS\(4),
	combout => \C3|draw~53_combout\);

-- Location: LCCOMB_X31_Y32_N28
\C3|draw~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~27_combout\ = (\C3|HPOS\(7) & (\C3|HPOS\(10) & !\C3|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(7),
	datac => \C3|HPOS\(10),
	datad => \C3|HPOS\(9),
	combout => \C3|draw~27_combout\);

-- Location: LCCOMB_X31_Y32_N0
\C3|draw~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~54_combout\ = (\C3|LessThan59~0_combout\ & (\C3|HPOS\(8) & (\C3|draw~53_combout\ & \C3|draw~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan59~0_combout\,
	datab => \C3|HPOS\(8),
	datac => \C3|draw~53_combout\,
	datad => \C3|draw~27_combout\,
	combout => \C3|draw~54_combout\);

-- Location: LCCOMB_X30_Y33_N22
\C3|draw~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~50_combout\ = (\C3|VPOS\(2) & (((!\C3|VPOS\(3))))) # (!\C3|VPOS\(2) & ((\C3|VPOS\(3)) # ((\C3|VPOS\(0) & \C3|VPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(2),
	datab => \C3|VPOS\(0),
	datac => \C3|VPOS\(1),
	datad => \C3|VPOS\(3),
	combout => \C3|draw~50_combout\);

-- Location: LCCOMB_X30_Y33_N12
\C3|LessThan46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan46~0_combout\ = (!\C3|VPOS\(6) & (!\C3|VPOS\(7) & (!\C3|VPOS\(8) & !\C3|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(6),
	datab => \C3|VPOS\(7),
	datac => \C3|VPOS\(8),
	datad => \C3|VPOS\(5),
	combout => \C3|LessThan46~0_combout\);

-- Location: LCCOMB_X30_Y33_N16
\C3|draw~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~51_combout\ = (\C3|VPOS\(9) & (\C3|draw~50_combout\ & (\C3|VPOS\(4) & \C3|LessThan46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(9),
	datab => \C3|draw~50_combout\,
	datac => \C3|VPOS\(4),
	datad => \C3|LessThan46~0_combout\,
	combout => \C3|draw~51_combout\);

-- Location: LCCOMB_X31_Y32_N24
\C3|draw~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~48_combout\ = (\C3|HPOS\(4) & ((\C3|draw~47_combout\) # (\C3|HPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~47_combout\,
	datac => \C3|HPOS\(4),
	datad => \C3|HPOS\(3),
	combout => \C3|draw~48_combout\);

-- Location: LCCOMB_X31_Y32_N26
\C3|draw~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~68_combout\ = \C3|HPOS\(6) $ (((!\C3|HPOS\(5) & !\C3|draw~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|HPOS\(5),
	datac => \C3|draw~48_combout\,
	datad => \C3|HPOS\(6),
	combout => \C3|draw~68_combout\);

-- Location: LCCOMB_X31_Y32_N22
\C3|draw~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~49_combout\ = (\C3|draw~68_combout\) # ((!\C3|draw~27_combout\) # (!\C3|HPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|draw~68_combout\,
	datac => \C3|HPOS\(8),
	datad => \C3|draw~27_combout\,
	combout => \C3|draw~49_combout\);

-- Location: LCCOMB_X31_Y32_N2
\C3|R~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~18_combout\ = (\C3|draw~52_combout\ & (!\C3|draw~54_combout\ & ((\C3|draw~49_combout\) # (!\C3|draw~51_combout\)))) # (!\C3|draw~52_combout\ & (((\C3|draw~49_combout\) # (!\C3|draw~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~52_combout\,
	datab => \C3|draw~54_combout\,
	datac => \C3|draw~51_combout\,
	datad => \C3|draw~49_combout\,
	combout => \C3|R~18_combout\);

-- Location: LCCOMB_X32_Y32_N30
\C3|R~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~19_combout\ = (\C3|R~18_combout\ & (((!\C3|draw~55_combout\ & \C3|HPOS\(6))) # (!\C3|draw~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~57_combout\,
	datab => \C3|draw~55_combout\,
	datac => \C3|HPOS\(6),
	datad => \C3|R~18_combout\,
	combout => \C3|R~19_combout\);

-- Location: LCCOMB_X32_Y32_N28
\C3|R~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~20_combout\ = (\C3|R~19_combout\ & (\C3|draw~46_combout\ & ((\C3|draw~49_combout\) # (!\C3|draw~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~58_combout\,
	datab => \C3|R~19_combout\,
	datac => \C3|draw~49_combout\,
	datad => \C3|draw~46_combout\,
	combout => \C3|R~20_combout\);

-- Location: LCCOMB_X32_Y32_N8
\C3|R~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~34_combout\ = (\C3|draw~46_combout\ & (\C3|R~20_combout\ & ((!\C3|R~33_combout\) # (!\C3|R~32_combout\)))) # (!\C3|draw~46_combout\ & (((\C3|R~20_combout\) # (!\C3|R~33_combout\)) # (!\C3|R~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|R~32_combout\,
	datab => \C3|draw~46_combout\,
	datac => \C3|R~33_combout\,
	datad => \C3|R~20_combout\,
	combout => \C3|R~34_combout\);

-- Location: LCCOMB_X33_Y34_N26
\C3|draw~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~63_combout\ = (\C3|HPOS\(8) & (!\C3|HPOS\(9) & (!\C3|HPOS\(10) & !\C3|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(8),
	datab => \C3|HPOS\(9),
	datac => \C3|HPOS\(10),
	datad => \C3|HPOS\(7),
	combout => \C3|draw~63_combout\);

-- Location: LCCOMB_X37_Y30_N2
\C3|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~0_combout\ = \C3|Add1~0_combout\ $ (VCC)
-- \C3|Add2~1\ = CARRY(\C3|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~0_combout\,
	datad => VCC,
	combout => \C3|Add2~0_combout\,
	cout => \C3|Add2~1\);

-- Location: LCCOMB_X37_Y30_N6
\C3|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~4_combout\ = (\C3|Add1~4_combout\ & (\C3|Add2~3\ $ (GND))) # (!\C3|Add1~4_combout\ & (!\C3|Add2~3\ & VCC))
-- \C3|Add2~5\ = CARRY((\C3|Add1~4_combout\ & !\C3|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~4_combout\,
	datad => VCC,
	cin => \C3|Add2~3\,
	combout => \C3|Add2~4_combout\,
	cout => \C3|Add2~5\);

-- Location: LCCOMB_X37_Y30_N8
\C3|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~6_combout\ = (\C3|Add1~6_combout\ & (\C3|Add2~5\ & VCC)) # (!\C3|Add1~6_combout\ & (!\C3|Add2~5\))
-- \C3|Add2~7\ = CARRY((!\C3|Add1~6_combout\ & !\C3|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~6_combout\,
	datad => VCC,
	cin => \C3|Add2~5\,
	combout => \C3|Add2~6_combout\,
	cout => \C3|Add2~7\);

-- Location: LCCOMB_X37_Y30_N10
\C3|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~8_combout\ = (\C3|Add1~8_combout\ & ((GND) # (!\C3|Add2~7\))) # (!\C3|Add1~8_combout\ & (\C3|Add2~7\ $ (GND)))
-- \C3|Add2~9\ = CARRY((\C3|Add1~8_combout\) # (!\C3|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~8_combout\,
	datad => VCC,
	cin => \C3|Add2~7\,
	combout => \C3|Add2~8_combout\,
	cout => \C3|Add2~9\);

-- Location: LCCOMB_X37_Y30_N12
\C3|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~10_combout\ = (\C3|Add1~10_combout\ & (!\C3|Add2~9\)) # (!\C3|Add1~10_combout\ & ((\C3|Add2~9\) # (GND)))
-- \C3|Add2~11\ = CARRY((!\C3|Add2~9\) # (!\C3|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~10_combout\,
	datad => VCC,
	cin => \C3|Add2~9\,
	combout => \C3|Add2~10_combout\,
	cout => \C3|Add2~11\);

-- Location: LCCOMB_X37_Y30_N14
\C3|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~12_combout\ = (\C3|Add1~12_combout\ & (\C3|Add2~11\ $ (GND))) # (!\C3|Add1~12_combout\ & (!\C3|Add2~11\ & VCC))
-- \C3|Add2~13\ = CARRY((\C3|Add1~12_combout\ & !\C3|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~12_combout\,
	datad => VCC,
	cin => \C3|Add2~11\,
	combout => \C3|Add2~12_combout\,
	cout => \C3|Add2~13\);

-- Location: LCCOMB_X37_Y30_N16
\C3|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~14_combout\ = (\C3|Add1~14_combout\ & (!\C3|Add2~13\)) # (!\C3|Add1~14_combout\ & ((\C3|Add2~13\) # (GND)))
-- \C3|Add2~15\ = CARRY((!\C3|Add2~13\) # (!\C3|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~14_combout\,
	datad => VCC,
	cin => \C3|Add2~13\,
	combout => \C3|Add2~14_combout\,
	cout => \C3|Add2~15\);

-- Location: LCCOMB_X37_Y30_N18
\C3|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~16_combout\ = (\C3|Add1~16_combout\ & (\C3|Add2~15\ $ (GND))) # (!\C3|Add1~16_combout\ & (!\C3|Add2~15\ & VCC))
-- \C3|Add2~17\ = CARRY((\C3|Add1~16_combout\ & !\C3|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~16_combout\,
	datad => VCC,
	cin => \C3|Add2~15\,
	combout => \C3|Add2~16_combout\,
	cout => \C3|Add2~17\);

-- Location: LCCOMB_X37_Y30_N22
\C3|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~20_combout\ = (\C3|Add1~20_combout\ & (\C3|Add2~19\ $ (GND))) # (!\C3|Add1~20_combout\ & (!\C3|Add2~19\ & VCC))
-- \C3|Add2~21\ = CARRY((\C3|Add1~20_combout\ & !\C3|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~20_combout\,
	datad => VCC,
	cin => \C3|Add2~19\,
	combout => \C3|Add2~20_combout\,
	cout => \C3|Add2~21\);

-- Location: LCCOMB_X37_Y30_N26
\C3|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~24_combout\ = (\C3|Add1~24_combout\ & (\C3|Add2~23\ $ (GND))) # (!\C3|Add1~24_combout\ & (!\C3|Add2~23\ & VCC))
-- \C3|Add2~25\ = CARRY((\C3|Add1~24_combout\ & !\C3|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~24_combout\,
	datad => VCC,
	cin => \C3|Add2~23\,
	combout => \C3|Add2~24_combout\,
	cout => \C3|Add2~25\);

-- Location: LCCOMB_X37_Y30_N28
\C3|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~26_combout\ = (\C3|Add1~26_combout\ & (!\C3|Add2~25\)) # (!\C3|Add1~26_combout\ & ((\C3|Add2~25\) # (GND)))
-- \C3|Add2~27\ = CARRY((!\C3|Add2~25\) # (!\C3|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~26_combout\,
	datad => VCC,
	cin => \C3|Add2~25\,
	combout => \C3|Add2~26_combout\,
	cout => \C3|Add2~27\);

-- Location: LCCOMB_X37_Y30_N30
\C3|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~28_combout\ = (\C3|Add1~28_combout\ & (\C3|Add2~27\ $ (GND))) # (!\C3|Add1~28_combout\ & (!\C3|Add2~27\ & VCC))
-- \C3|Add2~29\ = CARRY((\C3|Add1~28_combout\ & !\C3|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~28_combout\,
	datad => VCC,
	cin => \C3|Add2~27\,
	combout => \C3|Add2~28_combout\,
	cout => \C3|Add2~29\);

-- Location: LCCOMB_X37_Y29_N8
\C3|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~38_combout\ = (\C3|Add1~38_combout\ & (!\C3|Add2~37\)) # (!\C3|Add1~38_combout\ & ((\C3|Add2~37\) # (GND)))
-- \C3|Add2~39\ = CARRY((!\C3|Add2~37\) # (!\C3|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~38_combout\,
	datad => VCC,
	cin => \C3|Add2~37\,
	combout => \C3|Add2~38_combout\,
	cout => \C3|Add2~39\);

-- Location: LCCOMB_X37_Y29_N12
\C3|Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~42_combout\ = (\C3|Add1~42_combout\ & (!\C3|Add2~41\)) # (!\C3|Add1~42_combout\ & ((\C3|Add2~41\) # (GND)))
-- \C3|Add2~43\ = CARRY((!\C3|Add2~41\) # (!\C3|Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~42_combout\,
	datad => VCC,
	cin => \C3|Add2~41\,
	combout => \C3|Add2~42_combout\,
	cout => \C3|Add2~43\);

-- Location: LCCOMB_X37_Y29_N14
\C3|Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~44_combout\ = (\C3|Add1~44_combout\ & (\C3|Add2~43\ $ (GND))) # (!\C3|Add1~44_combout\ & (!\C3|Add2~43\ & VCC))
-- \C3|Add2~45\ = CARRY((\C3|Add1~44_combout\ & !\C3|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~44_combout\,
	datad => VCC,
	cin => \C3|Add2~43\,
	combout => \C3|Add2~44_combout\,
	cout => \C3|Add2~45\);

-- Location: LCCOMB_X37_Y29_N16
\C3|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~46_combout\ = (\C3|Add1~46_combout\ & (!\C3|Add2~45\)) # (!\C3|Add1~46_combout\ & ((\C3|Add2~45\) # (GND)))
-- \C3|Add2~47\ = CARRY((!\C3|Add2~45\) # (!\C3|Add1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~46_combout\,
	datad => VCC,
	cin => \C3|Add2~45\,
	combout => \C3|Add2~46_combout\,
	cout => \C3|Add2~47\);

-- Location: LCCOMB_X37_Y29_N18
\C3|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~48_combout\ = (\C3|Add1~48_combout\ & (\C3|Add2~47\ $ (GND))) # (!\C3|Add1~48_combout\ & (!\C3|Add2~47\ & VCC))
-- \C3|Add2~49\ = CARRY((\C3|Add1~48_combout\ & !\C3|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~48_combout\,
	datad => VCC,
	cin => \C3|Add2~47\,
	combout => \C3|Add2~48_combout\,
	cout => \C3|Add2~49\);

-- Location: LCCOMB_X37_Y29_N22
\C3|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~52_combout\ = (\C3|Add1~52_combout\ & (\C3|Add2~51\ $ (GND))) # (!\C3|Add1~52_combout\ & (!\C3|Add2~51\ & VCC))
-- \C3|Add2~53\ = CARRY((\C3|Add1~52_combout\ & !\C3|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~52_combout\,
	datad => VCC,
	cin => \C3|Add2~51\,
	combout => \C3|Add2~52_combout\,
	cout => \C3|Add2~53\);

-- Location: LCCOMB_X37_Y29_N26
\C3|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~56_combout\ = (\C3|Add1~56_combout\ & (\C3|Add2~55\ $ (GND))) # (!\C3|Add1~56_combout\ & (!\C3|Add2~55\ & VCC))
-- \C3|Add2~57\ = CARRY((\C3|Add1~56_combout\ & !\C3|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add1~56_combout\,
	datad => VCC,
	cin => \C3|Add2~55\,
	combout => \C3|Add2~56_combout\,
	cout => \C3|Add2~57\);

-- Location: LCCOMB_X37_Y29_N28
\C3|Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add2~58_combout\ = \C3|Add2~57\ $ (\C3|Add1~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C3|Add1~58_combout\,
	cin => \C3|Add2~57\,
	combout => \C3|Add2~58_combout\);

-- Location: LCCOMB_X32_Y35_N14
\C3|draw~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~64_combout\ = (\C3|draw~63_combout\ & (!\C3|Add2~58_combout\ & ((\C3|LessThan16~0_combout\) # (!\C3|LessThan65~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan65~0_combout\,
	datab => \C3|draw~63_combout\,
	datac => \C3|LessThan16~0_combout\,
	datad => \C3|Add2~58_combout\,
	combout => \C3|draw~64_combout\);

-- Location: LCCOMB_X38_Y29_N4
\C3|LessThan63~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~25_combout\ = (\C3|Add2~50_combout\) # ((\C3|Add2~46_combout\) # ((\C3|Add2~48_combout\) # (\C3|Add2~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add2~50_combout\,
	datab => \C3|Add2~46_combout\,
	datac => \C3|Add2~48_combout\,
	datad => \C3|Add2~52_combout\,
	combout => \C3|LessThan63~25_combout\);

-- Location: LCCOMB_X37_Y30_N0
\C3|LessThan63~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~21_combout\ = (\C3|Add2~22_combout\) # ((\C3|Add2~24_combout\) # ((\C3|Add2~28_combout\) # (\C3|Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add2~22_combout\,
	datab => \C3|Add2~24_combout\,
	datac => \C3|Add2~28_combout\,
	datad => \C3|Add2~26_combout\,
	combout => \C3|LessThan63~21_combout\);

-- Location: LCCOMB_X36_Y35_N12
\C3|LessThan63~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~1_cout\ = CARRY((!\C3|VPOS\(0) & !\C2|P1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(0),
	datab => \C2|P1\(0),
	datad => VCC,
	cout => \C3|LessThan63~1_cout\);

-- Location: LCCOMB_X36_Y35_N14
\C3|LessThan63~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~3_cout\ = CARRY((\C2|P1\(1) & ((\C3|VPOS\(1)) # (!\C3|LessThan63~1_cout\))) # (!\C2|P1\(1) & (\C3|VPOS\(1) & !\C3|LessThan63~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P1\(1),
	datab => \C3|VPOS\(1),
	datad => VCC,
	cin => \C3|LessThan63~1_cout\,
	cout => \C3|LessThan63~3_cout\);

-- Location: LCCOMB_X36_Y35_N16
\C3|LessThan63~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~5_cout\ = CARRY((\C3|VPOS\(2) & (\C3|Add2~0_combout\ & !\C3|LessThan63~3_cout\)) # (!\C3|VPOS\(2) & ((\C3|Add2~0_combout\) # (!\C3|LessThan63~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(2),
	datab => \C3|Add2~0_combout\,
	datad => VCC,
	cin => \C3|LessThan63~3_cout\,
	cout => \C3|LessThan63~5_cout\);

-- Location: LCCOMB_X36_Y35_N18
\C3|LessThan63~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~7_cout\ = CARRY((\C3|Add2~2_combout\ & (\C3|VPOS\(3) & !\C3|LessThan63~5_cout\)) # (!\C3|Add2~2_combout\ & ((\C3|VPOS\(3)) # (!\C3|LessThan63~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add2~2_combout\,
	datab => \C3|VPOS\(3),
	datad => VCC,
	cin => \C3|LessThan63~5_cout\,
	cout => \C3|LessThan63~7_cout\);

-- Location: LCCOMB_X36_Y35_N20
\C3|LessThan63~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~9_cout\ = CARRY((\C3|VPOS\(4) & (\C3|Add2~4_combout\ & !\C3|LessThan63~7_cout\)) # (!\C3|VPOS\(4) & ((\C3|Add2~4_combout\) # (!\C3|LessThan63~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(4),
	datab => \C3|Add2~4_combout\,
	datad => VCC,
	cin => \C3|LessThan63~7_cout\,
	cout => \C3|LessThan63~9_cout\);

-- Location: LCCOMB_X36_Y35_N22
\C3|LessThan63~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~11_cout\ = CARRY((\C3|VPOS\(5) & ((!\C3|LessThan63~9_cout\) # (!\C3|Add2~6_combout\))) # (!\C3|VPOS\(5) & (!\C3|Add2~6_combout\ & !\C3|LessThan63~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(5),
	datab => \C3|Add2~6_combout\,
	datad => VCC,
	cin => \C3|LessThan63~9_cout\,
	cout => \C3|LessThan63~11_cout\);

-- Location: LCCOMB_X36_Y35_N24
\C3|LessThan63~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~13_cout\ = CARRY((\C3|VPOS\(6) & (\C3|Add2~8_combout\ & !\C3|LessThan63~11_cout\)) # (!\C3|VPOS\(6) & ((\C3|Add2~8_combout\) # (!\C3|LessThan63~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(6),
	datab => \C3|Add2~8_combout\,
	datad => VCC,
	cin => \C3|LessThan63~11_cout\,
	cout => \C3|LessThan63~13_cout\);

-- Location: LCCOMB_X36_Y35_N26
\C3|LessThan63~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~15_cout\ = CARRY((\C3|VPOS\(7) & ((!\C3|LessThan63~13_cout\) # (!\C3|Add2~10_combout\))) # (!\C3|VPOS\(7) & (!\C3|Add2~10_combout\ & !\C3|LessThan63~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(7),
	datab => \C3|Add2~10_combout\,
	datad => VCC,
	cin => \C3|LessThan63~13_cout\,
	cout => \C3|LessThan63~15_cout\);

-- Location: LCCOMB_X36_Y35_N28
\C3|LessThan63~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~17_cout\ = CARRY((\C3|VPOS\(8) & (\C3|Add2~12_combout\ & !\C3|LessThan63~15_cout\)) # (!\C3|VPOS\(8) & ((\C3|Add2~12_combout\) # (!\C3|LessThan63~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(8),
	datab => \C3|Add2~12_combout\,
	datad => VCC,
	cin => \C3|LessThan63~15_cout\,
	cout => \C3|LessThan63~17_cout\);

-- Location: LCCOMB_X36_Y35_N30
\C3|LessThan63~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~18_combout\ = (\C3|VPOS\(9) & (\C3|LessThan63~17_cout\ & \C3|Add2~14_combout\)) # (!\C3|VPOS\(9) & ((\C3|LessThan63~17_cout\) # (\C3|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(9),
	datad => \C3|Add2~14_combout\,
	cin => \C3|LessThan63~17_cout\,
	combout => \C3|LessThan63~18_combout\);

-- Location: LCCOMB_X36_Y35_N8
\C3|LessThan63~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~20_combout\ = (\C3|Add2~18_combout\) # ((\C3|Add2~20_combout\) # ((\C3|Add2~16_combout\) # (\C3|LessThan63~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add2~18_combout\,
	datab => \C3|Add2~20_combout\,
	datac => \C3|Add2~16_combout\,
	datad => \C3|LessThan63~18_combout\,
	combout => \C3|LessThan63~20_combout\);

-- Location: LCCOMB_X37_Y29_N30
\C3|LessThan63~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~23_combout\ = (\C3|Add2~40_combout\) # ((\C3|Add2~38_combout\) # ((\C3|Add2~44_combout\) # (\C3|Add2~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add2~40_combout\,
	datab => \C3|Add2~38_combout\,
	datac => \C3|Add2~44_combout\,
	datad => \C3|Add2~42_combout\,
	combout => \C3|LessThan63~23_combout\);

-- Location: LCCOMB_X36_Y35_N4
\C3|LessThan63~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~24_combout\ = (\C3|LessThan63~22_combout\) # ((\C3|LessThan63~21_combout\) # ((\C3|LessThan63~20_combout\) # (\C3|LessThan63~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan63~22_combout\,
	datab => \C3|LessThan63~21_combout\,
	datac => \C3|LessThan63~20_combout\,
	datad => \C3|LessThan63~23_combout\,
	combout => \C3|LessThan63~24_combout\);

-- Location: LCCOMB_X31_Y35_N20
\C3|LessThan63~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan63~26_combout\ = (\C3|Add2~54_combout\) # ((\C3|Add2~56_combout\) # ((\C3|LessThan63~25_combout\) # (\C3|LessThan63~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add2~54_combout\,
	datab => \C3|Add2~56_combout\,
	datac => \C3|LessThan63~25_combout\,
	datad => \C3|LessThan63~24_combout\,
	combout => \C3|LessThan63~26_combout\);

-- Location: LCCOMB_X30_Y34_N18
\C3|LessThan64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan64~0_combout\ = ((!\C3|HPOS\(2) & (!\C3|HPOS\(4) & !\C3|HPOS\(3)))) # (!\C3|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(2),
	datab => \C3|HPOS\(5),
	datac => \C3|HPOS\(4),
	datad => \C3|HPOS\(3),
	combout => \C3|LessThan64~0_combout\);

-- Location: LCCOMB_X29_Y34_N20
\C3|LessThan64~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan64~1_combout\ = ((\C3|LessThan64~0_combout\ & !\C3|HPOS\(6))) # (!\C3|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(7),
	datab => \C3|LessThan64~0_combout\,
	datad => \C3|HPOS\(6),
	combout => \C3|LessThan64~1_combout\);

-- Location: LCCOMB_X29_Y27_N6
\C3|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~4_combout\ = (\C3|Add4~4_combout\ & (\C3|Add5~3\ $ (GND))) # (!\C3|Add4~4_combout\ & (!\C3|Add5~3\ & VCC))
-- \C3|Add5~5\ = CARRY((\C3|Add4~4_combout\ & !\C3|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~4_combout\,
	datad => VCC,
	cin => \C3|Add5~3\,
	combout => \C3|Add5~4_combout\,
	cout => \C3|Add5~5\);

-- Location: LCCOMB_X29_Y27_N8
\C3|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~6_combout\ = (\C3|Add4~6_combout\ & (\C3|Add5~5\ & VCC)) # (!\C3|Add4~6_combout\ & (!\C3|Add5~5\))
-- \C3|Add5~7\ = CARRY((!\C3|Add4~6_combout\ & !\C3|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~6_combout\,
	datad => VCC,
	cin => \C3|Add5~5\,
	combout => \C3|Add5~6_combout\,
	cout => \C3|Add5~7\);

-- Location: LCCOMB_X29_Y27_N10
\C3|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~8_combout\ = (\C3|Add4~8_combout\ & ((GND) # (!\C3|Add5~7\))) # (!\C3|Add4~8_combout\ & (\C3|Add5~7\ $ (GND)))
-- \C3|Add5~9\ = CARRY((\C3|Add4~8_combout\) # (!\C3|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~8_combout\,
	datad => VCC,
	cin => \C3|Add5~7\,
	combout => \C3|Add5~8_combout\,
	cout => \C3|Add5~9\);

-- Location: LCCOMB_X29_Y27_N12
\C3|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~10_combout\ = (\C3|Add4~10_combout\ & (!\C3|Add5~9\)) # (!\C3|Add4~10_combout\ & ((\C3|Add5~9\) # (GND)))
-- \C3|Add5~11\ = CARRY((!\C3|Add5~9\) # (!\C3|Add4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~10_combout\,
	datad => VCC,
	cin => \C3|Add5~9\,
	combout => \C3|Add5~10_combout\,
	cout => \C3|Add5~11\);

-- Location: LCCOMB_X29_Y27_N16
\C3|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~14_combout\ = (\C3|Add4~14_combout\ & (!\C3|Add5~13\)) # (!\C3|Add4~14_combout\ & ((\C3|Add5~13\) # (GND)))
-- \C3|Add5~15\ = CARRY((!\C3|Add5~13\) # (!\C3|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~14_combout\,
	datad => VCC,
	cin => \C3|Add5~13\,
	combout => \C3|Add5~14_combout\,
	cout => \C3|Add5~15\);

-- Location: LCCOMB_X29_Y27_N18
\C3|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~16_combout\ = (\C3|Add4~16_combout\ & (\C3|Add5~15\ $ (GND))) # (!\C3|Add4~16_combout\ & (!\C3|Add5~15\ & VCC))
-- \C3|Add5~17\ = CARRY((\C3|Add4~16_combout\ & !\C3|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~16_combout\,
	datad => VCC,
	cin => \C3|Add5~15\,
	combout => \C3|Add5~16_combout\,
	cout => \C3|Add5~17\);

-- Location: LCCOMB_X29_Y27_N22
\C3|Add5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~20_combout\ = (\C3|Add4~20_combout\ & (\C3|Add5~19\ $ (GND))) # (!\C3|Add4~20_combout\ & (!\C3|Add5~19\ & VCC))
-- \C3|Add5~21\ = CARRY((\C3|Add4~20_combout\ & !\C3|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~20_combout\,
	datad => VCC,
	cin => \C3|Add5~19\,
	combout => \C3|Add5~20_combout\,
	cout => \C3|Add5~21\);

-- Location: LCCOMB_X29_Y26_N2
\C3|Add5~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~32_combout\ = (\C3|Add4~32_combout\ & (\C3|Add5~31\ $ (GND))) # (!\C3|Add4~32_combout\ & (!\C3|Add5~31\ & VCC))
-- \C3|Add5~33\ = CARRY((\C3|Add4~32_combout\ & !\C3|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~32_combout\,
	datad => VCC,
	cin => \C3|Add5~31\,
	combout => \C3|Add5~32_combout\,
	cout => \C3|Add5~33\);

-- Location: LCCOMB_X29_Y26_N4
\C3|Add5~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~34_combout\ = (\C3|Add4~34_combout\ & (!\C3|Add5~33\)) # (!\C3|Add4~34_combout\ & ((\C3|Add5~33\) # (GND)))
-- \C3|Add5~35\ = CARRY((!\C3|Add5~33\) # (!\C3|Add4~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~34_combout\,
	datad => VCC,
	cin => \C3|Add5~33\,
	combout => \C3|Add5~34_combout\,
	cout => \C3|Add5~35\);

-- Location: LCCOMB_X29_Y26_N6
\C3|Add5~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~36_combout\ = (\C3|Add4~36_combout\ & (\C3|Add5~35\ $ (GND))) # (!\C3|Add4~36_combout\ & (!\C3|Add5~35\ & VCC))
-- \C3|Add5~37\ = CARRY((\C3|Add4~36_combout\ & !\C3|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~36_combout\,
	datad => VCC,
	cin => \C3|Add5~35\,
	combout => \C3|Add5~36_combout\,
	cout => \C3|Add5~37\);

-- Location: LCCOMB_X29_Y26_N8
\C3|Add5~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~38_combout\ = (\C3|Add4~38_combout\ & (!\C3|Add5~37\)) # (!\C3|Add4~38_combout\ & ((\C3|Add5~37\) # (GND)))
-- \C3|Add5~39\ = CARRY((!\C3|Add5~37\) # (!\C3|Add4~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~38_combout\,
	datad => VCC,
	cin => \C3|Add5~37\,
	combout => \C3|Add5~38_combout\,
	cout => \C3|Add5~39\);

-- Location: LCCOMB_X29_Y26_N12
\C3|Add5~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~42_combout\ = (\C3|Add4~42_combout\ & (!\C3|Add5~41\)) # (!\C3|Add4~42_combout\ & ((\C3|Add5~41\) # (GND)))
-- \C3|Add5~43\ = CARRY((!\C3|Add5~41\) # (!\C3|Add4~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~42_combout\,
	datad => VCC,
	cin => \C3|Add5~41\,
	combout => \C3|Add5~42_combout\,
	cout => \C3|Add5~43\);

-- Location: LCCOMB_X29_Y26_N14
\C3|Add5~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~44_combout\ = (\C3|Add4~44_combout\ & (\C3|Add5~43\ $ (GND))) # (!\C3|Add4~44_combout\ & (!\C3|Add5~43\ & VCC))
-- \C3|Add5~45\ = CARRY((\C3|Add4~44_combout\ & !\C3|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~44_combout\,
	datad => VCC,
	cin => \C3|Add5~43\,
	combout => \C3|Add5~44_combout\,
	cout => \C3|Add5~45\);

-- Location: LCCOMB_X29_Y26_N18
\C3|Add5~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~48_combout\ = (\C3|Add4~48_combout\ & (\C3|Add5~47\ $ (GND))) # (!\C3|Add4~48_combout\ & (!\C3|Add5~47\ & VCC))
-- \C3|Add5~49\ = CARRY((\C3|Add4~48_combout\ & !\C3|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~48_combout\,
	datad => VCC,
	cin => \C3|Add5~47\,
	combout => \C3|Add5~48_combout\,
	cout => \C3|Add5~49\);

-- Location: LCCOMB_X29_Y26_N20
\C3|Add5~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~50_combout\ = (\C3|Add4~50_combout\ & (!\C3|Add5~49\)) # (!\C3|Add4~50_combout\ & ((\C3|Add5~49\) # (GND)))
-- \C3|Add5~51\ = CARRY((!\C3|Add5~49\) # (!\C3|Add4~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add4~50_combout\,
	datad => VCC,
	cin => \C3|Add5~49\,
	combout => \C3|Add5~50_combout\,
	cout => \C3|Add5~51\);

-- Location: LCCOMB_X29_Y26_N22
\C3|Add5~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~52_combout\ = (\C3|Add4~52_combout\ & (\C3|Add5~51\ $ (GND))) # (!\C3|Add4~52_combout\ & (!\C3|Add5~51\ & VCC))
-- \C3|Add5~53\ = CARRY((\C3|Add4~52_combout\ & !\C3|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~52_combout\,
	datad => VCC,
	cin => \C3|Add5~51\,
	combout => \C3|Add5~52_combout\,
	cout => \C3|Add5~53\);

-- Location: LCCOMB_X29_Y26_N24
\C3|Add5~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~54_combout\ = (\C3|Add4~54_combout\ & (!\C3|Add5~53\)) # (!\C3|Add4~54_combout\ & ((\C3|Add5~53\) # (GND)))
-- \C3|Add5~55\ = CARRY((!\C3|Add5~53\) # (!\C3|Add4~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~54_combout\,
	datad => VCC,
	cin => \C3|Add5~53\,
	combout => \C3|Add5~54_combout\,
	cout => \C3|Add5~55\);

-- Location: LCCOMB_X29_Y26_N26
\C3|Add5~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~56_combout\ = (\C3|Add4~56_combout\ & (\C3|Add5~55\ $ (GND))) # (!\C3|Add4~56_combout\ & (!\C3|Add5~55\ & VCC))
-- \C3|Add5~57\ = CARRY((\C3|Add4~56_combout\ & !\C3|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add4~56_combout\,
	datad => VCC,
	cin => \C3|Add5~55\,
	combout => \C3|Add5~56_combout\,
	cout => \C3|Add5~57\);

-- Location: LCCOMB_X29_Y26_N28
\C3|Add5~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Add5~58_combout\ = \C3|Add5~57\ $ (\C3|Add4~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C3|Add4~58_combout\,
	cin => \C3|Add5~57\,
	combout => \C3|Add5~58_combout\);

-- Location: LCCOMB_X30_Y34_N0
\C3|draw~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~60_combout\ = (\C3|HPOS\(10) & (\C3|draw~33_combout\ & (\C3|LessThan64~1_combout\ & !\C3|Add5~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|HPOS\(10),
	datab => \C3|draw~33_combout\,
	datac => \C3|LessThan64~1_combout\,
	datad => \C3|Add5~58_combout\,
	combout => \C3|draw~60_combout\);

-- Location: LCCOMB_X29_Y26_N30
\C3|LessThan67~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~25_combout\ = (\C3|Add5~46_combout\) # ((\C3|Add5~48_combout\) # ((\C3|Add5~50_combout\) # (\C3|Add5~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add5~46_combout\,
	datab => \C3|Add5~48_combout\,
	datac => \C3|Add5~50_combout\,
	datad => \C3|Add5~52_combout\,
	combout => \C3|LessThan67~25_combout\);

-- Location: LCCOMB_X30_Y30_N22
\C3|LessThan67~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~26_combout\ = (\C3|Add5~54_combout\) # ((\C3|LessThan67~25_combout\) # (\C3|Add5~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|Add5~54_combout\,
	datac => \C3|LessThan67~25_combout\,
	datad => \C3|Add5~56_combout\,
	combout => \C3|LessThan67~26_combout\);

-- Location: LCCOMB_X30_Y26_N16
\C3|LessThan67~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~22_combout\ = (\C3|Add5~30_combout\) # ((\C3|Add5~34_combout\) # ((\C3|Add5~36_combout\) # (\C3|Add5~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add5~30_combout\,
	datab => \C3|Add5~34_combout\,
	datac => \C3|Add5~36_combout\,
	datad => \C3|Add5~32_combout\,
	combout => \C3|LessThan67~22_combout\);

-- Location: LCCOMB_X30_Y31_N8
\C3|LessThan67~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~1_cout\ = CARRY((!\C3|VPOS\(0) & !\C2|P2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(0),
	datab => \C2|P2\(0),
	datad => VCC,
	cout => \C3|LessThan67~1_cout\);

-- Location: LCCOMB_X30_Y31_N10
\C3|LessThan67~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~3_cout\ = CARRY((\C2|P2\(1) & ((\C3|VPOS\(1)) # (!\C3|LessThan67~1_cout\))) # (!\C2|P2\(1) & (\C3|VPOS\(1) & !\C3|LessThan67~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|P2\(1),
	datab => \C3|VPOS\(1),
	datad => VCC,
	cin => \C3|LessThan67~1_cout\,
	cout => \C3|LessThan67~3_cout\);

-- Location: LCCOMB_X30_Y31_N12
\C3|LessThan67~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~5_cout\ = CARRY((\C3|Add5~0_combout\ & ((!\C3|LessThan67~3_cout\) # (!\C3|VPOS\(2)))) # (!\C3|Add5~0_combout\ & (!\C3|VPOS\(2) & !\C3|LessThan67~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add5~0_combout\,
	datab => \C3|VPOS\(2),
	datad => VCC,
	cin => \C3|LessThan67~3_cout\,
	cout => \C3|LessThan67~5_cout\);

-- Location: LCCOMB_X30_Y31_N14
\C3|LessThan67~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~7_cout\ = CARRY((\C3|Add5~2_combout\ & (\C3|VPOS\(3) & !\C3|LessThan67~5_cout\)) # (!\C3|Add5~2_combout\ & ((\C3|VPOS\(3)) # (!\C3|LessThan67~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add5~2_combout\,
	datab => \C3|VPOS\(3),
	datad => VCC,
	cin => \C3|LessThan67~5_cout\,
	cout => \C3|LessThan67~7_cout\);

-- Location: LCCOMB_X30_Y31_N16
\C3|LessThan67~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~9_cout\ = CARRY((\C3|VPOS\(4) & (\C3|Add5~4_combout\ & !\C3|LessThan67~7_cout\)) # (!\C3|VPOS\(4) & ((\C3|Add5~4_combout\) # (!\C3|LessThan67~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(4),
	datab => \C3|Add5~4_combout\,
	datad => VCC,
	cin => \C3|LessThan67~7_cout\,
	cout => \C3|LessThan67~9_cout\);

-- Location: LCCOMB_X30_Y31_N18
\C3|LessThan67~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~11_cout\ = CARRY((\C3|VPOS\(5) & ((!\C3|LessThan67~9_cout\) # (!\C3|Add5~6_combout\))) # (!\C3|VPOS\(5) & (!\C3|Add5~6_combout\ & !\C3|LessThan67~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(5),
	datab => \C3|Add5~6_combout\,
	datad => VCC,
	cin => \C3|LessThan67~9_cout\,
	cout => \C3|LessThan67~11_cout\);

-- Location: LCCOMB_X30_Y31_N20
\C3|LessThan67~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~13_cout\ = CARRY((\C3|VPOS\(6) & (\C3|Add5~8_combout\ & !\C3|LessThan67~11_cout\)) # (!\C3|VPOS\(6) & ((\C3|Add5~8_combout\) # (!\C3|LessThan67~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(6),
	datab => \C3|Add5~8_combout\,
	datad => VCC,
	cin => \C3|LessThan67~11_cout\,
	cout => \C3|LessThan67~13_cout\);

-- Location: LCCOMB_X30_Y31_N22
\C3|LessThan67~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~15_cout\ = CARRY((\C3|VPOS\(7) & ((!\C3|LessThan67~13_cout\) # (!\C3|Add5~10_combout\))) # (!\C3|VPOS\(7) & (!\C3|Add5~10_combout\ & !\C3|LessThan67~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|VPOS\(7),
	datab => \C3|Add5~10_combout\,
	datad => VCC,
	cin => \C3|LessThan67~13_cout\,
	cout => \C3|LessThan67~15_cout\);

-- Location: LCCOMB_X30_Y31_N24
\C3|LessThan67~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~17_cout\ = CARRY((\C3|Add5~12_combout\ & ((!\C3|LessThan67~15_cout\) # (!\C3|VPOS\(8)))) # (!\C3|Add5~12_combout\ & (!\C3|VPOS\(8) & !\C3|LessThan67~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add5~12_combout\,
	datab => \C3|VPOS\(8),
	datad => VCC,
	cin => \C3|LessThan67~15_cout\,
	cout => \C3|LessThan67~17_cout\);

-- Location: LCCOMB_X30_Y31_N26
\C3|LessThan67~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~18_combout\ = (\C3|VPOS\(9) & (\C3|LessThan67~17_cout\ & \C3|Add5~14_combout\)) # (!\C3|VPOS\(9) & ((\C3|LessThan67~17_cout\) # (\C3|Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|VPOS\(9),
	datad => \C3|Add5~14_combout\,
	cin => \C3|LessThan67~17_cout\,
	combout => \C3|LessThan67~18_combout\);

-- Location: LCCOMB_X30_Y31_N30
\C3|LessThan67~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~20_combout\ = (\C3|Add5~18_combout\) # ((\C3|Add5~20_combout\) # ((\C3|Add5~16_combout\) # (\C3|LessThan67~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add5~18_combout\,
	datab => \C3|Add5~20_combout\,
	datac => \C3|Add5~16_combout\,
	datad => \C3|LessThan67~18_combout\,
	combout => \C3|LessThan67~20_combout\);

-- Location: LCCOMB_X30_Y26_N26
\C3|LessThan67~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~23_combout\ = (\C3|Add5~40_combout\) # ((\C3|Add5~44_combout\) # ((\C3|Add5~42_combout\) # (\C3|Add5~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add5~40_combout\,
	datab => \C3|Add5~44_combout\,
	datac => \C3|Add5~42_combout\,
	datad => \C3|Add5~38_combout\,
	combout => \C3|LessThan67~23_combout\);

-- Location: LCCOMB_X31_Y35_N12
\C3|LessThan67~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|LessThan67~24_combout\ = (\C3|LessThan67~21_combout\) # ((\C3|LessThan67~22_combout\) # ((\C3|LessThan67~20_combout\) # (\C3|LessThan67~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan67~21_combout\,
	datab => \C3|LessThan67~22_combout\,
	datac => \C3|LessThan67~20_combout\,
	datad => \C3|LessThan67~23_combout\,
	combout => \C3|LessThan67~24_combout\);

-- Location: LCCOMB_X31_Y35_N22
\C3|draw~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|draw~61_combout\ = (\C3|draw~59_combout\ & (\C3|draw~60_combout\ & ((\C3|LessThan67~26_combout\) # (\C3|LessThan67~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~59_combout\,
	datab => \C3|draw~60_combout\,
	datac => \C3|LessThan67~26_combout\,
	datad => \C3|LessThan67~24_combout\,
	combout => \C3|draw~61_combout\);

-- Location: LCCOMB_X31_Y35_N6
\C3|G~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|G~0_combout\ = (\C3|draw~61_combout\) # ((\C3|draw~62_combout\ & (\C3|draw~64_combout\ & \C3|LessThan63~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~62_combout\,
	datab => \C3|draw~64_combout\,
	datac => \C3|LessThan63~26_combout\,
	datad => \C3|draw~61_combout\,
	combout => \C3|G~0_combout\);

-- Location: LCCOMB_X31_Y35_N8
\C3|R~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~35_combout\ = (\C3|R~4_combout\ & (!\C3|G~0_combout\ & ((\C3|Selector1~18_combout\) # (!\C3|R~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|R~4_combout\,
	datab => \C3|Selector1~18_combout\,
	datac => \C3|R~34_combout\,
	datad => \C3|G~0_combout\,
	combout => \C3|R~35_combout\);

-- Location: LCCOMB_X31_Y35_N2
\C3|R~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~36_combout\ = ((!\C3|draw~65_combout\ & !\C3|G~0_combout\)) # (!\C3|R~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|R~2_combout\,
	datab => \C3|draw~65_combout\,
	datad => \C3|G~0_combout\,
	combout => \C3|R~36_combout\);

-- Location: LCCOMB_X31_Y35_N14
\C3|R~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|R~37_combout\ = (\C3|R~35_combout\) # ((!\C3|R~36_combout\ & ((\C3|draw~65_combout\) # (!\C3|draw~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~61_combout\,
	datab => \C3|draw~65_combout\,
	datac => \C3|R~35_combout\,
	datad => \C3|R~36_combout\,
	combout => \C3|R~37_combout\);

-- Location: LCFF_X30_Y35_N9
\C3|R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|R~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|R\(0));

-- Location: LCFF_X31_Y35_N17
\C3|R[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|R~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|R\(1));

-- Location: LCFF_X31_Y35_N15
\C3|R[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|R~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|R\(2));

-- Location: LCFF_X31_Y35_N5
\C3|R[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|R~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|R\(3));

-- Location: LCFF_X30_Y35_N23
\C3|R[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|R~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|R\(4));

-- Location: LCFF_X30_Y35_N29
\C3|R[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|R~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|R\(5));

-- Location: LCFF_X30_Y35_N15
\C3|R[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|R~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|R\(6));

-- Location: LCFF_X31_Y35_N3
\C3|R[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|R~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|R\(7));

-- Location: LCFF_X31_Y35_N1
\C3|R[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|R~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|R\(8));

-- Location: LCFF_X31_Y35_N31
\C3|R[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|R~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|R\(9));

-- Location: LCCOMB_X30_Y35_N6
\C3|G~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|G~1_combout\ = (\C3|R~35_combout\) # ((!\C3|R~36_combout\ & ((\C3|draw~65_combout\) # (\C3|draw~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|draw~65_combout\,
	datab => \C3|draw~61_combout\,
	datac => \C3|R~35_combout\,
	datad => \C3|R~36_combout\,
	combout => \C3|G~1_combout\);

-- Location: LCCOMB_X30_Y35_N12
\C3|G[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|G[0]~feeder_combout\ = \C3|G~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|G~1_combout\,
	combout => \C3|G[0]~feeder_combout\);

-- Location: LCFF_X30_Y35_N13
\C3|G[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|G[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|G\(0));

-- Location: LCFF_X30_Y35_N7
\C3|G[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|G\(1));

-- Location: LCCOMB_X30_Y35_N16
\C3|G[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|G[2]~feeder_combout\ = \C3|G~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|G~1_combout\,
	combout => \C3|G[2]~feeder_combout\);

-- Location: LCFF_X30_Y35_N17
\C3|G[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|G[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|G\(2));

-- Location: LCCOMB_X30_Y35_N10
\C3|G[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|G[3]~feeder_combout\ = \C3|G~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|G~1_combout\,
	combout => \C3|G[3]~feeder_combout\);

-- Location: LCFF_X30_Y35_N11
\C3|G[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|G[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|G\(3));

-- Location: LCCOMB_X30_Y35_N20
\C3|G[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|G[4]~feeder_combout\ = \C3|G~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|G~1_combout\,
	combout => \C3|G[4]~feeder_combout\);

-- Location: LCFF_X30_Y35_N21
\C3|G[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|G[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|G\(4));

-- Location: LCCOMB_X30_Y35_N18
\C3|G[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|G[5]~feeder_combout\ = \C3|G~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|G~1_combout\,
	combout => \C3|G[5]~feeder_combout\);

-- Location: LCFF_X30_Y35_N19
\C3|G[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|G[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|G\(5));

-- Location: LCCOMB_X30_Y35_N4
\C3|G[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|G[6]~feeder_combout\ = \C3|G~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|G~1_combout\,
	combout => \C3|G[6]~feeder_combout\);

-- Location: LCFF_X30_Y35_N5
\C3|G[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|G[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|G\(6));

-- Location: LCCOMB_X30_Y35_N26
\C3|G[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|G[7]~feeder_combout\ = \C3|G~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|G~1_combout\,
	combout => \C3|G[7]~feeder_combout\);

-- Location: LCFF_X30_Y35_N27
\C3|G[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|G[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|G\(7));

-- Location: LCCOMB_X30_Y35_N24
\C3|G[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|G[8]~feeder_combout\ = \C3|G~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|G~1_combout\,
	combout => \C3|G[8]~feeder_combout\);

-- Location: LCFF_X30_Y35_N25
\C3|G[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|G[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|G\(8));

-- Location: LCCOMB_X30_Y35_N30
\C3|G[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|G[9]~feeder_combout\ = \C3|G~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|G~1_combout\,
	combout => \C3|G[9]~feeder_combout\);

-- Location: LCFF_X30_Y35_N31
\C3|G[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|G[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|G\(9));

-- Location: LCCOMB_X31_Y35_N28
\C3|B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|B~0_combout\ = (\C3|R~4_combout\ & ((\C3|G~0_combout\) # ((\C3|Selector1~18_combout\ & \C3|R~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|R~4_combout\,
	datab => \C3|Selector1~18_combout\,
	datac => \C3|R~34_combout\,
	datad => \C3|G~0_combout\,
	combout => \C3|B~0_combout\);

-- Location: LCFF_X32_Y35_N5
\C3|B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|B\(0));

-- Location: LCFF_X31_Y35_N29
\C3|B[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|B\(1));

-- Location: LCFF_X32_Y35_N23
\C3|B[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|B\(2));

-- Location: LCFF_X32_Y35_N21
\C3|B[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|B\(3));

-- Location: LCFF_X32_Y35_N19
\C3|B[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|B\(4));

-- Location: LCFF_X32_Y35_N9
\C3|B[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|B\(5));

-- Location: LCFF_X32_Y35_N11
\C3|B[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|B\(6));

-- Location: LCFF_X32_Y35_N13
\C3|B[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C3|B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|B\(7));

-- Location: LCCOMB_X30_Y35_N0
\C3|B[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|B[8]~feeder_combout\ = \C3|B~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|B~0_combout\,
	combout => \C3|B[8]~feeder_combout\);

-- Location: LCFF_X30_Y35_N1
\C3|B[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|B[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|B\(8));

-- Location: LCCOMB_X30_Y35_N2
\C3|B[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|B[9]~feeder_combout\ = \C3|B~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|B~0_combout\,
	combout => \C3|B[9]~feeder_combout\);

-- Location: LCFF_X30_Y35_N3
\C3|B[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C3|B[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|B\(9));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_U1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UP1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_U1);

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_D1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DOWN1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_D1);

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_U2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UP2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_U2);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_D2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DOWN2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_D2);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|HSYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|VSYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_CLOCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|altpll_0|sd1|_clk0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_CLOCK);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLANK_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLANK_N);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_SYNC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_SYNC);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|R\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|R\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(2));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|R\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(3));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|R\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|R\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|R\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|R\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|R\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(8));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|R\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(9));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|G\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|G\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|G\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|G\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|G\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(4));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|G\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|G\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|G\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(7));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|G\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(8));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|G\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(9));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|B\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|B\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|B\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|B\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|B\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|B\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|B\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(7));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|B\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(8));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C3|B\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(9));
END structure;


