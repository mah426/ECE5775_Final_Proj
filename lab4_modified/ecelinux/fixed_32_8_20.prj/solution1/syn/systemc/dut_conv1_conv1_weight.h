// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __dut_conv1_conv1_weight_H__
#define __dut_conv1_conv1_weight_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dut_conv1_conv1_weight_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 450;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dut_conv1_conv1_weight_ram) {
        ram[0] = "0b10111101011010011110110100001101";
        ram[1] = "0b00111100110011011011110100010001";
        ram[2] = "0b10111110101000011110000101000101";
        ram[3] = "0b10111110111101101101101010111010";
        ram[4] = "0b00111100000101100110100101110110";
        ram[5] = "0b00111101100111000100111100000110";
        ram[6] = "0b10111110110101110101000000101001";
        ram[7] = "0b10111110110100011011001011001100";
        ram[8] = "0b10111110000010100101010011111001";
        ram[9] = "0b10111101000010000101100111000001";
        ram[10] = "0b00111101110100100001000000111100";
        ram[11] = "0b10111100110111110111101111101010";
        ram[12] = "0b00111110100011101010111000010011";
        ram[13] = "0b00111110100010101001000000010011";
        ram[14] = "0b00111101010001011011001011001101";
        ram[15] = "0b00111101110000011011101010101001";
        ram[16] = "0b00111110101101100110101110001110";
        ram[17] = "0b00111110110011101111010101111010";
        ram[18] = "0b00111110100010011011100010110101";
        ram[19] = "0b10111101010101100000101101110101";
        ram[20] = "0b10111100101000101001000010000011";
        ram[21] = "0b00111100100011100101000011001111";
        ram[22] = "0b10111100001100100010001101110010";
        ram[23] = "0b00111100111110111111011001100010";
        ram[24] = "0b00111110001010001000011101110101";
        ram[25] = "0b00111110001100101010001101000001";
        ram[26] = "0b00111110100111110010010010101111";
        ram[27] = "0b10111110001101111001011010011001";
        ram[28] = "0b10111110001011010110011110011110";
        ram[29] = "0b00111110001111110010010000111001";
        ram[30] = "0b00111110010110101101010011010000";
        ram[31] = "0b10111110011001111001110001000011";
        ram[32] = "0b10111110101111000100101001000101";
        ram[33] = "0b00111011110100110010000011110010";
        ram[34] = "0b00111110100010100100110110010100";
        ram[35] = "0b10111101000111100110010000001000";
        ram[36] = "0b10111110000100100100111111000100";
        ram[37] = "0b00111110010000000110001011111000";
        ram[38] = "0b00111110001100101100101010100110";
        ram[39] = "0b10111101001001110100000101101001";
        ram[40] = "0b10111101101110100111001010101111";
        ram[41] = "0b00111101111010101011100101010001";
        ram[42] = "0b00111110001101001011010001110001";
        ram[43] = "0b00111100110111101111000001100000";
        ram[44] = "0b10111110101001100100001101011100";
        ram[45] = "0b10111101101110000100000101010101";
        ram[46] = "0b10111101110001000001011010111000";
        ram[47] = "0b10111101101101101010001000000111";
        ram[48] = "0b00111100110100110011000111110000";
        ram[49] = "0b10111110001001010100000100100010";
        ram[50] = "0b10111101001000111000011001110101";
        ram[51] = "0b00111101111100001100010111110110";
        ram[52] = "0b10111110101101001110011011101001";
        ram[53] = "0b10111110101110110000000011011110";
        ram[54] = "0b00111110000000111010011000011111";
        ram[55] = "0b00111011110101110111000011000010";
        ram[56] = "0b10111110100111100011000101111000";
        ram[57] = "0b10111111000000000110101100110100";
        ram[58] = "0b10111101101011011101101100010011";
        ram[59] = "0b00111101000110100001001010101110";
        ram[60] = "0b10111101000010000101110001010000";
        ram[61] = "0b10111100101111000111100001100100";
        ram[62] = "0b00111110100110010001001001111000";
        ram[63] = "0b00111110001000011011010100100001";
        ram[64] = "0b10111101111111111010100000101111";
        ram[65] = "0b00111101011101100111010000000011";
        ram[66] = "0b00111110100111010010100001110010";
        ram[67] = "0b00111110110011101111000000101001";
        ram[68] = "0b00111101101000001011110111101110";
        ram[69] = "0b00111101000110100000111100110010";
        ram[70] = "0b10111100010000011001000100100010";
        ram[71] = "0b10111100100110001110110100111010";
        ram[72] = "0b00111101110010111001100000110111";
        ram[73] = "0b00111101110011000011000101101110";
        ram[74] = "0b10111101000001001100001000011010";
        ram[75] = "0b10111110001111010010110110110110";
        ram[76] = "0b00111101111110111110011100011101";
        ram[77] = "0b00111110000011001011100111111001";
        ram[78] = "0b10111110101001101111000110101001";
        ram[79] = "0b00111101100001100111101000011000";
        ram[80] = "0b10111110011010000111111010010101";
        ram[81] = "0b00111110100011110100101100000101";
        ram[82] = "0b00111101101111110101101011000011";
        ram[83] = "0b10111110011101011000010110010110";
        ram[84] = "0b00111101110100010011100111000101";
        ram[85] = "0b10111110101011110010000000011010";
        ram[86] = "0b00111111000010100000011110100100";
        ram[87] = "0b00111110000111010011110101000100";
        ram[88] = "0b10111110101011111000100001101001";
        ram[89] = "0b10111100100101100011011111101101";
        ram[90] = "0b10111110101001100111110110001011";
        ram[91] = "0b00111110111000001100110000001010";
        ram[92] = "0b00111101111000110111101010010100";
        ram[93] = "0b10111110100001011001001001110111";
        ram[94] = "0b10111101100100010011110111101000";
        ram[95] = "0b10111101101010000110101000101101";
        ram[96] = "0b00111110101101100110011100110000";
        ram[97] = "0b00111100111010110011101100000010";
        ram[98] = "0b10111110010100110111001010001110";
        ram[99] = "0b10111101011001001110110001000110";
        ram[100] = "0b10111110100110110110000010110111";
        ram[101] = "0b00111110011110110101101000001100";
        ram[102] = "0b00111101000110110011011000111000";
        ram[103] = "0b10111110001000001101110000011000";
        ram[104] = "0b00111110000011000110101100011101";
        ram[105] = "0b10111110110100100011101011011100";
        ram[106] = "0b00111110011100010100011011010111";
        ram[107] = "0b00111101110000111010110101001010";
        ram[108] = "0b10111110100101100000100111110100";
        ram[109] = "0b10111010100001011101100000111111";
        ram[110] = "0b10111110110101001111010010000110";
        ram[111] = "0b00111110110111010101000000101010";
        ram[112] = "0b00111110001110100110111000010110";
        ram[113] = "0b10111110010001111011000010111001";
        ram[114] = "0b00111110001011100110000110010110";
        ram[115] = "0b10111110101101010100110110010001";
        ram[116] = "0b00111110101100010101001000111011";
        ram[117] = "0b00111110000101000011110111100100";
        ram[118] = "0b10111110010100101110001110111000";
        ram[119] = "0b00111101011101100101001111101010";
        ram[120] = "0b10111110100011010101010100110111";
        ram[121] = "0b00111110101100000110110101011010";
        ram[122] = "0b00111101101110011110000100001010";
        ram[123] = "0b10111110100001111110010001110001";
        ram[124] = "0b00111100011010100011011101111100";
        ram[125] = "0b10111110100101011100000000000010";
        ram[126] = "0b00111110011110001011010111000001";
        ram[127] = "0b00111110001110101001110001100010";
        ram[128] = "0b10111110000111110101001001110101";
        ram[129] = "0b00111101100100110001001001001010";
        ram[130] = "0b10111110110010101101101110010100";
        ram[131] = "0b00111110110010011000001110011110";
        ram[132] = "0b00111110000100010100111100001110";
        ram[133] = "0b10111110101000010010110110100101";
        ram[134] = "0b00111101100001100110111001001111";
        ram[135] = "0b10111110110111000011011010110101";
        ram[136] = "0b00111111000001000010010111101010";
        ram[137] = "0b00111110000000001000011101011011";
        ram[138] = "0b10111110011101010101101011000001";
        ram[139] = "0b00111101101011100110001010011111";
        ram[140] = "0b10111110111100001010000010111000";
        ram[141] = "0b00111111000010010111100011100000";
        ram[142] = "0b00111110001011100001100011010110";
        ram[143] = "0b10111110101010101101010101110010";
        ram[144] = "0b00111101101101110010111100111010";
        ram[145] = "0b10111110100100101001011010100110";
        ram[146] = "0b00111111000000000010101010011010";
        ram[147] = "0b00111110001111110010001011010000";
        ram[148] = "0b10111110000000110001011000010001";
        ram[149] = "0b00111101011111010010100011000111";
        ram[150] = "0b10111100001111100010111011110011";
        ram[151] = "0b00111110101110011001000010010110";
        ram[152] = "0b00111110001011101000011011001011";
        ram[153] = "0b10111100010011000110100000101100";
        ram[154] = "0b10111101001101001010011010101010";
        ram[155] = "0b10111101011010010001100010001001";
        ram[156] = "0b00111110101001011000011110000110";
        ram[157] = "0b00111110110111100011001100110101";
        ram[158] = "0b10111101100111000101111101100011";
        ram[159] = "0b10111101101001001100010100101000";
        ram[160] = "0b10111101110101111010100010001000";
        ram[161] = "0b10111110001101000010111111100000";
        ram[162] = "0b10111100111110001001011001101110";
        ram[163] = "0b10111101001100101110011110001001";
        ram[164] = "0b10111101100001000101110101100110";
        ram[165] = "0b10111100110100000001111100110100";
        ram[166] = "0b10111110100101100011000010011001";
        ram[167] = "0b10111110101001101001111100000101";
        ram[168] = "0b10111100111001110000110010110001";
        ram[169] = "0b00111101110111100101000011001101";
        ram[170] = "0b00111101011001111011001010011111";
        ram[171] = "0b10111110000001011010010110001001";
        ram[172] = "0b10111110000000011010011101111000";
        ram[173] = "0b00111101001000001000011000001110";
        ram[174] = "0b10111100010011111001010010001011";
        ram[175] = "0b10111110000000110010000001001010";
        ram[176] = "0b00111110100000100010010001110101";
        ram[177] = "0b00111101101011001011111010011101";
        ram[178] = "0b10111110001110100010101010001011";
        ram[179] = "0b10111110001001001011001100000111";
        ram[180] = "0b10111110001010101101010000111011";
        ram[181] = "0b00111110001000100010111011101111";
        ram[182] = "0b00111110100110010101001101001111";
        ram[183] = "0b10111101101100010001101000101101";
        ram[184] = "0b10111110011100011110000110011110";
        ram[185] = "0b00111001000100101010000011010111";
        ram[186] = "0b10111110101001101101100010110100";
        ram[187] = "0b10111101111110010111001111101101";
        ram[188] = "0b00111101100111011111110001000010";
        ram[189] = "0b00111110011001000010000011100011";
        ram[190] = "0b00111110010001100101101100010100";
        ram[191] = "0b10111110011000000000010011011111";
        ram[192] = "0b10111110110100000100011100011100";
        ram[193] = "0b00111101100010100010010001000010";
        ram[194] = "0b00111110010000100100100110110001";
        ram[195] = "0b00111110000111101110100101111001";
        ram[196] = "0b10111101110010000101101111110001";
        ram[197] = "0b10111110010111111000101000010010";
        ram[198] = "0b00111110000101101001100110100001";
        ram[199] = "0b00111101111010111000000100100100";
        ram[200] = "0b00111100110011001010011010100101";
        ram[201] = "0b00111110111001000110001100110010";
        ram[202] = "0b00111110101011100100100000000111";
        ram[203] = "0b10111110001111111111000000001110";
        ram[204] = "0b10111110010001111011111110011011";
        ram[205] = "0b10111101111100110111111000000000";
        ram[206] = "0b00111110100000111101011000011101";
        ram[207] = "0b00111111000100100101111101001111";
        ram[208] = "0b00111100101110100010011100011011";
        ram[209] = "0b10111101101001110100111011111100";
        ram[210] = "0b10111101101000001110011010011110";
        ram[211] = "0b10111101101110001010001000110001";
        ram[212] = "0b10111110011001000100011001111101";
        ram[213] = "0b10111011111111111101111101100100";
        ram[214] = "0b00111110000000010101111000100101";
        ram[215] = "0b00111101000011011000101001010100";
        ram[216] = "0b10111110110001011111111111100101";
        ram[217] = "0b10111110111001001100010000110011";
        ram[218] = "0b00111101101001101110001111011110";
        ram[219] = "0b00111110000111000001010011011100";
        ram[220] = "0b00111101100001111101010100101110";
        ram[221] = "0b10111101100100101111000110011100";
        ram[222] = "0b10111101000101110010111001010110";
        ram[223] = "0b10111101101001011111111011011011";
        ram[224] = "0b10111100101110110001110111000011";
        ram[225] = "0b10111110000001101101011100001010";
        ram[226] = "0b00111101010100101100001110110011";
        ram[227] = "0b10111101010011111110011101011010";
        ram[228] = "0b00111101111110111101101110100011";
        ram[229] = "0b00111101111000000001011000101001";
        ram[230] = "0b10111110100010000000000110000101";
        ram[231] = "0b10111110010000001111101000101011";
        ram[232] = "0b00111100100100111000011010011001";
        ram[233] = "0b10111100100101101101000001110110";
        ram[234] = "0b10111110000010011001110101001111";
        ram[235] = "0b10111100111101100001011000011101";
        ram[236] = "0b00111101100101101000000101100000";
        ram[237] = "0b00111101000000011011100001011010";
        ram[238] = "0b00111110010011110111111111000010";
        ram[239] = "0b10111101100110111110001110001001";
        ram[240] = "0b10111110100011100011110001100101";
        ram[241] = "0b00111010110100001111001100001010";
        ram[242] = "0b10111101000101001101000110000101";
        ram[243] = "0b00111110001001100111000001001101";
        ram[244] = "0b10111101001111100001010001010000";
        ram[245] = "0b10111101010011010111101110001001";
        ram[246] = "0b10111100010101100110100010101000";
        ram[247] = "0b10111101111111011010001000000100";
        ram[248] = "0b00111110001000100110010011111100";
        ram[249] = "0b00111110001100010100011001010100";
        ram[250] = "0b10111101101010000000011010100001";
        ram[251] = "0b00111110011001011000111111011111";
        ram[252] = "0b00111110001110010111100010101111";
        ram[253] = "0b00111110010101010010100100010111";
        ram[254] = "0b00111101101001010001111010000001";
        ram[255] = "0b10111110001111011010101100101110";
        ram[256] = "0b10111110001111010011000000101111";
        ram[257] = "0b10111110010101000110101101010011";
        ram[258] = "0b10111110100001101011101100000000";
        ram[259] = "0b10111101110110110010001110011100";
        ram[260] = "0b00111100001111000111010001110100";
        ram[261] = "0b00111110000100110101011111010101";
        ram[262] = "0b00111110001111011110100000100010";
        ram[263] = "0b00111100111011000111010110010101";
        ram[264] = "0b10111101101111001000011000110101";
        ram[265] = "0b10111100100100110100011001111111";
        ram[266] = "0b00111010111000000111010000110101";
        ram[267] = "0b00111101101111100011000101000100";
        ram[268] = "0b00111101000001010010110010010001";
        ram[269] = "0b00111101011000101010111001111011";
        ram[270] = "0b10111101111010010100011101000110";
        ram[271] = "0b00111101101010101101111110100011";
        ram[272] = "0b10111110000100111111110000111111";
        ram[273] = "0b00111100011110011101010101001010";
        ram[274] = "0b00111101100101011000001000011101";
        ram[275] = "0b10111101100111010111010010000000";
        ram[276] = "0b00111101000110101010110001010001";
        ram[277] = "0b00111101010111111100100011111100";
        ram[278] = "0b10111101100011010100101101000111";
        ram[279] = "0b10111101110000100001111111101011";
        ram[280] = "0b10111110011101000101101100001110";
        ram[281] = "0b10111100110100111110001111011110";
        ram[282] = "0b10111101111100000110111000110111";
        ram[283] = "0b10111110011000001001111010010101";
        ram[284] = "0b10111110011110110010000111010101";
        ram[285] = "0b10111110000001011011010110010010";
        ram[286] = "0b00111101110111001110100011010010";
        ram[287] = "0b00111110000101100010011001010111";
        ram[288] = "0b10111101011111100111010001100100";
        ram[289] = "0b10111110010100111101101100000001";
        ram[290] = "0b10111101101001111100100100000000";
        ram[291] = "0b00111100111000101000101010100001";
        ram[292] = "0b00111110011001100111010000001001";
        ram[293] = "0b00111101111010010001001011011101";
        ram[294] = "0b10111101110001100001111101110110";
        ram[295] = "0b10111101100011001101111010001101";
        ram[296] = "0b00111110001001110010101001010010";
        ram[297] = "0b10111100100111011101011001111010";
        ram[298] = "0b00111101001100101001101011101000";
        ram[299] = "0b00111110001100110010010110111101";
        ram[300] = "0b10111110000111011101111110010001";
        ram[301] = "0b00111001101111001011101001001101";
        ram[302] = "0b10111100111101010101001000010010";
        ram[303] = "0b10111100101100111100010010111110";
        ram[304] = "0b00111110001000001010010010000011";
        ram[305] = "0b10111101010000010101011110111101";
        ram[306] = "0b00111100110010100111101010111011";
        ram[307] = "0b10111100101011001100101001010001";
        ram[308] = "0b10111110100001101111101110100110";
        ram[309] = "0b00111110111010111101001100110111";
        ram[310] = "0b00111100011101000110000010110110";
        ram[311] = "0b00111110000000001010100001101011";
        ram[312] = "0b10111110000101100011011010011111";
        ram[313] = "0b10111110111100111110100001101110";
        ram[314] = "0b00111110110111101010110011000101";
        ram[315] = "0b10111100100000100100110000001111";
        ram[316] = "0b00111101000101100011011100010000";
        ram[317] = "0b00111100000101011111111110101101";
        ram[318] = "0b10111110111110011011000110011010";
        ram[319] = "0b00111110110100111100011100110000";
        ram[320] = "0b10111101100100111001110111111010";
        ram[321] = "0b10111011110101111000111000111011";
        ram[322] = "0b00111101100111011010101101011100";
        ram[323] = "0b10111110110000011001010011111010";
        ram[324] = "0b00111110100010101010001010000011";
        ram[325] = "0b00111101110000000001000101101011";
        ram[326] = "0b00111110000100010110100000001111";
        ram[327] = "0b10111101110010101000010000000101";
        ram[328] = "0b10111110101000101001111011011011";
        ram[329] = "0b00111110010010111011101101101011";
        ram[330] = "0b00111101111100011011001010111010";
        ram[331] = "0b00111110011101100001011100011000";
        ram[332] = "0b10111110001000010100101101010101";
        ram[333] = "0b10111111000000101110101111101001";
        ram[334] = "0b00111110011101100011011000011111";
        ram[335] = "0b00111101111001011100010010011011";
        ram[336] = "0b00111110011000101101011001110100";
        ram[337] = "0b10111100110110010101110011010001";
        ram[338] = "0b10111111000100011101011111101101";
        ram[339] = "0b00111110111000111010001000010101";
        ram[340] = "0b10111101100001010011101100101000";
        ram[341] = "0b00111110100000111001010010110000";
        ram[342] = "0b10111101110001111111111001111000";
        ram[343] = "0b10111111000000110110000111000000";
        ram[344] = "0b00111110001011111011010111100111";
        ram[345] = "0b00111101100110101101010011101111";
        ram[346] = "0b00111110010010011110000001011010";
        ram[347] = "0b10111100110000100101100100101011";
        ram[348] = "0b10111110101000010110011111110101";
        ram[349] = "0b00111101101011101101000000110111";
        ram[350] = "0b10111100100010010000001100011111";
        ram[351] = "0b00111110000000011010010010110000";
        ram[352] = "0b00111001000101001010010011001010";
        ram[353] = "0b10111110101010001111101010101011";
        ram[354] = "0b00111101001000101011000001100001";
        ram[355] = "0b00111011100110110010011011101100";
        ram[356] = "0b00111110010111100100100010111101";
        ram[357] = "0b10111101010100001111111111100011";
        ram[358] = "0b10111110110001100110111111111000";
        ram[359] = "0b00111110011101010101111010100100";
        ram[360] = "0b00111101100110001110000010001011";
        ram[361] = "0b00111110010011101101000011101101";
        ram[362] = "0b10111101110001010001110111010111";
        ram[363] = "0b10111111000010001000001110100001";
        ram[364] = "0b00111110010000111011100000111011";
        ram[365] = "0b00111101111011111010011011010000";
        ram[366] = "0b00111110011010100100101100010001";
        ram[367] = "0b00111011011100001011101011101011";
        ram[368] = "0b10111110111001001011110111010001";
        ram[369] = "0b00111110100100000010001111111110";
        ram[370] = "0b00111110001101111010010000110110";
        ram[371] = "0b00111110011010010011001101101000";
        ram[372] = "0b10111011100100011000111111000011";
        ram[373] = "0b10111110101101101010110111011101";
        ram[374] = "0b00111101111001100110100011101001";
        ram[375] = "0b10111100100100010100000010111001";
        ram[376] = "0b10111110101101011001010111000111";
        ram[377] = "0b10111110001101000001000101111110";
        ram[378] = "0b00111100101101100110011010111101";
        ram[379] = "0b00111101110011111111010001111011";
        ram[380] = "0b10111110010000101110000000110001";
        ram[381] = "0b10111110000000010101010110101001";
        ram[382] = "0b10111110001111000101001101000011";
        ram[383] = "0b10111100100011101011111001111101";
        ram[384] = "0b10111101111110000101000111010110";
        ram[385] = "0b00111101101101001101001110001011";
        ram[386] = "0b00111100101110111011110000001001";
        ram[387] = "0b10111110010001011111001001100100";
        ram[388] = "0b10111110100011111000010001011110";
        ram[389] = "0b10111101101010000001011110001001";
        ram[390] = "0b10111101111101101010101011000111";
        ram[391] = "0b00111101100000000001110010010111";
        ram[392] = "0b10111011101111011110110001110100";
        ram[393] = "0b00111101001000011110100100000101";
        ram[394] = "0b00111101110100001110011010111011";
        ram[395] = "0b10111100010000111101110011101110";
        ram[396] = "0b00111100100000010001010101110000";
        ram[397] = "0b00111101101100010101001010110000";
        ram[398] = "0b00111101111001000101000111101011";
        ram[399] = "0b00111110010101100111111100011010";
        ram[400] = "0b00111110000001000100110011011001";
        ram[401] = "0b10111110011001110101101000100001";
        ram[402] = "0b10111101101100000000100111101101";
        ram[403] = "0b00111101111101001011000000110110";
        ram[404] = "0b00111101101011110001010111111010";
        ram[405] = "0b10111110010110001100000010100000";
        ram[406] = "0b10111101001110101000110001100101";
        ram[407] = "0b00111100111011110001010010110111";
        ram[408] = "0b10111101100111011001001111101110";
        ram[409] = "0b10111110000100110100011111100101";
        ram[410] = "0b00111100101111010001101101111101";
        ram[411] = "0b00111101001100110111100110110110";
        ram[412] = "0b10111110000001100011011100001011";
        ram[413] = "0b10111110100110011011111111101101";
        ram[414] = "0b10111110001001011101001001011111";
        ram[415] = "0b10111011000001000111111101111010";
        ram[416] = "0b10111101001011001000110001011111";
        ram[417] = "0b00111011011011010101111011011000";
        ram[418] = "0b10111101111100110111101100001111";
        ram[419] = "0b10111110000000001100111000000001";
        ram[420] = "0b10111110000011110001001111101100";
        ram[421] = "0b00111011110111101101101001011011";
        ram[422] = "0b10111101100100010111101101100101";
        ram[423] = "0b10111101101000001010101110000001";
        ram[424] = "0b10111101001001100001101110101000";
        ram[425] = "0b00111110000110010101010110001001";
        ram[426] = "0b10111101100100101100001101011100";
        ram[427] = "0b00111011111101111000101100101011";
        ram[428] = "0b00111110001100100010100101110001";
        ram[429] = "0b00111110100101010100110011011101";
        ram[430] = "0b10111101110000000101000101000110";
        ram[431] = "0b00111110000100000110100111000010";
        ram[432] = "0b00111110100100100100111100000111";
        ram[433] = "0b00111110101101001001010111110110";
        ram[434] = "0b00111101100001001011010110011000";
        ram[435] = "0b00111110101001000110110110100111";
        ram[436] = "0b00111110100010110000110001011001";
        ram[437] = "0b00111101110110001100011100001000";
        ram[438] = "0b00111101110001111000111000110001";
        ram[439] = "0b00111101000011010101110010001011";
        ram[440] = "0b00111101110001011001011100000001";
        ram[441] = "0b00111110000100100100011001001011";
        ram[442] = "0b00111110001010001001101100111001";
        ram[443] = "0b00111100111001000001101101111111";
        ram[444] = "0b00111001011101000011111011101110";
        ram[445] = "0b10111101110011011010110011010011";
        ram[446] = "0b00111100100010101001111000010011";
        ram[447] = "0b00111101110100100100011101100001";
        ram[448] = "0b10111101011001001011010010010001";
        ram[449] = "0b00111101001101000001010101111010";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(dut_conv1_conv1_weight) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 450;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dut_conv1_conv1_weight_ram* meminst;


SC_CTOR(dut_conv1_conv1_weight) {
meminst = new dut_conv1_conv1_weight_ram("dut_conv1_conv1_weight_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dut_conv1_conv1_weight() {
    delete meminst;
}


};//endmodule
#endif