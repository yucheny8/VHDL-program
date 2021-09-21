library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_adder is
    Port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    sum : out STD_LOGIC;
    carry : out STD_LOGIC );
end Full_adder;

architecture fulladder of Full_adder is
begin
sum <= a xor b xor c;
carry <= (a and b) or (a and c) or (b and c);
 
end fulladder;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity FA is
--  Port ( );
PORT(
    A2A1 : IN STD_LOGIC_VECTOR (1 downto 0) ;
    B2B1 : IN STD_LOGIC_VECTOR (1 downto 0) ;
    Cin : IN STD_LOGIC ;
    SUM1SUM2 : OUT STD_LOGIC_VECTOR (1 downto 0) ;
    Cout : OUT STD_LOGIC );
end FA;


architecture FA1 of FA is

component Full_adder 
PORT(
    a,b,c: IN STD_LOGIC ;
    sum, carry : OUT STD_LOGIC );

end component Full_adder;

signal t1 : std_logic;

begin
    FA1: Full_adder PORT MAP( a=>A2A1(0), b=>B2B1(0), c=>Cin, sum=>SUM1SUM2(0), carry=>t1);
    FA2: Full_adder PORT MAP( a=>A2A1(1), b=>B2B1(1), c=>t1, sum=>SUM1SUM2(1), carry=>Cout);
    
END FA1;

