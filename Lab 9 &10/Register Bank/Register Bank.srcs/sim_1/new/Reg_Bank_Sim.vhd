----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 08:00:39 PM
-- Design Name: 
-- Module Name: Reg_Bank_Sim - Behavioral
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

entity Reg_Bank_Sim is
--  Port ( );
end Reg_Bank_Sim;

architecture Behavioral of Reg_Bank_Sim is

    -- Import the entity you want to simulate
    component Reg_Bank
        Port (
            Clk : in STD_LOGIC;
            Reg_EN : in STD_LOGIC_VECTOR (2 downto 0);
            Reset : in STD_LOGIC;
            Reg_Bank_In : in STD_LOGIC_VECTOR (3 downto 0);
            REG_0_OUT : out STD_LOGIC_VECTOR (3 downto 0);
            REG_1_OUT : out STD_LOGIC_VECTOR (3 downto 0);
            REG_2_OUT : out STD_LOGIC_VECTOR (3 downto 0);
            REG_3_OUT : out STD_LOGIC_VECTOR (3 downto 0);
            REG_4_OUT : out STD_LOGIC_VECTOR (3 downto 0);
            REG_5_OUT : out STD_LOGIC_VECTOR (3 downto 0);
            REG_6_OUT : out STD_LOGIC_VECTOR (3 downto 0);
            REG_7_OUT : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    -- Define signals for testbench stimulus
    signal Clk_TB : STD_LOGIC := '0';
    signal Reg_EN_TB : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
    signal Reset_TB : STD_LOGIC := '0';
    signal Reg_Bank_In_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal REG_0_OUT_TB : STD_LOGIC_VECTOR (3 downto 0);
    signal REG_1_OUT_TB : STD_LOGIC_VECTOR (3 downto 0);
    signal REG_2_OUT_TB : STD_LOGIC_VECTOR (3 downto 0);
    signal REG_3_OUT_TB : STD_LOGIC_VECTOR (3 downto 0);
    signal REG_4_OUT_TB : STD_LOGIC_VECTOR (3 downto 0);
    signal REG_5_OUT_TB : STD_LOGIC_VECTOR (3 downto 0);
    signal REG_6_OUT_TB : STD_LOGIC_VECTOR (3 downto 0);
    signal REG_7_OUT_TB : STD_LOGIC_VECTOR (3 downto 0);

begin
    -- Instantiate the entity to be simulated
    UUT: Reg_Bank
        port map (
            Clk => Clk_TB,
            Reg_EN => Reg_EN_TB,
            Reset => Reset_TB,
            Reg_Bank_In => Reg_Bank_In_TB,
            REG_0_OUT => REG_0_OUT_TB,
            REG_1_OUT => REG_1_OUT_TB,
            REG_2_OUT => REG_2_OUT_TB,
            REG_3_OUT => REG_3_OUT_TB,
            REG_4_OUT => REG_4_OUT_TB,
            REG_5_OUT => REG_5_OUT_TB,
            REG_6_OUT => REG_6_OUT_TB,
            REG_7_OUT => REG_7_OUT_TB
        );

    -- Add clock process to generate a clock signal
    process
    begin
        while now < 1000 ns loop
            Clk_TB <= '0';
            wait for 10 ns;
            Clk_TB <= '1';
            wait for 10 ns;
        end loop;
        wait;
    end process;

    -- Add testbench stimulus process
    process
    begin
        -- Provide stimulus values to the inputs - 00 110 011 011 010 100 000
        -- Modify the stimulus values according to test scenario
        Reset_TB <= '1';
        wait for 20 ns;
        
        Reset_TB <= '0';
        wait for 50 ns;
        
        Reg_Bank_In_TB <= "0101";
        Reg_EN_TB <= "001";
        wait for 100 ns;
        
        Reg_EN_TB <= "000";
        wait for 100 ns;
        
        Reg_EN_TB <= "100";
        wait for 100 ns;
        
        Reg_EN_TB <= "010";
        wait for 100 ns;
        
        Reg_EN_TB <= "011";
        wait for 100 ns;
        
        Reg_EN_TB <= "110";
        wait for 100 ns;               

        -- Add assertions or check the expected output values here

        wait;
    end process;

end Behavioral;