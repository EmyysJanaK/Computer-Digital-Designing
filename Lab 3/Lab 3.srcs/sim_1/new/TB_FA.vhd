----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 02:49:24 AM
-- Design Name: 
-- Module Name: TB_FA - Behavioral
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

entity TB_FA is
--  Port ( );
end TB_FA;

architecture Behavioral of TB_FA is

COMPONENT FA
    PORT( A, B, C_in : IN STD_LOGIC;
          S, C_out : OUT STD_LOGIC);
END COMPONENT;

    --Signals for test inputs and outputs.
    SIGNAL i0, i1, i2 : STD_LOGIC;
    SIGNAL o1, o2 : STD_LOGIC;
            
begin
    -- Instances for the FA component.
UUT: FA
PORT MAP (
    A => i0,
    B => i1,
    C_in => i2,
    S => o1,
    C_out => o2 );  
    
-- Stimulus process to provide test inputs
PROCESS BEGIN
            -- Test Case 1: A = '0', B = '0', C_in = '0'
            i0 <= '0';
            i1 <= '0';
            i2 <= '0';
            wait for 10 ns;
    
            -- Test Case 2: A = '0', B = '1', C_in = '0'
            i0 <= '0';
            i1 <= '1';
            i2 <= '0';
            wait for 10 ns;
    
            -- Test Case 3: A = '1', B = '0', C_in = '0'
            i0 <= '1';
            i1 <= '0';
            i2 <= '0';
            wait for 10 ns;
    
            -- Test Case 4: A = '1', B = '1', C_in = '0'
            i0 <= '1';
            i1 <= '1';
            i2 <= '0';
            wait for 10 ns;
    
            -- Test Case 5: A = '0', B = '0', C_in = '1'
            i0 <= '0';
            i1 <= '0';
            i2 <= '1';
            wait for 10 ns;
    
            -- Test Case 6: A = '0', B = '1', C_in = '1'
            i0 <= '0';
            i1 <= '1';
            i2 <= '1';
            wait for 10 ns;
    
            -- Test Case 7: A = '1', B = '0', C_in = '1'
            i0 <= '1';
            i1 <= '0';
            i2 <= '1';
            wait for 10 ns;
    
            -- Test Case 8: A = '1', B = '1', C_in = '1'
            i0 <= '1';
            i1 <= '1';
            i2 <= '1';
            wait for 10 ns;
    
            -- End of simulation
            wait;
        end process;
        
end Behavioral;
