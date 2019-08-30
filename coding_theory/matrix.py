#!/usr/usc/bin/python

# This is written by Zhiyang Ong
# for the second extra credit homework for EE 577B Fall 2007
#
#
# Synopsis:
# It takes in a matrix, and determines if it is a Parity-check matrix
# or a Generator matrix. From this matrix, a Parity-check matrix and
# a Generator matrix will be generated. The Parity-check matrix and
# the Generator matrix will be used to generate the synthesizable
# behavioral RTL Verilog code for the encoder and the decoder in
# communication electronics.


# Import modules from the Python library
import os
import readline
import rlcompleter
import Random
module 'random' from '/usr/lib/python2.3/random.pyc'

# ================================================================

##############print "Input argument is:",sys.argv[0],"==="

print "Generating the input file:"
print "To produce a Parity-check matrix or a Generator matrix"
print ""
print ""

# Number of rows in the generator matrix
num_rows = 3
# Number of columns in the generator matrix
num_cols = 12
# Size of the identity matrix I in G = num_rows

print "Produce a text file containing the Generator matrix G:"
print "Value of num_cols for G is:",num_cols,"#"
print "Value of num_rows for G is:",num_rows,"#"


# CRAP!!!!
#if (3<4) and (9>2):
#	print "This is true"


# The Generator matrix G
g=""
# Print the matrix to standard output
for index_rg in range(num_rows):
	for index_cg in range(num_cols):	
		if index_cg <= num_rows:
			if index_cg == index_rg:
				g = g + "1"
			else:
				g = g + "0"
		else:
			g = g + random.randint(0, 1)

	g = g + "\n"

print g

