library ieee;
use ieee.std_logic_1164.ALL;
entity tb_FA_2 is
end tb_FA_2;
architecture tb of tb_FA_2 is 
component FA
port(
A2A1 : in std_logic_vector(1 downto 0);
B2B1 : in std_logic_vector(1 downto 0);
Cin : in std_logic;
SUM1SUM2: out std_logic_vector(1 downto 0);
Cout: out std_logic );
end component;

component Full_adder
port(
a: in std_logic;
b: in std_logic;
c : in std_logic;
sum : out std_logic;
Carry: out std_logic );
end component;
signal A2A1 : std_logic_vector(1 downto 0);
signal B2B1 : std_logic_vector(1 downto 0);
signal Cin : std_logic;
signal SUM1SUM2 : std_logic_vector(1 downto 0);
signal Cout: std_logic;

begin

uut: FA port map(
A2A1 => A2A1,
B2B1 => B2B1,
Cin => Cin,
SUM1SUM2 => SUM1SUM2,
Cout => Cout
);

uut1: Full_adder port map(
a => A2A1(1),
b => B2B1(1),
c => Cin,
sum => SUM1SUM2(1),
Carry => Cout
);

stimulate_process : process

begin
wait for 20ns;
A2A1<="10";
B2B1<="01";
Cin<='1';
wait for 20ns;
A2A1<="01";
B2B1<="00";
Cin<='1';
wait for 20ns;
A2A1<="11";
B2B1<="10";
Cin<='0';
end process;
end; 
