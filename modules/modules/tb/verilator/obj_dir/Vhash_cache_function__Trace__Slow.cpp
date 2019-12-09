// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vhash_cache_function__Syms.h"


//======================

void Vhash_cache_function::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback(&Vhash_cache_function::traceInit, &Vhash_cache_function::traceFull, &Vhash_cache_function::traceChg, this);
}
void Vhash_cache_function::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    Vhash_cache_function* t=(Vhash_cache_function*)userthis;
    Vhash_cache_function__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) {
	VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vcdp->scopeEscape(' ');
    t->traceInitThis(vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void Vhash_cache_function::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    Vhash_cache_function* t=(Vhash_cache_function*)userthis;
    Vhash_cache_function__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis(vlSymsp, vcdp, code);
}

//======================


void Vhash_cache_function::traceInitThis(Vhash_cache_function__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
	vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void Vhash_cache_function::traceFullThis(Vhash_cache_function__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void Vhash_cache_function::traceInitThis__1(Vhash_cache_function__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->declBit(c+16,"clk_i",-1);
	vcdp->declBus(c+17,"addr_i",-1,31,0);
	vcdp->declBit(c+18,"line_index_o",-1);
	vcdp->declBus(c+19,"hash_cache_function WORD_SIZE",-1,31,0);
	vcdp->declBit(c+16,"hash_cache_function clk_i",-1);
	vcdp->declBus(c+17,"hash_cache_function addr_i",-1,31,0);
	vcdp->declBit(c+18,"hash_cache_function line_index_o",-1);
	vcdp->declBus(c+20,"hash_cache_function random_number_w",-1,31,0);
	vcdp->declBus(c+10,"hash_cache_function rotate_0",-1,31,0);
	vcdp->declBus(c+11,"hash_cache_function rotate_1",-1,31,0);
	vcdp->declBus(c+12,"hash_cache_function rotate_2",-1,31,0);
	vcdp->declBus(c+13,"hash_cache_function rotate_3",-1,31,0);
	vcdp->declBus(c+14,"hash_cache_function rotate_4",-1,31,0);
	vcdp->declBus(c+15,"hash_cache_function rotate_5",-1,31,0);
	vcdp->declArray(c+1,"hash_cache_function output_xor_0",-1,95,0);
	vcdp->declQuad(c+4,"hash_cache_function output_xor_1",-1,47,0);
	vcdp->declBus(c+6,"hash_cache_function output_xor_2",-1,23,0);
	vcdp->declBus(c+7,"hash_cache_function output_xor_3",-1,11,0);
	vcdp->declBus(c+8,"hash_cache_function output_xor_4",-1,5,0);
	vcdp->declBus(c+9,"hash_cache_function output_xor_5",-1,2,0);
	vcdp->declBit(c+21,"hash_cache_function output_xor_6",-1);
	vcdp->declBus(c+19,"hash_cache_function inst_RNG WORD_SIZE",-1,31,0);
	vcdp->declBit(c+16,"hash_cache_function inst_RNG clk_i",-1);
	vcdp->declBus(c+20,"hash_cache_function inst_RNG output_number_o",-1,31,0);
    }
}

void Vhash_cache_function::traceFullThis__1(Vhash_cache_function__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->fullArray(c+1,(vlTOPp->hash_cache_function__DOT__output_xor_0),96);
	vcdp->fullQuad(c+4,(vlTOPp->hash_cache_function__DOT__output_xor_1),48);
	vcdp->fullBus(c+6,(vlTOPp->hash_cache_function__DOT__output_xor_2),24);
	vcdp->fullBus(c+7,(vlTOPp->hash_cache_function__DOT__output_xor_3),12);
	vcdp->fullBus(c+8,(vlTOPp->hash_cache_function__DOT__output_xor_4),6);
	vcdp->fullBus(c+9,(vlTOPp->hash_cache_function__DOT__output_xor_5),3);
	vcdp->fullBus(c+10,(vlTOPp->hash_cache_function__DOT__rotate_0),32);
	vcdp->fullBus(c+11,(vlTOPp->hash_cache_function__DOT__rotate_1),32);
	vcdp->fullBus(c+12,(vlTOPp->hash_cache_function__DOT__rotate_2),32);
	vcdp->fullBus(c+13,(vlTOPp->hash_cache_function__DOT__rotate_3),32);
	vcdp->fullBus(c+14,(vlTOPp->hash_cache_function__DOT__rotate_4),32);
	vcdp->fullBus(c+15,(vlTOPp->hash_cache_function__DOT__rotate_5),32);
	vcdp->fullBit(c+16,(vlTOPp->clk_i));
	vcdp->fullBus(c+17,(vlTOPp->addr_i),32);
	vcdp->fullBit(c+18,(vlTOPp->line_index_o));
	vcdp->fullBus(c+19,(0x20U),32);
	vcdp->fullBus(c+20,(0x1424bc9U),32);
	vcdp->fullBit(c+21,(vlTOPp->hash_cache_function__DOT__output_xor_6));
    }
}
