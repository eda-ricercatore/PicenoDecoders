/**
 * This is written by Zhiyang Ong
 * and Andrew Mattheisen 
 */

/**
 * Import the design modules for other design submodules
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
 /*
`include "acs.v"
`include "bmu.v"
`include "pmsm.v"
`include "spd.v"
*/
// Design of the Viterbi decoder
module viterbi_decoder (d, cx, clk, reset);
	// Output signals for the design module
	// Decoded output signal from the Viterbi decoder
	output d;
	
	
	
	
	
	// Input signals for the design module
	// Received encoded signal that may have corrupted bits
	input [1:0] cx;
	// Input clock signal for the Viterbi decoder
	input clk;
	// Reset signal for the Viterbi decoder
	input reset;
	
	
	
	
	
	// Declare "reg" signals... that will be assigned values
//	reg d;
	// Set of branch metric outputs from the BMU
//	reg [1:0] brch_met0,brch_met1,brch_met2,brch_met3;
//	reg [1:0] brch_met4,brch_met5,brch_met6,brch_met7;
	
	// Outputs from the ACS units
	// Decision bit output from the ACS units
//	reg d0,d1,d2,d3;
	// Output from the ACS that indicates the new path metric
//	reg [3:0] n_pm0,n_pm1,n_pm2,n_pm3;
	
	// Outputs from the PMSM units
//	reg [3:0] p_m0, p_m1, p_m2, p_m3;
	
	
	

	// Declare "wire" signals...
	wire d;
	
	// Set of branch metric outputs from the BMU
	wire [1:0] brch_met0,brch_met1,brch_met2,brch_met3;
	wire [1:0] brch_met4,brch_met5,brch_met6,brch_met7;
	
	// Outputs from the ACS units
	// Decision bit output from the ACS units
	wire d0,d1,d2,d3;
	// Output from the ACS that indicates the new path metric
	wire [3:0] n_pm0,n_pm1,n_pm2,n_pm3;
	
	// Outputs from the PMSM units
	wire [3:0] p_m0, p_m1, p_m2, p_m3;
	
	
	
	// Defining constants: parameter [name_of_constant] = value;
	
	
	
	/*******************************************************
	 *
	 * Connecting the modules of the Viterbi decoder together
	 * That is, link the following modules together:
	 * # Branch Metric calculation Unit (BMU)
	 * # Add-Compare-Select unit (ACS)
	 * # Survivor Path Decoding Unit (SPDU)
	 * # Survivor Path Decoder (SPD)
	 * # Path Metric State Memory (PMSM)
	 *
	 * Note that the SPD module includes the demux (2-to-4
	 * DEMUX/demultiplexer) and selector.
	 *
	 * The selector chooses the smallest path metric to
	 * create the control signal to select the smallest path
	 *
	 * In addition, note that the SPD module includes 15 SPDU
	 * units.
	 *
	 *
	 *
	 * Basic architecture of the Viterbi decoder:
	 *
	 *  (1)  (4)  (1)   (1)
	 * BMU->ACS->PMSM->SPD
	 *		v ^	   V	^
	 *		| |   |		|
	 *		| -----		|
	 *		|			|
	 *		------------|
	 *
	 *******************************************************
	 */
	
	// =====================================================
	
	/**
	 * Instantiate the BMU to receive inputs for the Viterbi
	 * decoder, and produce outputs for the ACS units
	 *
	 * There is only one BMU for the Viterbi decoder
	 */
	bmu brch_met (cx[0], cx[1],
		brch_met0,brch_met1,brch_met2,brch_met3,
		brch_met4,brch_met5,brch_met6,brch_met7);
	
	// =====================================================
	
	/**
	 * Instantiate the 4 ACS units to receive inputs from
	 * the BMU and the PMSM, and produce outputs for the SPD
	 * and the PMSM
	 *
	 * The assignment of branch and path metrics to each
	 * state is based on the Trellis diagrams for different
	 * inputs for the input code(s), cx or cin
	 *
	 * See the BMU module for the interconnections.
	 */
	 
	// Instantiate the 1st ACS unit
	add_compare_select acs0 (n_pm0, d0,
		p_m0, brch_met0, p_m1, brch_met2);
	// Instantiate the 2nd ACS unit
	add_compare_select acs1 (n_pm1, d1,
		p_m2, brch_met4, p_m3, brch_met6);
	// Instantiate the 3rd ACS unit
	add_compare_select acs2 (n_pm2, d2,
		p_m0, brch_met1, p_m1, brch_met3);
	// Instantiate the 4th ACS unit
	add_compare_select acs3 (n_pm3, d3,
		p_m2, brch_met5, p_m3, brch_met7);
		
	// =====================================================
	
	/**
	 * Instantiate the PMSM that contains a set of 4
	 * registers, and circuitry to normalize the path metrics
	 * by subtracting the smallest path metric from all of
	 * the path metrics
	 * 
	 * There is only one PMSM for the Viterbi decoder
	 */
	pmsm path_metric_sm (n_pm0, n_pm1, n_pm2, n_pm3,
		p_m0, p_m1, p_m2, p_m3, clk, reset);
	
	// =====================================================
	
	/**
	 * Instantiate the SPD that uses the current path metric
	 * and the decision bits to determine the optimal path
	 * for Viterbi decoding using dynamic programming
	 * 
	 * There is only one SPD for the Viterbi decoder
	 */
	spd survivor_path_dec (d0, d1, d2, d3, p_m0, p_m1, p_m2, p_m3,
		d, clk, reset);
	
endmodule


