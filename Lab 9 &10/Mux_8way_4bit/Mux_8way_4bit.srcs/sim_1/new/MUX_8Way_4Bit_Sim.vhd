----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2023 03:16:33 PM
-- Design Name: 
-- Module Name: MUX_8Way_4Bit_Sim - Behavioral
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

entity MUX_8Way_4Bit_Sim is
--  Port ( );
end MUX_8Way_4Bit_Sim;

architecture Behavioral of MUX_8Way_4Bit_Sim is

    -- Component declaration for the DUT (Design Under Test)
    -- Import the entity you want to simulate
    component MUX_8Way_4Bit
        Port (
            Reg_Sel : in STD_LOGIC_VECTOR (2 downto 0);
            R0 : in STD_LOGIC_VECTOR (3 downto 0);
            R1 : in STD_LOGIC_VECTOR (3 downto 0);
            R2 : in STD_LOGIC_VECTOR (3 downto 0);
            R3 : in STD_LOGIC_VECTOR (3 downto 0);
            R4 : in STD_LOGIC_VECTOR (3 downto 0);
            R5 : in STD_LOGIC_VECTOR (3 downto 0);
            R6 : in STD_LOGIC_VECTOR (3 downto 0);
            R7 : in STD_LOGIC_VECTOR (3 downto 0);
            Mux_Out : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    -- Define signals for testbench stimulus
    signal Reg_Sel_TB : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
    signal R0_TB : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal R1_TB : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    signal R2_TB : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    signal R3_TB : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    signal R4_TB : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    signal R5_TB : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    signal R6_TB : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    signal R7_TB : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    signal Mux_Out_TB : STD_LOGIC_VECTOR (3 downto 0);

begin
    -- Instantiate the entity to be simulated
    UUT: MUX_8Way_4Bit
        port map (
            Reg_Sel => Reg_Sel_TB,
            R0 => R0_TB,
            R1 => R1_TB,
            R2 => R2_TB,
            R3 => R3_TB,
            R4 => R4_TB,
            R5 => R5_TB,
            R6 => R6_TB,
            R7 => R7_TB,
            Mux_Out => Mux_Out_TB
        );

    -- Add testbench stimulus process
    process
    begin
        -- Provide stimulus values to the inputs
        -- Modify the stimulus values according to your test scenario 
        
        Reg_Sel_TB <= "000";
        R0_TB <= "0000";
        R1_TB <= "0001";
        R2_TB <= "0010";
        R3_TB <= "0011";
        R4_TB <= "0100";
        R5_TB <= "0101";
        R6_TB <= "0110";
        R7_TB <= "0111";
        
        WAIT FOR 100ns; 
        
        Reg_Sel_TB <= "010";
        WAIT FOR 100ns; 
        
        Reg_Sel_TB <= "011";        
        
        WAIT FOR 100ns; 
        
        Reg_Sel_TB <= "100";
        WAIT FOR 100ns; 
        
        Reg_Sel_TB <= "111";         

        -- Add assertions or check the expected output values here

        wait;
    end process;

end Behavioral;