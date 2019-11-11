// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vprocessor__Syms.h"


//======================

void Vprocessor::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    Vprocessor* t=(Vprocessor*)userthis;
    Vprocessor__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
	t->traceChgThis(vlSymsp, vcdp, code);
    }
}

//======================


void Vprocessor::traceChgThis(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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

void Vprocessor::traceChgThis__2(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBit(c+1,((1U & (((1U & (((IData)(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_4) 
					  >> 5U) ^ 
					 ((IData)(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_4) 
					  >> 2U))) 
				  ^ (3U & (((IData)(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_4) 
					    >> 4U) 
					   ^ ((IData)(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_4) 
					      >> 1U)))) 
				 ^ (((IData)(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_4) 
				     >> 3U) ^ (IData)(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_4))))));
	vcdp->chgArray(c+2,(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_0),96);
	vcdp->chgQuad(c+5,(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_1),48);
	vcdp->chgBus(c+7,(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_2),24);
	vcdp->chgBus(c+8,(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_3),12);
	vcdp->chgBus(c+9,(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_4),6);
	vcdp->chgBus(c+10,((7U & (((IData)(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_4) 
				   >> 3U) ^ (IData)(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_4)))),3);
	vcdp->chgBus(c+11,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0]),32);
	vcdp->chgBus(c+12,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[1]),32);
	vcdp->chgBus(c+13,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[2]),32);
	vcdp->chgBus(c+14,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[3]),32);
	vcdp->chgBus(c+15,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[4]),32);
	vcdp->chgBus(c+16,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[5]),32);
	vcdp->chgBus(c+17,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[6]),32);
	vcdp->chgBus(c+18,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[7]),32);
	vcdp->chgBus(c+19,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[8]),32);
	vcdp->chgBus(c+20,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[9]),32);
	vcdp->chgBus(c+21,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[10]),32);
	vcdp->chgBus(c+22,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[11]),32);
	vcdp->chgBus(c+23,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[12]),32);
	vcdp->chgBus(c+24,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[13]),32);
	vcdp->chgBus(c+25,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[14]),32);
	vcdp->chgBus(c+26,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[15]),32);
	vcdp->chgBus(c+27,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[16]),32);
	vcdp->chgBus(c+28,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[17]),32);
	vcdp->chgBus(c+29,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[18]),32);
	vcdp->chgBus(c+30,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[19]),32);
	vcdp->chgBus(c+31,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[20]),32);
	vcdp->chgBus(c+32,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[21]),32);
	vcdp->chgBus(c+33,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[22]),32);
	vcdp->chgBus(c+34,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[23]),32);
	vcdp->chgBus(c+35,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[24]),32);
	vcdp->chgBus(c+36,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[25]),32);
	vcdp->chgBus(c+37,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[26]),32);
	vcdp->chgBus(c+38,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[27]),32);
	vcdp->chgBus(c+39,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[28]),32);
	vcdp->chgBus(c+40,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[29]),32);
	vcdp->chgBus(c+41,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[30]),32);
	vcdp->chgBus(c+42,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[31]),32);
    }
}

void Vprocessor::traceChgThis__3(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBus(c+43,(vlTOPp->processor__DOT__addr_IF_MEM),32);
	vcdp->chgBit(c+44,(vlTOPp->processor__DOT__valid_data_MEM_IF));
	vcdp->chgArray(c+45,(vlTOPp->processor__DOT__mem_data_bus_w),128);
	vcdp->chgBit(c+49,(vlTOPp->processor__DOT__strobe_main_memory_w));
	vcdp->chgBus(c+50,(vlTOPp->processor__DOT__inst_IF__DOT__nrm0_o),32);
	vcdp->chgBus(c+51,(vlTOPp->processor__DOT__inst_IF__DOT__instruction_register_o),32);
	vcdp->chgBit(c+52,(vlTOPp->processor__DOT__inst_IF__DOT__valid_o));
	vcdp->chgBus(c+53,(vlTOPp->processor__DOT__inst_IF__DOT__addr_asked),32);
	vcdp->chgBit(c+54,(vlTOPp->processor__DOT__inst_IF__DOT__addr_ask));
	vcdp->chgArray(c+55,(vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0]),307);
	vcdp->chgArray(c+65,(vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1]),307);
	vcdp->chgBus(c+75,(vlTOPp->processor__DOT__inst_IF__DOT__rm0),32);
	vcdp->chgBus(c+76,(vlTOPp->processor__DOT__inst_IF__DOT__unnamedblk1__DOT__i),32);
	vcdp->chgBus(c+77,(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_0),32);
	vcdp->chgBus(c+78,(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_1),32);
	vcdp->chgBus(c+79,(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_2),32);
	vcdp->chgBus(c+80,(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_3),32);
	vcdp->chgBus(c+81,(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_4),32);
	vcdp->chgBus(c+82,(vlTOPp->processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_5),32);
	vcdp->chgArray(c+83,(vlTOPp->processor__DOT__inst_MEM__DOT__data_o_0),128);
	vcdp->chgArray(c+87,(vlTOPp->processor__DOT__inst_MEM__DOT__data_o_1),128);
	vcdp->chgArray(c+91,(vlTOPp->processor__DOT__inst_MEM__DOT__data_o_2),128);
	vcdp->chgArray(c+95,(vlTOPp->processor__DOT__inst_MEM__DOT__data_o_3),128);
	vcdp->chgArray(c+99,(vlTOPp->processor__DOT__inst_MEM__DOT__data_o_4),128);
	vcdp->chgBit(c+103,(vlTOPp->processor__DOT__inst_MEM__DOT__valid_0));
	vcdp->chgBit(c+104,(vlTOPp->processor__DOT__inst_MEM__DOT__valid_1));
	vcdp->chgBit(c+105,(vlTOPp->processor__DOT__inst_MEM__DOT__valid_2));
	vcdp->chgBit(c+106,(vlTOPp->processor__DOT__inst_MEM__DOT__valid_3));
	vcdp->chgBit(c+107,(vlTOPp->processor__DOT__inst_MEM__DOT__valid_4));
	vcdp->chgBus(c+108,(vlTOPp->processor__DOT__inst_MEM__DOT__unnamedblk1__DOT__i),32);
    }
}

void Vprocessor::traceChgThis__4(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBit(c+109,(vlTOPp->clk_i));
	vcdp->chgBit(c+110,(vlTOPp->rstn_i));
    }
}
