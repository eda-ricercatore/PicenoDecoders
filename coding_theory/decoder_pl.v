module decoder (cx,d);
	output [0:0] d;

	input [0:0] cx;

	reg [0:0] d;
	reg [-1:0] s;




	always @(cx)
	begin



		case(s)
			default:
				begin
					if(cx[0]==1'b0)
					begin
						cx[0]=1'b0;
					end
					else
					begin
						cx[0]=1'b1;
					end
				end
		endcase
	end
endmodule
