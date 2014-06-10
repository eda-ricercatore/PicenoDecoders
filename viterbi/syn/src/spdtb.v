
`timescale 1ns/10ps
`include "spdu.v"

module spdutb;
    reg 	d0, d1, d2, d3;
    reg [3:0]	pm0, pm1, pm2, pm3;
    reg 	clk, reset;
    wire 	out;

    spd spd1(d0, d1, d2, d3, pm0, pm1, pm2, pm3, out, clk, reset);
    
    always #5 clk = ~clk;
    
    initial #330 $finish;
    
    initial
        begin
            clk=0;
	    pm0=4'd1; pm1=4'd1; pm2=4'd0; pm3=4'd1;
            d0=1'b0; d1=1'b1; d2=1'b0; d3=1'b1; 
	    reset=1'b1;
	    #10;
	    reset=1'b0;
	    #10;

        end
        
initial
    begin
	$shm_open("spdu.shm");
	$shm_probe("AC");	
    end
endmodule