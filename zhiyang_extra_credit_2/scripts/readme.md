# Project Description

A *Perl* script is developed to produce the Parity-check matrix H and
the Generator matrix G, for any given matrix of binary numbers.
It is also supposed to produce synthesizable behavioral RTL *Verilog*
code for the encoder and the decoder, using coding theory.


To run the script, try:
	vparse.pl [-h or -g] [input file name]

An example to run the script is:
	vparse.pl -h input.txt




The first argument only takes in the "-g" or "-h" flag as an option
for the *Perl* script. The first option "-g" indicates that the input
matrix should be treated as a Generator matrix G, and the second
option "-h" indicates that the input matrix should be treated as a
Parity-check matrix H.

The second argument indicates the name of the text file containing
the elements of the input G or H matrix. Each element in a row is
delimited by a character space. There are no spacings between rows
in the input matrix. Elements of the matrix are assumed to be 1 or 0.



Note that this script has an assumed location of the absolute path for
the *Perl* executable script on the *Aludra* server at the University of
Southern California's computing networks.

To run this script in a *UNIX* environment without involving the *Perl*
command, change the abosolute pathname in the shebang.

e.g. To avoid using "perl vparse.pl [-h or -g] [input file name]",
change the first line of the script to reflect where the Perl
executable is located.



This script will rearrange the columns of the input matrix so that
it is well-formed, as in G = [I | P] and H = [P' | I], where I is
the Identity matrix, P is the parity matrix, and P' is the transpose
of P. This rearranged matrix will be stored in input_file.txt.
If the input matrix is already well-formed, the contents of the input
file should be the same as that of "input_file.txt".

The other matrix (H or G),given the input matrix of G or H, will be
placed in the file "other_matrix.txt ".

The synthesizable behavioral RTL *Verilog* model for the encoder is
stored in "encoder_pl.v".

The synthesizable behavioral RTL *Verilog* model for the decoder is
stored in "decoder_pl.v".

alicia:
	@echo ==View the G matrix
	cat -n other_matrix.txt 
	@echo ==View the behavioral Verilog code for the encoder
	cat -n 
	@echo ==View the behavioral Verilog code for the decoder
	cat -n 




#	Author Information

The MIT License (MIT)

Copyright (c) <2016> Zhiyang Ong

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Email address: echo "cukj -wb- 23wU4X5M589 TROJANS cqkH wiuz2y 0f Mw Stanford" | awk '{ sub("23wU4X5M589","F.d_c_b. ") sub("Stanford","d0mA1n"); print $5, $2, $8; for (i=1; i<=1; i++) print "6\b"; print $9, $7, $6 }' | sed y/kqcbuHwM62z/gnotrzadqmC/ | tr 'q' ' ' | tr -d [:cntrl:] | tr -d 'ir' | tr y "\n"		Don't compromise my computing accounts. You have been warned.

