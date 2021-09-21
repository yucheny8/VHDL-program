----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2019 08:44:15 PM
-- Design Name: 
-- Module Name: tb_mux161 - Behavioral
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

entity tb_mux161 is
--  Port ( );
end tb_mux161;

architecture Behavioral of tb_mux161 is
component mux161
port(
A: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
S: IN BIT_VECTOR(3 DOWNTO 0);
Y: OUT STD_LOGIC);
END COMPONENT;
 
component mux41
port(
S0,S1 : IN BIT;
D0,D1,D2,D3 : IN STD_LOGIC;
Y : OUT STD_LOGIC);
END COMPONENT;
SIGNAL A: STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL S: BIT_VECTOR(3 DOWNTO 0);
SIGNAL Y: STD_LOGIC;

begin

uut: mux161 port map(
A => A,
S => S,
Y => Y);

uut1: mux41 port map(
S0 => S(0),
S1 => S(1),
D0 => A(0),
D1 => A(1),
D2 => A(2),
D3 => A(3),
Y => Y);

stimus_proc : process

begin

wait for 20ns;

A <= X"7DAB";
S <= "0011";

wait for 20ns;

A <= X"7DAB";
S <= "1010";

wait for 20ns;

A <= X"7DAB";
S <= "1110";

END PROCESS;
end Behavioral;
