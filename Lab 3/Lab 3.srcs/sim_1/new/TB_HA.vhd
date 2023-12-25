----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 02:07:52 AM
-- Design Name: 
-- Module Name: TB_HA - Behavioral
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

entity TB_HA is
--  Port ( );
end TB_HA;

architecture Behavioral of TB_HA is

COMPONENT HA
    PORT( A, B : IN STD_LOGIC;
          S, C : OUT STD_LOGIC);
END COMPONENT;
    -- signals for test inputs and outputs.
    SIGNAL a1, a2 : STD_LOGIC;
    SIGNAL o1, o2 : STD_LOGIC;

begin

--instances for HA component
UUT: HA PORT MAP(
A => a1,
B => a2,
S => o1,
C => o2);

PROCESS BEGIN
    a1 <= '0';
    a2 <= '0';
    
    WAIT FOR 100 ns;
    a2 <= '1';
    
    WAIT FOR 100 ns;
    a1 <= '1';
    a2 <= '0';
    
    WAIT FOR 100ns;
    a2 <= '1';
    
    WAIT;
END PROCESS;


end Behavioral;
