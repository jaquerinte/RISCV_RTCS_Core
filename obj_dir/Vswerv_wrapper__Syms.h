// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header

#ifndef _Vswerv_wrapper__Syms_H_
#define _Vswerv_wrapper__Syms_H_

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "Vswerv_wrapper.h"
#include "Vswerv_wrapper___024unit.h"

// SYMS CLASS
class Vswerv_wrapper__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vswerv_wrapper*                TOPp;
    
    // CREATORS
    Vswerv_wrapper__Syms(Vswerv_wrapper* topp, const char* namep);
    ~Vswerv_wrapper__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(64);

#endif // guard
