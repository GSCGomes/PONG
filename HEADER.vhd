-- HEADER.vhd
-- This file holds the constants used throughout the code.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package constants is

	constant BG_R: std_logic_vector(9 downto 0) := "0000110110";
	constant BG_G: std_logic_vector(9 downto 0) := "0001100110";
	constant BG_B: std_logic_vector(9 downto 0) := "0001010100";
	
	--Screen
	constant H_VisibleArea: integer := 1600;
	constant H_FrontPorch: integer := 60;
	constant H_SyncPulse: integer := 119;
	constant H_BackPorch: integer := 21;

	constant V_VisibleArea: integer:= 900;
	constant V_FrontPorch: integer:= 16;
	constant V_SyncPulse: integer:= 16;
	constant V_BackPorch: integer:= 68;	
	
	constant H_WholeLine: integer:= H_VisibleArea + H_FrontPorch + H_SyncPulse + H_BackPorch;
    constant V_WholeLine: integer:= V_VisibleArea + V_FrontPorch + V_SyncPulse + V_BackPorch;
	constant H_InvisibleArea: integer:= H_WholeLine - H_VisibleArea; 
	constant V_InvisibleArea: integer:= V_WholeLine - V_VisibleArea;
	constant H_Middle: integer:= H_InvisibleArea + (H_VisibleArea/2);
	constant V_Middle: integer:= V_InvisibleArea + (V_VisibleArea/2);
	
	--Players
	constant H_PSize: integer:= 60;
	constant V_PSize: integer:= 250;
	
	constant H_L1Pos: integer:= H_InvisibleArea + 100;
	constant H_R1Pos: integer:= H_L1Pos + H_PSize;
	constant H_R2Pos: integer:= H_InvisibleArea + 1500;
	constant H_L2Pos: integer:= H_R2Pos - H_PSize;		
	
	--Ball
	constant BallSize: integer := 60; 

end constants;