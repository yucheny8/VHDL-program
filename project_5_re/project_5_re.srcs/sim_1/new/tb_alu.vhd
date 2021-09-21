----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2019 08:37:54 PM
-- Design Name: 
-- Module Name: tb_alu - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_alu is
--  Port ( );
end tb_alu;

architecture Behavioral of tb_alu is
component ALU is
port(
clk : in bit;
A: in std_logic_vector(3 downto 0);
        C: OUT std_logic_vector(3 downto 0);
        D: OUT std_logic_vector(3 downto 0);
        B: IN std_logic_vector(3 downto 0);
        code: IN std_logic_vector(2 downto 0);
        CO : out std_logic
        );
end component;
signal CLK: bit;
signal A,B,C,D : std_logic_vector(3 downto 0);
signal CO:std_logic;
signal code: std_logic_vector(2 downto 0);
begin
uut: ALU
port map(
clk => clk,
A => A,
B => B,
C => C,
D => D,
code => code,
CO => CO);
clk_proces : process
begin
wait for 175 ns;
if clk = '0' then
    clk <= '1';
else
    clk <= '0';
end if;
end process;
stimu_process : process
begin 
A <= "1000";
B <= "0111";
CODE <= "000";
wait for 375ns;
CODE <= "001";
wait for 375ns;
code <= "010";
wait for 375ns;
code <= "011";
wait for 375ns;
code <= "100";
wait for 375ns;
code <= "101";
wait for 375ns;
code <= "110";
wait for 375ns;
code <= "111";
wait;
end process;
end Behavioral;

