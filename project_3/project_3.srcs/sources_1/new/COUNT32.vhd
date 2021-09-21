library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Count32 is
--  Port ( );
port(
CLK : IN STD_LOGIC;
CLR : IN STD_LOGIC;
EBL : IN STD_LOGIC;
DIR : IN STD_LOGIC;
QOUT : BUFFER std_logic_vector(4 downto 0)
);
end Count32;

architecture Behavioral of Count32 is
begin

process(CLK,DIR,CLR,EBL)

    begin 
      IF(EBL = '1')THEN       
        IF(CLK'EVENT AND CLK ='1')THEN
            if(CLR = '1') THEN
                 QOUT <= "00000";
            elsif (DIR ='0' and ebl = '1' and clr ='0') then 
                QOUT <= std_logic_vector(to_unsigned(to_integer(unsigned( QOUT )) + 1, 5));
            elsIF(DIR = '1' and ebl = '1' and clr = '0') then
                QOUT <= std_logic_vector(to_unsigned(to_integer(unsigned( QOUT )) - 1, 5));
            end if;
        end if;
        end if;
end process;

             
end Behavioral;