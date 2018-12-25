library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity alarm is 
port(minute_in : in std_logic_vector(7 downto 0);--时钟的分钟
	  second_in : in std_logic_vector(7 downto 0);--时钟的秒钟
	  alarm : out std_logic);
end alarm;
architecture beh of alarm is
begin
process(minute_in,second_in)
begin
if(minute_in = "00000000" and second_in ="00000000") then--整点报时当分钟为0秒钟为0时报时
	alarm <= '0';
end if;
if(second_in ="00000010") then--蜂鸣器响2秒
	alarm <= '1';
end if;
end process;
end beh;