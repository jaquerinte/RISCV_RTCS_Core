// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header

#ifndef _Vhash_cache_function__Syms_H_
#define _Vhash_cache_function__Syms_H_

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "Vhash_cache_function.h"

// SYMS CLASS
class Vhash_cache_function__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_activity;  ///< Used by trace routines to determine change occurred
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vhash_cache_function*          TOPp;
    
    // CREATORS
    Vhash_cache_function__Syms(Vhash_cache_function* topp, const char* namep);
    ~Vhash_cache_function__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    inline bool getClearActivity() { bool r=__Vm_activity; __Vm_activity=false; return r; }
    
} VL_ATTR_ALIGNED(64);

#endif // guard
