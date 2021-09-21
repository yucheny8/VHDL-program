library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_count32 is
--  Port ( );

end tb_count32;

architecture Behavioral of tb_count32 is
component Count32 is
    port (
    CLK : IN STD_LOGIC;
    CLR : IN STD_LOGIC;
    EBL : IN STD_LOGIC;
    DIR : IN STD_LOGIC;
    QOUT : BUFFER std_logic_vector(4 downto 0)
    );
end component;   
signal CLK,CLR,EBL,DIR: STD_LOGIC;
signal QOUT: std_logic_vector(4 downto 0);
begin
 uut : Count32
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
 
 DIR <= '0';
 
 wait for 559ns;
 
 EBL <= '1';
 
 dir <= '1';
 
 wait for 200ns;
 
 ebl <= '0';

wait for 300 ns;

ebl <= '1';
wait for 50 ns;

clr <= '1';

wait;

 

END PROCESS;
end Behavioral;
