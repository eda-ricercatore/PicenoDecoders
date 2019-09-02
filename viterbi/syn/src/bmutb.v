/**
 * This is written by Zhiyang Ong 
 * and Andrew Mattheisen 
 *
 *
 */

`timescale 1ns/10ps
/**
 * `timescale time_unit base / precision base
 *
 * -Specifies the time units and precision for delays:
 * -time_unit is the amount of time a delay of 1 represents.
 *	The time unit must be 1 10 or 100
 * -base is the time base for each unit, ranging from seconds
 *	to femtoseconds, and must be: s ms us ns ps or fs
 * -precision and base represent how many decimal points of
 *	precision to use relative to the time units.
 */



// Testbench for behavioral model for the Viterbi decoder


/**
 * Import the modules that will be tested for in this testbench
 *
 * Include statements for design modules/files need to be commented
 * out when I use the Make environment - similar to that in
 * Assignment/Homework 3.
 *
 * Else, the Make/Cadence environment will not be able to locate
 * the files that need to be included.
 *
 * The Make/Cadence environment will automatically search all
 * files in the design/ and include/ directories of the working
 * directory for this project that uses the Make/Cadence
 * environment for the design modules
 *
 * If the ".f" files are used to run NC-Verilog to compile and
 * simulate the Verilog testbench modules, use this include
 * statement
 */

`include "bmu.v"

module bmutb;
	// Modify the number of bits in the ouput bus to be 2
    wire [1:0] bm0, bm1, bm2, bm3, bm4, bm5, bm6, bm7;
    reg  cx0, cx1;

    bmu bmu1 (cx0, cx1, bm0, bm1, bm2, bm3, bm4, bm5, bm6, bm7);

    initial
        begin
            cx0=0; cx1=0;
            #10;
            cx0=0; cx1=1;
            #10;
            cx0=1; cx1=0;
            #10;
            cx0=1; cx1=1;
            #10;
            cx0=0; cx1=0;
            #10;
        end
initial
    begin
	$shm_open("bmu.shm");
	$shm_probe("AC");	
    end
endmodule
