----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2023 11:29:30 PM
-- Design Name: 
-- Module Name: LUT_16_7_Sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LUT_16_7_Sim is
--  Port ( );
end LUT_16_7_Sim;

architecture Behavioral of LUT_16_7_Sim is
component LUT_16_7
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
       data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

    SIGNAL address: std_logic_vector(3 downto 0):= "0000";
    SIGNAL data: std_logic_vector(6 downto 0); 
    
begin
UUT: LUT_16_7 PORT MAP(
    address => address,
    data => data
    );
    
process
begin
    -- index 11 0011 0110 1010 0110
    address(0) <= '0';
    address(1) <= '1';
    address(2) <= '1';
    address(3) <= '0';
	
    wait for 100ns;
    address(0) <= '0';
    address(1) <= '1';
    address(2) <= '0';
    address(3) <= '1';

    wait for 100ns;
    address(0) <= '0';
    address(1) <= '1';
    address(2) <= '1';
    address(3) <= '0';

    wait for 100ns;
    address(0) <= '1';
    address(1) <= '1';
    address(2) <= '0';
    address(3) <= '0';
    
    wait for 100ns;
    address(0) <= '0';
    address(1) <= '0';
    address(2) <= '0';
    address(3) <= '0';
    
    wait;
    
end process;
