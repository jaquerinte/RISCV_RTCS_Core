// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vhash_cache_function__Syms.h"


//======================

void Vhash_cache_function::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    Vhash_cache_function* t=(Vhash_cache_function*)userthis;
    Vhash_cache_function__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
	t->traceChgThis(vlSymsp, vcdp, code);
    }
}

//======================


void Vhash_cache_function::traceChgThis(Vhash_cache_function__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
			       | (vlTOPp->__Vm_traceActivity 
				  >> 1U))))) {
	    vlTOPp->traceChgThis__2(vlSymsp, vcdp, code);
	}
	if (VL_UNLIKELY((2U & vlTOPp->__Vm_traceActivity))) {
	    vlTOPp->traceChgThis__3(vlSymsp, vcdp, code);
	}
	vlTOPp->traceChgThis__4(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void Vhash_cache_function::traceChgThis__2(Vhash_cache_function__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgArray(c+1,(vlTOPp->hash_cache_function__DOT__output_xor_0),96);
	vcdp->chgQuad(c+4,(vlTOPp->hash_cache_function__DOT__output_xor_1),48);
	vcdp->chgBus(c+6,(vlTOPp->hash_cache_function__DOT__output_xor_2),24);
	vcdp->chgBus(c+7,(vlTOPp->hash_cache_function__DOT__output_xor_3),12);
	vcdp->chgBus(c+8,(vlTOPp->hash_cache_function__DOT__output_xor_4),6);
	vcdp->chgBus(c+9,(vlTOPp->hash_cache_function__DOT__output_xor_5),3);
    }
}

void Vhash_cache_function::traceChgThis__3(Vhash_cache_function__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBus(c+10,(vlTOPp->hash_cache_function__DOT__rotate_0),32);
	vcdp->chgBus(c+11,(vlTOPp->hash_cache_function__DOT__rotate_1),32);
	vcdp->chgBus(c+12,(vlTOPp->hash_cache_function__DOT__rotate_2),32);
	vcdp->chgBus(c+13,(vlTOPp->hash_cache_function__DOT__rotate_3),32);
	vcdp->chgBus(c+14,(vlTOPp->hash_cache_function__DOT__rotate_4),32);
	vcdp->chgBus(c+15,(vlTOPp->hash_cache_function__DOT__rotate_5),32);
    }
}

void Vhash_cache_function::traceChgThis__4(Vhash_cache_function__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBit(c+16,(vlTOPp->clk_i));
	vcdp->chgBus(c+17,(vlTOPp->addr_i),32);
	vcdp->chgBit(c+18,(vlTOPp->line_index_o));
    }
}
