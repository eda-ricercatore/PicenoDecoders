
`timescale 1ns/10ps
`include "pmsm.v"

module pmsmtb;
    reg [3:0]	npm0, npm1, npm2, npm3;
    reg 	clk, reset;
    wire [3:0] 	pm0, pm1, pm2, pm3;

    pmsm pmsm1(npm0, npm1, npm2, npm3, pm0, pm1, pm2, pm3, clk, reset);

    initial
        begin
            npm0=4'd0; npm1=4'd1; npm2=4'd2; npm3=4'd3; 
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
	    npm0=4'd2; npm1=4'd3; npm2=4'd5; npm3=4'd9; 
            clk=1'b0; reset=1'b0;
	    #10;
            clk=1'b1; reset=1'b0; // posedge clk
            #10;
	    npm0=4'd5; npm1=4'd1; npm2=4'd15; npm3=4'd3; 
            clk=1'b0; reset=1'b0;
	    #10;
            clk=1'b1; reset=1'b0; // posedge clk
            #10;
        end
initial
    begin
	$shm_open("pmsm.shm");
	$shm_probe("AC");	
    end
endmodule