library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity input is--防抖模块
port( CLK_in : in std_logic;
		LD_hour,LD_minute,P,CR : in std_logic;
		LD_hour_out,LD_minute_out,P_out,CR_out : out std_logic);
end input;
architecture beh of input is
--中间变量
signal hour,minute,clean : std_logic;
signal pause : std_logic := '1';
signal CLK : std_logic := '0';
begin
process(CLK_in)
variable i : integer :=36;
variable count : integer :=0;
begin
IF(rising_edge(CLK_in)) THEN--内部时钟分频
	  IF(COUNT=10000)THEN
			count:=0;
			CLK <= not CLK;
	  ELSE COUNT:=COUNT+1;
	  END IF;
END IF;
if(LD_hour='0') then--0-19判断改变小时按钮的延时
	i:=0;
elsif(LD_minute='0') then--20-39判断改变分钟按钮的延时
	i:=20;
elsif(P ='0') then--40-59为判断暂停按钮的延时
	i:=40;
elsif(CR='0') then--60-79为清零端按钮的延时
	i:=60;
elsif(rising_edge(CLK)) then
	if(i=80) then--当为80时为常态将其困在80
		i:=80;
	else i:=i+1;
	end if;
	if(i=19) then
		hour <='0';
		i:=80;
	elsif(i=39) then
		minute <='0';
		i:=80;
	elsif(i=59) then
		pause <=not pause;
		i:=80;
	elsif(i=79) then
		clean <= '0';
		i:=80;
	else hour<='1';minute<='1';clean<='1';
	end if;
end if;
--将中间变量赋值给输出端口
LD_hour_out <= hour;
LD_minute_out <= minute;
P_out <= pause;
CR_out <= clean;
end process;
end beh;
