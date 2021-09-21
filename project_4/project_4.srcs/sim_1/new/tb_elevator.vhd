----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2019 02:16:18 PM
-- Design Name: 
-- Module Name: tb_elevator - Behavioral
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

entity tb_elevator is
--  Port ( );
end tb_elevator;

architecture Behavioral of tb_elevator is

component elevator is
 port(
 clk : in bit;
 q: buffer bit_vector(2 downto 0);
 arrive1: BUFFER bit;
 arrive2: BUFFER bit
 );
end component;
signal CLK,arrive1,arrive2 : BIT;
signal Q : bit_vector(2 downto 0);
begin
uut : elevator
port map(
clk => clk,
arrive1 => arrive1,
arrive2 => arrive2,
q => q
);
clk_proces : process
begin 

wait for 40ns;
if CLK = '0'then
    clk <= '1';
else
    clk <= '0';
end if;
end process;

stimu_process : process

begin

wait for 2000ns;

end process;
end Behavioral;
