----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:16:33 03/01/2016 
-- Design Name: 
-- Module Name:    mux_2_16 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_2_16 is
	Port(
		In0, In1 : in STD_LOGIC_VECTOR(15 downto 0);
		s : in STD_LOGIC;
		Z : out STD_LOGIC_VECTOR(15 downto 0)
	);
end mux_2_16;

architecture Behavioral of mux_2_16 is

begin
	Z <= 	In0 after 1ns when s='0' else
			In1 after 1ns when s='1' else
			x"0000" after 1ns;

end Behavioral;

