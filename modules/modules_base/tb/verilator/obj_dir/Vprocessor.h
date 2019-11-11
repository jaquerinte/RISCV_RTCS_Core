// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _Vprocessor_H_
#define _Vprocessor_H_

#include "verilated_heavy.h"

class Vprocessor__Syms;
class VerilatedVcd;

//----------

VL_MODULE(Vprocessor) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    // Begin mtask footprint  all: 
    VL_IN8(clk_i,0,0);
    VL_IN8(rstn_i,0,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    // Begin mtask footprint  all: 
    VL_SIG8(processor__DOT__valid_data_MEM_IF,0,0);
    VL_SIG8(processor__DOT__write_data_bus_mem_w,0,0);
    VL_SIG8(processor__DOT__strobe_main_memory_w,0,0);
    VL_SIG8(processor__DOT__inst_IF__DOT__valid_o,0,0);
    VL_SIG8(processor__DOT__inst_IF__DOT__addr_ask,0,0);
    VL_SIG8(processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_4,5,0);
    VL_SIG8(processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_6,0,0);
    VL_SIG8(processor__DOT__inst_MEM__DOT__valid_0,0,0);
    VL_SIG8(processor__DOT__inst_MEM__DOT__valid_1,0,0);
    VL_SIG8(processor__DOT__inst_MEM__DOT__valid_2,0,0);
    VL_SIG8(processor__DOT__inst_MEM__DOT__valid_3,0,0);
    VL_SIG8(processor__DOT__inst_MEM__DOT__valid_4,0,0);
    VL_SIG16(processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_3,11,0);
    VL_SIG(processor__DOT__addr_IF_MEM,31,0);
    VL_SIGW(processor__DOT__mem_data_bus_w,127,0,4);
    VL_SIG(processor__DOT__inst_IF__DOT__nrm0_o,31,0);
    VL_SIG(processor__DOT__inst_IF__DOT__instruction_register_o,31,0);
    VL_SIG(processor__DOT__inst_IF__DOT__addr_asked,31,0);
    VL_SIG(processor__DOT__inst_IF__DOT__rm0,31,0);
    VL_SIG(processor__DOT__inst_IF__DOT__unnamedblk1__DOT__i,31,0);
    VL_SIG(processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_0,31,0);
    VL_SIG(processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_1,31,0);
    VL_SIG(processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_2,31,0);
    VL_SIG(processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_3,31,0);
    VL_SIG(processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_4,31,0);
    VL_SIG(processor__DOT__inst_IF__DOT__inst_hcf__DOT__rotate_5,31,0);
    VL_SIGW(processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_0,95,0,3);
    VL_SIG(processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_2,23,0);
    VL_SIGW(processor__DOT__inst_MEM__DOT__data_o_0,127,0,4);
    VL_SIGW(processor__DOT__inst_MEM__DOT__data_o_1,127,0,4);
    VL_SIGW(processor__DOT__inst_MEM__DOT__data_o_2,127,0,4);
    VL_SIGW(processor__DOT__inst_MEM__DOT__data_o_3,127,0,4);
    VL_SIGW(processor__DOT__inst_MEM__DOT__data_o_4,127,0,4);
    VL_SIG(processor__DOT__inst_MEM__DOT__unnamedblk1__DOT__i,31,0);
    VL_SIG64(processor__DOT__inst_IF__DOT__inst_hcf__DOT__output_xor_1,47,0);
    VL_SIGW(processor__DOT__inst_IF__DOT__cache_men[2],306,0,10);
    VL_SIG(processor__DOT__inst_MEM__DOT__main_mem[32],31,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    // Begin mtask footprint  all: 
    VL_SIG8(__Vclklast__TOP__clk_i,0,0);
    VL_SIG(__Vm_traceActivity,31,0);
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vprocessor__Syms* __VlSymsp;  // Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vprocessor);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vprocessor(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vprocessor();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options=0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vprocessor__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vprocessor__Syms* symsp, bool first);
  private:
    static QData _change_request(Vprocessor__Syms* __restrict vlSymsp);
    void _ctor_var_reset();
  public:
    static void _eval(Vprocessor__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif // VL_DEBUG
  public:
    static void _eval_initial(Vprocessor__Syms* __restrict vlSymsp);
    static void _eval_settle(Vprocessor__Syms* __restrict vlSymsp);
    static void _initial__TOP__3(Vprocessor__Syms* __restrict vlSymsp);
    static void _sequent__TOP__1(Vprocessor__Syms* __restrict vlSymsp);
    static void _settle__TOP__2(Vprocessor__Syms* __restrict vlSymsp);
    static void traceChgThis(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis__1(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceInitThis(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceInitThis__1(Vprocessor__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(128);

#endif // guard
