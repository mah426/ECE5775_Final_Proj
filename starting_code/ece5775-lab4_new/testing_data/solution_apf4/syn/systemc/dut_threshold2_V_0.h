// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __dut_threshold2_V_0_H__
#define __dut_threshold2_V_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dut_threshold2_V_0_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 1296;
  static const unsigned AddressWidth = 11;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dut_threshold2_V_0_ram) {
        for (unsigned i = 0; i < 64 ; i = i + 1) {
            ram[i] = "0b00000001";
        }
        for (unsigned i = 64; i < 128 ; i = i + 1) {
            ram[i] = "0b11111100";
        }
        for (unsigned i = 128; i < 192 ; i = i + 1) {
            ram[i] = "0b00000001";
        }
        for (unsigned i = 192; i < 256 ; i = i + 1) {
            ram[i] = "0b00000000";
        }
        for (unsigned i = 256; i < 320 ; i = i + 1) {
            ram[i] = "0b00000101";
        }
        for (unsigned i = 320; i < 384 ; i = i + 1) {
            ram[i] = "0b00000010";
        }
        for (unsigned i = 384; i < 448 ; i = i + 1) {
            ram[i] = "0b00000101";
        }
        for (unsigned i = 448; i < 512 ; i = i + 1) {
            ram[i] = "0b11111111";
        }
        for (unsigned i = 512; i < 576 ; i = i + 1) {
            ram[i] = "0b00000001";
        }
        for (unsigned i = 576; i < 640 ; i = i + 1) {
            ram[i] = "0b00000101";
        }
        for (unsigned i = 640; i < 704 ; i = i + 1) {
            ram[i] = "0b00001000";
        }
        for (unsigned i = 704; i < 768 ; i = i + 1) {
            ram[i] = "0b00000111";
        }
        for (unsigned i = 768; i < 832 ; i = i + 1) {
            ram[i] = "0b00000011";
        }
        for (unsigned i = 832; i < 896 ; i = i + 1) {
            ram[i] = "0b00000101";
        }
        for (unsigned i = 896; i < 960 ; i = i + 1) {
            ram[i] = "0b00000000";
        }
        for (unsigned i = 960; i < 1024 ; i = i + 1) {
            ram[i] = "0b00000101";
        }
        for (unsigned i = 1024; i < 1088 ; i = i + 1) {
            ram[i] = "0b00000001";
        }
        for (unsigned i = 1088; i < 1152 ; i = i + 1) {
            ram[i] = "0b00000110";
        }
        for (unsigned i = 1152; i < 1216 ; i = i + 1) {
            ram[i] = "0b00001001";
        }
        for (unsigned i = 1216; i < 1280 ; i = i + 1) {
            ram[i] = "0b00001010";
        }
        for (unsigned i = 1280; i < 1296 ; i = i + 1) {
            ram[i] = "0b00000000";
        }


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


SC_MODULE(dut_threshold2_V_0) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 1296;
static const unsigned AddressWidth = 11;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dut_threshold2_V_0_ram* meminst;


SC_CTOR(dut_threshold2_V_0) {
meminst = new dut_threshold2_V_0_ram("dut_threshold2_V_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~dut_threshold2_V_0() {
    delete meminst;
}


};//endmodule
#endif
