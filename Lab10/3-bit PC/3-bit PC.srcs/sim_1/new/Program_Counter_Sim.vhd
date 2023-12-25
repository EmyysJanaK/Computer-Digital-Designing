----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 02:17:27 PM
-- Design Name: 
-- Module Name: Program_Counter_Sim - Behavioral
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

entity Program_Counter_Sim is
--  Port ( );
end Program_Counter_Sim;

architecture Behavioral of Program_Counter_Sim is


    -- Component declaration for Program_Counter entity
    component Program_Counter
        Port ( Reset_PushButton : in STD_LOGIC;
               Clk : in STD_LOGIC;
               NextIns : in STD_LOGIC_VECTOR (2 downto 0);
               CurrentIns : out STD_LOGIC_VECTOR (2 downto 0));
    end component;

    -- Component declaration for D_FF entity
    component D_FF
        port (
            D : in STD_LOGIC;
            Res : in STD_LOGIC;
            Clk : in STD_LOGIC;
            Q : out STD_LOGIC;
            Qbar : out STD_LOGIC
        );
    end component;

    -- Signal declarations
    signal Reset_PushButton_tb : STD_LOGIC;
    signal Clk_tb : STD_LOGIC;
    signal NextIns_tb : STD_LOGIC_VECTOR (2 downto 0);
    signal CurrentIns_tb : STD_LOGIC_VECTOR (2 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: Program_Counter
        Port map (
            Reset_PushButton => Reset_PushButton_tb,
            Clk => Clk_tb,
            NextIns => NextIns_tb,
            CurrentIns => CurrentIns_tb
        );

    -- Instantiate the D_FF components
    D_FF0: D_FF
        port map (
            D => NextIns_tb(0),
            Res => Reset_PushButton_tb,
            Clk => Clk_tb,
            Q => CurrentIns_tb(0),
            Qbar => open
        );

    D_FF1: D_FF
        port map (
            D => NextIns_tb(1),
            Res => Reset_PushButton_tb,
            Clk => Clk_tb,
            Q => CurrentIns_tb(1),
            Qbar => open
        );

    D_FF2: D_FF
        port map (
            D => NextIns_tb(2),
            Res => Reset_PushButton_tb,
            Clk => Clk_tb,
            Q => CurrentIns_tb(2),
            Qbar => open
        );

    -- Clock process
    process
    begin
        Clk_tb <= '0';
        wait for 100 ns;
        Clk_tb <= '1';
        wait for 100 ns;
    end process;

    -- Stimulus process
    process
    begin
        -- Initialize inputs
        Reset_PushButton_tb <= '1';
        NextIns_tb <= "000";
        wait for 100 ns;

        -- Deassert Reset
        Reset_PushButton_tb <= '0';
        wait for 100 ns;

        -- Apply stimulus to NextIns
        NextIns_tb <= "001";
        wait for 100 ns;
        NextIns_tb <= "010";
        wait for 100 ns;
        NextIns_tb <= "011";
        wait for 100 ns;

        -- Add more test cases if needed

        wait;
    end process;



end Behavioral;