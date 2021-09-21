library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
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
QOUT : INOUT STD_LOGIC_vector(4 downto 0)
);
end Count32;

architecture Behavioral of Count32 is
begin
process(CLK,DIR,CLR,EBL)
    begin 
      IF(EBL = '1')THEN
         if(CLR = '1') THEN
           QOUT <= "00000";
         ELSIF(CLK'EVENT AND CLK ='1')THEN
            if (DIR ='0') then 
                QOUT <= QOUT+'1';
            elsIF(DIR = '1') then
                QOUT <= QOUT-'1';
            end if;
        end if;
        end if;
end process;
             
end Behavioral;