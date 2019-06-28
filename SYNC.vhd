-- SYNC.vhd
-- This file is responsible to describe the logic used to make the VGA signal.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my.all;
use work.constants.all;

entity SYNC is
	port(
		CLK: in std_logic;
		P1, P2: in integer;
		HSYNC,VSYNC: out std_logic;
		R,G,B: out std_logic_vector(9 downto 0);
		BH, BV: in integer;
		SCORE1, SCORE2 : in integer;
		MATCH : in std_logic
	);
end SYNC;

architecture MAIN of SYNC is

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
	
	signal HPOS: integer range 0 to H_WholeLine:=0;
	signal VPOS: integer range 0 to V_WholeLine:=0;	
	
	begin
		
		process(CLK)
		begin
			if(CLK'event AND CLK = '1') then
							
				draw(HPOS,VPOS,P1,P2,BH,BV,R,G,B,SCORE1,SCORE2,MATCH);
				
				if(HPOS < H_WholeLine) then
					HPOS<=HPOS+1;
				else
					HPOS<=0;
					if(VPOS < V_WholeLine) then
						VPOS<=VPOS+1;
					else
						VPOS<=0;
					end if;
				end if;
				
				if((HPOS > 0 and HPOS < (H_FrontPorch + H_SyncPulse + H_BackPorch)) or (VPOS > 0 and VPOS < (V_FrontPorch + V_SyncPulse + V_BackPorch))) then
					R<=(others=>'0');
					G<=(others=>'0');
					B<=(others=>'0');
				end if;
				
				if(HPOS > H_FrontPorch and HPOS < (H_FrontPorch + H_SyncPulse)) then
					HSYNC<='0';
				else
					HSYNC<='1';
				end if;
				
				if(VPOS > 0 AND VPOS < (V_FrontPorch + V_SyncPulse)) then
					VSYNC<='0';
				else
					VSYNC<='1';
				end if;				
				
			end if;
		end process;
end MAIN;