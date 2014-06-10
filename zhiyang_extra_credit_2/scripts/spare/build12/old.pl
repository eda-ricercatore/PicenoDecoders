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


=for
	New algorithm to detect repeated columns of I in G or H
	
	For each row, update each column if it contains a ONE
	
	If such an update is performed, update that column's
	entry into another array to indicate the last row in
	which a ONE is found in that row.
=cut
		


		
		
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





				# Print values of array in this scope boundary
				# to preserve its values
				if($ipg_row == $ip_rows) {
					for($prm=0; $prm<$ip_cols; $ip_cols++) {
						print clp "";
					}
				}
				
				
				
				


#				if($#num_ones_in_col == -1) {
#					@num_ones_in_col[0]++;
#				}else{
#					@num_ones_in_col[$#num_ones_in_col]++;
#				}
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			

			
			

		}

#====================================================
# REPLACE BELOW FOR-LOOP
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
# REPLACE ABOVE FOR-LOOP
#====================================================








		
		
		
		# Proceed to the next column
		$ipg_col++;



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
