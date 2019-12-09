// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vhash_cache_function.h for the primary calling header

#include "Vhash_cache_function.h"
#include "Vhash_cache_function__Syms.h"


//--------------------
// STATIC VARIABLES


//--------------------

VL_CTOR_IMP(Vhash_cache_function) {
    Vhash_cache_function__Syms* __restrict vlSymsp = __VlSymsp = new Vhash_cache_function__Syms(this, name());
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vhash_cache_function::__Vconfigure(Vhash_cache_function__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

Vhash_cache_function::~Vhash_cache_function() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void Vhash_cache_function::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vhash_cache_function::eval\n"); );
    Vhash_cache_function__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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

void Vhash_cache_function::_eval_initial_loop(Vhash_cache_function__Syms* __restrict vlSymsp) {
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

VL_INLINE_OPT void Vhash_cache_function::_sequent__TOP__1(Vhash_cache_function__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhash_cache_function::_sequent__TOP__1\n"); );
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at ../../hdl/hash_cache_function.v:56
    vlTOPp->hash_cache_function__DOT__rotate_5 = ((0x3fffU 
						   & (vlTOPp->addr_i 
						      >> 0x12U)) 
						  | (0xffe00000U 
						     & (vlTOPp->addr_i 
							<< 0xeU)));
    // ALWAYS at ../../hdl/hash_cache_function.v:56
    vlTOPp->hash_cache_function__DOT__rotate_3 = ((0x7fffffU 
						   & (vlTOPp->addr_i 
						      >> 9U)) 
						  | (0xc0000000U 
						     & (vlTOPp->addr_i 
							<< 0x17U)));
    // ALWAYS at ../../hdl/hash_cache_function.v:56
    vlTOPp->hash_cache_function__DOT__rotate_2 = ((0x1424bc9U 
						   >> 
						   (0x1fU 
						    & (vlTOPp->addr_i 
						       >> 0x11U))) 
						  | ((0x1fU 
						      >= 
						      ((IData)(0x20U) 
						       - 
						       (0x1fU 
							& (vlTOPp->addr_i 
							   >> 0x11U))))
						      ? 
						     ((IData)(0x1424bc9U) 
						      << 
						      ((IData)(0x20U) 
						       - 
						       (0x1fU 
							& (vlTOPp->addr_i 
							   >> 0x11U))))
						      : 0U));
    // ALWAYS at ../../hdl/hash_cache_function.v:56
    vlTOPp->hash_cache_function__DOT__rotate_4 = ((3U 
						   & (vlTOPp->addr_i 
						      >> 0x1eU)) 
						  | (0xfffffe00U 
						     & (vlTOPp->addr_i 
							<< 2U)));
    // ALWAYS at ../../hdl/hash_cache_function.v:56
    vlTOPp->hash_cache_function__DOT__rotate_0 = ((0x1424bc9U 
						   >> 
						   (0x1fU 
						    & (vlTOPp->addr_i 
						       >> 7U))) 
						  | ((0x1fU 
						      >= 
						      ((IData)(0x20U) 
						       - 
						       (0x1fU 
							& (vlTOPp->addr_i 
							   >> 7U))))
						      ? 
						     ((IData)(0x1424bc9U) 
						      << 
						      ((IData)(0x20U) 
						       - 
						       (0x1fU 
							& (vlTOPp->addr_i 
							   >> 7U))))
						      : 0U));
    // ALWAYS at ../../hdl/hash_cache_function.v:56
    vlTOPp->hash_cache_function__DOT__rotate_1 = ((0x1424bc9U 
						   >> 
						   (0x1fU 
						    & (vlTOPp->addr_i 
						       >> 0xcU))) 
						  | ((0x1fU 
						      >= 
						      ((IData)(0x20U) 
						       - 
						       (0x1fU 
							& (vlTOPp->addr_i 
							   >> 0xcU))))
						      ? 
						     ((IData)(0x1424bc9U) 
						      << 
						      ((IData)(0x20U) 
						       - 
						       (0x1fU 
							& (vlTOPp->addr_i 
							   >> 0xcU))))
						      : 0U));
    vlTOPp->hash_cache_function__DOT__output_xor_0[0U] 
	= (vlTOPp->hash_cache_function__DOT__rotate_2 
	   ^ vlTOPp->hash_cache_function__DOT__rotate_5);
    vlTOPp->hash_cache_function__DOT__output_xor_0[1U] 
	= ((IData)((((QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_0)) 
		     << 0x20U) | (QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_1)))) 
	   ^ (IData)((((QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_3)) 
		       << 0x20U) | (QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_4)))));
    vlTOPp->hash_cache_function__DOT__output_xor_0[2U] 
	= ((IData)(((((QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_0)) 
		      << 0x20U) | (QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_1))) 
		    >> 0x20U)) ^ (IData)(((((QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_3)) 
					    << 0x20U) 
					   | (QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_4))) 
					  >> 0x20U)));
    vlTOPp->hash_cache_function__DOT__output_xor_1 
	= (VL_ULL(0xffffffffffff) & ((((QData)((IData)(
						       vlTOPp->hash_cache_function__DOT__output_xor_0[2U])) 
				       << 0x10U) | 
				      ((QData)((IData)(
						       vlTOPp->hash_cache_function__DOT__output_xor_0[1U])) 
				       >> 0x10U)) ^ 
				     (((QData)((IData)(
						       vlTOPp->hash_cache_function__DOT__output_xor_0[1U])) 
				       << 0x20U) | (QData)((IData)(
								   vlTOPp->hash_cache_function__DOT__output_xor_0[0U])))));
    vlTOPp->hash_cache_function__DOT__output_xor_2 
	= (0xffffffU & ((IData)((vlTOPp->hash_cache_function__DOT__output_xor_1 
				 >> 0x18U)) ^ (IData)(vlTOPp->hash_cache_function__DOT__output_xor_1)));
    vlTOPp->hash_cache_function__DOT__output_xor_3 
	= (0xfffU & ((vlTOPp->hash_cache_function__DOT__output_xor_2 
		      >> 0xcU) ^ vlTOPp->hash_cache_function__DOT__output_xor_2));
    vlTOPp->hash_cache_function__DOT__output_xor_4 
	= (0x3fU & (((IData)(vlTOPp->hash_cache_function__DOT__output_xor_3) 
		     >> 6U) ^ (IData)(vlTOPp->hash_cache_function__DOT__output_xor_3)));
    vlTOPp->hash_cache_function__DOT__output_xor_5 
	= (7U & (((IData)(vlTOPp->hash_cache_function__DOT__output_xor_4) 
		  >> 3U) ^ (IData)(vlTOPp->hash_cache_function__DOT__output_xor_4)));
    vlTOPp->line_index_o = (1U & ((((IData)(vlTOPp->hash_cache_function__DOT__output_xor_5) 
				    >> 2U) ^ ((IData)(vlTOPp->hash_cache_function__DOT__output_xor_5) 
					      >> 1U)) 
				  ^ (IData)(vlTOPp->hash_cache_function__DOT__output_xor_5)));
}

void Vhash_cache_function::_settle__TOP__2(Vhash_cache_function__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhash_cache_function::_settle__TOP__2\n"); );
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->hash_cache_function__DOT__output_xor_0[0U] 
	= (vlTOPp->hash_cache_function__DOT__rotate_2 
	   ^ vlTOPp->hash_cache_function__DOT__rotate_5);
    vlTOPp->hash_cache_function__DOT__output_xor_0[1U] 
	= ((IData)((((QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_0)) 
		     << 0x20U) | (QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_1)))) 
	   ^ (IData)((((QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_3)) 
		       << 0x20U) | (QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_4)))));
    vlTOPp->hash_cache_function__DOT__output_xor_0[2U] 
	= ((IData)(((((QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_0)) 
		      << 0x20U) | (QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_1))) 
		    >> 0x20U)) ^ (IData)(((((QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_3)) 
					    << 0x20U) 
					   | (QData)((IData)(vlTOPp->hash_cache_function__DOT__rotate_4))) 
					  >> 0x20U)));
    vlTOPp->hash_cache_function__DOT__output_xor_1 
	= (VL_ULL(0xffffffffffff) & ((((QData)((IData)(
						       vlTOPp->hash_cache_function__DOT__output_xor_0[2U])) 
				       << 0x10U) | 
				      ((QData)((IData)(
						       vlTOPp->hash_cache_function__DOT__output_xor_0[1U])) 
				       >> 0x10U)) ^ 
				     (((QData)((IData)(
						       vlTOPp->hash_cache_function__DOT__output_xor_0[1U])) 
				       << 0x20U) | (QData)((IData)(
								   vlTOPp->hash_cache_function__DOT__output_xor_0[0U])))));
    vlTOPp->hash_cache_function__DOT__output_xor_2 
	= (0xffffffU & ((IData)((vlTOPp->hash_cache_function__DOT__output_xor_1 
				 >> 0x18U)) ^ (IData)(vlTOPp->hash_cache_function__DOT__output_xor_1)));
    vlTOPp->hash_cache_function__DOT__output_xor_3 
	= (0xfffU & ((vlTOPp->hash_cache_function__DOT__output_xor_2 
		      >> 0xcU) ^ vlTOPp->hash_cache_function__DOT__output_xor_2));
    vlTOPp->hash_cache_function__DOT__output_xor_4 
	= (0x3fU & (((IData)(vlTOPp->hash_cache_function__DOT__output_xor_3) 
		     >> 6U) ^ (IData)(vlTOPp->hash_cache_function__DOT__output_xor_3)));
    vlTOPp->hash_cache_function__DOT__output_xor_5 
	= (7U & (((IData)(vlTOPp->hash_cache_function__DOT__output_xor_4) 
		  >> 3U) ^ (IData)(vlTOPp->hash_cache_function__DOT__output_xor_4)));
    vlTOPp->line_index_o = (1U & ((((IData)(vlTOPp->hash_cache_function__DOT__output_xor_5) 
				    >> 2U) ^ ((IData)(vlTOPp->hash_cache_function__DOT__output_xor_5) 
					      >> 1U)) 
				  ^ (IData)(vlTOPp->hash_cache_function__DOT__output_xor_5)));
}

void Vhash_cache_function::_eval(Vhash_cache_function__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhash_cache_function::_eval\n"); );
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clk_i) & (~ (IData)(vlTOPp->__Vclklast__TOP__clk_i)))) {
	vlTOPp->_sequent__TOP__1(vlSymsp);
	vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    }
    // Final
    vlTOPp->__Vclklast__TOP__clk_i = vlTOPp->clk_i;
}

void Vhash_cache_function::_eval_initial(Vhash_cache_function__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhash_cache_function::_eval_initial\n"); );
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clk_i = vlTOPp->clk_i;
}

void Vhash_cache_function::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhash_cache_function::final\n"); );
    // Variables
    Vhash_cache_function__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vhash_cache_function::_eval_settle(Vhash_cache_function__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhash_cache_function::_eval_settle\n"); );
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__2(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
}

VL_INLINE_OPT QData Vhash_cache_function::_change_request(Vhash_cache_function__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhash_cache_function::_change_request\n"); );
    Vhash_cache_function* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vhash_cache_function::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhash_cache_function::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clk_i & 0xfeU))) {
	Verilated::overWidthError("clk_i");}
}
#endif // VL_DEBUG

void Vhash_cache_function::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhash_cache_function::_ctor_var_reset\n"); );
    // Body
    clk_i = VL_RAND_RESET_I(1);
    addr_i = VL_RAND_RESET_I(32);
    line_index_o = VL_RAND_RESET_I(1);
    hash_cache_function__DOT__rotate_0 = VL_RAND_RESET_I(32);
    hash_cache_function__DOT__rotate_1 = VL_RAND_RESET_I(32);
    hash_cache_function__DOT__rotate_2 = VL_RAND_RESET_I(32);
    hash_cache_function__DOT__rotate_3 = VL_RAND_RESET_I(32);
    hash_cache_function__DOT__rotate_4 = VL_RAND_RESET_I(32);
    hash_cache_function__DOT__rotate_5 = VL_RAND_RESET_I(32);
    VL_RAND_RESET_W(96,hash_cache_function__DOT__output_xor_0);
    hash_cache_function__DOT__output_xor_1 = VL_RAND_RESET_Q(48);
    hash_cache_function__DOT__output_xor_2 = VL_RAND_RESET_I(24);
    hash_cache_function__DOT__output_xor_3 = VL_RAND_RESET_I(12);
    hash_cache_function__DOT__output_xor_4 = VL_RAND_RESET_I(6);
    hash_cache_function__DOT__output_xor_5 = VL_RAND_RESET_I(3);
    hash_cache_function__DOT__output_xor_6 = VL_RAND_RESET_I(1);
    __Vm_traceActivity = VL_RAND_RESET_I(32);
}
