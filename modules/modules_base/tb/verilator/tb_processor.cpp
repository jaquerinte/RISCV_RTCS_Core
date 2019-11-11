#include "Vprocessor.h"
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
void ticktoc_and_trace(Vprocessor* module,VerilatedVcdC* tfp){
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
void tick_and_trace(Vprocessor* module,VerilatedVcdC* tfp){
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
    bool rstn_i;
};

//*** TODO ***
TestCase test_cases[] {
//name              rstn
    { "step0"       ,1  },
    { "step1"       ,1  },
    { "step2"       ,1  },
    { "step3"       ,1  },
    { "step4"       ,1  },
    { "step5"       ,1  },
    { "step6"       ,1  },
    { "step7"       ,1  },
    { "step8"       ,1  },
    { "step9"       ,1  },
    { "step10"      ,1  },
    { "step11"      ,1  },
    { "step12"      ,1  },
    { "step13"      ,1  },
    { "step14"      ,1  },
    { "step15"      ,1  },
    { "step16"      ,1  },
    { "step17"      ,1  },
    { "step18"      ,1  },
    { "step19"      ,1  },
    { "step20"      ,1  },
    { "step21"      ,1  },
    { "step22"      ,1  },
    { "step23"      ,1  },
};

int main(int argc, char **argv, char **env) {
  //enable waveforms
  bool vcdTrace= TRACE_DEF;
  VerilatedVcdC* tfp =NULL;
  //declare my module
  Verilated::commandArgs(argc, argv);
  Vprocessor* DUT = new Vprocessor;
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
  //DUT->rst_i=1;
  //ticktoc_and_trace(DUT,tfp);
  //DUT->rst_i=0;
  //ticktoc_and_trace(DUT,tfp);
 //loop through test cases 
 int num_test_cases = sizeof(test_cases)/sizeof(TestCase);
 for(int k = 0; k < num_test_cases; k++) {
      TestCase *test_case = &test_cases[k];
      //Feed addres
      DUT->rstn_i=test_case->rstn_i;
      //DUT->addr_i=test_case->addr_i;
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

