#####################################################################
#
# This is written by Zhiyang Ong
# for EE577b Extra Credit Homework #2
#
#####################################################################





# Simulate the communication channel - test case #5
sim5:
	@echo == Simulate the behavioral RTL Verilog models for
	@echo == test case #5
	ncverilog -f pipelinedec.f +gui
















# =================================================================
# =================================================================
# =================================================================
#
# Produce the Parity-check matrix H and the Generator matrix G,
# and the synthesizable behavioral RTL Verilog code for the encoder
# and the decoder, using a Perl script
#
# Name of Perl script is: parse.pl
# Name of behavioral RTL Verilog model for encoder: encoder_pl.v
# Name of behavioral RTL Verilog model for decoder: decoder_pl.v
#
# Names of files containing correct G and H:
# input.txt and other_matrix.txt

	
	
# This Make target will FAIL since the input file is incorrect
# Input file contains repeated columns of I
repeat_cols:
	@echo == Get the current date and time, including the
	@echo == time zone
	date
	@echo == Display the input text file
	@echo == with repeated columns of the Identity matrix I
	more repeated_cols_ip.txt
	@echo == Produce the G and H matrices, and the Verilog
	@echo == models for this incorrect input matrix with
	@echo == repeated columns of I
	parse.pl -g repeated_cols_ip.txt
	@echo == List files starting with encoder
	ls -l encoder*
	@echo ==View the G matrix
	cat -n input.txt
	@echo ==View the behavioral Verilog code for the encoder
	cat -n encoder_pl.v
	@echo == List files starting with decoder
	ls -l decoder*
	@echo ==View the H matrix
	cat -n other_matrix.txt
	@echo ==View the behavioral Verilog code for the decoder
	cat -n decoder_pl.v







# This Make target will FAIL since the input file is incorrect
# Input file contains insufficient number of columns to form I
insuf_cols:
	@echo == Get the current date and time, including the
	@echo == time zone
	date
	@echo == Display the input text file
	@echo == with insufficient number of columns to form
	@echo == the Identity matrix I
	more repeated_cols_ip.txt
	@echo == Produce the G and H matrices, and the Verilog
	@echo == models for this incorrect input matrix with
	@echo == insufficient number of columns to form I
	parse.pl -g insuf_cols.txt
	@echo == List files starting with encoder
	ls -l encoder*
	@echo ==View the G matrix
	cat -n insuf_cols.txt
	@echo ==View the behavioral Verilog code for the encoder
	cat -n encoder_pl.v
	@echo == List files starting with decoder
	ls -l decoder*
	@echo ==View the H matrix
	cat -n other_matrix.txt
	@echo ==View the behavioral Verilog code for the decoder
	cat -n decoder_pl.v





# This Make target will FAIL since the input file is incorrect
# Input file contains insufficient number of columns to form I
# This input file also contains columns of I that are jumbled
# up with
insuf_cols2:
	@echo == Get the current date and time, including the
	@echo == time zone
	date
	@echo == Display the input text file
	@echo == with insufficient number of columns to form
	@echo == the Identity matrix I
	@echo == This matrix also has jumbled up columns
	more repeated_cols_ip.txt
	@echo == Produce the G and H matrices, and the Verilog
	@echo == models for this incorrect input matrix with
	@echo == insufficient number of columns to form I
	parse.pl -h insuf_cols2.txt
	@echo == List files starting with encoder
	ls -l encoder*
	@echo ==View the G matrix
	cat -n other_matrix.txt 
	@echo ==View the behavioral Verilog code for the encoder
	cat -n encoder_pl.v
	@echo == List files starting with decoder
	ls -l decoder*
	@echo ==View the H matrix
	cat -n insuf_cols.txt
	@echo ==View the behavioral Verilog code for the decoder
	cat -n decoder_pl.v





# Produce the Parity-check matrix H and the Generator matrix G,
# and the synthesizable behavioral RTL Verilog code for the encoder
# and the decoder, using a Perl script
parse_g:
	@echo == Get the current date and time, including the
	@echo == time zone
	date
	@echo ==Display the input text file
	more input.txt
	@echo ==Produce the G and H matrices, and the Verilog models
	parse.pl -g input.txt
	@echo ==List files starting with encoder
	ls -l encoder*
	@echo ==View the G matrix
	cat -n input_file.txt
	@echo ==View the behavioral Verilog code for the encoder
	cat -n encoder_pl.v
	@echo ==View the H matrix
	cat -n other_matrix.txt
	@echo ==View the behavioral Verilog code for the decoder
	cat -n decoder_pl.v
	
	
	
	
	
	
# Produce the Parity-check matrix H and the Generator matrix G,
# and the synthesizable behavioral RTL Verilog code for the encoder
# and the decoder, using a Perl script
parse_h:
	@echo == Get the current date and time, including the
	@echo == time zone
	date
	@echo ==Display the input text file
	more input.txt
	@echo ==Produce the G and H matrices, and the Verilog models
	parse.pl -h input.txt
	@echo ==List files starting with encoder
	ls -l encoder*
	@echo ==View the G matrix
	cat -n other_matrix.txt 
	@echo ==View the behavioral Verilog code for the encoder
	cat -n encoder_pl.v
	@echo ==View the H matrix
	cat -n input_file.txt
	@echo ==View the behavioral Verilog code for the decoder
	cat -n decoder_pl.v
	
	
	
	
	
	
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	




	
# =================================================================
# =================================================================
# =================================================================
# Scripts to generate the Parity-check matrix H and the Generator
# matrix G
#
# Output of scripts is input.txt

:
# Produce the text file containing G or H
matrix:
	@echo ==Produce a text file containing G or H
	matrix.pl 7 12 g
	more input.txt
	matrix.pl 8 15 h
	more input.txt
	matrix.pl 5 7 g
	more input.txt
	matrix.pl 3 9 h
	more input.txt

# =================================================================
# Scripts to generate the Generator matrix G

# Produce the text file containing G
g1:
	@echo ==Produce a text file containing G [7 x 12]
	matrix.pl 7 12 g


# Produce the text file containing G
g2:
	@echo ==Produce a text file containing G [6 x 13]
	matrix.pl 6 13 g


# Produce the text file containing G
g3:
	@echo ==Produce a text file containing G [13 x 17]
	matrix.pl 13 17 g


# Produce the text file containing G
g4:
	@echo ==Produce a text file containing G [3 x 9]
	matrix.pl 3 9 g


# =================================================================
# Scripts to generate the Parity-check matrix H

# Produce the text file containing H
ph1:
	@echo ==Produce a text file containing H [10 x 14]
	matrix.pl 10 14 h


# Produce the text file containing H
ph2:
	@echo ==Produce a text file containing H [8 x 19]
	matrix.pl 8 19 h


# Produce the text file containing H
ph3:
	@echo ==Produce a text file containing H [7 x 9]
	matrix.pl 7 9 h



