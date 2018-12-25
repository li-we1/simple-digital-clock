library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity counter_60 is--60进制计数器
port(CLK : in std_logic;--时钟
	  CR,LD, P: in std_logic;--清零端CR，置数端LD，暂停端（使能端）P
	  data_in : in std_logic_vector(7 downto 0);
	  data_out : out std_logic_vector(7 downto 0);
	  QCC : out std_logic);--高位进位
end counter_60;
architecture beh of counter_60 is
--中间变量
signal data : std_logic_vector(7 downto 0) := "00000000";
signal C : std_logic := '0';
begin
process(CLK)
variable step : std_logic_vector(3 downto 0) := "0001";--一次增加的步数
begin
	if (P = '1') then
		if(CR='0') then--数字清零端
			data <= (others=>'0');
		elsif(LD='1') then--数字置数端
			data <= "01011000";
		elsif(rising_edge(CLk)) then
			C <= '0';
			if(CONV_INTEGER(data(3 downto 0)) >= 9) then--当低位数字为9时向高位进位并且清零
				data(3 downto 0) <= (others=>'0');
				data(7 downto 4) <= data(7 downto 4) + step;
			else 
				data(3 downto 0) <= data(3 downto 0) + step;
			end if;
			if(CONV_INTEGER(data(7 downto 4)) >= 5 and CONV_INTEGER(data(3 downto 0))>=9) then--当数字为59时清零
				C <= '1';
				data <= (others=>'0');
			end if;
		end if;
	end if;
end process;
QCC <= C;
data_out <= data;
end beh;