----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2023 08:18:36 PM
-- Design Name: 
-- Module Name: Circuit2 - Behavioral
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

entity Circuit2 is
    Port ( green : in STD_LOGIC;
           amber : in STD_LOGIC;
           red : in STD_LOGIC;
           o_1 : out STD_LOGIC;
           o_2 : out STD_LOGIC;
           o_3 : out STD_LOGIC);
end Circuit2;

architecture Behavioral of Circuit2 is

Signal AND_out1 : STD_LOGIC;
Signal OR_out1 : STD_LOGIC;
Signal OR_out2 : STD_LOGIC;
Signal OR_out3 : STD_LOGIC;


begin

    AND_out1 <= green AND amber AND red;
    OR_out1 <= green AND amber;
    OR_out2 <= green AND red;
    OR_out3 <= red AND amber;
    
    o_1 <= AND_out1;
    o_2 <= OR_out1 OR OR_out2 OR OR_out3;
    o_3 <= (NOT(AND_out1)) OR (NOT(OR_out1 OR OR_out2 OR OR_out3))OR NOT(green OR amber OR red);
    
end Behavioral;
