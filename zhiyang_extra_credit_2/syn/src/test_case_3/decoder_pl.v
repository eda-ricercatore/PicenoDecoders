module decoder (cx,d);
	output [5:0] d;

	input [18:0] cx;

	reg [5:0] d;
	reg [12:0] s;
	reg [18:0] cx1;


	parameter s0 = 13'b1001001110000;
	parameter s1 = 13'b1000101100111;
	parameter s2 = 13'b0010010001011;
	parameter s3 = 13'b0011100010101;
	parameter s4 = 13'b1101110101110;
	parameter s5 = 13'b1110101100010;
	parameter s6 = 13'b1000000000000;
	parameter s7 = 13'b0100000000000;
	parameter s8 = 13'b0010000000000;
	parameter s9 = 13'b0001000000000;
	parameter s10 = 13'b0000100000000;
	parameter s11 = 13'b0000010000000;
	parameter s12 = 13'b0000001000000;
	parameter s13 = 13'b0000000100000;
	parameter s14 = 13'b0000000010000;
	parameter s15 = 13'b0000000001000;
	parameter s16 = 13'b0000000000100;
	parameter s17 = 13'b0000000000010;
	parameter s18 = 13'b0000000000001;


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
		s[0]= cx[0]+ cx[1]+ cx[4]+ cx[5]+ cx[6];
		s[1]= cx[4]+ cx[5]+ cx[7];
		s[2]= cx[2]+ cx[3]+ cx[5]+ cx[8];
		s[3]= cx[0]+ cx[3]+ cx[4]+ cx[9];
		s[4]= cx[1]+ cx[3]+ cx[4]+ cx[5]+ cx[10];
		s[5]= cx[2]+ cx[4]+ cx[11];
		s[6]= cx[0]+ cx[1]+ cx[5]+ cx[12];
		s[7]= cx[0]+ cx[1]+ cx[4]+ cx[5]+ cx[13];
		s[8]= cx[0]+ cx[3]+ cx[14];
		s[9]= cx[2]+ cx[4]+ cx[15];
		s[10]= cx[1]+ cx[3]+ cx[4]+ cx[16];
		s[11]= cx[1]+ cx[2]+ cx[4]+ cx[5]+ cx[17];
		s[12]= cx[1]+ cx[2]+ cx[3]+ cx[18];



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
		d[0] = cx1[0];
		d[1] = cx1[1];
		d[2] = cx1[2];
		d[3] = cx1[3];
		d[4] = cx1[4];
		d[5] = cx1[5];
	end
endmodule
