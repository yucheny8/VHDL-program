----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2019 04:19:54 PM
-- Design Name: 
-- Module Name: tb_MUX41 - Behavioral
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

entity tb_MUX41 is
--  Port ( );
end tb_MUX41;

architecture Behavioral of tb_MUX41 is
COMPONENT MUX41 IS 
    PORT(S0,S1 : IN BIT;
        D0,D1,D2,D3 : IN STD_LOGIC;
        Y : OUT STD_LOGIC );
        END COMPONENT;
        SIGNAL S0,S1 : BIT;
        SIGNAL D0,D1,D2,D3 : STD_LOGIC;
        SIGNAL Y : STD_LOGIC;
begin
uut:MUX41
PORT MAP(
    S0 => S0,
    S1 => S1,
    D0 => D0,
    D1 => D1,
    D2 => D2,
    D3 => D3,
    Y => Y);
  
stimu_proc : process

begin
wait for 20ns;
S0 <= '0';
S1 <= '1';
D0 <= '1';
D1 <= '0';
D2 <= '1';
D3 <= '1';
wait for 20ns;
S0 <= '1';
S1 <= '1';
D0 <= '1';
D1 <= '0';
D2 <= '1';
D3 <= '1';
end process;
end Behavioral;
