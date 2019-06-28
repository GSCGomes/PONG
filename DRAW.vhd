-- DRAW.vhd
-- Draws the game elements on screen (the borders, the score, the ball, the players, the trophy and the middle line).

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

package my is
	procedure draw(signal HPOS, VPOS, P1POS, P2POS, BallH, BallV: in integer; signal R, G, B: out std_logic_vector(9 downto 0); signal SC1, SC2: in integer; signal MATCH: in std_logic);
end my;

package body my is

	procedure draw(signal HPOS, VPOS, P1POS, P2POS, BallH, BallV: in integer; signal R, G, B: out std_logic_vector(9 downto 0); signal SC1, SC2: in integer; signal MATCH: in std_logic) is
	
	constant H1_Display: integer := (H_Middle - 300); -- Hsize = 100
	constant H2_Display: integer := (H_Middle + 200); -- Hsize = 100
	constant V_Display: integer  := (V_Middle - 400); -- Vsize = 150

	constant H1_Trophy: integer := (H_Middle - 500);
	constant H2_Trophy: integer := (H_Middle + 420);
	constant V_Trophy: integer := (V_Middle - 60);
	
	variable Display1: std_logic_vector(6 downto 0) := "0000000";
	variable Display2: std_logic_vector(6 downto 0) := "0000000";
	
	begin	
		
		Display1 := "0000000";
		Display2 := "0000000";
		
		-- write Display1 and Display2 variables
		if( Display1(0) = '0') then --always true
			if ((HPOS > (H1_Display)) and (HPOS < (H1_Display + 100)) and (VPOS > (V_Display)) and (VPOS < (V_Display + 20))) then
				Display1 := Display1 or "1000000"; --A
			end if;
			
			if ((HPOS > (H1_Display + 80)) and (HPOS < (H1_Display + 100)) and (VPOS > (V_Display)) and (VPOS < (V_Display + 85))) then
				Display1 := Display1 or "0100000"; --B
			end if;
			
			if ((HPOS > (H1_Display + 80)) and (HPOS < (H1_Display + 100)) and (VPOS > (V_Display + 65)) and (VPOS < (V_Display + 150))) then
				Display1 := Display1 or "0010000"; --C
			end if;
			
			if ((HPOS > (H1_Display)) and (HPOS < (H1_Display + 100)) and (VPOS > (V_Display + 130)) and (VPOS < (V_Display + 150))) then
				Display1 := Display1 or "0001000"; --D
			end if;
			
			if ((HPOS > (H1_Display)) and (HPOS < (H1_Display + 20)) and (VPOS > (V_Display + 65)) and (VPOS < (V_Display + 150))) then
				Display1 := Display1 or "0000100"; --E	
			end if;
			
			if ((HPOS > (H1_Display)) and (HPOS < (H1_Display + 20)) and (VPOS > (V_Display)) and (VPOS < (V_Display + 85))) then
				Display1 := Display1 or "0000010"; --F	
			end if;
			
			if ((HPOS > (H1_Display)) and (HPOS < (H1_Display + 100)) and (VPOS > (V_Display + 65)) and (VPOS < (V_Display + 85))) then
				Display1 := Display1 or "0000001"; --G		
			end if;	
		end if;		
		
		
		if( Display2(0) = '0') then --always true
			if ((HPOS > (H2_Display)) and (HPOS < (H2_Display + 100)) and (VPOS > (V_Display)) and (VPOS < (V_Display + 20))) then
				Display2 := Display2 or "1000000"; --A
			end if;
			
			if ((HPOS > (H2_Display + 80)) and (HPOS < (H2_Display + 100)) and (VPOS > (V_Display)) and (VPOS < (V_Display + 85))) then
				Display2 := Display2 or "0100000"; --B
			end if;
			
			if ((HPOS > (H2_Display + 80)) and (HPOS < (H2_Display + 100)) and (VPOS > (V_Display + 65)) and (VPOS < (V_Display + 150))) then
				Display2 := Display2 or "0010000"; --C
			end if;
			
			if ((HPOS > (H2_Display)) and (HPOS < (H2_Display + 100)) and (VPOS > (V_Display + 130)) and (VPOS < (V_Display + 150))) then
				Display2 := Display2 or "0001000"; --D
			end if;
			
			if ((HPOS > (H2_Display)) and (HPOS < (H2_Display + 20)) and (VPOS > (V_Display + 65)) and (VPOS < (V_Display + 150))) then
				Display2 := Display2 or "0000100"; --E	
			end if;
			
			if ((HPOS > (H2_Display)) and (HPOS < (H2_Display + 20)) and (VPOS > (V_Display)) and (VPOS < (V_Display + 85))) then
				Display2 := Display2 or "0000010"; --F	
			end if;
			
			if ((HPOS > (H2_Display)) and (HPOS < (H2_Display + 100)) and (VPOS > (V_Display + 65)) and (VPOS < (V_Display + 85))) then
				Display2 := Display2 or "0000001"; --G		
			end if;	
		end if;
		
		
		
		-- draw border
		if(((HPOS > (H_InvisibleArea)) and (HPOS < (H_InvisibleArea + 5))) or ((HPOS < (H_WholeLine)) and (HPOS > (H_WholeLine-5)))) then
			R<=(others=>'1');
			G<=(others=>'1');
			B<=(others=>'1');						
		elsif(((VPOS > (V_InvisibleArea)) and (VPOS < (V_InvisibleArea + 5))) or ((VPOS < (V_WholeLine)) and (VPOS > (V_WholeLine-5)))) then
			R<=(others=>'1');
			G<=(others=>'1');
			B<=(others=>'1');						
		else
			R<=(others=>'0');
			G<=(others=>'0');
			B<=(others=>'0');								
		end if;
		
	
		-- draw middle line
		if((HPOS > (H_Middle - 4)) and (HPOS < (H_Middle + 4))) then
			R<=(others=>'1');
			G<=(others=>'1');
			B<=(others=>'1');
		end if;
		
		
		-- draw score 1		 
		case SC1 is
			when 0 =>
				if((Display1 and "1111110") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;
			when 1 =>
				if((Display1 and "0110000") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;
			when 2 =>
				if((Display1 and "1101101") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;
			when 3 =>
				if((Display1 and "1111001") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;
			when 4 =>
				if((Display1 and "0110011") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;		
			when 5 =>
				if((Display1 and "1011011") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;			
			when others =>
				if((Display1 and "1111111") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;					
		end case;
		
		
		
		
		-- draw score 2	 
		case SC2 is
			when 0 =>
				if((Display2 and "1111110") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;
			when 1 =>
				if((Display2 and "0110000") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;
			when 2 =>
				if((Display2 and "1101101") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;
			when 3 =>
				if((Display2 and "1111001") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;
			when 4 =>
				if((Display2 and "0110011") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;		
			when 5 =>
				if((Display2 and "1011011") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;			
			when others =>
				if((Display2 and "1111111") > "0000000") then
					R<=(others=>'1');
					G<=(others=>'1');
					B<=(others=>'1');	
				end if;					
		end case;		
		
		
		-- draw trophy 1
		if((MATCH = '1') and (SC1 >= 5)) then
			if((HPOS > H1_Trophy) and (HPOS < (H1_Trophy + 80)) and (VPOS > V_Trophy) and (VPOS < (V_Trophy + 40))) then
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'0');
			end if;
			
			if((HPOS > (H1_Trophy + 10)) and (HPOS < (H1_Trophy + 70)) and (VPOS > (V_Trophy + 40)) and (VPOS < (V_Trophy + 50))) then
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'0');
			end if;		

			if((HPOS > (H1_Trophy + 20)) and (HPOS < (H1_Trophy + 60)) and (VPOS > (V_Trophy + 50)) and (VPOS < (V_Trophy + 100))) then
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'0');
			end if;
			
			if((HPOS > (H1_Trophy + 10)) and (HPOS < (H1_Trophy + 70)) and (VPOS > (V_Trophy + 100)) and (VPOS < (V_Trophy + 120))) then
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'0');
			end if;				
		end if;
				
		
		-- draw trophy 2
		if((MATCH = '1') and (SC2 >= 5)) then
			if((HPOS > H2_Trophy) and (HPOS < (H2_Trophy + 80)) and (VPOS > V_Trophy) and (VPOS < (V_Trophy + 40))) then
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'0');
			end if;
			
			if((HPOS > (H2_Trophy + 10)) and (HPOS < (H2_Trophy + 70)) and (VPOS > (V_Trophy + 40)) and (VPOS < (V_Trophy + 50))) then
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'0');
			end if;		

			if((HPOS > (H2_Trophy + 20)) and (HPOS < (H2_Trophy + 60)) and (VPOS > (V_Trophy + 50)) and (VPOS < (V_Trophy + 100))) then
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'0');
			end if;
			
			if((HPOS > (H2_Trophy + 10)) and (HPOS < (H2_Trophy + 70)) and (VPOS > (V_Trophy + 100)) and (VPOS < (V_Trophy + 120))) then
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'0');
			end if;				
		end if;
	
		
		-- draw player1
		if(((HPOS > H_L1Pos) and (HPOS < H_R1Pos)) and ((VPOS > P1Pos + V_InvisibleArea) and (VPOS < P1Pos + V_PSize + V_InvisibleArea))) then
			R<=(others=>'1');
			G<=(others=>'0');
			B<=(others=>'1');
		end if;
		
	
		-- draw player2
		if(((HPOS < H_R2Pos) and (HPOS > H_L2Pos)) and ((VPOS > P2Pos + V_InvisibleArea) and (VPOS < P2Pos + V_PSize + V_InvisibleArea))) then
			R<=(others=>'0');
			G<=(others=>'1');
			B<=(others=>'1');
		end if;	
		
	
		-- draw ball
		if(((HPOS > (BallH + H_InvisibleArea)) and (HPOS <(BallH + BallSize + H_InvisibleArea))) and ((VPOS > (BallV + V_InvisibleArea)) and (VPOS <(BallV + V_InvisibleArea + BallSize)))) then
			R<=(others=>'1');
			G<=(others=>'1');
			B<=(others=>'0');
		end if;
		
		
	
	end draw;
end my;