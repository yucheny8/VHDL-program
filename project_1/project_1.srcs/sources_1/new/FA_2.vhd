library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA_2 is
--  Port ( );
PORT(
    A2A1 : IN STD_LOGIC_VECTOR (1 downto 0) ;
    B2B1 : IN STD_LOGIC_VECTOR (1 downto 0) ;
    Cin : IN STD_LOGIC ;
    SUM1SUM2 : OUT STD_LOGIC_VECTOR (1 downto 0) ;
    Cout : OUT STD_LOGIC );
end FA_2;


architecture FA1 of FA_2 is
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

library ieee;
use ieee.std_logic_1164.ALL;
entity tb_FA_2 is
end tb_FA_2;
architecture behavior of tb_FA_2 is 
component tbfa_2
port(
a : in std_logic_vector(1 downto 0);
b : in std_logic_vector(1 downto 0);
cin : in std_logic;
sum: out std_logic_vector(1 downto 0);
carry: out std_logic );
end component;

component tbfa
port(
a: in std_logic;
b: in std_logic;
cin : in std_logic;
sum : out std_logic;
carry: out std_logic );
end component;
signal a : std_logic_vector(1 downto 0) := (others => '0');
signal b : std_logic_vector(1 downto 0) := (others => '0');
signal cin : std_logic := '0';
signal sum : std_logic_vector(1 downto 0);
signal carry: std_logic;

begin

uut: tbfa_2 port map(
a => a,
b => b,
cin => cin,
sum => sum,
carry => carry
);

uut1: tbfa port map(
a => a(0),
b=> b(0),
cin => cin,
sum => sum(0),
carry => carry
);
stimulate_process : process
begin
wait for 0ns;
a<="10";
b<="01";
cin<='1';
wait for 20 ns;
a<="01";
b<="00";
cin<='1';
wait for 20ns;
a<="11";
b<="10";
cin<='0';
wait;
end process;
end;


