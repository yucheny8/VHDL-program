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

entity Count21 is
--  Port ( );
port(
CLK : IN STD_LOGIC;
CLR : IN STD_LOGIC;
EBL : IN STD_LOGIC;
DIR : IN STD_LOGIC;
QOUT : BUFFER INTEGER RANGE 0 TO 21
);
end COUNT21;

architecture Behavioral of Count21 is
begin

process(CLK,DIR,CLR,EBL)
begin 
      IF(EBL = '1')THEN
        if (CLK'EVENT AND CLK ='1')THEN
         if(CLR = '1') THEN
                 QOUT <= 0;
            elsif (DIR ='0' and clr = '0' and ebl ='1' and qout < 21) then
                QOUT <= QOUT + 1;
             elsIF (DIR ='0' and qout > 20 and clr = '0' and ebl = '1')THEN
                QOUT <= 0;
            elsIF(DIR = '1' and qout>0 and clr = '0' and ebl = '1') then
                QOUT <= QOUT - 1; 
            else
                qout<=21;
      end if;
      end if;
      end if;

end process;

             
end Behavioral;