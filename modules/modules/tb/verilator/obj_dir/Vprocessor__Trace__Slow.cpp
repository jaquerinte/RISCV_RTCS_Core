// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vprocessor__Syms.h"


//======================

void Vprocessor::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback(&Vprocessor::traceInit, &Vprocessor::traceFull, &Vprocessor::traceChg, this);
}
void Vprocessor::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    Vprocessor* t=(Vprocessor*)userthis;
    Vprocessor__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) {
	VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vcdp->scopeEscape(' ');
    t->traceInitThis(vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void Vprocessor::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    Vprocessor* t=(Vprocessor*)userthis;
    Vprocessor__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis(vlSymsp, vcdp, code);
}

//======================


void Vprocessor::traceInitThis(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
	vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void Vprocessor::traceFullThis(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void Vprocessor::traceInitThis__1(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->declBit(c+93,"clk_i",-1);
	vcdp->declBit(c+94,"rstn_i",-1);
	vcdp->declBus(c+95,"processor WORD_SIZE",-1,31,0);
	vcdp->declBus(c+95,"processor REGISTERS",-1,31,0);
	vcdp->declBus(c+96,"processor LINE_SIZE",-1,31,0);
	vcdp->declBus(c+97,"processor ALUOP_SIZE",-1,31,0);
	vcdp->declBus(c+98,"processor REGDIRSIZE",-1,31,0);
	vcdp->declBit(c+93,"processor clk_i",-1);
	vcdp->declBit(c+94,"processor rstn_i",-1);
	vcdp->declBus(c+33,"processor addr_IF_MEM",-1,31,0);
	vcdp->declBit(c+34,"processor valid_data_MEM_IF",-1);
	vcdp->declArray(c+35,"processor mem_data_bus_w",-1,127,0);
	vcdp->declBit(c+99,"processor write_data_bus_mem_w",-1);
	vcdp->declBit(c+39,"processor strobe_main_memory_w",-1);
	vcdp->declBus(c+95,"processor inst_IF WORD_SIZE",-1,31,0);
	vcdp->declBus(c+96,"processor inst_IF LINE_SIZE",-1,31,0);
	vcdp->declBus(c+97,"processor inst_IF WORDS_PER_LINES",-1,31,0);
	vcdp->declBus(c+97,"processor inst_IF MEMORY_LINES",-1,31,0);
	vcdp->declBus(c+100,"processor inst_IF TAG",-1,31,0);
	vcdp->declBus(c+101,"processor inst_IF OFFSET",-1,31,0);
	vcdp->declBit(c+93,"processor inst_IF clk_i",-1);
	vcdp->declBit(c+94,"processor inst_IF rstn_i",-1);
	vcdp->declArray(c+35,"processor inst_IF data_i",-1,127,0);
	vcdp->declBit(c+34,"processor inst_IF valid_input_i",-1);
	vcdp->declBus(c+40,"processor inst_IF nrm0_o",-1,31,0);
	vcdp->declBus(c+33,"processor inst_IF addr_o",-1,31,0);
	vcdp->declBus(c+41,"processor inst_IF instruction_register_o",-1,31,0);
	vcdp->declBit(c+39,"processor inst_IF ask_memory_o",-1);
	vcdp->declBit(c+42,"processor inst_IF valid_o",-1);
	vcdp->declBus(c+102,"processor inst_IF NUM_SETS_CACHE",-1,31,0);
	vcdp->declBus(c+103,"processor inst_IF WIDE_CACHE_LINE",-1,31,0);
	vcdp->declBus(c+102,"processor inst_IF INIT_POS_TAG_WAY_1",-1,31,0);
	vcdp->declBus(c+104,"processor inst_IF INIT_POS_TAG_WAY_2",-1,31,0);
	vcdp->declBus(c+105,"processor inst_IF END_POS_TAG_WAY_1",-1,31,0);
	vcdp->declBus(c+106,"processor inst_IF END_POS_TAG_WAY_2",-1,31,0);
	vcdp->declBus(c+107,"processor inst_IF INIT_POS_WORD_1_WAY_1",-1,31,0);
	vcdp->declBus(c+108,"processor inst_IF END_POS_WORD_1_WAY_1",-1,31,0);
	vcdp->declBus(c+109,"processor inst_IF INIT_POS_WORD_2_WAY_1",-1,31,0);
	vcdp->declBus(c+110,"processor inst_IF END_POS_WORD_2_WAY_1",-1,31,0);
	vcdp->declBus(c+111,"processor inst_IF INIT_POS_WORD_3_WAY_1",-1,31,0);
	vcdp->declBus(c+112,"processor inst_IF END_POS_WORD_3_WAY_1",-1,31,0);
	vcdp->declBus(c+113,"processor inst_IF INIT_POS_WORD_4_WAY_1",-1,31,0);
	vcdp->declBus(c+114,"processor inst_IF END_POS_WORD_4_WAY_1",-1,31,0);
	vcdp->declBus(c+115,"processor inst_IF INIT_POS_WORD_1_WAY_2",-1,31,0);
	vcdp->declBus(c+116,"processor inst_IF END_POS_WORD_1_WAY_2",-1,31,0);
	vcdp->declBus(c+117,"processor inst_IF INIT_POS_WORD_2_WAY_2",-1,31,0);
	vcdp->declBus(c+118,"processor inst_IF END_POS_WORD_2_WAY_2",-1,31,0);
	vcdp->declBus(c+119,"processor inst_IF INIT_POS_WORD_3_WAY_2",-1,31,0);
	vcdp->declBus(c+120,"processor inst_IF END_POS_WORD_3_WAY_2",-1,31,0);
	vcdp->declBus(c+121,"processor inst_IF INIT_POS_WORD_4_WAY_2",-1,31,0);
	vcdp->declBus(c+122,"processor inst_IF END_POS_WORD_4_WAY_2",-1,31,0);
	vcdp->declBus(c+107,"processor inst_IF INIT_POS_LINE_0",-1,31,0);
	vcdp->declBus(c+114,"processor inst_IF END_POS_LINE_0",-1,31,0);
	vcdp->declBus(c+102,"processor inst_IF INIT_POS_TAG_LINE_0",-1,31,0);
	vcdp->declBus(c+105,"processor inst_IF END_POS_TAG_LINE_0",-1,31,0);
	vcdp->declBus(c+123,"processor inst_IF VALID_BIT_WAY_0",-1,31,0);
	vcdp->declBus(c+115,"processor inst_IF INIT_POS_LINE_1",-1,31,0);
	vcdp->declBus(c+122,"processor inst_IF END_POS_LINE_1",-1,31,0);
	vcdp->declBus(c+104,"processor inst_IF INIT_POS_TAG_LINE_1",-1,31,0);
	vcdp->declBus(c+106,"processor inst_IF END_POS_TAG_LINE_1",-1,31,0);
	vcdp->declBus(c+124,"processor inst_IF VALID_BIT_WAY_1",-1,31,0);
	vcdp->declBus(c+43,"processor inst_IF addr_asked",-1,31,0);
	vcdp->declBit(c+44,"processor inst_IF addr_ask",-1);
	{int i; for (i=0; i<2; i++) {
		vcdp->declArray(c+45+i*10,"processor inst_IF cache_men",(i+0),306,0);}}
	vcdp->declBus(c+65,"processor inst_IF rm0",-1,31,0);
	vcdp->declBus(c+66,"processor inst_IF unnamedblk1 i",-1,31,0);
	vcdp->declBus(c+95,"processor inst_MEM WORD_SIZE",-1,31,0);
	vcdp->declBus(c+97,"processor inst_MEM WORDS_PER_LINES",-1,31,0);
	vcdp->declBus(c+96,"processor inst_MEM LINE_SIZE",-1,31,0);
	vcdp->declBus(c+95,"processor inst_MEM MEMORY_LINES",-1,31,0);
	vcdp->declBit(c+93,"processor inst_MEM clk_i",-1);
	vcdp->declBit(c+94,"processor inst_MEM rstn_i",-1);
	vcdp->declBit(c+99,"processor inst_MEM we_i",-1);
	vcdp->declBit(c+39,"processor inst_MEM strobe_i",-1);
	vcdp->declArray(c+35,"processor inst_MEM data_i",-1,127,0);
	vcdp->declBus(c+33,"processor inst_MEM addr_i",-1,31,0);
	vcdp->declArray(c+35,"processor inst_MEM data_o",-1,127,0);
	vcdp->declBit(c+34,"processor inst_MEM valid_data_o",-1);
	{int i; for (i=0; i<32; i++) {
		vcdp->declBus(c+1+i*1,"processor inst_MEM main_mem",(i+0),31,0);}}
	vcdp->declArray(c+67,"processor inst_MEM data_o_0",-1,127,0);
	vcdp->declArray(c+71,"processor inst_MEM data_o_1",-1,127,0);
	vcdp->declArray(c+75,"processor inst_MEM data_o_2",-1,127,0);
	vcdp->declArray(c+79,"processor inst_MEM data_o_3",-1,127,0);
	vcdp->declArray(c+83,"processor inst_MEM data_o_4",-1,127,0);
	vcdp->declBit(c+87,"processor inst_MEM valid_0",-1);
	vcdp->declBit(c+88,"processor inst_MEM valid_1",-1);
	vcdp->declBit(c+89,"processor inst_MEM valid_2",-1);
	vcdp->declBit(c+90,"processor inst_MEM valid_3",-1);
	vcdp->declBit(c+91,"processor inst_MEM valid_4",-1);
	vcdp->declBus(c+92,"processor inst_MEM unnamedblk1 i",-1,31,0);
    }
}

void Vprocessor::traceFullThis__1(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->fullBus(c+1,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0]),32);
	vcdp->fullBus(c+2,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[1]),32);
	vcdp->fullBus(c+3,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[2]),32);
	vcdp->fullBus(c+4,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[3]),32);
	vcdp->fullBus(c+5,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[4]),32);
	vcdp->fullBus(c+6,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[5]),32);
	vcdp->fullBus(c+7,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[6]),32);
	vcdp->fullBus(c+8,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[7]),32);
	vcdp->fullBus(c+9,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[8]),32);
	vcdp->fullBus(c+10,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[9]),32);
	vcdp->fullBus(c+11,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[10]),32);
	vcdp->fullBus(c+12,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[11]),32);
	vcdp->fullBus(c+13,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[12]),32);
	vcdp->fullBus(c+14,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[13]),32);
	vcdp->fullBus(c+15,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[14]),32);
	vcdp->fullBus(c+16,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[15]),32);
	vcdp->fullBus(c+17,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[16]),32);
	vcdp->fullBus(c+18,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[17]),32);
	vcdp->fullBus(c+19,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[18]),32);
	vcdp->fullBus(c+20,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[19]),32);
	vcdp->fullBus(c+21,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[20]),32);
	vcdp->fullBus(c+22,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[21]),32);
	vcdp->fullBus(c+23,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[22]),32);
	vcdp->fullBus(c+24,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[23]),32);
	vcdp->fullBus(c+25,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[24]),32);
	vcdp->fullBus(c+26,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[25]),32);
	vcdp->fullBus(c+27,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[26]),32);
	vcdp->fullBus(c+28,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[27]),32);
	vcdp->fullBus(c+29,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[28]),32);
	vcdp->fullBus(c+30,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[29]),32);
	vcdp->fullBus(c+31,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[30]),32);
	vcdp->fullBus(c+32,(vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[31]),32);
	vcdp->fullBus(c+33,(vlTOPp->processor__DOT__addr_IF_MEM),32);
	vcdp->fullBit(c+34,(vlTOPp->processor__DOT__valid_data_MEM_IF));
	vcdp->fullArray(c+35,(vlTOPp->processor__DOT__mem_data_bus_w),128);
	vcdp->fullBit(c+39,(vlTOPp->processor__DOT__strobe_main_memory_w));
	vcdp->fullBus(c+40,(vlTOPp->processor__DOT__inst_IF__DOT__nrm0_o),32);
	vcdp->fullBus(c+41,(vlTOPp->processor__DOT__inst_IF__DOT__instruction_register_o),32);
	vcdp->fullBit(c+42,(vlTOPp->processor__DOT__inst_IF__DOT__valid_o));
	vcdp->fullBus(c+43,(vlTOPp->processor__DOT__inst_IF__DOT__addr_asked),32);
	vcdp->fullBit(c+44,(vlTOPp->processor__DOT__inst_IF__DOT__addr_ask));
	vcdp->fullArray(c+45,(vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0]),307);
	vcdp->fullArray(c+55,(vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1]),307);
	vcdp->fullBus(c+65,(vlTOPp->processor__DOT__inst_IF__DOT__rm0),32);
	vcdp->fullBus(c+66,(vlTOPp->processor__DOT__inst_IF__DOT__unnamedblk1__DOT__i),32);
	vcdp->fullArray(c+67,(vlTOPp->processor__DOT__inst_MEM__DOT__data_o_0),128);
	vcdp->fullArray(c+71,(vlTOPp->processor__DOT__inst_MEM__DOT__data_o_1),128);
	vcdp->fullArray(c+75,(vlTOPp->processor__DOT__inst_MEM__DOT__data_o_2),128);
	vcdp->fullArray(c+79,(vlTOPp->processor__DOT__inst_MEM__DOT__data_o_3),128);
	vcdp->fullArray(c+83,(vlTOPp->processor__DOT__inst_MEM__DOT__data_o_4),128);
	vcdp->fullBit(c+87,(vlTOPp->processor__DOT__inst_MEM__DOT__valid_0));
	vcdp->fullBit(c+88,(vlTOPp->processor__DOT__inst_MEM__DOT__valid_1));
	vcdp->fullBit(c+89,(vlTOPp->processor__DOT__inst_MEM__DOT__valid_2));
	vcdp->fullBit(c+90,(vlTOPp->processor__DOT__inst_MEM__DOT__valid_3));
	vcdp->fullBit(c+91,(vlTOPp->processor__DOT__inst_MEM__DOT__valid_4));
	vcdp->fullBus(c+92,(vlTOPp->processor__DOT__inst_MEM__DOT__unnamedblk1__DOT__i),32);
	vcdp->fullBit(c+93,(vlTOPp->clk_i));
	vcdp->fullBit(c+94,(vlTOPp->rstn_i));
	vcdp->fullBus(c+95,(0x20U),32);
	vcdp->fullBus(c+96,(0x80U),32);
	vcdp->fullBus(c+97,(4U),32);
	vcdp->fullBus(c+98,(5U),32);
	vcdp->fullBit(c+99,(vlTOPp->processor__DOT__write_data_bus_mem_w));
	vcdp->fullBus(c+100,(0x18U),32);
	vcdp->fullBus(c+101,(7U),32);
	vcdp->fullBus(c+102,(2U),32);
	vcdp->fullBus(c+103,(0x133U),32);
	vcdp->fullBus(c+104,(0x9bU),32);
	vcdp->fullBus(c+105,(0x19U),32);
	vcdp->fullBus(c+106,(0xb2U),32);
	vcdp->fullBus(c+107,(0x1aU),32);
	vcdp->fullBus(c+108,(0x39U),32);
	vcdp->fullBus(c+109,(0x3aU),32);
	vcdp->fullBus(c+110,(0x59U),32);
	vcdp->fullBus(c+111,(0x5aU),32);
	vcdp->fullBus(c+112,(0x79U),32);
	vcdp->fullBus(c+113,(0x7aU),32);
	vcdp->fullBus(c+114,(0x99U),32);
	vcdp->fullBus(c+115,(0xb3U),32);
	vcdp->fullBus(c+116,(0xd2U),32);
	vcdp->fullBus(c+117,(0xd3U),32);
	vcdp->fullBus(c+118,(0xf2U),32);
	vcdp->fullBus(c+119,(0xf3U),32);
	vcdp->fullBus(c+120,(0x112U),32);
	vcdp->fullBus(c+121,(0x113U),32);
	vcdp->fullBus(c+122,(0x132U),32);
	vcdp->fullBus(c+123,(1U),32);
	vcdp->fullBus(c+124,(0x9aU),32);
    }
}
