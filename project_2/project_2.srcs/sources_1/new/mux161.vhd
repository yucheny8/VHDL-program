----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2019 08:12:08 PM
-- Design Name: 
-- Module Name: mux161 - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux161 is
--  Port ( );
PORT( A: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    S: IN BIT_VECTOR(3 DOWNTO 0);
    Y: OUT STD_LOGIC);
    end mux161;
    

architecture Behavioral of mux161 is
SIGNAL Y1,Y2,Y3,Y4 : STD_LOGIC;
COMPONENT mux41 IS
PORT(
S0,S1 : IN BIT;
D0,D1,D2,D3 : IN STD_LOGIC;
Y:OUT STD_LOGIC);
END COMPONENT;

begin
    MUX1 : mux41 port map(s0=>S(0),s1=>S(1),D0=>A(0),D1=>A(1),D2=>A(2),D3=>A(3),y=>Y1);
    MUX2 : mux41 port map(s0=>S(0),s1=>S(1),D0=>A(4),D1=>A(5),D2=>A(6),D3=>A(7),y=>Y2);
    MUX3 : mux41 port map(s0=>S(0),s1=>S(1),D0=>A(8),D1=>A(9),D2=>A(10),D3=>A(11),y=>Y3);
    MUX4 : mux41 port map(s0=>S(0),s1=>S(1),D0=>A(12),D1=>A(13),D2=>A(14),D3=>A(15),y=>Y4);
    MUX5 : mux41 port map(s0=>S(2),s1=>S(3),D0=>Y1,D1=>Y2,D2=>Y3,D3=>Y4,y=>Y);


end Behavioral;
