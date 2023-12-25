----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2023 08:52:15 PM
-- Design Name: 
-- Module Name: Circuit2_Sim - Behavioral
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

entity Circuit2_Sim is
--  Port ( );
end Circuit2_Sim;

architecture Behavioral of Circuit2_Sim is


Component Circuit2
    PORT ( green, amber, red : IN STD_LOGIC;
            o_1, o_2, o_3 : OUT STD_LOGIC );
End component;


SIGNAL green, amber, red : STD_LOGIC;
SIGNAL o_1, o_2, o_3 : STD_LOGIC;


begin

-- Map the inputs and outputs used in the simulation to input and output ports on Circuit2.
UUT: Circuit2 PORT MAP(
        green => green, --Inputs
        amber => amber,
        red => red,
        
        o_1 => o_1, --Outputs
        o_2 => o_2,
        o_3 => o_3
);

Process Begin
    green <= '0'; --Set all the input values '0'.
    amber <= '0';
    red <= '0';
    
    Wait for 100 ns; --Hold 10ns.
    
    red <= '1';
    
    Wait for 100 ns;
    
    amber <= '1';
    red <= '0';
    
    Wait for 100 ns;
    
    red <= '1';
    
    Wait for 100 ns;
    
    green <= '1';
    amber <= '0';
    red <= '0';
    
    Wait for 100 ns;
    
    red <= '1';
    
    Wait for 100 ns;
    
    amber <= '1';
    red <= '0';
    
    Wait for 100 ns;
    
    red <= '1';
    
    Wait;
    
End Process;

end Behavioral;
