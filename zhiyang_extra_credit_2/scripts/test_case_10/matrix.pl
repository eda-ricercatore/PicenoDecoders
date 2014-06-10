#!/usr/usc/bin/perl

# This is written by Zhiyang Ong - student number: 6004-9194-12
# for the second extra credit homework for EE 577B Fall 2007
#
#
# Program:
# It takes in a matrix, and determines if it is a Parity-check matrix H
# or a Generator matrix G. From this matrix, a Parity-check matrix and
# a Generator matrix will be generated. The Parity-check matrix and
# the Generator matrix will be used to generate the synthesizable
# behavioral RTL Verilog code for the encoder and the decoder in
# communication electronics.
#
#
# Synopsis:
#	perl matrix.pl	[number-of-rows] [number-of-columns] [g-or-h]
#
# The program takes in three inputs:
# Argument #1: Number of rows in the generator matrix; must be an
#			   integer
# Argument #2: Number of columns in the generator matrix: must be an
#			   integer
# Argument #3: Flag to indicate if it is a G or H matrix: must be g
#			   or h
#
# Produce the G or H matrix with the specified number of rows and
# columns
# Assume that G and H are well-formed, and are made available in
# the following formats/structures:
# G = [I_k | P]
# H = [P' | I_{n-k}]
# This is because -P' = P' for binary fields [See references]
# Also, this implies that G = [P | I_k] and H = [I_{n-k} | P'] are
# ignored
# The G or H matrix will be printed to "input.txt"
# 
#
# Reference:
# http://www.cs.toronto.edu/~roweis/csc310-2005/notes/lec16x.pdf
# http://www.mathworks.com/access/helpdesk_r13/help/toolbox/comm/tutor120.html
# http://books.google.com/books?id=XkBrgqHwGCIC&pg=PA127&lpg=PA127&dq=conversion+of+generator+matrix+to+%22parity+check%22+matrix&source=web&ots=2_yzwupUMr&sig=s8b0A5YM0eUhwopwp7EZJNaZ5Yc
# conversion of generator matrix to "parity check" matrix


# ================================================================
print "=======================================================\n";


print "Generating the input file:\n";
print "To produce a Parity-check matrix or a Generator matrix\n";
print "=======================================================\n";
print "\n";

# Number of rows in the generator matrix
$num_rows = $ARGV[0];
# Number of columns in the generator matrix
$num_cols = $ARGV[1];
# Size of the identity matrix I in G = num_rows
# Is this a G or H matrix?
$which_matrix = $ARGV[2];
# Name of the output file
$output=">input.txt";

# Create a file handle for the output file
open(op,$output);

# WARNING TO USER: 
# Preconditions should check if $num_rows and $num_cols are positive
# integers, where $num_rows < $num_cols, and if $which_matrix == "g"
# or "h"

if($which_matrix eq "g") {
	print "Produce a text file containing the Generator matrix G:\n";
	print "Value of num_cols for G is:",$num_cols,"#\n";
	print "Value of num_rows for G is:",$num_rows,"#\n";

	# Print the Generator matrix G to standard output
	for($index_rg=0; $index_rg<$num_rows; $index_rg++) {
		for($index_cg=0; $index_cg<$num_cols; $index_cg++) {
			if($index_cg < $num_rows) {
				if($index_cg == $index_rg) {
					print op "1 ";
				}else{
					print op "0 ";
				}
			}else{
				print op int(rand(2))," ";
			}
		}
		print op "\n";
	}
}else{
	print "\n";
	print "=======================================================\n";
	print "Produce a text file containing the Parity-check matrix H:\n";
	print "Value of num_cols for H is:",$num_cols,"#\n";
	print "Value of num_rows for H is:",$num_rows,"#\n";


	$n_k = $num_cols - $num_rows;
	# Print the Parity-check matrix H to standard output
	for($index_rg=$num_rows; $index_rg>0; $index_rg--) {
		for($index_cg=$num_cols; $index_cg>0; $index_cg--) {
			if($index_cg > $num_rows) {
				print op int(rand(2))," ";
			}else{
				if($index_cg == $index_rg) {
					print op "1 ";
				}else{
				print op "0 ";
				}
			}
		}
		print op "\n";
	}
}


# Close the file handle for the output file
close(op);

print "---		END		---\n";
