module decoder (cx,d);
	output [6:0] d;

	input [11:0] cx;

	reg [6:0] d;
	reg [4:0] s;
	reg [11:0] cx1;


	parameter s0 = 5'b11110;
	parameter s1 = 5'b10111;
	parameter s2 = 5'b01000;
	parameter s3 = 5'b00111;
	parameter s4 = 5'b01000;
	parameter s5 = 5'b11111;
	parameter s6 = 5'b10111;
	parameter s7 = 5'b10000;
	parameter s8 = 5'b01000;
	parameter s9 = 5'b00100;
	parameter s10 = 5'b00010;
	parameter s11 = 5'b00001;


	always @(cx)
	begin
		cx1[0] = cx[0];
		cx1[1] = cx[1];
		cx1[2] = cx[2];
		cx1[3] = cx[3];
		cx1[4] = cx[4];
		cx1[5] = cx[5];
		cx1[6] = cx[6];
		cx1[7] = cx[7];
		cx1[8] = cx[8];
		cx1[9] = cx[9];
		cx1[10] = cx[10];
		cx1[11] = cx[11];
		s[0]= cx[0]+ cx[1]+ cx[5]+ cx[6]+ cx[7];
		s[1]= cx[0]+ cx[2]+ cx[4]+ cx[5]+ cx[8];
		s[2]= cx[0]+ cx[1]+ cx[3]+ cx[5]+ cx[6]+ cx[9];
		s[3]= cx[0]+ cx[1]+ cx[3]+ cx[5]+ cx[6]+ cx[10];
		s[4]= cx[1]+ cx[3]+ cx[5]+ cx[6]+ cx[11];



		case(s)
			s0:
				begin
					if(cx[0]==1'b0)
					begin
						cx1[0]=1'b1;
					end
					else
					begin
						cx1[0]=1'b0;
					end
				end
			s1:
				begin
					if(cx[1]==1'b0)
					begin
						cx1[1]=1'b1;
					end
					else
					begin
						cx1[1]=1'b0;
					end
				end
			s2:
				begin
					if(cx[2]==1'b0)
					begin
						cx1[2]=1'b1;
					end
					else
					begin
						cx1[2]=1'b0;
					end
				end
			s3:
				begin
					if(cx[3]==1'b0)
					begin
						cx1[3]=1'b1;
					end
					else
					begin
						cx1[3]=1'b0;
					end
				end
			s4:
				begin
					if(cx[4]==1'b0)
					begin
						cx1[4]=1'b1;
					end
					else
					begin
						cx1[4]=1'b0;
					end
				end
			s5:
				begin
					if(cx[5]==1'b0)
					begin
						cx1[5]=1'b1;
					end
					else
					begin
						cx1[5]=1'b0;
					end
				end
			s6:
				begin
					if(cx[6]==1'b0)
					begin
						cx1[6]=1'b1;
					end
					else
					begin
						cx1[6]=1'b0;
					end
				end
			s7:
				begin
					if(cx[7]==1'b0)
					begin
						cx1[7]=1'b1;
					end
					else
					begin
						cx1[7]=1'b0;
					end
				end
			s8:
				begin
					if(cx[8]==1'b0)
					begin
						cx1[8]=1'b1;
					end
					else
					begin
						cx1[8]=1'b0;
					end
				end
			s9:
				begin
					if(cx[9]==1'b0)
					begin
						cx1[9]=1'b1;
					end
					else
					begin
						cx1[9]=1'b0;
					end
				end
			s10:
				begin
					if(cx[10]==1'b0)
					begin
						cx1[10]=1'b1;
					end
					else
					begin
						cx1[10]=1'b0;
					end
				end
			s11:
				begin
					if(cx[11]==1'b0)
					begin
						cx1[11]=1'b1;
					end
					else
					begin
						cx1[11]=1'b0;
					end
				end
			default:
				begin
					cx1[0]=cx[0];
					cx1[1]=cx[1];
					cx1[2]=cx[2];
					cx1[3]=cx[3];
					cx1[4]=cx[4];
					cx1[5]=cx[5];
					cx1[6]=cx[6];
					cx1[7]=cx[7];
					cx1[8]=cx[8];
					cx1[9]=cx[9];
					cx1[10]=cx[10];
					cx1[11]=cx[11];
				end
		endcase
		d[0] = cx1[0];
		d[1] = cx1[1];
		d[2] = cx1[2];
		d[3] = cx1[3];
		d[4] = cx1[4];
		d[5] = cx1[5];
		d[6] = cx1[6];
	end
endmodule
