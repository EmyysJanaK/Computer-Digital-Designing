----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2023 12:41:11 AM
-- Design Name: 
-- Module Name: Adder_3bit_Sim - Behavioral
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

entity Adder_3bit_Sim is
--  Port ( );
end Adder_3bit_Sim;

architecture Behavioral of Adder_3bit_Sim is

    -- Component declaration
    component Adder_3bit is
        port (
            A : in std_logic_vector(2 downto 0);
            S : out std_logic_vector(2 downto 0));
    end component;
    
    -- Signal declaration
    signal A_in, S_out : std_logic_vector(2 downto 0);
    



    -- Stimulus process 0 0  1 1 0  0 1 1  0 1 1  0 1 0  1 0 0  1 1 0
begin
    
        -- Instantiate the Unit Under Test (UUT)
        UUT: Adder_3bit
            Port map (
                A => A_in,
                S => S_out
            );
    
        -- Stimulus process
        process
        begin
            -- Initialize inputs
            A_in <= "000";
            wait for 100 ns;
    
            -- Apply stimulus to A 
            A_in <= "001";
            wait for 100 ns;
    
            A_in <= "010";
            wait for 100 ns;

            A_in <= "011";
            wait for 100 ns;
            
            A_in <= "100";
            wait for 100 ns; 

            A_in <= "101";
            wait for 100 ns;

            A_in <= "110";
            wait for 100 ns;
            
            A_in <= "111";
            wait for 100 ns;                                
    
            wait;
        end process;
    
    end Behavioral;
