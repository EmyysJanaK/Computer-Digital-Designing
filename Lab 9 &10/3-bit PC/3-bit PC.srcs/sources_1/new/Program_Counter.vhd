----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2023 10:24:58 AM
-- Design Name: 
-- Module Name: ProgramCounter - Behavioral
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

entity Program_Counter is
    Port ( Reset_PushButton : in STD_LOGIC;
           Clk : in STD_LOGIC;
           NextIns : in STD_LOGIC_VECTOR (2 downto 0);
           CurrentIns : out STD_LOGIC_VECTOR (2 downto 0));
end Program_Counter;

architecture Behavioral of Program_Counter is

component D_FF
port (
D : in STD_LOGIC;
Res : in STD_LOGIC;
Clk : in STD_LOGIC;
Q : out STD_LOGIC;
Qbar : out STD_LOGIC);
end component;

begin

D_FF0 : D_FF
port map(
D => NextIns(0),
Res => Reset_PushButton,
Clk => Clk,
Q => CurrentIns(0));

D_FF1 : D_FF
port map(
D => NextIns(1),
Res => Reset_PushButton,
Clk => Clk,
Q => CurrentIns(1));

D_FF2 : D_FF
port map(
D => NextIns(2),
Res => Reset_PushButton,
Clk => Clk,
Q => CurrentIns(2));

end Behavioral;
