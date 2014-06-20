
`timescale 1ns/10ps
//`include "spdu.v"

module spdutb;
    reg 	in0, in1, in2, in3, d0, d1, d2, d3;
    reg 	clk, reset;
    wire 	out0, out1, out2, out3;

    spdu spdu1(in0, in1, in2, in3, d0, d1, d2, d3,
    	       out0, out1, out2, out3, clk, reset);

    initial
        begin
            d0=1'b0; d1=1'b1; d2=1'b0; d3=1'b1; 
            in0=1'b0; in1=1'b1; in2=1'b0; in3=1'b1; 
            clk=1'b0; reset=1'b0;
            #10;
            clk=1'b1; reset=1'b0; // posedge clk
	    #10;
            clk=1'b0; reset=1'b1;
	    #10;
            clk=1'b1; reset=1'b1; // posedge clk
	    #10;
            clk=1'b0; reset=1'b0;
	    #10;
            clk=1'b1; reset=1'b0; // posedge clk
	    #10;
	    in0=1'b0; in1=1'b0; in2=1'b0; in3=1'b0; 
            clk=1'b0; reset=1'b0;
	    #10;
            clk=1'b1; reset=1'b0; // posedge clk
            #10;
	    in0=1'b0; in1=1'b0; in2=1'b0; in3=1'b1; 
            clk=1'b0; reset=1'b0;
	    #10;
            clk=1'b1; reset=1'b0; // posedge clk
            #10;
	    in0=1'b0; in1=1'b0; in2=1'b1; in3=1'b0; 
            clk=1'b0; reset=1'b0;
	    #10;
            clk=1'b1; reset=1'b0; // posedge clk
            #10;
            d0=1'b1; d1=1'b0; d2=1'b1; d3=1'b0; 
	    in0=1'b0; in1=1'b0; in2=1'b0; in3=1'b1; 
            clk=1'b0; reset=1'b0;
	    #10;
            clk=1'b1; reset=1'b0; // posedge clk
            #10;
	    in0=1'b0; in1=1'b0; in2=1'b1; in3=1'b0; 
            clk=1'b0; reset=1'b0;
	    #10;
            clk=1'b1; reset=1'b0; // posedge clk
            #10;
	    in0=1'b1; in1=1'b0; in2=1'b1; in3=1'b1; 
            clk=1'b0; reset=1'b0;
	    #10;
            clk=1'b1; reset=1'b0; // posedge clk
            #10;
	    in0=1'b1; in1=1'b1; in2=1'b0; in3=1'b0; 
            clk=1'b0; reset=1'b0;
	    #10;
            clk=1'b1; reset=1'b0; // posedge clk
            #10;


        end
initial
    begin
	$shm_open("spdu.shm");
	$shm_probe("AC");	
    end
endmodule
