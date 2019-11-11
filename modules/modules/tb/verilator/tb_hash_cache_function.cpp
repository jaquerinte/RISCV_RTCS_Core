#include "Vhash_cache_function.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <algorithm>
#include <iostream>
#define TRACE_DEF true

//#define NDEBUG
//#define NABORT

/**
* Custom assertion logic
* Usage:
* - define NABORT to continue the execution after a failed assert.
* - define NDEBUG to disable the assertion logic
**/
#if !defined(NDEBUG) && !defined(NABORT)
  extern char *__progname;
  #define ASSERT(step,left,operator,right) {\
    if(!((left) operator (right))){ \
      std::cerr << "\033[31m" << __progname << ": " << __FILE__ << ":" << __LINE__ <<": " << __PRETTY_FUNCTION__ \
      <<". Assertion \'" << #left << " " << #operator << " " << #right << "\' failed in Step " << step << ".\033[0m\nLeft Value :\033[31m[" \
      << (left) << "]\033[0m\nRight Value   :\033[31m[" << (right) << "]\033[0m" << std::endl; \
      exit(0); \
    }\
  }
#elif !defined(NDEBUG) && defined(NABORT)
  extern char *__progname;
  #define ASSERT(step,left,operator,right) {\
    if(!((left) operator (right))){ \
      std::cerr << "\033[31m" << __progname << ": " << __FILE__ << ":" << __LINE__ <<": " << __PRETTY_FUNCTION__ \
      <<". Assertion \'" << #left << " " << #operator << " " << #right << "\' failed in Step " << step << ".\033[0m\nLeft Value :\033[31m[" \
      << (left) << "]\033[0m\nRight Value   :\033[31m[" << (right) << "]\033[0m" << std::endl; \
    }\
  }
#else
  #define ASSERT(step,left,operator,right)
#endif
/**
* Custom assertion logic
**/

//time for waveforms
vluint64_t main_time =0;//current simulation time
double sc_time_stamp(){ //called by $time in verilog
    return main_time;   //converts to double , to match
}
// debug function to generate waveforms and clock
void ticktoc_and_trace(Vhash_cache_function* module,VerilatedVcdC* tfp){
  //waveforms and tick clock
  if (tfp != NULL){
  module->eval();
  module->clk_i = !module->clk_i;
  module->eval();
  tfp->dump (main_time);
  module->eval();
  main_time++;
  module->eval();
  module->clk_i = !module->clk_i;
  module->eval();
  tfp->dump (main_time);
  module->eval();
  main_time++;
  module->eval();
  }else{
  module->eval();
  module->clk_i = !module->clk_i;
  module->eval();
  module->clk_i = !module->clk_i;
  module->eval();
 }
}
void tick_and_trace(Vhash_cache_function* module,VerilatedVcdC* tfp){
  //waveforms and tick clock
  if (tfp != NULL){
  module->eval();
  module->clk_i = !module->clk_i;
  module->eval();
    tfp->dump (main_time);
  module->eval();
    main_time++;
  module->eval();
  }else{
  module->eval();
  module->clk_i = !module->clk_i;
  module->eval();
  }
}

//*** TODO ***
struct TestCase {
    const char* name;
    uint32_t addr_i;
};

//*** TODO ***
TestCase test_cases[] {
//name            addr
    { "step0"       , 0 },
    { "step1"       , 0x20},
    { "step2"       , 0x40},
    { "step3"       , 0x60},
    { "step4"       , 0x56E57F00},
    { "step5"       , 0xFFFFFFFF},
};

int main(int argc, char **argv, char **env) {
  //enable waveforms
  bool vcdTrace= TRACE_DEF;
  VerilatedVcdC* tfp =NULL;
  //declare my module
  Verilated::commandArgs(argc, argv);
  Vhash_cache_function* DUT = new Vhash_cache_function;
  //enable waveforms
  if(vcdTrace)
  {
    Verilated::traceEverOn(true);
    tfp= new VerilatedVcdC;
    DUT->trace(tfp,99);
    std::string vcdname = argv[0];
    vcdname += ".vcd";
    std::cout << vcdname << std::endl;
    tfp->open(vcdname.c_str());
  }

//*** TODO ***
  //initial reset
 //loop through test cases 
 int num_test_cases = sizeof(test_cases)/sizeof(TestCase);
 for(int k = 0; k < num_test_cases; k++) {
      TestCase *test_case = &test_cases[k];
      //Feed addres
      DUT->addr_i=test_case->addr_i;
      //Advance one cycle
      ticktoc_and_trace(DUT,tfp);
  }
//waveforms
  if (tfp != NULL){
    tfp->dump (main_time);
    main_time++;
  }
  tfp->close();
  DUT->final();
  delete tfp;
  delete DUT;
exit(0);
}

