----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 03:16:21 PM
-- Design Name: 
-- Module Name: Mux_8_to_1_Sim - Behavioral
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

entity Mux_8_to_1_Sim is
--  Port ( );
end Mux_8_to_1_Sim;

architecture Behavioral of Mux_8_to_1_Sim is

    COMPONENT Mux_8_to_1 
    port ( S : in STD_LOGIC_VECTOR (2 downto 0);
            D : in STD_LOGIC_VECTOR (7 downto 0);
            EN : in STD_LOGIC;
            Y : out STD_LOGIC);
              
END COMPONENT;

SIGNAL S :  STD_LOGIC_VECTOR (2 downto 0);
SIGNAL EN :  STD_LOGIC;
SIGNAL  D : STD_LOGIC_VECTOR (7 downto 0);
SIGNAL Y : STD_LOGIC;
    
    
    
begin
UUT: Mux_8_to_1 PORT MAP(
    S => S,
    EN=> EN,
    Y=>Y,
    D=>D
);

process
    begin
        S(0)<='1';
        S(1)<='1';
        S(2)<='1';
        D(0)<='0';
        D(1)<='0';
        D(2)<='0';
        D(3)<='0';
        D(4)<='0';
        D(5)<='0';            
        D(6)<='0';
        D(7)<='1';
        EN<='1';
    WAIT FOR 100 ns; -- after 100 ns change inputs
        S(0)<='0'; 
        S(1)<='0';
        S(2)<='1';

        D(4)<='1';
        D(7)<='0';
        
    WAIT FOR 100 ns; --change again
        S(0)<='0'; 
        S(1)<='1';
        S(2)<='0';

        D(2)<='1';
        D(4)<='0';
       
    WAIT FOR 100 ns; --change again
        S(0)<='1'; 
        S(1)<='1';
        S(2)<='0';
        
        D(2)<='0';
        D(3)<='1';

    WAIT FOR 100 ns; --change again
        S(0)<='0'; -- set initial values
        S(1)<='1';
        S(2)<='1';
        
        D(3)<='0';
        D(6)<='1';
    wait;
end process;

end Behavioral;