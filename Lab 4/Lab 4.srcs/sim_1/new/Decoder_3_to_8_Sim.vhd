----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 03:10:21 PM
-- Design Name: 
-- Module Name: Decoder_3_to_8_Sim - Behavioral
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

entity Decoder_3_to_8_Sim is
--  Port ( );
end Decoder_3_to_8_Sim;

architecture Behavioral of Decoder_3_to_8_Sim is


  COMPONENT Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
        EN : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (7 downto 0));
  END COMPONENT;
 
  signal I :  STD_LOGIC_VECTOR (2 downto 0);
  signal Y : STD_LOGIC_VECTOR (7 downto 0);
  signal EN : STD_LOGIC;

begin

  UUT: Decoder_3_to_8 PORT MAP(

    I=>I,
    Y =>Y,
    EN => EN

  );

  process
    begin
      I(0) <= '1';
      I(1) <= '1';
      I(2)<= '1';
      EN<='1';
    WAIT FOR 100 ns; 
      I(0) <= '0';
      I(1) <= '0';
      I(2)<= '1';
    WAIT FOR 100 ns;
      I(0) <= '0';
      I(1) <= '1';
      I(2)<= '0';
    WAIT FOR 100 ns;
      I(0) <= '1'; 
      I(1) <= '1';
      I(2)<= '0';
    WAIT FOR 100 ns;
      I(0) <= '0'; 
      I(1) <= '1';
      I(2)<= '1';

    wait;

  end process;
end Behavioral;
