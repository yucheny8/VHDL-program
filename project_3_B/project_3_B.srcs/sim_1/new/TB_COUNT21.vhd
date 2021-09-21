library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_count21 is
--  Port ( );

end tb_count21;

architecture Behavioral of tb_count21 is
component Count21 is
    port (
    CLK : IN STD_LOGIC;
    CLR : IN STD_LOGIC;
    EBL : IN STD_LOGIC;
    DIR : IN STD_LOGIC;
    QOUT : BUFFER INTEGER RANGE 0 TO 21
    );
end component;   
signal CLK,CLR,EBL,DIR: STD_LOGIC;
signal QOUT: INTEGER RANGE 0 TO 21;
begin
 uut : Count21
 port map(
 CLK => CLK,
 CLR => CLR,
 EBL => EBL,
 DIR => DIR,
 QOUT => QOUT
 );
 clock_proces : process
 begin
    wait for 40ns;
    if CLK = '0' then
        CLK <= '1';
    else
        CLK <='0';
 end if;
 end process;
 
 
 stim_proc:process
 
 begin
 
 CLR <= '0';
 DIR <= '1';
 
 wait for 40 ns ;
 
 EBL <= '1';

wait for 599ns;

EBL <= '0';

WAIT FOR 300NS;

EBL <= '1';

WAIT FOR 1500NS;

CLR <= '1';

WAIT;

END PROCESS;
end Behavioral;