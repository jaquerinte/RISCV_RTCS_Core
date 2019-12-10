// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vswerv_wrapper__Syms.h"
#include "Vswerv_wrapper.h"
#include "Vswerv_wrapper___024unit.h"

// FUNCTIONS
Vswerv_wrapper__Syms::Vswerv_wrapper__Syms(Vswerv_wrapper* topp, const char* namep)
	// Setup locals
	: __Vm_namep(namep)
	, __Vm_didInit(false)
	// Setup submodule names
{
    // Pointer to top level
    TOPp = topp;
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOPp->__Vconfigure(this, true);
}
