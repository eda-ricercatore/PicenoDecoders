
`timescale 1ns/10ps
`include "demux2to4.v"

module spdutb;
    reg 	in0, in1, in2, in3, d0, d1;
    wire 	out;

    demux demux1 (in0, in1, in2, in3, d0, d1, out);


    initial
        begin
            in0=1'b0; in1=1'b1; in2=1'b1; in3=1'b1; 
            d0=1'b0; d1=1'b0; 
            #10;
            d0=1'b1; d1=1'b0;
            #10;
            d0=1'b0; d1=1'b1;
            #10;
            d0=1'b1; d1=1'b1;
            #10;

            in0=1'b1; in1=1'b0; in2=1'b1; in3=1'b1; 
            d0=1'b0; d1=1'b0; 
            #10;
            d0=1'b1; d1=1'b0;
            #10;
            d0=1'b0; d1=1'b1;
            #10;
            d0=1'b1; d1=1'b1;
            #10;

            in0=1'b1; in1=1'b1; in2=1'b0; in3=1'b1; 
            d0=1'b0; d1=1'b0; 
            #10;
            d0=1'b1; d1=1'b0;
            #10;
            d0=1'b0; d1=1'b1;
            #10;
            d0=1'b1; d1=1'b1;
            #10;

            in0=1'b1; in1=1'b1; in2=1'b1; in3=1'b0; 
            d0=1'b0; d1=1'b0; 
            #10;
            d0=1'b1; d1=1'b0;
            #10;
            d0=1'b0; d1=1'b1;
            #10;
            d0=1'b1; d1=1'b1;
            #10;


        end
        
   initial
     begin
	$shm_open("demux2to4.shm");
	$shm_probe("AC");	
     end
endmodule
