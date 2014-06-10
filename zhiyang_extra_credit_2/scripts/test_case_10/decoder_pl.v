module decoder (cx,d);
	output [7:0] d;

	input [12:0] cx;

	reg [7:0] d;
	reg [4:0] s;
	reg [12:0] cx1;


	parameter s0 = 5'b11001;
	parameter s1 = 5'b11000;
	parameter s2 = 5'b10010;
	parameter s3 = 5'b00010;
	parameter s4 = 5'b10110;
	parameter s5 = 5'b10000;
	parameter s6 = 5'b11100;
	parameter s7 = 5'b00000;
	parameter s8 = 5'b10000;
	parameter s9 = 5'b01000;
	parameter s10 = 5'b00100;
	parameter s11 = 5'b00010;
	parameter s12 = 5'b00001;


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
		cx1[12] = cx[12];
		s[0]= cx[0]+ cx[1]+ cx[2]+ cx[4]+ cx[5]+ cx[6]+ cx[8];
		s[1]= cx[0]+ cx[1]+ cx[6]+ cx[9];
		s[2]= cx[4]+ cx[6]+ cx[10];
		s[3]= cx[2]+ cx[3]+ cx[4]+ cx[11];
		s[4]= cx[0]+ cx[12];



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
			s12:
				begin
					if(cx[12]==1'b0)
					begin
						cx1[12]=1'b1;
					end
					else
					begin
						cx1[12]=1'b0;
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
					cx1[12]=cx[12];
				end
		endcase
		d[0] = cx1[0];
		d[1] = cx1[1];
		d[2] = cx1[2];
		d[3] = cx1[3];
		d[4] = cx1[4];
		d[5] = cx1[5];
		d[6] = cx1[6];
		d[7] = cx1[7];
	end
endmodule
