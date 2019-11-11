// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header

#ifndef _Vtb_top__Syms_H_
#define _Vtb_top__Syms_H_

#include "verilated_heavy.h"

// INCLUDE MODULE CLASSES
#include "Vtb_top.h"
#include "Vtb_top___024unit.h"

// SYMS CLASS
class Vtb_top__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_activity;  ///< Used by trace routines to determine change occurred
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vtb_top*                       TOPp;
    
    // CREATORS
    Vtb_top__Syms(Vtb_top* topp, const char* namep);
    ~Vtb_top__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    inline bool getClearActivity() { bool r=__Vm_activity; __Vm_activity=false; return r; }
    
} VL_ATTR_ALIGNED(64);

#endif // guard
