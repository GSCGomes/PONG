-- VGA.vhd
-- Top Level Entity
-- This file is responsible for setting up all the IOs of the system and mapping them to the components

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VGA is
	port(
		CLOCK_50: in std_logic;
		UP1, DOWN1, UP2, DOWN2: in std_logic;	
		LED_U1, LED_D1, LED_U2, LED_D2: out std_logic;
		CLOCK_in		:	in std_logic;
		VGA_HS			:	out std_logic;
		VGA_VS			:	out std_logic;
		VGA_CLOCK		:	out std_logic;
		VGA_BLANK_N		:	out std_logic;
		VGA_SYNC		:	out std_logic;
		VGA_R			:	out std_logic_vector(9 downto 0);
		VGA_G			:	out std_logic_vector(9 downto 0);
		VGA_B			:	out std_logic_vector(9 downto 0);
		RESET			:  in std_logic
	);
end VGA;


architecture MAIN of VGA is

	signal VGACLK	:	std_logic	:= '0';	
	signal RST   	:	std_logic	:= '0';	
	signal P1POS	: 	integer;
	signal P2POS	: 	integer;
	signal BH		: 	integer;
	signal BV		: 	integer;	
	signal SCORE1  : integer;
	signal SCORE2  : integer;
	signal MATCH   : std_logic;
	--------------------------------------------------------
	
	component PLL is
		port(
			clk_in_clk  : in  std_logic := 'X'; -- clk
			reset_reset : in  std_logic := 'X'; -- reset
			clk_out_clk : out std_logic         -- clk		
		);
	end component PLL;
	--------------------------------------------------------

	component SYNC is
		port(
			CLK: in std_logic;
			P1, P2: in integer;
			HSYNC,VSYNC: out std_logic;
			R,G,B: out std_logic_vector(9 downto 0);
			BH, BV: in integer;
			SCORE1, SCORE2 : in integer;
			MATCH : in std_logic
		);
	end component SYNC;
	--------------------------------------------------------
	

	component GAME is
		port(
			CLOCK_50MHz: in std_logic;	
			U1, D1, U2, D2: in std_logic;
			P1Pos,P2Pos: out integer; -- 0 to 650
			BallH,BallV: out integer;
			RESET: in std_logic;
			SC1, SC2: out integer;
			MATCH: out std_logic
		);
	end component GAME;
	--------------------------------------------------------	

	begin
	
	C1: PLL port map(CLOCK_in,RST,VGACLK);
	C2: GAME port map(CLOCK_50, UP1, DOWN1, UP2, DOWN2, P1POS, P2POS, BH, BV, RESET, SCORE1, SCORE2, MATCH);	
	C3: SYNC port map(VGACLK, P1POS, P2POS, VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B,BH,BV,SCORE1,SCORE2,MATCH);
	
	LED_D1 <= DOWN1;
	LED_D2 <= DOWN2;
	LED_U1 <= UP1;
	LED_U2 <= UP2;
	
	VGA_CLOCK<=VGACLK;
	VGA_BLANK_N<='1';
	VGA_SYNC<='0';
	
end main;