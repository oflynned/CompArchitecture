--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:26:28 03/25/2016
-- Design Name:   
-- Module Name:   C:/Users/Ed/CS2022/Proj2/RegFile_TB.vhd
-- Project Name:  Proj2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegFile
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RegFile_TB IS
END RegFile_TB;
 
ARCHITECTURE behavior OF RegFile_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegFile
    PORT(
         des_d : IN  std_logic_vector(3 downto 0);
         add_a : IN  std_logic_vector(3 downto 0);
         add_b : IN  std_logic_vector(3 downto 0);
         Clk : IN  std_logic;
         load_in : IN  std_logic;
         data : IN  std_logic_vector(15 downto 0);
         out_data_a : OUT  std_logic_vector(15 downto 0);
         out_data_b : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal des_d : std_logic_vector(3 downto 0) := (others => '0');
   signal add_a : std_logic_vector(3 downto 0) := (others => '0');
   signal add_b : std_logic_vector(3 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal load_in : std_logic := '0';
   signal data : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal out_data_a : std_logic_vector(15 downto 0);
   signal out_data_b : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegFile PORT MAP (
          des_d => des_d,
          add_a => add_a,
          add_b => add_b,
          Clk => Clk,
          load_in => load_in,
          data => data,
          out_data_a => out_data_a,
          out_data_b => out_data_b
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
