
`timescale 1ns/10ps
`include "selector.v"

module selectortb;
    reg [3:0]	pm0, pm1, pm2, pm3;
    wire 	d0, d1;

    selector selector1 (pm0, pm1, pm2, pm3, d0, d1);

    initial
        begin
            pm0=4'd1; pm1=4'd3; pm2=4'd5; pm3=4'd15; 
            #10;
            pm0=4'd15; pm1=4'd1; pm2=4'd3; pm3=4'd5; 
            #10;
            pm0=4'd5; pm1=4'd15; pm2=4'd1; pm3=4'd3; 
            #10;
            pm0=4'd3; pm1=4'd5; pm2=4'd15; pm3=4'd1; 
            #10;
            pm0=4'd1; pm1=4'd3; pm2=4'd5; pm3=4'd15; 
            #10;
        end
        
   initial
     begin
	$shm_open("demux2to4.shm");
	$shm_probe("AC");	
     end
endmodule