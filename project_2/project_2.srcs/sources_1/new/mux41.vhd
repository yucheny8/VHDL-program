----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2019 03:41:07 PM
-- Design Name: 
-- Module Name: mux41 - Behavioral
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
use IEEE.numeric_std.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux41 is
--  Port ( );
port(S0,S1 : IN BIT;
    D0,D1,D2,D3 : IN STD_LOGIC;
    Y : OUT STD_LOGIC);
end mux41;

architecture Behavioral of mux41 is
SIGNAL sel: BIT_vector(1 downto 0);
begin
sel <= S0&S1;
WITH sel SELECT
Y <= D0 WHEN "00",
D1 WHEN "01",
D2 WHEN "10",
D3 WHEN "11";


end Behavioral;
