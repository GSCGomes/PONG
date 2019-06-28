-- GAME.vhd
-- This file holds the actual logic of the game PONG.
-- The game is pretty standard, the ball has a constant velocity and its direction changes on every collision.
-- If the ball collides on the left wall or on the right wall it goes back to the center and the opposite player gets a point.
-- The first player to reach 5 points win and a trophy is displayed on the winner side of the screen. 
-- Then it goes back to the start, reseting both scores and leaving the ball at the center until a player presses any key.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity GAME is
	port(
		CLOCK_50MHz: in std_logic;	
		U1, D1, U2, D2: in std_logic;
		P1Pos,P2Pos: out integer; -- 0 to 650
		BallH,BallV: out integer;
		RESET: in std_logic;
		SC1, SC2: out integer;
		MATCH: out std_logic
	);
end GAME;

architecture main of GAME is

	type state is(s0,s1,s2,s3);
	signal currentS, nextS: state := s0;

	constant dP: integer := 1;
	constant H_BallCenter: integer := (H_Middle - H_InvisibleArea - (BallSize/2));
	constant V_BallCenter: integer := (V_Middle - V_InvisibleArea - (BallSize/2));
	
	signal dBH: integer := 1;
	signal dBV: integer := 1;	
	
	signal P1: integer := 325;
	signal P2: integer := 325;
	
	signal BH: integer := H_BallCenter;
	signal BV: integer := V_BallCenter;	
	
	signal BHDir: std_logic := '1'; -- 0: right, 1: left
	signal BVDir: std_logic := '1'; -- 0: down,  1: up

	signal CLOCK: std_logic;
	signal FSM_CLOCK: std_logic;
	
	signal COUNT: integer;
	
	signal SCORE1: integer := 0;
	signal SCORE2: integer := 0;
	
	signal GOAL1: std_logic := '0';
	signal GOAL2: std_logic := '0';
	
	begin
	
	P1Pos <= P1;
	P2Pos <= P2;
	
	BallH <= BH;
	BallV <= BV;
	
	SC1 <= SCORE1;
	SC2 <= SCORE2;
	
	 process(RESET, FSM_CLOCK) is	 
	 begin 
		if (RESET = '1') then
			currentS <= s0;
		elsif (rising_edge(FSM_CLOCK)) then
			currentS <= nextS;
		end if;		
	 end process;		
	 
	 process(U1, U2, D1, D2, SCORE1, SCORE2, COUNT, GOAL1, GOAL2, currentS) is
	 begin
		case currentS is
			when s0 =>	
				
				MATCH <= '0';		
				if( (U1 and U2 and D1 and D2) = '0') then
					nextS <= s1;
				else
					nextS <= s0;
				end if;
					
			when s1 =>
			
				MATCH <= '0';		
				
				if( (GOAL1 or GOAL2) = '1' ) then
					nextS <= s2;
				else
					nextS <= s1;
				end if;
				
			when s2 =>
			
				MATCH <= '0';
				
				if( (GOAL1 or GOAL2) = '1') then
					nextS <= s2;
				elsif( (SCORE1 >= 5) or (SCORE2 >= 5) ) then
					nextS <= s3;
				else
					nextS <= s1;
				end if;				
			
			when s3 =>
			
				MATCH <= '1';
							
				if(COUNT >= 1000) then 
					nextS <= s0;
				else 
					nextS <= s3;	
				end if;		
								
		end case;	 
	 end process;


	process(CLOCK) is
	begin
			
		if(rising_edge(CLOCK) and CLOCK = '1') then
			if(currentS = s1) then

			   COUNT <= 0;
				
				-- player1 movement
				if( ((U1 = '0')  and (D1 = '1')) and (P1 >= dP + 4)) then 
					P1 <= P1 - dP;	
				elsif( ((U1 = '1')  and (D1 = '0')) and (P1 <= (V_VisibleArea - V_PSize - dP - 4)) ) then 
					P1 <= P1 + dP;	
				end if;	
				
				-- player 2 movement
				if( ((U2 = '0')  and (D2 = '1')) and (P2 >= dP)) then 
					P2 <= P2 - dP;	
				elsif( ((U2 = '1')  and (D2 = '0')) and (P2 <= (V_VisibleArea - V_PSize - dP - 4)) ) then 
					P2 <= P2 + dP;	
				end if;			
				
				-- floor and ceiling collision
				if (BV >= V_VisibleArea - BallSize - 4) then
					BVDir <= '1';
				elsif (BV <= 4) then
					BVDir <= '0';
				end if;
				
				-- wall collision - goal condition 1
				if (BH >= H_VisibleArea - BallSize - 4) then
					GOAL1 <= '1';
					BHDir <= '1'; 			
				end if;
				
				-- wall collision - goal condition 2
				if (BH <= 4) then
					GOAL2 <= '1';
					BHDir <= '0';														
				end if;
				
				-- player1 normal collision
				if (BHDir = '1') then
					if ((BH <= (H_L1Pos + H_PSize - H_InvisibleArea)) and (BH >= H_L1Pos  - H_InvisibleArea)) then
						if ((BV > (P1 - BallSize)) and (BV < (P1 + V_PSize))) then
							BHDir <= '0';
						end if;
					end if;
				end if;			

				-- player2 normal collision
				if (BHDir = '0') then
					if ((BH >= (H_L2Pos - H_InvisibleArea - BallSize)) and (BH <= (H_R2Pos - H_InvisibleArea - BallSize))) then
						if ((BV > (P2 - BallSize)) and (BV < (P2 + V_PSize))) then
							BHDir <= '1';
						end if;
					end if;
				end if;			
				
				if (BVDir = '1') then
					BV <= BV - dBV;
				else
					BV <= BV + dBV;
				end if;

				if (BHDir = '1') then
					BH <= BH - dBH;
				else
					BH <= BH + dBH;
				end if;					
				
			elsif(currentS = s0) then
			
				BH <= H_BallCenter;
				BV <= V_BallCenter;
				
				SCORE1 <= 0;
				SCORE2 <= 0;
				
				GOAL1 <= '0';
				GOAL2 <= '0';
				
				COUNT <= 0;
				
			elsif(currentS = s2) then
				
				BH <= H_BallCenter;
				BV <= V_BallCenter;
								
				if(GOAL1 = '1') then
					GOAL1 <= '0';
					SCORE1 <= (SCORE1 + 1);
				end if;
				
				if(GOAL2 = '1') then
					GOAL2 <= '0';
					SCORE2 <= (SCORE2 + 1);
				end if;				
				
				COUNT <= 0;
			
			elsif(currentS = s3) then
				
				BH <= H_BallCenter;
				BV <= V_BallCenter;
				
				COUNT <= COUNT + 1;

			end if;
		end if;
		
	end process;	
	
	-- CLOCK FOR FINITE STATE MACHINE
	process (CLOCK_50MHz,RESET)
		variable cnt : integer range 0 to 10000;
		variable clk : std_logic:='0';
	begin
		if (RESET = '1') then
				cnt := 0;
		elsif (rising_edge(CLOCK_50MHz)) then
			if (cnt = 10000) then -- T = 400 us
			   clk := not clk;
				cnt := 0;
			else
		      cnt := cnt + 1;	
			end if;
		end if;		
		FSM_CLOCK <= clk;		
	end process;	

	-- CLOCK FOR BALL AND PLAYERS
	process (CLOCK_50MHz)
		variable cnt : integer range 0 to 30000;
		variable clk : std_logic:='0';
	begin
		if (rising_edge(CLOCK_50MHz)) then
		   if (cnt = 30000) then -- T = 1200 us
			   clk := not clk;
				cnt := 0;
			else
		      cnt := cnt + 1;	
			end if;
		end if;
		CLOCK <= clk;
	end process;
	
end main;