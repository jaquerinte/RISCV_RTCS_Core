`default_nettype none
//-----------------------------------------------------
// Project Name : a.out
// Function     : fetch instruction form the I-cache
// Description  : This module is for the feching instruction from the I-cahe in order to provided to the processor
// Coder        : Jaquer AND Barrera

//***Headers***
`include "defines.vh"
//***Module***
module fetch #(
        parameter integer WORD_SIZE = 32,
        parameter integer LINE_SIZE = 128,
        parameter integer WORDS_PER_LINES = 4,
        parameter integer MEMORY_LINES = 4,
        parameter integer TAG = 24,
        parameter integer OFFSET = 7
    )
    (
        input  clk_i ,
        input  rstn_i ,
        input  [LINE_SIZE - 1 : 0] data_i ,
        input  valid_input_i ,
        output [WORD_SIZE - 1 : 0] nrm0_o ,
        output [WORD_SIZE - 1 : 0] addr_o ,
        output [WORD_SIZE - 1 : 0] instruction_register_o ,
        output ask_memory_o ,
        output valid_o 
    );

//***Interal logic generated by compiler***  
//***Auxiliar Wires***  
    wire line_index_w; // Auxiliar Wire

    hash_cache_function #(
        .WORD_SIZE (32)
    )
    inst_hcf(
        .clk_i                (clk_i ),
        .addr_i               (addr_o ),
        .line_index_o         (line_index_w)
    );


//***Dumped Internal logic***
    localparam NUM_SETS_CACHE = ((LINE_SIZE * MEMORY_LINES)/(LINE_SIZE *2));
    localparam WIDE_CACHE_LINE = (TAG*2 + LINE_SIZE*2 + 3);
    localparam INIT_POS_TAG_WAY_1 = 2;
    localparam INIT_POS_TAG_WAY_2 = 3+TAG+LINE_SIZE;
    localparam END_POS_TAG_WAY_1 = TAG+1;
    localparam END_POS_TAG_WAY_2 = TAG+2+LINE_SIZE+TAG;
    // params for cache word acces
    // way 1
    localparam INIT_POS_WORD_1_WAY_1 = TAG+2;
    localparam END_POS_WORD_1_WAY_1 = TAG+2+WORD_SIZE-1;
    localparam INIT_POS_WORD_2_WAY_1 = TAG+WORD_SIZE+2;
    localparam END_POS_WORD_2_WAY_1 = TAG+2+WORD_SIZE+WORD_SIZE-1;
    localparam INIT_POS_WORD_3_WAY_1 = TAG+WORD_SIZE+WORD_SIZE+2;
    localparam END_POS_WORD_3_WAY_1 = TAG+2+WORD_SIZE+WORD_SIZE+WORD_SIZE-1;
    localparam INIT_POS_WORD_4_WAY_1 = TAG+WORD_SIZE+WORD_SIZE+WORD_SIZE+2;
    localparam END_POS_WORD_4_WAY_1 = TAG+2+WORD_SIZE+WORD_SIZE+WORD_SIZE+WORD_SIZE-1;
    
    // way 2
    localparam INIT_POS_WORD_1_WAY_2 = TAG+TAG+3+LINE_SIZE;
    localparam END_POS_WORD_1_WAY_2 = TAG+3+TAG+LINE_SIZE+WORD_SIZE-1;
    localparam INIT_POS_WORD_2_WAY_2 = TAG+TAG+WORD_SIZE+3+LINE_SIZE;
    localparam END_POS_WORD_2_WAY_2 = TAG+3+TAG+LINE_SIZE+WORD_SIZE+WORD_SIZE-1;
    localparam INIT_POS_WORD_3_WAY_2 = TAG+TAG+WORD_SIZE+WORD_SIZE+3+LINE_SIZE;
    localparam END_POS_WORD_3_WAY_2 = TAG+3+TAG+LINE_SIZE+WORD_SIZE+WORD_SIZE+WORD_SIZE-1;
    localparam INIT_POS_WORD_4_WAY_2 = TAG+TAG+WORD_SIZE+WORD_SIZE+WORD_SIZE+3+LINE_SIZE;
    localparam END_POS_WORD_4_WAY_2 = TAG+3+TAG+LINE_SIZE+WORD_SIZE+WORD_SIZE+WORD_SIZE+WORD_SIZE-1;
    
    // block 0 --> block in way 0
    localparam INIT_POS_LINE_0 = TAG+2;
    localparam END_POS_LINE_0 = TAG+2+LINE_SIZE-1;
    localparam INIT_POS_TAG_LINE_0 = 2;
    localparam END_POS_TAG_LINE_0 = TAG+1;
    localparam VALID_BIT_WAY_0 = 1;

    // block 1

    localparam INIT_POS_LINE_1 = TAG+TAG+3+LINE_SIZE;
    localparam END_POS_LINE_1 = TAG+3+TAG+LINE_SIZE+LINE_SIZE-1;
    localparam INIT_POS_TAG_LINE_1 = 3+TAG+LINE_SIZE;
    localparam END_POS_TAG_LINE_1 = TAG+2+LINE_SIZE+TAG;
    localparam VALID_BIT_WAY_1 = TAG+2+LINE_SIZE;

    reg [WORD_SIZE-1:0]addr_asked;
    reg addr_ask;
    reg [WIDE_CACHE_LINE-1:0] cache_men [0:NUM_SETS_CACHE-1];

    reg [WORD_SIZE-1:0] rm0;


    //assign next_pc_w = !rstn_i ? {WORD_SIZE{1'b0}} : valid_o ? rm0 + 32 :  rm0;
    always @(posedge clk_i) begin

        ask_memory_o <= 1'b0;
        if (!rstn_i) begin                                       
            // reset                                            
            integer i;         
            /* verilator lint_off BLKLOOPINIT*/                                 
            for(i=0;i<NUM_SETS_CACHE; i=i+1) begin                 
                cache_men[i] <= {WIDE_CACHE_LINE{1'b0}};                
            end   
            /* verilator lint_on BLKLOOPINIT*/
            rm0 <= {WORD_SIZE{1'b0}};
        end
        else begin
            //rm0 <= next_pc_w;
            // take the rm0 and check if is in catch
            // check if is in way 1 or 0
            // check way 0 and valid 23/7
            if(cache_men[rm0[OFFSET]][END_POS_TAG_WAY_1:INIT_POS_TAG_WAY_1] == rm0[WORD_SIZE-1:OFFSET+1] && cache_men[rm0[OFFSET]][VALID_BIT_WAY_0]) begin
                // hit in way 0
                // rm0[WORD_SIZE-1:TAG] is offset
                valid_o <= 1;
                rm0 <= rm0 +32;
                nrm0_o <= rm0 +32;

                if(rm0[OFFSET-1:OFFSET-2] == 2'b00) begin
                    instruction_register_o <= cache_men[rm0[OFFSET]][END_POS_WORD_1_WAY_1:INIT_POS_WORD_1_WAY_1];
                end
                else if (rm0[OFFSET-1:OFFSET-2] == 2'b01) begin
                    instruction_register_o <= cache_men[rm0[OFFSET]][END_POS_WORD_2_WAY_1:INIT_POS_WORD_2_WAY_1];
                end

                else if (rm0[OFFSET-1:OFFSET-2] == 2'b10) begin
                    instruction_register_o <= cache_men[rm0[OFFSET]][END_POS_WORD_3_WAY_1:INIT_POS_WORD_3_WAY_1];
                end
                else if (rm0[OFFSET-1:OFFSET-2] == 2'b11)begin
                    instruction_register_o <= cache_men[rm0[OFFSET]][END_POS_WORD_4_WAY_1:INIT_POS_WORD_4_WAY_1];
                end


                
            end
            // check way 1 and valid 
            else if(cache_men[rm0[OFFSET]][END_POS_TAG_WAY_2:INIT_POS_TAG_WAY_2] == rm0[WORD_SIZE-1:OFFSET+1] && cache_men[rm0[OFFSET]][VALID_BIT_WAY_1]) begin
                // hit in way 1
                valid_o <= 1;
                rm0 <= rm0 +32;
                nrm0_o <= rm0 +32;

                if(rm0[OFFSET-1:OFFSET-2] == 2'b00) begin
                    instruction_register_o <= cache_men[rm0[OFFSET]][END_POS_WORD_1_WAY_2:INIT_POS_WORD_1_WAY_2];
                end
                else if (rm0[OFFSET-1:OFFSET-2] == 2'b01) begin
                    instruction_register_o <= cache_men[rm0[OFFSET]][END_POS_WORD_2_WAY_2:INIT_POS_WORD_2_WAY_2];
                end

                else if (rm0[OFFSET-1:OFFSET-2] == 2'b10) begin
                    instruction_register_o <= cache_men[rm0[OFFSET]][END_POS_WORD_3_WAY_2:INIT_POS_WORD_3_WAY_2];
                end
                else if (rm0[OFFSET-1:OFFSET-2] == 2'b11)begin
                    instruction_register_o <= cache_men[rm0[OFFSET]][END_POS_WORD_4_WAY_2:INIT_POS_WORD_4_WAY_2];
                end

                
            end
            else if (addr_ask && valid_input_i) begin
                if(cache_men[line_index_w][0]) begin
                    // LRU == 1 replace way 1
                    // replace LRU
                    cache_men[line_index_w][0] <= 1'b0;
                    // store block in way 1
                    cache_men[line_index_w][END_POS_LINE_1:INIT_POS_LINE_1] <= data_i;
                    // set the valid bit
                    cache_men[line_index_w][VALID_BIT_WAY_1] <= 1'b1;
                    // store the tag
                    cache_men[line_index_w][END_POS_TAG_LINE_1:INIT_POS_TAG_LINE_1] <= addr_asked[WORD_SIZE-1:OFFSET+1];
                    // set the ask
                    addr_ask <= 1'b0;

                end
                else begin
                    // LRU == 0 replace way 0
                    // replace LRU
                    cache_men[line_index_w][0] <= 1'b1;
                    // store block in way 0
                    cache_men[line_index_w][END_POS_LINE_0:INIT_POS_LINE_0] <= data_i;
                    // set bit to valid
                    cache_men[line_index_w][VALID_BIT_WAY_0] <= 1'b1;
                    //store the tag
                    cache_men[line_index_w][END_POS_TAG_LINE_0:INIT_POS_TAG_LINE_0] <= addr_asked[WORD_SIZE-1:OFFSET+1];
                    // set the ask
                    addr_ask <= 1'b0;

                end
            end
            else if (addr_ask && rm0 == addr_asked) begin
                // same addr ask 
                valid_o <= 0;
            end
            else begin
                // Mis go to main memory
                addr_asked <= rm0;
                addr_ask <= 1'b1;
                valid_o <= 0;
                addr_o <= rm0;
                ask_memory_o <= 1'b1;

            end 
        end

    end
    //assign next_pc_w = !rstn_i ? {WORD_SIZE{1'b0}} : valid_o ? rm0 + 32 :  rm0;
    //assign nrm0_o = next_pc_w;
    
//***Handcrafted Internal logic*** 
//TODO
endmodule
