#####################################################################
#
# This is written by Zhiyang Ong
# for EE577b Extra Credit Homework #2
#
#####################################################################

# Permutate a matrix to form G or H
prm:
	@echo == Permutate a matrix to form G or H
	permute.pl -g input.txt
	@echo == View the input file
	cat -n input.txt
	@echo == View the permutated valid matrix of G or H
	cat -n input_file.txt
	@echo == View the statistics for the pre-permutated matrix
	cat -n cur_ln_parse.txt





# Mildly distorted G matrix
prm1:
	@echo == Permutate a matrix to form G or H
	permute.pl -g input1.txt
	@echo == View the input file
	cat -n input1.txt
	@echo == View the permutated valid matrix of G or H
	cat -n input_file.txt
	@echo == View the statistics for the pre-permutated matrix
	cat -n cur_ln_parse.txt






# Correct input G matrix
prm2:
	@echo == Permutate a matrix to form G or H
	permute.pl -g input2.txt
	@echo == View the input file
	cat -n input2.txt
	@echo == View the permutated valid matrix of G or H
	cat -n input_file.txt
	@echo == View the statistics for the pre-permutated matrix
	cat -n cur_ln_parse.txt





# Insufficient number of columns to form I
prm3:
	@echo == Permutate a matrix to form G or H
	permute.pl -g input3.txt
	@echo == View the input file
	cat -n input3.txt
	@echo == View the permutated valid matrix of G or H
	cat -n input_file.txt
	@echo == View the statistics for the pre-permutated matrix
	cat -n cur_ln_parse.txt





# Insufficient number of columns to form I - Jumbled up matrix
prm4:
	@echo == Permutate a matrix to form G or H
	permute.pl -g input4.txt
	@echo == View the input file
	cat -n input4.txt
	@echo == View the permutated valid matrix of G or H
	cat -n input_file.txt
	@echo == View the statistics for the pre-permutated matrix
	cat -n cur_ln_parse.txt







# =============================================================
# =============================================================
# =============================================================
# =============================================================


# Permutate a matrix to form H
hh:
	@echo == Permutate a matrix to form H
	permute.pl -h input.txt
	@echo == View the input file
	cat -n input.txt
	@echo == View the permutated valid matrix of H
	cat -n input_file.txt
	@echo == View the statistics for the pre-permutated matrix
	cat -n cur_ln_parse.txt








# Mildly distorted H matrix
h1:
	@echo == Permutate a matrix to form H
	permute.pl -h input1.txt
	@echo == View the input file
	cat -n input1.txt
	@echo == View the permutated valid matrix of H
	cat -n input_file.txt
	@echo == View the statistics for the pre-permutated matrix
	cat -n cur_ln_parse.txt






# Correct input H matrix
h2:
	@echo == Permutate a matrix to form H
	permute.pl -h input2.txt
	@echo == View the input file
	cat -n input2.txt
	@echo == View the permutated valid matrix of H
	cat -n input_file.txt
	@echo == View the statistics for the pre-permutated matrix
	cat -n cur_ln_parse.txt





# Insufficient number of columns to form I
h3:
	@echo == Permutate a matrix to form H
	permute.pl -h input3.txt
	@echo == View the input file
	cat -n input3.txt
	@echo == View the permutated valid matrix of H
	cat -n input_file.txt
	@echo == View the statistics for the pre-permutated matrix
	cat -n cur_ln_parse.txt





# Insufficient number of columns to form I - Jumbled up matrix
h4:
	@echo == Permutate a matrix to form H
	permute.pl -h input4.txt
	@echo == View the input file
	cat -n input4.txt
	@echo == View the permutated valid matrix of H
	cat -n input_file.txt
	@echo == View the statistics for the pre-permutated matrix
	cat -n cur_ln_parse.txt





































# Permutate a matrix to form G or
prm_fail:
	@echo == Permutate a matr
	permute.pl -g ufail.txt
	@echo == View the permuta
	cat -n input_file.txt
	@echo == View the statist
	cat -n cur_ln_parse.txt


















# ==================================================================
# Make targets from the current working directory of this extra
# credit homework

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
	

################
# Deprecated Make target
#
# Produce the Parity-check matrix H and the Generator matrix G,
# and the synthesizable behavioral RTL Verilog code for the encoder
# and the decoder, using a Perl script
parse_old:
	@echo ==Display the input text file
	more input.txt
	@echo ==Produce the G and H matrices, and the Verilog models
	parse.pl -g input.txt
	@echo ==List files starting with encoder
	ls -l encoder*
	@echo ==View the behavioral Verilog code for the encoder
	cat -n encoder_pl.v
	@echo ==View the other matrix
	cat -n other_matrix.txt
	cat -n input.txt
	@echo ==View the behavioral Verilog code for the decoder
	cat -n decoder_pl.v
	
	
# Produce the Parity-check matrix H and the Generator matrix G,
# and the synthesizable behavioral RTL Verilog code for the encoder
# and the decoder, using a Perl script
# This Make target will FAIL since the input file is incorrect
parse_fail:
	@echo ==Display the input text file
	more ufail.txt
	@echo ==Produce the G and H matrices, and the Verilog models
	@echo ==Previously used x.txt
	parse.pl -g ufail.txt
	@echo ==List files starting with encoder
	ls -l encoder*
	@echo ==View the behavioral Verilog code for the encoder
	cat -n encoder_pl.v
	@echo ==View the other matrix
	cat -n other_matrix.txt
	cat -n input.txt
	@echo ==View the behavioral Verilog code for the decoder
	cat -n decoder_pl.v







# Produce the Parity-check matrix H and the Generator matrix G,
# and the synthesizable behavioral RTL Verilog code for the encoder
# and the decoder, using a Perl script
parse:
	@echo ==Display the input text file
	more input.txt
	@echo ==Produce the G and H matrices, and the Verilog models
	parse.pl -g input.txt
	@echo ==List files starting with encoder
	ls -l encoder*
	@echo ==View the input matrix
	cat -n input_file.txt
	@echo ==View the behavioral Verilog code for the encoder
	cat -n encoder_pl.v
	@echo ==View the input matrix
	cat -n other_matrix.txt
	@echo ==View the behavioral Verilog code for the decoder
	cat -n decoder_pl.v
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	




	
	

# Produce the Parity-check matrix H and the Generator matrix G,
# and the synthesizable behavioral RTL Verilog code for the encoder
# and the decoder, using a Python script
proc:
	@echo ==Display the input text file
	more input.txt
	@echo ==Produce the G and H matrices, and the Verilog models
	parse.py input.txt


# Produce the text file containing G
g1:
	@echo ==Produce a text file containing G
	matrix.pl 7 12 g


# Produce the text file containing G
g2:
	@echo ==Produce a text file containing G
	matrix.pl 6 13 g


# Produce the text file containing G
g3:
	@echo ==Produce a text file containing G
	matrix.pl 13 17 g


# Produce the text file containing G
g4:
	@echo ==Produce a text file containing G
	matrix.pl 3 9 g


# Produce the text file containing G
h1:
	@echo ==Produce a text file containing G
	matrix.pl 10 14 h


# Produce the text file containing G
h2:
	@echo ==Produce a text file containing G
	matrix.pl 8 19 h


# Produce the text file containing G
h3:
	@echo ==Produce a text file containing G
	matrix.pl 7 9 h

















# Dummy targets...
alicia:
	@echo ==Ask mum
	alicia.pl 68914 912379
	@echo ==PRINT THE MAGICAL COMMAND
	@echo touch -am 11071030 [file]


args:
	@echo ==Manipulate the files into the right format
	y.pl -g x.txt


# Target to compile and simulate the sequence detector
# Shorter test sequence
# Requires the updating the script seq_detector.f
test_sd1:
	@echo ==Test the sequence detector
	ncverilog -f seq_detector.f +gui











