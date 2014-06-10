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
#	perl parse.pl	[name-of-input-file]
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
# http://www.mathworks.com/access/helpdesk_r13/help/toolbox/comm/
#	tutor120.html
# http://books.google.com/books?id=XkBrgqHwGCIC&pg=PA127
#	&lpg=PA127&dq=conversion+of+generator+matrix+to+%22parity+
#	check%22+matrix&source=web&ots=2_yzwupUMr&sig=
#	s8b0A5YM0eUhwopwp7EZJNaZ5Yc
# conversion of generator matrix to "parity check" matrix


# ================================================================
print "=======================================================\n";
print "Reading the input file:\n";
print "To produce Parity-check and Generator matrices\n";
print "=======================================================\n";
print "\n";

# Name of the input text file
$input = $ARGV[0];
# Type of matrix = "g" or "h"; given as "Unknown" by default
$matrix_type = "Unknown";
# Name of the behavioral RTL model for the encoder
$encoder=">encoder_pl.v";
# Name of the file containing the other matrix
$other_matrix = ">other_matrix.txt";

# Create a file handle for the output file
open(ip,$input) || die("Input file '",$input,"' does not exist!");
# Create a file handle for the output file
open(om,$other_matrix);

# Place the contents of the file into a 2 dimensional array
@input_data = <ip>;


# ---------------------------------------------------------------
# Determine the number of rows and columns in the matrix given
# in the input file
#
# Number of rows in the file:
$num_rows=0;
# For each line in the input file
foreach $line (@input_data) {
	# Split the tokens using a whitespace character as the delimiter
	@cur_ln = split('\s',$line);
	foreach $cur_char(@cur_ln) {
#		print "=",$cur_char,"#";
	}
	# Process the next row
	$num_rows++;
}
# Number of columns in the file:
$num_cols=$#cur_ln+1;
# G:	[k * n]		= [k * k] | [k * (n-k)]
# H:	[(n-k) * n]	= [(n-k) * k] | [(n-k) * (n-k)]
# (n - k) = number of columns - number of rows
# (n - k) = n - (n-k) = k
$n_k=$num_cols-$num_rows;
# ---------------------------------------------------------------


# Commence process to determine what type of matrix is this
print "The matrix in the input file is a: ";

# Currently processed row
$cur_row=0;
# Currently processed column
$cur_col=0;
# Number of processed ones in the Identity matrix
$num_ones=0;

# For each line in the input file - Check if this matrix is a G matrix
foreach $line (@input_data) {
	# Split the tokens using a whitespace character as the delimiter
	@cur_ln = split('\s',$line);
	# Start processing each character in this current line
	$cur_col=0;
	# For each character in this line
	foreach $cur_char(@cur_ln) {
		# Determine if a ONE exists on the diagonal
		if(($cur_col==$cur_row) && ($cur_char eq "1")) {
			# Increment the number of ONES found on the diagonal
			$num_ones++;
		# Is a ONE found in the Identity matrix that is not on
		# the diagonal 
		}elsif(($cur_col < $num_rows) && ($cur_char eq "1")) {
			# Yes, it should be a H matrix
			$matrix_type="to_be_determined";
		}
		# Proceed to the next columnn/character in the row
		$cur_col++;
	}
	# Process the next row
	$cur_row++;
}


# *******************************************************************
# For each line in the input file - Check if this matrix is a H matrix
# G = [I_k | P]
# H = [P' | I_{n-k}]
# Set the number of enumerated rows to zero
$dis_row=0;
# Set the number of enumerated ONEs to zero - The number of ones will
# be enumerated in the identity matrix I of the parity-check matrix.H
# This number shall equate with the number of elements in the diagonal
# of the matrix I, which is equal to the number of rows or columns in
# the matrix I
$dis_ones=0;
# For each row of this matrix, access the column elements of this row
# where the identity matrix I is supposed to reside, and determine if
# ONEs are only found on the diagonal where this matrix I is expected
# to be
foreach $c_line (@input_data) {
	# Split the tokens using a whitespace character as the delimiter
	@dis_ln = split('\s',$c_line);
	# Start processing each character in this current line, from the
	# first column (indexed at 0) to the last column (indexed at
	# "number of columns - 1")
	$dis_col=0;
	# Offset of the column index for the Identity matrix in H
	$k=$num_cols-$num_rows;
	# For each character/column in this line/row
	foreach $dis_char(@dis_ln) {
		# Determine if a ONE exists on the diagonal
		if(($dis_col==($dis_row+$k)) && ($dis_char eq "1")) {
			# Increment the number of ONES found on the diagonal
			$dis_ones++;
		# Is a ONE found in the Identity matrix that is not on
		# the diagonal 
		}elsif(($dis_col >= $k) && ($dis_char eq "1")
			&& ($matrix_type ne "Unknown") && ($matrix_type ne "g")
			&& ($matrix_type ne "to_be_determined") ) {
			# Yes, it should not be a H matrix
			$matrix_type="u";
		}
		# Proceed to the next columnn/character in the row
		$dis_col++;
	}
	# Process the next row
	$dis_row++;
}
# *******************************************************************






# Determine if it is a G matrix
if((($num_ones == $num_rows)
	&& ($matrix_type eq "Unknown")) || ($matrix_type eq "g")) {
	# This is a G matrix
	$matrix_type="g";
# Or is this a H matrix?
}elsif(($dis_ones==$num_rows)
	&& (($matrix_type eq "h") || ($matrix_type eq "Unknown")
		|| ($matrix_type eq "to_be_determined"))) {
	# This is a H-matrix
	$matrix_type="h";
# Is this matrix is neither a G or H matrix?
}else{
	# This is neither a G or H matrix
	$matrix_type="u";
}
###################
# !!! IMPORTANT !!! Note to user: If it is not set to g or h, set to u
# Print out what type pf matrix is it
print $matrix_type," matrix \n";

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


# Function to get the transpose of the P' matrix for the G matrix
# and subsequently produce the matrix H from it
# This matrix H shall be placed in the file indicated by $other_matrix
sub get_p_matrix {
	# n^{th} column to be processed
	my $cols = shift;

	# Currently processed row
	$cur_row=0;
	# Currently processed column
	$cur_col=0;
	# For each line in the input file
	foreach $line (@input_data) {
		# Split the tokens using a whitespace character as the delimiter
		@cur_ln = split('\s',$line);
		# Start processing each character in this current line
		$cur_col=0;
		# For each character in this line
		foreach $cur_char(@cur_ln) {
			# Get the P matrix
			if(($cur_col>=$num_rows) && ($cols==$cur_col)) {
				# Print the specified column entry for current row
				# And, subsequently, all rows...
				print om $cur_char," ";
				print $cur_char," ";
			}
			# Proceed to the next columnn/character in the row
			$cur_col++;
		}
		# Process the next row
		$cur_row++;
	}
}


# ====================================================================
# IMPORTANT!!! FIX THIS STUFF BELOW

# Function to get the P matrix from the H matrix and subsequently produce
# the matrix G from it.
# This matrix G shall be placed in the file indicated by $other_matrix
sub get_pt_matrix {
	# n^{th} column to be processed
	my $cols = shift;


#print "@@@@@@@@\n";
#print "@@@@@@@@\n";
#print "@@@@@@@@\n";
#print "						The COLS is:",$cols,"****\n";
#print "@@@@@@@@\n";
#print "@@@@@@@@\n";
#print "@@@@@@@@\n";


	# Currently processed row
	$cur_row=0;
	# Currently processed column
	$cur_col=0;
	# For each line in the input file
	foreach $nline (@input_data) {
		# Split the tokens using a whitespace character as the delimiter
		@cur_ln = split('\s',$nline);
		# Start processing each character in this current line
		$cur_col=0;
		# For each character in this line
#print "%%%%		Current Line Is:::",$nline,"-_-_-\n";
		foreach $n_char(@cur_ln) {
			# Get the P matrix
			if($cols==$cur_col) {
			#if(($cur_col<$num_rows) && ($cols==$cur_col)) {
			#if($cur_col<$num_rows) {
				# Print the specified column entry for current row
				# And, subsequently, all rows...
				print om $n_char," ";
				print $n_char," ";
#				print "!!",$n_char," ","cur_row",$cur_row,"cur_col",$cur_row;
				# break;
			}
			last if($cols==$cur_col);
#print "======cur_char",$n_char,"cur_row",$cur_row,"cur_col",$cur_row;
			# Proceed octo the next columnn/character in the row
			$cur_col++;
		}
		# Process the next row
		$cur_row++;
	}
}
# IMPORTANT!!! FIX THIS STUFF ABOVE
# ====================================================================



# Is this a G matrix?
if($matrix_type eq "g") {
	# Yes, this is a G matrix
	
	# G = [I_k | P]
	# H = [P' | I_{n-k}]

	# G:	[k * n]		= [k * k] | [k * (n-k)]
	# H:	[(n-k) * n]	= [(n-k) * k] | [(n-k) * (n-k)]

	# Print the H matrix for this G matrix
	print "\n";
	print "Print the H matrix for the given G matrix\n";
	# The number of columns of I_{n-k} to be processed
	$ink = 0;
	# For each row of the P' matrix of H
	for($i=$num_rows;$i<$num_cols;$i++) {
		# Transpose the P matrix in G for the matrix H
		# Print P'
		get_p_matrix($i);
		# Append and print the Identity matrix of H to P'
		#print "Start of current row for I:::";
		for($j=0;$j<($num_cols-$num_rows);$j++) {
			# Is this element on the downward sloping
			# diagonal of I?
			if($j == $ink) {
				# Yes, print a ONE
				print om "1 ";
				print "1 ";
			}else{
				# No, print a ZERO
				print om "0 ";
				print "0 ";
			}
		}
		print "\n";
		print om "\n";
		$ink++;
	}
	
# Is this a H matrix?
}elsif($matrix_type eq "h") {
	# Yes, this is a H matrix - Process this!!!
	
	
	# G = [I_k | P]
	# H = [P' | I_{n-k}]
	
	# G:	[k * n]		= [k * k] | [k * (n-k)]
	# H:	[(n-k) * n]	= [(n-k) * k] | [(n-k) * (n-k)]
	
	
	# Print the G matrix for this H matrix
	print "\n";
	print "==>Print the G matrix for the given H matrix\n";
	print "num_cols-num_rows>>>",$num_cols-$num_rows,"<<<\n";
	# The number of columns of I_k to be processed
	$ik_size = 0;
	# For each row of the P matrix of G
	for($ik=0;$ik<($num_cols-$num_rows);$ik++) {
	#for($ik=0;$ik<$num_cols;$ik++) {
#################################################################
#############		MODIFY THE BODY OF THIS LOOP
#############		print get_p_matrix($i),"\n";
		#print "Start of current row for I:::";
		for($jk=0;$jk<($num_cols-$num_rows);$jk++) {
			if($jk == $ik_size) {
				print om "1 ";
				print "1 ";
			}else{
				print om "0 ";
				print "0 ";
			}
			
			
		}
		
		# Get the P matrix from the P' matrix
		for($kk=0;$kk<$num_cols;$kk++) {
			if($ik==$kk) {
			# if(($ik==0) && ()) {
				get_pt_matrix($kk);
				# print om "\n";
			}
		}
		
		print om "\n";
		print "\n";
		$ik_size++;
#############		MODIFY THE STUFF ABOVE
#################################################################
	}
	
# This matrix is neither a G or H matrix - Terminate the execution
# of this program
}else{
	print "\n";
	print "\n";
	print "\n";
	print "#####################################################\n";
	print "!!! ERROR !!!			WARNING!!!\n";
	die "The matrix in the input file is neither a G or H matrix\n";
}




# --------------------------------------------------------------------
# --------------------------------------------------------------------
# Close the file handle for the input file
close(ip);
# Create a file handle for the output file of the other matrix
open(o_matrix,$other_matrix)
	|| die("The other input file '",$other_matrix,"' does not exist!");
# Load data elements of the "other matrix"
# Place the contents of the "other matrix" into a 2 dimensional array
@other_data = <o_matrix>;
if($matrix_type == "g") {
	@g_matrix=@input_data;
	@h_matrix=@other_data;
}elsif($matrix_type == "h") {
	#@h_matrix=@input_data;
	#@g_matrix=@other_data;
	
	@h_matrix=@input_data;
	@g_matrix=@other_data;
	
	if(@g_matrix==@h_matrix) {
		die "g_matrix==h_matrix\n";
	}elsif(@g_matrix!=@input_data) {
		die "g_matrix!=input_data\n";
	}
}
# --------------------------------------------------------------------
# --------------------------------------------------------------------



print "=======================================================\n";
print "Print the G' matrix\n";

# =================================================================
# Produce behavioral RTL model in Verilog for the encoder
# Encoder output: C = G' * b

# Create a file handle for the encoder output file
open(enc,$encoder);

# ================================================================


sub encoder_preamble {
	print enc "module encoder (b,c);\n";
	# c = G' * b
	# [num_col * nc] = [num_col * num_row] * [num_row * nc], where nc=1
	print enc "	output [",$num_cols,":0] c;\n";
	print enc "\n";
	if($matrix_type == "g") {
		print enc "	input [",$num_rows,":0] b;\n";
		
	}else{
		print enc "	input [",$n_k,":0] b;\n";
	}
	print enc "\n";
	print enc "	reg [",$num_cols,":0] c;\n";
	print enc "\n";
	print enc "	always @(b)\n";
	print enc "	begin\n";
}

sub encoder_conclude {
	print enc "	end\n";
	print enc "endmodule\n";
}

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
sub get_g_transpose {
	# n^{th} column to be processed
	my $cols = shift;

	# Currently processed row
	$cur_row=0;
	# Currently processed column
	$cur_col=0;
	
	# Number of ONEs found on this line
	$n_ones=0;



#	if($matrix_type == "h") {
#		@h_matrix=@input_data;
#		@g_matrix=@other_data;
#	}
	
###########################@other_data
	
	# For each line in the input file
# !!!IMPORTANT!!!!: UPDATE THIS MATRIX WITH THE APPROPRIATE G OR H MATRIX
	foreach $line (@g_matrix) {
		# Split the tokens using a whitespace character as the delimiter
		@cur_ln = split('\s',$line);
		# Start processing each character in this current line
		$cur_col=0;
		
		
		
		
		# For each character in this line
		foreach $cur_char(@cur_ln) {
			# Get the P matrix
			if($cols==$cur_col) {
				# Determine the number of ONEs
				if($cur_char eq "1") {
					# Print the specified column entry for current row
					# And, subsequently, all rows...
					#@n_ones($cur_char)++;
					###########@n_ones($cur_col)++;
					###########@n_ones($cur_col)=@n_ones($cur_col)+1;
					$n_ones++;
				}
				print $cur_char," ";
			}
			
			
			# Proceed to the next columnn/character in the row
			$cur_col++;
		}
		
		# Process the next row
		$cur_row++;
	}
	print "\n";
	print "Finished printing the G' matrix\n";
	# Return the number of ones of each row in G'
	return $n_ones;
}

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
sub print_verilog_code {
	# n^{th} column to be processed
	my $cols = shift;
	# Number of ONEs in current row of G', or "c"
	my $num_assigns = shift;

#print "Number of ONEs assigned to this c pin:",$num_assigns,"\n";

	# Currently processed row
	$cur_row=0;
	# Currently processed column
	$cur_col=0;
	
	# Number of ONEs found on this line
	$nones=0;
	$this_ones=0;
	
	# For each line in the input file
# !!!IMPORTANT!!!!: UPDATE THIS MATRIX WITH THE APPROPRIATE G OR H MATRIX
	foreach $line (@g_matrix) {
		# Split the tokens using a whitespace character as the delimiter
		@cur_ln = split('\s',$line);
		# Start processing each character in this current line
		$cur_col=0;
		$this_col=0;
		
		
		# For each character in this line
		foreach $cur_char(@cur_ln) {
			# Get the P matrix
			if($cols==$cur_col) {
				# Determine the number of ONEs
				if($cur_char eq "1") {
					# A ONE is found!
					# Print the specified column entry for current row
					# And, subsequently, all rows...
					if(($nones+1) == $num_assigns) {
						print enc "b[",$cur_row,"]";
					}else{
						print enc "b[",$cur_row,"] ^ ";
					}
					
					$nones++;
				}
#				print $cur_char," ";
			}
			
			
			# Proceed to the next columnn/character in the row
			$cur_col++;
		}
		
		# Process the next row
		$cur_row++;
	}
#	print "\n";
}
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



sub encoder_body {
	# The number of columns of I_{n-k} to be processed
	$ik = 0;
	# For each row of the G' matrix
	for($i=0;$i<$num_cols;$i++) {
		# Create the combination logic for this
		print enc "		c[",$i,"] = ";
		$isnt_zero=get_g_transpose($i);
		if($isnt_zero!=0) {
			print_verilog_code($i,$isnt_zero);
		}else{
			print enc "1'b0";
		}
		print enc ";";
		print enc "\n";
		$ik++;
	}
}

# H->G #rows for G = n-k
# G->H #rows for H = n-k

# Preamble for the behavioral RTL model in Verilog for the encoder
encoder_preamble;

# Get the body of the behavioral RTL model in Verilog for the encoder
encoder_body;

# Conclusion for the behavioral RTL model in Verilog for the encoder
encoder_conclude;

# Close the file handle for the encoder output file
close(enc);


# ================================================================

# Create a file handle for the decoder output file
open(dec,$decoder);

# ================================================================

sub decoder_preamble {
	print enc "module decoder (cx,d);\n";
	# s = H * cx
	# [(num_col-num_rows_g) * 1]
	# = [(num_col-num_rows_g) * num_rows_g] * [num_col * 1]
	
	
	# b
	# [num_row * 1]
	
	
	# G = [I_k | P]
	# H = [P' | I_{n-k}]
	
	# G:	[k * n]		= [k * k] | [k * (n-k)]
	# H:	[(n-k) * n]	= [(n-k) * k] | [(n-k) * (n-k)]
	
	if($matrix_type == "g") {
		print enc "	output [",$num_rows,":0] d;\n";
		
	}else{
		print enc "	output [",$n_k,":0] d;\n";
	}
	print enc "\n";
	print enc "	input [",$num_cols,":0] cx;\n";
	print enc "\n";
	print enc "	reg [",$num_rows,":0] d;\n";
	print enc "\n";
	print enc "	always @(cx)\n";
	print enc "	begin\n";
}

sub decoder_conclude {
	print enc "	end\n";
	print enc "endmodule\n";
}

# ==============================================================

# Do the necessary processing to determine the matrix d
sub decoder_body {
	# Determine an array of values ;
	


	# The number of columns of I_{n-k} to be processed
	$ik = 0;
	# For each row of the G' matrix
	for($i=0;$i<$num_cols;$i++) {
		# Create the combination logic for this
		print enc "		c[",$i,"] = ";
		$isnt_zero=get_g_transpose($i);
		if($isnt_zero!=0) {
			print_verilog_code($i,$isnt_zero);
		}else{
			print enc "1'b0";
		}
		print enc ";";
		print enc "\n";
		$ik++;
	}
}






















# ===================================================================

# Preamble for the behavioral RTL model in Verilog for the decoder
decoder_preamble;

# Get the body of the behavioral RTL model in Verilog for the decoder
decoder_body;

# Conclusion for the behavioral RTL model in Verilog for the decoder
decoder_conclude;

# Close the file handle for the decoder output file
close(dec);


print "\n";
print "---		END		---\n";





# http://pdl.perl.org/demos/intro.shtml
# Link on 2-dimensional arrays.






# c = G'b
# G'b = c
# GG'b = Gc
# b = Gc, since GG' = I


#Hamming distance > 2*#corrected bits + #detected bits + 1
