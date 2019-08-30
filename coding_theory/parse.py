#!/usr/usc/bin/python

# This is written by Zhiyang Ong
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
#	parse.py	[name-of-input-file]
#
# The program takes in an input:
# Argument #1:	Name of the input file containing the Parity-check
#				matrix H or the Generator matrix G
#
# Assume that G and H are well-formed, and are made available in
# the following formats/structures:
# G = [I_k | P]
# H = [P' | I_{n-k}]
# This is because -P' = P' for binary fields [See references]
# Also, this implies that G = [P | I_k] and H = [I_{n-k} | P'] are
# ignored
# The G or H matrix is placed in the input file named: "input.txt"
# 
#
# Reference:
# http://www.cs.toronto.edu/~roweis/csc310-2005/notes/lec16x.pdf
# http://www.mathworks.com/access/helpdesk_r13/help/toolbox/comm/tutor120.html
# http://books.google.com/books?id=XkBrgqHwGCIC&pg=PA127&lpg=PA127&dq=conversion+of+generator+matrix+to+%22parity+check%22+matrix&source=web&ots=2_yzwupUMr&sig=s8b0A5YM0eUhwopwp7EZJNaZ5Yc
# conversion of generator matrix to "parity check" matrix
#
# http://www.linuxjournal.com/article/3882
# (Whitespace (indentation), changes in indentation, is used by
# the language syntax to delimit statement groups)
#


#__import__(Random)
import sys
import random
import fileinput
import pickle

# ================================================================
print "======================================================="
print "Reading the input file..."
print "To produce Parity-check and Generator matrices"
print "======================================================="
print ""
#print "Input filename:",sys.argv[0],"#",randint(0,1),"==!S"
print "Input filename:",sys.argv[0],"#"
#print sys.builtin_module_names




#print "Random number:",random.random(),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"
print "Random number:",random.randint(0,1),"#$"


# For CSV files, they are can be read line-by-line from
# the functions/methods in the library
#
# See http://docs.python.org/lib/node265.html











# Name of the input file
input_filename = sys.argv[0]
if not os.path.exists(input_filename):
	print "The input file,",input_filename,", does not exists."

#

#for line in fileinput.input():
#    process(line)

# Input file handler
ip_file_handler = open(input_filename, "r").read()
#s = ip_file_handler.read(8)
#x, y, z = struct.unpack(">hhl", s)
##########ip_file_handler = file(input_filename,"r")
print ip_file_handler
##########print ip_file_handler.read()
##########loadedlist = pickle.load(ip_file_handler)
##########print loadedlist


##ip_file_handler.close();










# Waiting...
# The starship's had some problems, but we're back online
# and now we have to wait for the crew to restore their
# web pages...



