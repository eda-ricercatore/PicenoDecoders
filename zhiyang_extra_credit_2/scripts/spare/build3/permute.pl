#!/usr/usc/bin/perl

=for
	This is written by Zhiyang Ong, student number 6004-9194-12,
	the second extra credit homework of EE 577B VLSI System
	Design at the University of Southern California
	
	This is a "test" to determine if I can read in a file line by
	line and write it to an output file by appending it contents
	on a separate column...
=cut

# Flag to indicate if the input text file contains a G or H matrix
# It should be either "-g" or "-h"
$gh_flag = $ARGV[0];
# Name of the input text file
$input_filename1 = $ARGV[1];
# Name of the temporary input text file
$temp_input_file = ">input_file.txt";

open(ip1,$input_filename1)
        || die("### Input file '",$input_filename1,"' does not exist!");
open(ip2,$temp_input_file);

# ==================================================================
=for
        Name of file that contains the temporary array for the
        pre-processed G or H matrix that may not lead to a viable
        single error-correction code

        This file input/output (I/O) operation is required since I 
        have problems using a two dimensional array, or an array
        that processes each line of text string in this pre-processed
        G or H matrix
=cut
$cur_ln_parse = ">cur_ln_parse.txt";
# Create an output file stream to store this information
open(clp,$cur_ln_parse);
# ====================================================================

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
#       $ip_cols=0;

        foreach $cur_char(@ipln) {
#               print "=",$cur_char,"#";
#               $ip_cols++;
#               $ip_cols=$ip_cols+1;
        }
        # Process the next row
        $ip_rows++;

#       $ip_cols=length($ipline);
#       $ip_cols=length(@ipln);
}
# Number of columns in the original input file:
$ip_cols=$#ipln;
####$ip_cols=$#ipline+1;
print "========================ip_cols=",$ip_cols,"#&#\n";
print "========================ip_rows=",$ip_rows,"#&#\n";

# The following stuff above is from the original script
# ====================================================================



# ====================================================================
# ====================================================================








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
	# Set the number of ONEs found per column to be zero.
	# And the line, which indicates where it is last found, to zero
	for($i=0;$i<($ip_cols+1);$i++) {
		# Number of ONEs found per column
		@num_ones_in_col[$i]=0;
		# Row in which the most recent ONE is found
		# Use (-1) to indicate that a ONE has not been found
		@row_of_i[$i]=-1;
	}


	# For this row of the matrix s
	$ipg_row=0;
	foreach $ipg_line (@ip_matrix) {
		# Split the tokens using a whitespace character as
		# the delimiter
		@ipg_ln = split('\s',$ipg_line);
		
=for
	New algorithm to detect repeated columns of I in G or H
	
	For each row, update each column if it contains a ONE
	
	If such an update is performed, update that column's
	entry into another array to indicate the last row in
	which a ONE is found in that row.
=cut
		for($c_char=0;$c_char<($ip_cols+1);$c_char++) {
			# If a ONE is found in this column,
			if(@ipg_ln[$c_char] eq "1") {
				# Another ONE has been found in this column
				@num_ones_in_col[$c_char]=@num_ones_in_col[$c_char]+1;
				# Use the current row to indicate where the latest
				# ONE is found
				@row_of_i[$c_char]=$ipg_row;
			}
		}
		$ipg_row++;
	}
	
	
	
	# ============================================================
	#for($j=0;$j<($ip_cols+1);$j++) {
	foreach $j (@num_ones_in_col) {
		# Print the number of ONEs found per column
		print $j," ";
	}
	print "\n";
	
	foreach $j (@row_of_i) {
		# Print the row where the most recent ONE been found
		print $j," ";
	}
	print "\n";
	
	# ============================================================
	

	# ============================================================
	# Determine if there are any columns with the same row index
	# for the most recently located element of ONE
	for($j=0; $j<$ip_cols; $j++) {
	#foreach $j (@num_ones_in_col) {
		# Is there only one ONE element in this column?
		if(@num_ones_in_col[$j] == 1) {
			# Yes, check if any other column with only one ONE
			# element has this row as the row index for the most
			# recently found element
			#
			# For each column...
			for($k=$0; $k<$ip_cols; $k++) {
			#for($k=$j; $k<$ip_cols; $k++) {
			#foreach $k (@num_ones_in_col) {
				# If this is another column, is it part of the
				# Identity matrix I
				if(($j != $k) && (@num_ones_in_col[$k] == 1)) {
					# 
					if(@row_of_i[$k] == @row_of_i[$j]) {
						# End the execution of this script
print "Current value of j:",$j,": and k:",$k,":\n";
print "row_of_i[j]:",@row_of_i[$j],": row_of_i[k]:",@row_of_i[$k],":\n";
print "num_ones_in_col[j]::",@num_ones_in_col[$j],":::\n";
print "num_ones_in_col[k]::",@num_ones_in_col[$k],":::\n";
						print "Two copies of the same column in this ";
						print "matrix is found\n"; 
						die "==>>> Terminate process !!!\n";
					}
				}
print "Current value of j:",$j,": and k:",$k,":\n";
print "row_of_i[j]:",@row_of_i[$j],": row_of_i[k]:",@row_of_i[$k],":\n";
print "num_ones_in_col[j]::",@num_ones_in_col[$j],":::\n";
print "num_ones_in_col[k]::",@num_ones_in_col[$k],":::\n\n";
#				$k++;
			}
		}
	}
}








# ====================================================================
# ====================================================================




# ====================================================================
# The following stuff below is from the original script - resume work here

# Use the first input argument to process the matrix accordingly
if($gh_flag eq "-g") {
        print "Process the G matrix\n";
        transform_g;
}elsif($gh_flag eq "-h") {
        print "Process the H matrix\n";

}else{
        print "Program has erred. Invalid flag is encountered.";
        die "It shall terminate!!!\n";
}

# Close the file I/O streams
close(ip1);
close(ip2);
close(clp);
