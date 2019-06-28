library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_VGA is
end tb_VGA;

architecture teste of tb_VGA is

component VGA is
	port(
		UP1, DOWN1, UP2, DOWN2: in std_logic;	
		LED_U1, LED_D1, LED_U2, LED_D2: out std_logic;
		CLOCK_in		:	in std_logic;
		VGA_HS		:	out std_logic;
		VGA_VS		:	out std_logic;
		VGA_CLOCK	:	out std_logic;
		VGA_BLANK_N	:	out std_logic;
		VGA_SYNC		:	out std_logic;
		VGA_R			:	out std_logic_vector(9 downto 0);
		VGA_G			:	out std_logic_vector(9 downto 0);
		VGA_B			:	out std_logic_vector(9 downto 0);
		P1 : out integer;
		P2 : out integer
	);
end component;

signal U1, U2, D1, D2: std_logic;
signal P1POS, P2POS: integer;

signal sLED_U1, sLED_D1, sLED_U2, sLED_D2: std_logic;
signal sCLOCK_in		:	 std_logic;
signal sVGA_HS		:	 std_logic;
signal sVGA_VS		:	 std_logic;
signal sVGA_CLOCK	:	 std_logic;
signal sVGA_BLANK_N	:	 std_logic;
signal sVGA_SYNC		:	 std_logic;
signal sVGA_R			:	 std_logic_vector(9 downto 0);
signal sVGA_G			:	 std_logic_vector(9 downto 0);
signal sVGA_B			:	 std_logic_vector(9 downto 0);

begin
instancia_VGA: VGA port map(U1, D1, U1, D2, sLED_U1, sLED_D1, sLED_U2, sLED_D2, sCLOCK_in, sVGA_HS, sVGA_VS, sVGA_CLOCK, sVGA_BLANK_N, sVGA_SYNC, sVGA_R, sVGA_G, sVGA_B, P1POS, P2POS);
U1 <= '1', '0' after 10 ns, '1' after 20 ns, '0' after 30 ns, '1' after 40 ns;
D1 <= '1', '0' after 50 ns, '1' after 60 ns, '0' after 70 ns, '1' after 80 ns;
U2 <= '1', '0' after 10 ns, '1' after 20 ns, '0' after 30 ns, '1' after 40 ns;
D2 <= '1', '0' after 50 ns, '1' after 60 ns, '0' after 70 ns, '1' after 80 ns;

end teste;