library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(binInput	: in  std_logic_vector(7 downto 0);
		  decOut_n	: out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is	
begin
	with binInput select
		decOut_n <= "1000000" when "00000000", -- 0
						"1111001" when "00000001",	--1
						"0100100" when "00000010",	--2
						"0110000" when "00000011",	--3
						"0011001" when "00000100",	--4
						"0010010" when "00000101",	--5
						"0000010" when "00000110",	--6
						"1111000" when "00000111",	--7
						"0000000" when "00001000",	--8
						"0010000" when "00001001",	--9
						"0001000" when "00001010",	--A
						"0000011" when "00001011",	--b
						"1000110" when "00001100",	--C
						"0100001" when "00001101",	--d
						"0000110" when "00001110",	--E
						"0001110" when "00001111",	--F
						"1000001" when others;	   --0
end Behavioral;
