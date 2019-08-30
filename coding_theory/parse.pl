#!/usr/usc/bin/perl

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

# Flag to indicate if the input text file contains a G or H matrix
# It should be either "-g" or "-h"
$gh_flag = $ARGV[0];
# Name of the input text file
$input_filename1 = $ARGV[1];
# Name of the temporary input text file
$temp_input_file = ">input_file.txt";
$input="input_file.txt";
open(ip1,$input_filename1)
	|| die("### Input file '",$input_filename1,"' does not exist!");
open(ip2,$temp_input_file);
#	|| die("### Output file '",$input_filename2,"' does not exist!");
# Matrix of data for original input file
@ip_matrix = <ip1>;
# Number of rows in the original input file:
$ip_rows=0;

# For each line in the input file
foreach $ipline (@ip_matrix) {
	# Split the tokens using a whitespace character as the delimiter
	@ipln = split('\s',$ipline);

print "CURRENT LINE IS++++",@ipln,"QWW\n";
	
	# Number of columns in the original input file:
#	$ip_cols=0;

	foreach $cur_char(@ipln) {
#		print "=",$cur_char,"#";
#		$ip_cols++;
#		$ip_cols=$ip_cols+1;
	}
	# Process the next row
	$ip_rows++;
	
#	$ip_cols=length($ipline);
#	$ip_cols=length(@ipln);
}
# Number of columns in the original input file:
$ip_cols=$#ipln;
####$ip_cols=$#ipline+1;
print "========================ip_cols=",$ip_cols,"#&#\n";
print "========================ip_rows=",$ip_rows,"#&#\n";




### IMPORTANT!!!
# Assume that the coding scheme can only correct single bit errors
# and that it cannot have repeated columns of the Identity matrix
# To verify that columns (or rows) in the martix I are not repeated,
# I need to keep track of the following:
# ==> The number of ones found in each column [@num_ones_in_col]
# ==> The row in which this column of matrix I was found [@row_of_i]
# If there are two or more elements in @num_ones_in_col with a count
# of ONE in @num_ones_in_col, and have the same value for @row_of_i,
# it indicates that a column with an element of ONE and remaining
# elements of ZEROs are found twice, since two or more columns
# with a ONE and remaining ZEROs have that ONE element on the same
# row
sub transform_g {
print "				=========Transforming the matrix G\n";
	#@row_of_i = ( 0 .. $ip_cols );


	#print ip2 "	end\n";
	# For this row of the matrix s
	$ipg_row=0;
	foreach $ipg_line (@ip_matrix) {
		# Split the tokens using a whitespace character as
		# the delimiter
		@ipg_ln = split('\s',$ipg_line);
		# Start processing each character in this current
		# line
		$ipg_col=0;
		
		
		# -----------------------------------------------
		for($c_char=0;$c_char<($ip_cols+1);$c_char++) {
#		foreach $ipg_char (@ipg_ln) {
			# If no column has been processed for current row,
			# (Has this column been processed)
			if($#num_ones_in_col < $ip_cols) {
				# Add an element to the array @num_ones_in_col
				push(@num_ones_in_col,0);
				# Add an element to the array @row_of_i
				# The "-1" flag is used to indicate that no ONES
				# are found in this column yet
				push(@row_of_i,-1);
print "==================>>>>>Processing the first column\n";
			}
			
		
			# Is this character a ONE?
#			if(substr($ipg_ln,$c_char,1) eq "1") {
#			if($ipg_char eq "1") {
			if(@ipg_ln[$c_char] eq "1") {
				# Yes, increment the number of ones found
				# in this column
				########@num_ones_in_col[$#num_ones_in_col]++;
#				@num_ones_in_col[$ipg_col]++;
				@num_ones_in_col[$ipg_col]=@num_ones_in_col[$ipg_col]+1;
				# Update the current element of $ipg_row
				# with the row in which the latest ONE
				# is found in this column
				@row_of_i[$#row_of_i]=$ipg_row;
print "row_of_i[$#row_of_i]!!!",@row_of_i[$#row_of_i],"####\n";
print "Current ROW!!!",$ipg_row,"####\n";
print "Current c_char!!!",$c_char,"####\n";
#print "Current c_char!!!",$ipg_char,"####\n";
print "Current ipg_cols!!!",$ipg_cols,"####\n";
print "Current ipg_line!!!",$ipg_line,"####\n";
print "num_ones_in_col[$ipg_col]!!!",@num_ones_in_col[$ipg_col],"####\n";
print "*		*		*		*		*\n";
#				if($#num_ones_in_col == -1) {
#					@num_ones_in_col[0]++;
#				}else{
#					@num_ones_in_col[$#num_ones_in_col]++;
#				}
			}
			
			# Proceed to the next column
			$ipg_col++;
		}

#====================================================
# REPLACE FOR BELOW LOOP
		# Print this row of the matrix s
		# For each character in this line/row
#		foreach $ipg_char (@ipg_ln) {
#print "SIZE of num_ones_in_col=",$#num_ones_in_col,"#&#\n";
#print "length of ipg_line",length($ipg_line),"#&#\n";
#print "siz of ipg_ln",$#ipg_ln,"#&#\n";
#print "String in ipg_ln",@ipg_ln,"#&#\n";
#print "String in ipg_line",$ipg_line,"#&#\n";
#print "Current Character::",substr($ipg_char,$ipg_col,1),"###",$ipg_col,"QWE\n";

			# If no column has been processed for current row,
			# (Has this column been processed)
#			if($#num_ones_in_col < $ip_cols) {
				# Add an element to the array @num_ones_in_col
#				push(@num_ones_in_col,0);
				# Add an element to the array @row_of_i
				# The "-1" flag is used to indicate that no ONES
				# are found in this column yet
#				push(@row_of_i,-1);
#print "==================>>>>>Processing the first column\n";
#			}
			
		
			# Is this character a ONE?
#			if($ipg_char eq "1") {
				# Yes, increment the number of ones found
				# in this column
				########@num_ones_in_col[$#num_ones_in_col]++;
#				@num_ones_in_col[$ipg_col]++;
				# Update the current element of $ipg_row
				# with the row in which the latest ONE
				# is found in this column
#				@row_of_i[$#row_of_i]=$ipg_row;
#print "Current ROW!!!",$ipg_row,"####\n";
##				if($#num_ones_in_col == -1) {
##					@num_ones_in_col[0]++;
##				}else{
##					@num_ones_in_col[$#num_ones_in_col]++;
##				}
#			}
			
			# Proceed to the next column
#			$ipg_col++;
#		}
# REPLACE FOR ABOVE LOOP
#====================================================












#print "Number of ONES in this Column:",@num_ones_in_col[$ipg_col],"%%%%\n";
		# Proceed to the next row
		$ipg_row++;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	# ==========================================================
	# Print each element of @row_of_i and determine its contents
	for($rii=0; $rii<=$#row_of_i; $rii++) {
		print "Elem row_of_i is:::",@row_of_i[$rii],"###",$rii,"QWE\n";
		print "row_of_i is:::",$row_of_i[$rii],"###",$rii,"QWE\n";
	}

	
	
# BUG FOUND!!!
# Check that for column with a single element of ONE, it does
# not have the element of ONE on the same row as another such
# column.
# Else, this column would  have found to be a repeat of a column
# in the identity matrix I

	# Sort the row_of_i array
	@sorted_row = sort{$a <=> $b} @row_of_i;
	# Determine if there are repeated elements in @sorted_row
	for($z=0;$z<=$#sorted_row;$z++) {
		if(($z>0) && (@sorted_row[$z] > -1)) {
			#if(@sorted_row[$z] <= @sorted_row[($z-1)]) {
			if(@sorted_row[$z] < @sorted_row[($z-1)]) {
				die "Columns of the Identity matrix I are repeated\n";
			}
		}
print "Element ATsorted_row:",@sorted_row[$z],"#!! at col;",$z,"\n";
# @num_ones_in_col[$z] was calculated correctly
print "Number of ONES in this Column:",@num_ones_in_col[$z],"%%%%\n";
	}



for($z=0;$z<=$#new_arr;$z++) {
	print "=== Element #",$z," is:::",@new_arr[$z],"_-_\n";
}

}


if($gh_flag eq "-g") {
	print "Process the G matrix\n";
	transform_g;
}elsif($gh_flag eq "-h") {
	print "Process the H matrix\n";
	
}else{
	print "Program has erred. Invalid flag is encountered.";
	die "It shall terminate!!!\n";
}

close(ip1);
close(ip2);









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
print $matrix_type," matrix ** \n";
############################################################
#
# Determine the rows and columns of the G and H matrices
# ==>	Number of columns of G and H are the same
#
############################################################
if($matrix_type eq "g") {
	# Number of rows in the matrix G
	$nrg=$num_rows;
	# Number of rows in the matrix H
	$nrh=$n_k;
print "====Set the rows for a given ",$matrix_type," matrix====\n";
print "**NRG:::",$nrg,"###\n";
print "**NRH:::",$nrh,"###\n";
}elsif($matrix_type eq "h") {
	# Number of rows in the matrix G
	$nrg=$n_k;
	# Number of rows in the matrix H
	$nrh=$num_rows;
print "====Set the rows for a given ",$matrix_type," matrix====\n";
print "NRG:::",$nrg,"###\n";
print "NRH:::",$nrh,"###\n";
}




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
close(om);
print "\n";
$other_matrix_r = "other_matrix.txt";
# Create a file handle for the output file of the other matrix
open(o_matrix,$other_matrix_r)
	|| die("The other input file '",$other_matrix_r,"' does not exist!");
# Load data elements of the "other matrix"
# Place the contents of the "other matrix" into a 2 dimensional array
@other_data = <o_matrix>;
print "PRINT THE OTHER MATRIX:::",@other_data,"##QWS\n";
if($matrix_type == "g") {
	@g_matrix=@input_data;
	@h_matrix=@other_data;
}elsif($matrix_type == "h") {
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
#	print "Finished printing the G' matrix\n";
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



# ================================================================

# Name of the behavioral RTL Verilog code for the decoder
$decoder=">decoder_pl.v";
# Create a file handle for the decoder output file
open(dec,$decoder);

# ================================================================

sub decoder_preamble {
	print dec "module decoder (cx,d);\n";
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
		print dec "	output [",$num_rows,":0] d;\n";
		
	}else{
		print dec "	output [",$n_k,":0] d;\n";
	}
	print dec "\n";
	print dec "	input [",$num_cols,":0] cx;\n";
	print dec "\n";
	print dec "	reg [",$num_rows,":0] d;\n";
	print dec "	reg [",($nrh-1),":0] s;\n";
	print dec "\n";
	print dec "\n";
	
	
	for($i=0; $i<$num_cols; $i++) {
		# Define a parameter for this combination of error bits
		print dec "	parameter s$i = ",$nrh,"'b";
		
		
		
		# Print the $i^{th} column of the matrix H
		foreach $hline (@h_matrix) {
			$ncol_h=0;
			
			# Split the tokens using a whitespace character as
			# the delimiter
			@h_ln = split('\s',$hline);
			foreach $h_char (@h_ln) {
				if($ncol_h==$i) {
					print dec $h_char;
				}
				$ncol_h++;
			}
			
		}
		print dec ";\n";
	}
	
	
	
	print dec "\n";
	print dec "\n";
	print dec "	always @(cx)\n";
	print dec "	begin\n";
}

sub decoder_conclude {
	print dec "	end\n";
	print dec "endmodule\n";
}

# ==============================================================

# Do the necessary processing to determine the matrix d
sub decoder_body {
	# s = H * cx
	# [(num_col-num_rows_g) * 1]
	# = [(num_col-num_rows_g) * num_rows_g] * [num_col * 1]
	##########################################################
	# IMPORTANT NOTE!!!
	# Since only one bit in the matrix cx is set to ONE,
	# and the other bits of cx are ZERO, multiplying H to cx
	# for [num_col] combinations of the matrix cx results in
	# producing values of the matrix s that are equal to the
	# columns of H
	# This decoder is single error correcting
	# More than one-bit errors are not corrected
	
	# b
	# [num_row * 1]
	
	# G = [I_k | P]
	# H = [P' | I_{n-k}]
	
	# G:	[k * n]		= [k * k] | [k * (n-k)]
	# H:	[(n-k) * n]	= [(n-k) * k] | [(n-k) * (n-k)]
	
	
	$nrow_dh=0;
	# Determine S from H*c; s = H * c
	foreach $dbline (@h_matrix) {
		$ncol_dh=0;
		print dec "		s[$nrow_dh]=";
		
		# Print the equal sign...
		$print_equal=0;
		# Number of columns of the matrix H that has been enumerated
		$ncol_h=0;
		# Split the tokens using a whitespace character as
		# the delimiter
		@db_ln = split('\s',$dbline);
		foreach $h_char (@db_ln) {
			if($h_char eq "1") {
				if($print_equal==0) {
					print dec " cx[$ncol_h]";
					$print_equal=1;
				}else{
					print dec "+ cx[$ncol_h]";
				}
			}
			$ncol_h++;
		}
		print dec ";\n";
		$nrow_dh++;
	}
		
	print dec "\n";
	print dec "\n";
	print dec "\n";
	print "=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+\n";
	print dec "		case(s)\n";
	for($i=0; $i<$num_cols; $i++) {
		# IMPORTANT!!! - UPDATE THIS!!!
		print dec "			s$i:\n";
		print dec "				begin\n";
		print dec "					if(cx[$i]==1'b0)\n";
		print dec "					begin\n";
		print dec "						cx[$i]=1'b1;\n";
		print dec "					end\n";
		print dec "					else\n";
		print dec "					begin\n";
		print dec "						cx[$i]=1'b0;\n";
		print dec "					end\n";
		print dec "				end\n";
	}
	#s = H*c where print dec "			default:\n",";
	# Keep the same values for cx; s=0; no errors are found
	print dec "			default:\n";
	print dec "				begin\n";
	print dec "					if(cx[$i]==1'b0)\n";
	print dec "					begin\n";
	print dec "						cx[$i]=1'b0;\n";
	print dec "					end\n";
	print dec "					else\n";
	print dec "					begin\n";
	print dec "						cx[$i]=1'b1;\n";
	print dec "					end\n";
	print dec "				end\n";
	print dec "		endcase\n";
	print "-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_\n";
	
	
	# Determine an array of values for the matrix s, when each
	# bit of the matrix cx is set to high
	# That is, for each column in cx, set its bit to ONE while
	# keeping the rest at ZERO
	#
	# arr_s = H * cx
	# For each corresponding bit of cx, find the value of arr_s
	# that will indicate the corresponding error bit, if any
	# (when s!=0), in the matrix cx that has to be corrected
	# Array of values for cx
	@arr_s = (0 .. $nrh);
	# Set the values of s elements to ZERO
	for($p=0;$p<$nrh;$p++) {
		@arr_s[$p]=0;
	}
	
	# Array of values for cx
	@arr_cx = (0 .. $num_cols);
	# Set the values of cx to ZERO
	for($r=0;$r<$num_cols;$r++) {
		@arr_cx[$r]=0;
		#print @arr_cx[$r],"\n";
	}
	# For each column in the matrix cx, set it to ONE while
	# leaving the rest at ZERO 
		
	# Determine s = H * cx
	# $nrg
	# $nrh
	############	DO SOMETHING!!!
	# Currently processed row
	$d_row=0;
		
print "\n\n\nProcess the body of the decoder\n";	
	# ========================================================
	for($q=0;$q<$num_cols;$q++) {
		# Set the column bit to ONE
		@arr_cx[$q]=1;
	
		# ---------------------------------------------------
		# Currently processed column
		$d_col=0;
		$d_row=0;
		# ---------------------------------------------------
print "h_matrix is:\n",@h_matrix,"#!S#\n";
#print "input_data is:",@input_data,"#*#\n";
#print "other_data is:",@other_data,"**#\n";
		# For each line in the input file
		foreach $hline (@h_matrix) {
			# Split the tokens using a whitespace character as
			# the delimiter
			@h_ln = split('\s',$hline);
########Sprint "H is:",@h_ln,"#*###\n";
			# Start processing each character in this current
			# line
			$d_col=0;
			#$d_row=0;
			# -----------------------------------------------
		
			# Print this row of the matrix s
print "s[",$d_row,"] = ";
			# For each character in this line/row
			foreach $h_char(@h_ln) {
				# Is this character a ONE?
				#if(($h_char eq "1") && (@arr_cx[$d_col]==1)) {
				if(($h_char eq "1") && (@arr_cx[$q]==1)) {
					# A ONE is found!
					#
					# Determine the value of this s element
					@arr_s[$d_row] = @arr_s[$d_row] + 1;
print "\narr_s[d_row]: #",@arr_s[$d_row],"@@@\n";
print "arr_cx[$q]: #",@arr_cx[$q],"@@@\n";
				}
#print "arr_cx[$d_col]: #",@arr_cx[$d_col],"@@@\n";
				# Proceed to the next columnn/character in the row
				$d_col++;
#print "--->>>d_col",$d_col,"\n";
			}
#print "QQQ			d_row",$d_row,"@@@S\n";
			# Process the next row
			print @arr_s[$d_row],"^^^^\n";
			$d_row++;
		}
		######################################################
		# Set the column bit back to ZERO
		@arr_cx[$q]=0;
#print "Process column bit: #",@arr_cx[$q],"@@@S\n";
print "Process column bit: #",@arr_s[$d_row],"d_row",$d_row,"@@@S\n";
	}
	##########################################################
	print "Number of rows of G:::",$nrg,"###\n";
	print "Number of rows of H:::",$nrh,"###\n";
}






















# ===================================================================

# Preamble for the behavioral RTL model in Verilog for the decoder
decoder_preamble;

# Get the body of the behavioral RTL model in Verilog for the decoder
decoder_body;

# Conclusion for the behavioral RTL model in Verilog for the decoder
decoder_conclude;









# Close the file handle for the encoder output file
close(enc);

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
