// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vprocessor.h for the primary calling header

#include "Vprocessor.h"
#include "Vprocessor__Syms.h"


//--------------------
// STATIC VARIABLES


//--------------------

VL_CTOR_IMP(Vprocessor) {
    Vprocessor__Syms* __restrict vlSymsp = __VlSymsp = new Vprocessor__Syms(this, name());
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vprocessor::__Vconfigure(Vprocessor__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

Vprocessor::~Vprocessor() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void Vprocessor::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vprocessor::eval\n"); );
    Vprocessor__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
#ifdef VL_DEBUG
    // Debug assertions
    _eval_debug_assertions();
#endif // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
	VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
	vlSymsp->__Vm_activity = true;
	_eval(vlSymsp);
	if (VL_UNLIKELY(++__VclockLoop > 100)) {
	    // About to fail, so enable debug to see what's not settling.
	    // Note you must run make with OPT=-DVL_DEBUG for debug prints.
	    int __Vsaved_debug = Verilated::debug();
	    Verilated::debug(1);
	    __Vchange = _change_request(vlSymsp);
	    Verilated::debug(__Vsaved_debug);
	    VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Verilated model didn't converge");
	} else {
	    __Vchange = _change_request(vlSymsp);
	}
    } while (VL_UNLIKELY(__Vchange));
}

void Vprocessor::_eval_initial_loop(Vprocessor__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    vlSymsp->__Vm_activity = true;
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
	_eval_settle(vlSymsp);
	_eval(vlSymsp);
	if (VL_UNLIKELY(++__VclockLoop > 100)) {
	    // About to fail, so enable debug to see what's not settling.
	    // Note you must run make with OPT=-DVL_DEBUG for debug prints.
	    int __Vsaved_debug = Verilated::debug();
	    Verilated::debug(1);
	    __Vchange = _change_request(vlSymsp);
	    Verilated::debug(__Vsaved_debug);
	    VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Verilated model didn't DC converge");
	} else {
	    __Vchange = _change_request(vlSymsp);
	}
    } while (VL_UNLIKELY(__Vchange));
}

//--------------------
// Internal Methods

VL_INLINE_OPT void Vprocessor::_sequent__TOP__1(Vprocessor__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vprocessor::_sequent__TOP__1\n"); );
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    // Begin mtask footprint  all: 
    VL_SIG8(__Vdly__processor__DOT__strobe_main_memory_w,0,0);
    VL_SIG8(__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v0,0,0);
    VL_SIG8(__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v0,0,0);
    VL_SIG8(__Vdly__processor__DOT__inst_IF__DOT__addr_ask,0,0);
    VL_SIG8(__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v1,0,0);
    VL_SIG8(__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v1,0,0);
    VL_SIG8(__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v2,0,0);
    VL_SIG8(__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v3,0,0);
    VL_SIG8(__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v4,0,0);
    VL_SIG8(__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v4,0,0);
    VL_SIG8(__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v5,0,0);
    VL_SIG8(__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v5,0,0);
    VL_SIG8(__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v6,0,0);
    VL_SIG8(__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v7,0,0);
    VL_SIG8(__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v8,0,0);
    VL_SIG8(__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v9,0,0);
    VL_SIG8(__Vdlyvdim0__processor__DOT__inst_MEM__DOT__main_mem__v0,4,0);
    VL_SIG8(__Vdlyvset__processor__DOT__inst_MEM__DOT__main_mem__v0,0,0);
    VL_SIG8(__Vdlyvset__processor__DOT__inst_MEM__DOT__main_mem__v1,0,0);
    VL_SIG16(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v0,8,0);
    VL_SIG16(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v1,8,0);
    VL_SIG16(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v2,8,0);
    VL_SIG16(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v3,8,0);
    VL_SIG16(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v4,8,0);
    VL_SIG16(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v5,8,0);
    VL_SIG16(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v6,8,0);
    VL_SIG16(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v7,8,0);
    VL_SIG(__Vdly__processor__DOT__inst_IF__DOT__rm0,31,0);
    VL_SIGW(__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v1,127,0,4);
    VL_SIG(__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v3,23,0);
    VL_SIGW(__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v5,127,0,4);
    VL_SIG(__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v7,23,0);
    VL_SIG(__Vdly__processor__DOT__addr_IF_MEM,31,0);
    VL_SIG(__Vdlyvval__processor__DOT__inst_MEM__DOT__main_mem__v0,31,0);
    // Body
    __Vdlyvset__processor__DOT__inst_MEM__DOT__main_mem__v0 = 0U;
    __Vdlyvset__processor__DOT__inst_MEM__DOT__main_mem__v1 = 0U;
    __Vdly__processor__DOT__addr_IF_MEM = vlTOPp->processor__DOT__addr_IF_MEM;
    __Vdly__processor__DOT__inst_IF__DOT__addr_ask 
	= vlTOPp->processor__DOT__inst_IF__DOT__addr_ask;
    __Vdly__processor__DOT__inst_IF__DOT__rm0 = vlTOPp->processor__DOT__inst_IF__DOT__rm0;
    __Vdly__processor__DOT__strobe_main_memory_w = vlTOPp->processor__DOT__strobe_main_memory_w;
    // ALWAYS at ../../hdl//fetch.v:85
    if ((1U & (~ (IData)(vlTOPp->rstn_i)))) {
	vlTOPp->processor__DOT__inst_IF__DOT__unnamedblk1__DOT__i = 2U;
    }
    // ALWAYS at ../../hdl//memory.v:51
    if ((1U & (~ (IData)(vlTOPp->rstn_i)))) {
	vlTOPp->processor__DOT__inst_MEM__DOT__unnamedblk1__DOT__i = 0x20U;
    }
    __Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v0 = 0U;
    __Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v1 = 0U;
    __Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v4 = 0U;
    __Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v5 = 0U;
    __Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v8 = 0U;
    __Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v9 = 0U;
    // ALWAYS at ../../hdl//memory.v:51
    if (vlTOPp->rstn_i) {
	if (vlTOPp->processor__DOT__write_data_bus_mem_w) {
	    __Vdlyvval__processor__DOT__inst_MEM__DOT__main_mem__v0 
		= vlTOPp->processor__DOT__mem_data_bus_w[0U];
	    __Vdlyvset__processor__DOT__inst_MEM__DOT__main_mem__v0 = 1U;
	    __Vdlyvdim0__processor__DOT__inst_MEM__DOT__main_mem__v0 
		= (0x1fU & vlTOPp->processor__DOT__addr_IF_MEM);
	}
    } else {
	__Vdlyvset__processor__DOT__inst_MEM__DOT__main_mem__v1 = 1U;
    }
    // ALWAYS at ../../hdl//fetch.v:85
    __Vdly__processor__DOT__strobe_main_memory_w = 0U;
    if (vlTOPp->rstn_i) {
	if ((((0xffffffU & ((vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			     [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				     >> 7U))][1U] << 0x1eU) 
			    | (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			       [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				       >> 7U))][0U] 
			       >> 2U))) == (0xffffffU 
					    & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
					       >> 8U))) 
	     & (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
		[(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
			>> 7U))][0U] >> 1U))) {
	    __Vdly__processor__DOT__inst_IF__DOT__rm0 
		= ((IData)(0x20U) + vlTOPp->processor__DOT__inst_IF__DOT__rm0);
	    vlTOPp->processor__DOT__inst_IF__DOT__valid_o = 1U;
	    vlTOPp->processor__DOT__inst_IF__DOT__nrm0_o 
		= ((IData)(0x20U) + vlTOPp->processor__DOT__inst_IF__DOT__rm0);
	    if ((0U == (3U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
			      >> 5U)))) {
		vlTOPp->processor__DOT__inst_IF__DOT__instruction_register_o 
		    = ((vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			[(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				>> 7U))][1U] << 6U) 
		       | (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			  [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				  >> 7U))][0U] >> 0x1aU));
	    } else {
		if ((1U == (3U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				  >> 5U)))) {
		    vlTOPp->processor__DOT__inst_IF__DOT__instruction_register_o 
			= ((vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			    [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				    >> 7U))][2U] << 6U) 
			   | (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			      [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				      >> 7U))][1U] 
			      >> 0x1aU));
		} else {
		    if ((2U == (3U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				      >> 5U)))) {
			vlTOPp->processor__DOT__inst_IF__DOT__instruction_register_o 
			    = ((vlTOPp->processor__DOT__inst_IF__DOT__cache_men
				[(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
					>> 7U))][3U] 
				<< 6U) | (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
					  [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
						  >> 7U))][2U] 
					  >> 0x1aU));
		    } else {
			if ((3U == (3U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
					  >> 5U)))) {
			    vlTOPp->processor__DOT__inst_IF__DOT__instruction_register_o 
				= ((vlTOPp->processor__DOT__inst_IF__DOT__cache_men
				    [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
					    >> 7U))][4U] 
				    << 6U) | (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
					      [(1U 
						& (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
						   >> 7U))][3U] 
					      >> 0x1aU));
			}
		    }
		}
	    }
	} else {
	    if ((((0xffffffU & ((vlTOPp->processor__DOT__inst_IF__DOT__cache_men
				 [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
					 >> 7U))][5U] 
				 << 5U) | (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
					   [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
						   >> 7U))][4U] 
					   >> 0x1bU))) 
		  == (0xffffffU & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				   >> 8U))) & (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
					       [(1U 
						 & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
						    >> 7U))][4U] 
					       >> 0x1aU))) {
		__Vdly__processor__DOT__inst_IF__DOT__rm0 
		    = ((IData)(0x20U) + vlTOPp->processor__DOT__inst_IF__DOT__rm0);
		vlTOPp->processor__DOT__inst_IF__DOT__valid_o = 1U;
		vlTOPp->processor__DOT__inst_IF__DOT__nrm0_o 
		    = ((IData)(0x20U) + vlTOPp->processor__DOT__inst_IF__DOT__rm0);
		if ((0U == (3U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				  >> 5U)))) {
		    vlTOPp->processor__DOT__inst_IF__DOT__instruction_register_o 
			= ((vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			    [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				    >> 7U))][6U] << 0xdU) 
			   | (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			      [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				      >> 7U))][5U] 
			      >> 0x13U));
		} else {
		    if ((1U == (3U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
				      >> 5U)))) {
			vlTOPp->processor__DOT__inst_IF__DOT__instruction_register_o 
			    = ((vlTOPp->processor__DOT__inst_IF__DOT__cache_men
				[(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
					>> 7U))][7U] 
				<< 0xdU) | (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
					    [(1U & 
					      (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
					       >> 7U))][6U] 
					    >> 0x13U));
		    } else {
			if ((2U == (3U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
					  >> 5U)))) {
			    vlTOPp->processor__DOT__inst_IF__DOT__instruction_register_o 
				= ((vlTOPp->processor__DOT__inst_IF__DOT__cache_men
				    [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
					    >> 7U))][8U] 
				    << 0xdU) | (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
						[(1U 
						  & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
						     >> 7U))][7U] 
						>> 0x13U));
			} else {
			    if ((3U == (3U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
					      >> 5U)))) {
				vlTOPp->processor__DOT__inst_IF__DOT__instruction_register_o 
				    = ((vlTOPp->processor__DOT__inst_IF__DOT__cache_men
					[(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
						>> 7U))][9U] 
					<< 0xdU) | 
				       (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
					[(1U & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
						>> 7U))][8U] 
					>> 0x13U));
			    }
			}
		    }
		}
	    } else {
		if (((IData)(vlTOPp->processor__DOT__inst_IF__DOT__addr_ask) 
		     & (IData)(vlTOPp->processor__DOT__valid_data_MEM_IF))) {
		    if ((1U & vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			 [(1U & (vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
				 >> 7U))][0U])) {
			__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v0 = 1U;
			__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v0 = 0U;
			__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v0 
			    = (1U & (vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
				     >> 7U));
			__Vdly__processor__DOT__inst_IF__DOT__addr_ask = 0U;
			__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v1[0U] 
			    = vlTOPp->processor__DOT__mem_data_bus_w[0U];
			__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v1[1U] 
			    = vlTOPp->processor__DOT__mem_data_bus_w[1U];
			__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v1[2U] 
			    = vlTOPp->processor__DOT__mem_data_bus_w[2U];
			__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v1[3U] 
			    = vlTOPp->processor__DOT__mem_data_bus_w[3U];
			__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v1 = 1U;
			__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v1 = 0xb3U;
			__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v1 
			    = (1U & (vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
				     >> 7U));
			__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v2 = 0x9aU;
			__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v2 
			    = (1U & (vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
				     >> 7U));
			__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v3 
			    = (0xffffffU & (vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
					    >> 8U));
			__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v3 = 0x9bU;
			__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v3 
			    = (1U & (vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
				     >> 7U));
		    } else {
			__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v4 = 1U;
			__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v4 = 0U;
			__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v4 
			    = (1U & (vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
				     >> 7U));
			__Vdly__processor__DOT__inst_IF__DOT__addr_ask = 0U;
			__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v5[0U] 
			    = vlTOPp->processor__DOT__mem_data_bus_w[0U];
			__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v5[1U] 
			    = vlTOPp->processor__DOT__mem_data_bus_w[1U];
			__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v5[2U] 
			    = vlTOPp->processor__DOT__mem_data_bus_w[2U];
			__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v5[3U] 
			    = vlTOPp->processor__DOT__mem_data_bus_w[3U];
			__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v5 = 1U;
			__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v5 = 0x1aU;
			__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v5 
			    = (1U & (vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
				     >> 7U));
			__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v6 = 1U;
			__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v6 
			    = (1U & (vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
				     >> 7U));
			__Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v7 
			    = (0xffffffU & (vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
					    >> 8U));
			__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v7 = 2U;
			__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v7 
			    = (1U & (vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
				     >> 7U));
		    }
		} else {
		    if (((IData)(vlTOPp->processor__DOT__inst_IF__DOT__addr_ask) 
			 & (vlTOPp->processor__DOT__inst_IF__DOT__rm0 
			    == vlTOPp->processor__DOT__inst_IF__DOT__addr_asked))) {
			vlTOPp->processor__DOT__inst_IF__DOT__valid_o = 0U;
		    } else {
			vlTOPp->processor__DOT__inst_IF__DOT__addr_asked 
			    = vlTOPp->processor__DOT__inst_IF__DOT__rm0;
			__Vdly__processor__DOT__inst_IF__DOT__addr_ask = 1U;
			vlTOPp->processor__DOT__inst_IF__DOT__valid_o = 0U;
			__Vdly__processor__DOT__strobe_main_memory_w = 1U;
			__Vdly__processor__DOT__addr_IF_MEM 
			    = vlTOPp->processor__DOT__inst_IF__DOT__rm0;
		    }
		}
	    }
	}
    } else {
	__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v8 = 1U;
	__Vdly__processor__DOT__inst_IF__DOT__rm0 = 0U;
	__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v9 = 1U;
    }
    vlTOPp->processor__DOT__inst_IF__DOT__rm0 = __Vdly__processor__DOT__inst_IF__DOT__rm0;
    vlTOPp->processor__DOT__inst_IF__DOT__addr_ask 
	= __Vdly__processor__DOT__inst_IF__DOT__addr_ask;
    // ALWAYSPOST at ../../hdl//fetch.v:154
    if (__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v0) {
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v0][((IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v0) 
										>> 5U)] 
	    = ((~ ((IData)(1U) << (0x1fU & (IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v0)))) 
	       & vlTOPp->processor__DOT__inst_IF__DOT__cache_men
	       [__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v0][
	       ((IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v0) 
		>> 5U)]);
    }
    if (__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v1) {
	VL_ASSIGNSEL_WIIW(128,(IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v1), 
			  vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			  [__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v1], __Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v1);
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v2][((IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v2) 
										>> 5U)] 
	    = (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
	       [__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v2][
	       ((IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v2) 
		>> 5U)] | ((IData)(1U) << (0x1fU & (IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v2))));
	VL_ASSIGNSEL_WIII(24,(IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v3), 
			  vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			  [__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v3], __Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v3);
    }
    if (__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v4) {
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v4][((IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v4) 
										>> 5U)] 
	    = (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
	       [__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v4][
	       ((IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v4) 
		>> 5U)] | ((IData)(1U) << (0x1fU & (IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v4))));
    }
    if (__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v5) {
	VL_ASSIGNSEL_WIIW(128,(IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v5), 
			  vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			  [__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v5], __Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v5);
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v6][((IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v6) 
										>> 5U)] 
	    = (vlTOPp->processor__DOT__inst_IF__DOT__cache_men
	       [__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v6][
	       ((IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v6) 
		>> 5U)] | ((IData)(1U) << (0x1fU & (IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v6))));
	VL_ASSIGNSEL_WIII(24,(IData)(__Vdlyvlsb__processor__DOT__inst_IF__DOT__cache_men__v7), 
			  vlTOPp->processor__DOT__inst_IF__DOT__cache_men
			  [__Vdlyvdim0__processor__DOT__inst_IF__DOT__cache_men__v7], __Vdlyvval__processor__DOT__inst_IF__DOT__cache_men__v7);
    }
    if (__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v8) {
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0U][0U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0U][1U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0U][2U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0U][3U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0U][4U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0U][5U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0U][6U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0U][7U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0U][8U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[0U][9U] = 0U;
    }
    if (__Vdlyvset__processor__DOT__inst_IF__DOT__cache_men__v9) {
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1U][0U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1U][1U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1U][2U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1U][3U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1U][4U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1U][5U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1U][6U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1U][7U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1U][8U] = 0U;
	vlTOPp->processor__DOT__inst_IF__DOT__cache_men[1U][9U] = 0U;
    }
    // ALWAYS at ../../hdl//memory.v:51
    vlTOPp->processor__DOT__valid_data_MEM_IF = vlTOPp->processor__DOT__inst_MEM__DOT__valid_4;
    // ALWAYS at ../../hdl//memory.v:51
    vlTOPp->processor__DOT__mem_data_bus_w[0U] = vlTOPp->processor__DOT__inst_MEM__DOT__data_o_4[0U];
    vlTOPp->processor__DOT__mem_data_bus_w[1U] = vlTOPp->processor__DOT__inst_MEM__DOT__data_o_4[1U];
    vlTOPp->processor__DOT__mem_data_bus_w[2U] = vlTOPp->processor__DOT__inst_MEM__DOT__data_o_4[2U];
    vlTOPp->processor__DOT__mem_data_bus_w[3U] = vlTOPp->processor__DOT__inst_MEM__DOT__data_o_4[3U];
    // ALWAYS at ../../hdl//memory.v:51
    vlTOPp->processor__DOT__inst_MEM__DOT__valid_4 
	= vlTOPp->processor__DOT__inst_MEM__DOT__valid_3;
    // ALWAYS at ../../hdl//memory.v:51
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_4[0U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_3[0U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_4[1U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_3[1U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_4[2U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_3[2U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_4[3U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_3[3U];
    // ALWAYS at ../../hdl//memory.v:51
    vlTOPp->processor__DOT__inst_MEM__DOT__valid_3 
	= vlTOPp->processor__DOT__inst_MEM__DOT__valid_2;
    // ALWAYS at ../../hdl//memory.v:51
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_3[0U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_2[0U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_3[1U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_2[1U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_3[2U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_2[2U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_3[3U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_2[3U];
    // ALWAYS at ../../hdl//memory.v:51
    vlTOPp->processor__DOT__inst_MEM__DOT__valid_2 
	= vlTOPp->processor__DOT__inst_MEM__DOT__valid_1;
    // ALWAYS at ../../hdl//memory.v:51
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_2[0U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_1[0U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_2[1U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_1[1U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_2[2U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_1[2U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_2[3U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_1[3U];
    // ALWAYS at ../../hdl//memory.v:51
    vlTOPp->processor__DOT__inst_MEM__DOT__valid_1 
	= vlTOPp->processor__DOT__inst_MEM__DOT__valid_0;
    // ALWAYS at ../../hdl//memory.v:51
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_1[0U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_0[0U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_1[1U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_0[1U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_1[2U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_0[2U];
    vlTOPp->processor__DOT__inst_MEM__DOT__data_o_1[3U] 
	= vlTOPp->processor__DOT__inst_MEM__DOT__data_o_0[3U];
    // ALWAYS at ../../hdl//memory.v:51
    vlTOPp->processor__DOT__inst_MEM__DOT__valid_0 = 0U;
    if (vlTOPp->rstn_i) {
	if ((1U & (~ (IData)(vlTOPp->processor__DOT__write_data_bus_mem_w)))) {
	    if (vlTOPp->processor__DOT__strobe_main_memory_w) {
		vlTOPp->processor__DOT__inst_MEM__DOT__valid_0 = 1U;
	    }
	}
    }
    // ALWAYS at ../../hdl//memory.v:51
    if (vlTOPp->rstn_i) {
	if ((1U & (~ (IData)(vlTOPp->processor__DOT__write_data_bus_mem_w)))) {
	    if (vlTOPp->processor__DOT__strobe_main_memory_w) {
		vlTOPp->processor__DOT__inst_MEM__DOT__data_o_0[0U] 
		    = vlTOPp->processor__DOT__inst_MEM__DOT__main_mem
		    [(0x1fU & (vlTOPp->processor__DOT__addr_IF_MEM 
			       >> 5U))];
		vlTOPp->processor__DOT__inst_MEM__DOT__data_o_0[1U] 
		    = vlTOPp->processor__DOT__inst_MEM__DOT__main_mem
		    [(0x1fU & ((IData)(1U) + (vlTOPp->processor__DOT__addr_IF_MEM 
					      >> 5U)))];
		vlTOPp->processor__DOT__inst_MEM__DOT__data_o_0[2U] 
		    = vlTOPp->processor__DOT__inst_MEM__DOT__main_mem
		    [(0x1fU & ((IData)(2U) + (vlTOPp->processor__DOT__addr_IF_MEM 
					      >> 5U)))];
		vlTOPp->processor__DOT__inst_MEM__DOT__data_o_0[3U] 
		    = vlTOPp->processor__DOT__inst_MEM__DOT__main_mem
		    [(0x1fU & ((IData)(3U) + (vlTOPp->processor__DOT__addr_IF_MEM 
					      >> 5U)))];
	    }
	}
    }
    vlTOPp->processor__DOT__strobe_main_memory_w = __Vdly__processor__DOT__strobe_main_memory_w;
    vlTOPp->processor__DOT__addr_IF_MEM = __Vdly__processor__DOT__addr_IF_MEM;
    // ALWAYSPOST at ../../hdl//memory.v:65
    if (__Vdlyvset__processor__DOT__inst_MEM__DOT__main_mem__v0) {
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[__Vdlyvdim0__processor__DOT__inst_MEM__DOT__main_mem__v0] 
	    = __Vdlyvval__processor__DOT__inst_MEM__DOT__main_mem__v0;
    }
    if (__Vdlyvset__processor__DOT__inst_MEM__DOT__main_mem__v1) {
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[1U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[2U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[3U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[4U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[5U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[6U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[7U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[8U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[9U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0xaU] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0xbU] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0xcU] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0xdU] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0xeU] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0xfU] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x10U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x11U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x12U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x13U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x14U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x15U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x16U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x17U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x18U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x19U] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x1aU] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x1bU] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x1cU] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x1dU] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x1eU] = 0U;
	vlTOPp->processor__DOT__inst_MEM__DOT__main_mem[0x1fU] = 0U;
    }
}

void Vprocessor::_initial__TOP__2(Vprocessor__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vprocessor::_initial__TOP__2\n"); );
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    // Begin mtask footprint  all: 
    VL_SIGW(__Vtemp16,159,0,5);
    // Body
    // INITIAL at ../../hdl//memory.v:44
    VL_WRITEF("Loading rom.\n");
    __Vtemp16[0U] = 0x2e686578U;
    __Vtemp16[1U] = 0x6d6f7279U;
    __Vtemp16[2U] = 0x2e2f6d65U;
    __Vtemp16[3U] = 0x2e2e2f2eU;
    __Vtemp16[4U] = 0x2e2e2fU;
    VL_READMEM_W(true,32,32, 0,5, __Vtemp16, vlTOPp->processor__DOT__inst_MEM__DOT__main_mem
		 ,0,~0);
    VL_WRITEF("Rom loaded\n");
}

void Vprocessor::_eval(Vprocessor__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vprocessor::_eval\n"); );
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clk_i) & (~ (IData)(vlTOPp->__Vclklast__TOP__clk_i)))) {
	vlTOPp->_sequent__TOP__1(vlSymsp);
	vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    }
    // Final
    vlTOPp->__Vclklast__TOP__clk_i = vlTOPp->clk_i;
}

void Vprocessor::_eval_initial(Vprocessor__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vprocessor::_eval_initial\n"); );
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clk_i = vlTOPp->clk_i;
    vlTOPp->_initial__TOP__2(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
}

void Vprocessor::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vprocessor::final\n"); );
    // Variables
    Vprocessor__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vprocessor::_eval_settle(Vprocessor__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vprocessor::_eval_settle\n"); );
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

VL_INLINE_OPT QData Vprocessor::_change_request(Vprocessor__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vprocessor::_change_request\n"); );
    Vprocessor* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vprocessor::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vprocessor::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clk_i & 0xfeU))) {
	Verilated::overWidthError("clk_i");}
    if (VL_UNLIKELY((rstn_i & 0xfeU))) {
	Verilated::overWidthError("rstn_i");}
}
#endif // VL_DEBUG

void Vprocessor::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vprocessor::_ctor_var_reset\n"); );
    // Body
    clk_i = VL_RAND_RESET_I(1);
    rstn_i = VL_RAND_RESET_I(1);
    processor__DOT__addr_IF_MEM = VL_RAND_RESET_I(32);
    processor__DOT__valid_data_MEM_IF = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128,processor__DOT__mem_data_bus_w);
    processor__DOT__write_data_bus_mem_w = VL_RAND_RESET_I(1);
    processor__DOT__strobe_main_memory_w = VL_RAND_RESET_I(1);
    processor__DOT__inst_IF__DOT__nrm0_o = VL_RAND_RESET_I(32);
    processor__DOT__inst_IF__DOT__instruction_register_o = VL_RAND_RESET_I(32);
    processor__DOT__inst_IF__DOT__valid_o = VL_RAND_RESET_I(1);
    processor__DOT__inst_IF__DOT__addr_asked = VL_RAND_RESET_I(32);
    processor__DOT__inst_IF__DOT__addr_ask = VL_RAND_RESET_I(1);
    { int __Vi0=0; for (; __Vi0<2; ++__Vi0) {
	    VL_RAND_RESET_W(307,processor__DOT__inst_IF__DOT__cache_men[__Vi0]);
    }}
    processor__DOT__inst_IF__DOT__rm0 = VL_RAND_RESET_I(32);
    processor__DOT__inst_IF__DOT__unnamedblk1__DOT__i = VL_RAND_RESET_I(32);
    { int __Vi0=0; for (; __Vi0<32; ++__Vi0) {
	    processor__DOT__inst_MEM__DOT__main_mem[__Vi0] = VL_RAND_RESET_I(32);
    }}
    VL_RAND_RESET_W(128,processor__DOT__inst_MEM__DOT__data_o_0);
    VL_RAND_RESET_W(128,processor__DOT__inst_MEM__DOT__data_o_1);
    VL_RAND_RESET_W(128,processor__DOT__inst_MEM__DOT__data_o_2);
    VL_RAND_RESET_W(128,processor__DOT__inst_MEM__DOT__data_o_3);
    VL_RAND_RESET_W(128,processor__DOT__inst_MEM__DOT__data_o_4);
    processor__DOT__inst_MEM__DOT__valid_0 = VL_RAND_RESET_I(1);
    processor__DOT__inst_MEM__DOT__valid_1 = VL_RAND_RESET_I(1);
    processor__DOT__inst_MEM__DOT__valid_2 = VL_RAND_RESET_I(1);
    processor__DOT__inst_MEM__DOT__valid_3 = VL_RAND_RESET_I(1);
    processor__DOT__inst_MEM__DOT__valid_4 = VL_RAND_RESET_I(1);
    processor__DOT__inst_MEM__DOT__unnamedblk1__DOT__i = VL_RAND_RESET_I(32);
    __Vm_traceActivity = VL_RAND_RESET_I(32);
}
