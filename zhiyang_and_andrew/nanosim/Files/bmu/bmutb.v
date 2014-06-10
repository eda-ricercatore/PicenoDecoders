
`timescale 1ns/10ps
`include "bmu.v"

module bmutb;
    wire bm0, bm1, bm2, bm3, bm4, bm5, bm6, bm7;
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