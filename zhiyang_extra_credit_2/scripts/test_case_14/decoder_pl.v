module decoder (cx,d);
	output [7:0] d;

	input [18:0] cx;

	reg [7:0] d;
	reg [7:0] s;
	reg [18:0] cx1;


	parameter s0 = 8'b10000000000;
	parameter s1 = 8'b01000000000;
	parameter s2 = 8'b00100000000;
	parameter s3 = 8'b00010000000;
	parameter s4 = 8'b00001000000;
	parameter s5 = 8'b00000100000;
	parameter s6 = 8'b00000010000;
	parameter s7 = 8'b00000001000;
	parameter s8 = 8'b00000000100;
	parameter s9 = 8'b00000000010;
	parameter s10 = 8'b00000000001;
	parameter s11 = 8'b00101101101;
	parameter s12 = 8'b10101100110;
	parameter s13 = 8'b01000111001;
	parameter s14 = 8'b11110011101;
	parameter s15 = 8'b10001100011;
	parameter s16 = 8'b11000010001;
	parameter s17 = 8'b10001000010;
	parameter s18 = 8'b10010100110;


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
		cx1[14] = cx[14];
		cx1[15] = cx[15];
		cx1[16] = cx[16];
		cx1[17] = cx[17];
		cx1[18] = cx[18];
		s[0]= cx[0]+ cx[12]+ cx[14]+ cx[15]+ cx[16]+ cx[17]+ cx[18];
		s[1]= cx[1]+ cx[13]+ cx[14]+ cx[16];
		s[2]= cx[2]+ cx[11]+ cx[12]+ cx[14];
		s[3]= cx[3]+ cx[14]+ cx[18];
		s[4]= cx[4]+ cx[11]+ cx[12]+ cx[15]+ cx[17];
		s[5]= cx[5]+ cx[11]+ cx[12]+ cx[13]+ cx[15]+ cx[18];
		s[6]= cx[6]+ cx[13]+ cx[14]+ cx[16];
		s[7]= cx[7]+ cx[11]+ cx[13]+ cx[14];
		s[8]= cx[8]+ cx[11]+ cx[12]+ cx[14]+ cx[18];
		s[9]= cx[9]+ cx[12]+ cx[15]+ cx[17]+ cx[18];
		s[10]= cx[10]+ cx[11]+ cx[13]+ cx[14]+ cx[15]+ cx[16];



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
			s14:
				begin
					if(cx[14]==1'b0)
					begin
						cx1[14]=1'b1;
					end
					else
					begin
						cx1[14]=1'b0;
					end
				end
			s15:
				begin
					if(cx[15]==1'b0)
					begin
						cx1[15]=1'b1;
					end
					else
					begin
						cx1[15]=1'b0;
					end
				end
			s16:
				begin
					if(cx[16]==1'b0)
					begin
						cx1[16]=1'b1;
					end
					else
					begin
						cx1[16]=1'b0;
					end
				end
			s17:
				begin
					if(cx[17]==1'b0)
					begin
						cx1[17]=1'b1;
					end
					else
					begin
						cx1[17]=1'b0;
					end
				end
			s18:
				begin
					if(cx[18]==1'b0)
					begin
						cx1[18]=1'b1;
					end
					else
					begin
						cx1[18]=1'b0;
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
					cx1[14]=cx[14];
					cx1[15]=cx[15];
					cx1[16]=cx[16];
					cx1[17]=cx[17];
					cx1[18]=cx[18];
				end
		endcase
		d[0] = cx1[11];
		d[1] = cx1[12];
		d[2] = cx1[13];
		d[3] = cx1[14];
		d[4] = cx1[15];
		d[5] = cx1[16];
		d[6] = cx1[17];
		d[7] = cx1[18];
	end
endmodule
