----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/04/2019 06:25:44 PM
-- Design Name: 
-- Module Name: elevator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity elevator is

port(   clk : in bit;
        Q: buffer bit_vector(2 downto 0);
        arrive1: BUFFER bit;
        arrive2: BUFFER bit
      );
--  Port ( );
end elevator;

architecture Behavioral of elevator is
type STATE_TYPE IS(S5,S4,S3,S2,S1,S0);
SIGNAL state : STATE_TYPE;
begin
process(CLK)
begin
IF(CLK'EVENT AND CLK = '1')THEN
CASE state IS 
WHEN S0 => state <= s1;
WHEN S1 => state <= S2;

WHEN S2 =>
 arrive2 <= '0';
 arrive1 <= '1';
 if ARRIVE1 = '1' THEN
       state <= s3;
  else state <= s2;
  end if;
   when s3 => state <=s4;
   when s4 => state <=s5;
   when s5 =>
   arrive1 <= '0';
   arrive2 <= '1';
   if arrive2 = '1' THEN
        state <= s0;
    else state <= S5;
    end if;
   end case;
   end if;
   end process;
   with state select
   Q <= "000" WHEN S0,
   "100" when s1,
   "101" when s2,
   "010" when s3,
   "110" when s4,
   "111" when s5;
   


end Behavioral;
