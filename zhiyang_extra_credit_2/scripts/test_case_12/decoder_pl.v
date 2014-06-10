module decoder (cx,d);
	output [3:0] d;

	input [13:0] cx;

	reg [3:0] d;
	reg [3:0] s;
	reg [13:0] cx1;


	parameter s0 = 4'b1000000000;
	parameter s1 = 4'b0100000000;
	parameter s2 = 4'b0010000000;
	parameter s3 = 4'b0001000000;
	parameter s4 = 4'b0000100000;
	parameter s5 = 4'b0000010000;
	parameter s6 = 4'b0000001000;
	parameter s7 = 4'b0000000100;
	parameter s8 = 4'b0000000010;
	parameter s9 = 4'b0000000001;
	parameter s10 = 4'b1110110101;
	parameter s11 = 4'b0101101100;
	parameter s12 = 4'b0011100011;
	parameter s13 = 4'b0000011111;


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
		cx1[13] = cx[13];
		s[0]= cx[0]+ cx[10];
		s[1]= cx[1]+ cx[10]+ cx[11];
		s[2]= cx[2]+ cx[10]+ cx[12];
		s[3]= cx[3]+ cx[11]+ cx[12];
		s[4]= cx[4]+ cx[10]+ cx[11]+ cx[12];
		s[5]= cx[5]+ cx[10]+ cx[13];
		s[6]= cx[6]+ cx[11]+ cx[13];
		s[7]= cx[7]+ cx[10]+ cx[11]+ cx[13];
		s[8]= cx[8]+ cx[12]+ cx[13];
		s[9]= cx[9]+ cx[10]+ cx[12]+ cx[13];



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
			s13:
				begin
					if(cx[13]==1'b0)
					begin
						cx1[13]=1'b1;
					end
					else
					begin
						cx1[13]=1'b0;
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
					cx1[13]=cx[13];
				end
		endcase
		d[0] = cx1[10];
		d[1] = cx1[11];
		d[2] = cx1[12];
		d[3] = cx1[13];
	end
endmodule
