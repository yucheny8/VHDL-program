----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2019 06:06:09 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
--  Port ( );
port ( clk : in bit;
        A: in std_logic_vector(3 downto 0);
        C: OUT std_logic_vector(3 downto 0);
        D: OUT std_logic_vector(3 downto 0);
        B: IN std_logic_vector(3 downto 0);
        CODE : IN std_logic_vector(2 DOWNTO 0);
        CO : out std_logic
        );
end ALU;

architecture Behavioral of ALU is
signal tmp:  std_logic_vector(4 downto 0);
signal ALU_RESULT_3 :  std_logic_vector(7 downto 0);
begin
process(A,B,clk,code,tmp,alu_result_3)
begin
if(clk'event and clk ='1') then

case (code) is
when "000" =>---add
tmp <= std_logic_vector(unsigned("0"&A) + unsigned(B));
c  <= tmp(3 downto 0);
Co <= tmp(4);

when "001" =>---reverse
C <= A(0)&A(1)&A(2)&A(3);

when"101" =>---not
C <= NOT A;

when "110" =>---right R
C <= A(0)&A(3 downto 1);

when "111"=>---left R
C <= A(2 downto 0)&A(3);

when "010" => ---mul
alu_result_3 <= std_logic_vector(to_unsigned((to_integer(unsigned(A)) * to_integer(unsigned(b))),8));
C  <= alu_result_3(7 downto 4);
D <= std_logic_vector(unsigned(alu_result_3(3 downto 0)));   
                                                       
when "100" => --- xnor
C <= A XNOR B;

when "011"=> --- increment
C <= std_logic_vector(unsigned(A)+B"0001");
when others =>
null; 
end case;



end if;

end process;
end Behavioral;