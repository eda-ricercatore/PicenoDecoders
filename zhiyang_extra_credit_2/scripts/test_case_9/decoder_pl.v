module decoder (cx,d);
	output [17:0] d;

	input [20:0] cx;

	reg [17:0] d;
	reg [2:0] s;
	reg [20:0] cx1;


	parameter s0 = 3'b100;
	parameter s1 = 3'b010;
	parameter s2 = 3'b001;
	parameter s3 = 3'b000;
	parameter s4 = 3'b000;
	parameter s5 = 3'b000;
	parameter s6 = 3'b000;
	parameter s7 = 3'b000;
	parameter s8 = 3'b000;
	parameter s9 = 3'b000;
	parameter s10 = 3'b000;
	parameter s11 = 3'b000;
	parameter s12 = 3'b000;
	parameter s13 = 3'b000;
	parameter s14 = 3'b000;
	parameter s15 = 3'b000;
	parameter s16 = 3'b000;
	parameter s17 = 3'b000;
	parameter s18 = 3'b100;
	parameter s19 = 3'b010;
	parameter s20 = 3'b001;


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
		cx1[19] = cx[19];
		cx1[20] = cx[20];
		s[0]= cx[0]+ cx[18];
		s[1]= cx[1]+ cx[19];
		s[2]= cx[2]+ cx[20];



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
			s19:
				begin
					if(cx[19]==1'b0)
					begin
						cx1[19]=1'b1;
					end
					else
					begin
						cx1[19]=1'b0;
					end
				end
			s20:
				begin
					if(cx[20]==1'b0)
					begin
						cx1[20]=1'b1;
					end
					else
					begin
						cx1[20]=1'b0;
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
					cx1[19]=cx[19];
					cx1[20]=cx[20];
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
		d[8] = cx1[8];
		d[9] = cx1[9];
		d[10] = cx1[10];
		d[11] = cx1[11];
		d[12] = cx1[12];
		d[13] = cx1[13];
		d[14] = cx1[14];
		d[15] = cx1[15];
		d[16] = cx1[16];
		d[17] = cx1[17];
	end
endmodule
