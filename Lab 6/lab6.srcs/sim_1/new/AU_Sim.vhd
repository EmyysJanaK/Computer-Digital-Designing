----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2023 05:23:58 PM
-- Design Name: 
-- Module Name: AU_Sim - Behavioral
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

entity AU_Sim is
--  Port ( );
end AU_Sim;

architecture Behavioral of AU_Sim is
Component AU
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC);
End Component;

Signal A, S : STD_LOGIC_VECTOR (3 downto 0) := "0000";
Signal RegSel, Clk, Zero, Carry : STD_LOGIC := '0';

begin

UUT: AU
     Port Map(
        A => A,
        RegSel => RegSel,
        Clk => Clk,
        S => S,
        Zero => Zero,
        Carry => Carry           
     );

Process Begin
        Clk <= NOT(Clk);
        wait for 2ns;        
End Process; 
   
Process Begin
        A <= "0101";
        wait for 40ns;
        RegSel <= '1';
        A <= "0110";
        wait for 40ns;
End Process;     



end Behavioral;
