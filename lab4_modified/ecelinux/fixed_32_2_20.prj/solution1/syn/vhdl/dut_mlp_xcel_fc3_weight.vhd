-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dut_mlp_xcel_fc3_weight_rom is 
    generic(
             dwidth     : integer := 32; 
             awidth     : integer := 8; 
             mem_size    : integer := 168
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dut_mlp_xcel_fc3_weight_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110000001001111001110110110", 
    1 => "00111110010100100010101011000000", 
    2 => "00111110001100101100010110110100", 
    3 => "00111101001110101110000111111100", 
    4 => "00111010101101110111010101011000", 
    5 => "10111110000001001101000011010110", 
    6 => "10111110000110011001100101010000", 
    7 => "00111110011001001100010101010011", 
    8 => "00111100010110110101100111100001", 
    9 => "00111101100100001011010100110101", 
    10 => "10111101100010000001111001010100", 
    11 => "10111100101001011000001100111110", 
    12 => "00111101000100101101010001010011", 
    13 => "10111101101111110100111111110111", 
    14 => "10111110010100100000001010100000", 
    15 => "00111101101100001010111011100100", 
    16 => "10111101000000111111011001100010", 
    17 => "10111110000101110000111011101101", 
    18 => "00111101001100101101111011001101", 
    19 => "10111101000100110100100110111111", 
    20 => "00111101101100110111011100011101", 
    21 => "00111101111010101111111110110111", 
    22 => "10111110000010110010011110100110", 
    23 => "00111110000000110110000001010101", 
    24 => "10111110000000111101000011100100", 
    25 => "00111101111110110010101001001100", 
    26 => "00111110010001110100011100110011", 
    27 => "10111100111100111110000011000001", 
    28 => "10111101110011000101110111010010", 
    29 => "00111110010101111100010000110010", 
    30 => "10111101101011100111010101011100", 
    31 => "10111110000110101100101110011101", 
    32 => "10111110010110111000110010000010", 
    33 => "10111110010000110000111011010100", 
    34 => "10111101100110010011111101101100", 
    35 => "10111101111101001101001001010011", 
    36 => "00111101011000001011100100010010", 
    37 => "10111101111111001110111011101001", 
    38 => "00111101011111010110100100101100", 
    39 => "00111101111101100101010001100110", 
    40 => "10111101110001101100110000010111", 
    41 => "00111110001000001111010110001010", 
    42 => "10111011100011110100011110000100", 
    43 => "10111101110000100000010000000111", 
    44 => "00111101101010111110110110001001", 
    45 => "10111101110100000101011110011111", 
    46 => "10111101011110111100000001110011", 
    47 => "10111110000011011101110010100100", 
    48 => "10111100001101011001101001011110", 
    49 => "10111101101010111011101010000110", 
    50 => "10111101101100101010101010110010", 
    51 => "10111101110010011111111101100011", 
    52 => "00111110000110000100000010011110", 
    53 => "10111101100110100101001111110011", 
    54 => "10111110010000010001110000011010", 
    55 => "00111101100000111100111011011011", 
    56 => "10111110000000001000111000110101", 
    57 => "00111101010110011011010100011011", 
    58 => "00111101100011011000010011011101", 
    59 => "10111110010010101100100101000110", 
    60 => "00111101101010101001010011110100", 
    61 => "00111101001001101001001111000011", 
    62 => "10111101101111011101111110001000", 
    63 => "00111110001001011110110001000110", 
    64 => "00111100110010101001101111100101", 
    65 => "00111100010010010110001010000011", 
    66 => "00111101011110100010011110010100", 
    67 => "00111101110000000010110000111110", 
    68 => "00111110000010010000001011001001", 
    69 => "00111110010000011011010001100011", 
    70 => "00111110001000000001010001110111", 
    71 => "10111100100110101011100001001100", 
    72 => "10111101111000110110101000010101", 
    73 => "10111101101001100111001010001011", 
    74 => "10111100101000101011101001001110", 
    75 => "00111101111010011100001101111101", 
    76 => "10111101110100011110011010100001", 
    77 => "00111110010101000101111010101011", 
    78 => "00111011000101100100110100010110", 
    79 => "00111101110101011001111010101110", 
    80 => "10111110001011011011010001101001", 
    81 => "00111110001000110000110100111100", 
    82 => "00111101100010111011001011010111", 
    83 => "00111101010111001000101000000111", 
    84 => "00111101000101101001100110010101", 
    85 => "10111101010001010001011000001011", 
    86 => "10111110001001111110110010101110", 
    87 => "10111110000001111010011111101001", 
    88 => "00111100001011100100111000110110", 
    89 => "00111100110011100001001011000010", 
    90 => "00111101101011101111010001001100", 
    91 => "10111101110101011100011101110101", 
    92 => "10111101100001010011111110011110", 
    93 => "00111101011110111110101011111011", 
    94 => "10111101100010110011111001001100", 
    95 => "00111101100010011100011000011000", 
    96 => "00111110000100010011011110101111", 
    97 => "00111110001110000000001010011010", 
    98 => "00111110011000111011110010010111", 
    99 => "00111100111000010100100000001010", 
    100 => "00111101111101010000101100010111", 
    101 => "00111110001011100001000111111100", 
    102 => "10111101011011111011000011010000", 
    103 => "10111101011011011001100101010010", 
    104 => "00111101101100100111001110010000", 
    105 => "10111011001010001101100110000100", 
    106 => "00111101111111110101101100011000", 
    107 => "10111101100001110011001110110001", 
    108 => "00111101111001100101111101000111", 
    109 => "10111110000000111100100010110011", 
    110 => "10111110010001111000010100010001", 
    111 => "10111101010110101010011000000001", 
    112 => "00111100101101001110000001010101", 
    113 => "10111101010111000000100101101010", 
    114 => "00111110010000110010100001100000", 
    115 => "00111101001011000110111010101010", 
    116 => "00111110010110001000111011100011", 
    117 => "00111110000000011011110100111110", 
    118 => "00111101110011011011000110111110", 
    119 => "00111100110001000101100100111000", 
    120 => "10111110000000000001001011010100", 
    121 => "00111101101011011000101001010110", 
    122 => "10111110000001111100110001001000", 
    123 => "10111110001110100100100010111010", 
    124 => "00111010001101101111010011110000", 
    125 => "10111110000011110100001110010010", 
    126 => "10111110000110110110110101111100", 
    127 => "10111101111001001011111000100111", 
    128 => "00111101000000010111010000010011", 
    129 => "00111110000110101011010000110111", 
    130 => "00111110000111110101101101100001", 
    131 => "00111110001011101011001010111000", 
    132 => "00111101001110111000100101110101", 
    133 => "00111101010011111011001111100001", 
    134 => "00111101101100111111110000001010", 
    135 => "10111101100111010110101000111110", 
    136 => "10111101100010000111110011000010", 
    137 => "00111100011011101000101101010011", 
    138 => "00111110000011101000001010001100", 
    139 => "10111110000110100000010010011011", 
    140 => "00111101101001101100111010111011", 
    141 => "10111101110100001011111110001011", 
    142 => "00111100101100010110001011110100", 
    143 => "00111101110111000100000101110111", 
    144 => "10111101110111010011110101110011", 
    145 => "10111101111101011001001100011111", 
    146 => "10111101110101000111111111011000", 
    147 => "10111110000100010001000111111000", 
    148 => "00111100011000101101111101011011", 
    149 => "00111101010000001001001001011111", 
    150 => "00111100110111001111000010010011", 
    151 => "00111100011011011101101100001100", 
    152 => "10111101111001000001111010000100", 
    153 => "10111110001000100101000011100011", 
    154 => "10111110010010100010010101010010", 
    155 => "10111101101100010001100011110101", 
    156 => "00111100000100001011101001100000", 
    157 => "00111101101000111100000001000101", 
    158 => "00111010010011000010011010001010", 
    159 => "00111011100110000011001101011001", 
    160 => "10111101100001001011010111100101", 
    161 => "10111110001111010110110110101111", 
    162 => "00111100011000001100001101001000", 
    163 => "00111101001111101010010000101000", 
    164 => "00111110010001000010111101100111", 
    165 => "00111100101110100101000010011101", 
    166 => "10111110000001011011001111111010", 
    167 => "00111100101110110100011010011101" );


attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity dut_mlp_xcel_fc3_weight is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 168;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of dut_mlp_xcel_fc3_weight is
    component dut_mlp_xcel_fc3_weight_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dut_mlp_xcel_fc3_weight_rom_U :  component dut_mlp_xcel_fc3_weight_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

