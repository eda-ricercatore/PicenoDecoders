#!/usr/usc/bin/perl

=for
	This is written by Zhiyang Ong, 
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

	# Process the next row
	$ip_rows++;

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
sub transform_gh {
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
print "Number of ONEs in each column\n";
	#for($j=0;$j<($ip_cols+1);$j++) {
	foreach $j (@num_ones_in_col) {
		# Print the number of ONEs found per column
		print $j," ";
	}
	print "\n";
print "Row of most recently found element of ONE in this column\n";
	foreach $j (@row_of_i) {
		# Print the row where the most recent ONE been found
		print $j," ";
	}
	print "\n";
	
	# ============================================================
	# For each column with one entry of ONE, push its corresponding
	# row index which the most recent ONE element in the array is
	# found
	for($j=0; $j<$ip_cols; $j++) {
		# If this column only has an entry of ONE
		if(@num_ones_in_col[$j]==1) {
			# Push its corresponding index into an array
			push(@row_indices, @row_of_i[$j]);
		}
	}
	
	
	# Sort the array of indices with an entry of ONE in each column.
	@row_indices1 = sort(@row_indices);
	# Enumerate the array of sorted indices, and check for repeated
	# elements.
	# If repeated elements exists, this matrix is invalid
	for($k=1; $k<$#row_indices1; $k++) {
		# If this element is not greater than the previous element,
		if(@row_indices1[$k]<=@row_indices1[($k-1)]) {
			print "Col of I with ONE in row ",$k," is repeated\n";
			print "The repeated row is:::",@row_indices1[$k],":::\n";
			die "== Terminate Process. Repeated Columns of I\n";
		}
#print @row_indices[$k],"  ";
	}
#print "\n";




print "================Print the contents of the row indices\n";
foreach $i (@row_indices) {
	#print $i,"   ";
	print $i,":   ";
}
print "\n";



	# ============================================================
	# Matrix now has no repeated columns of the Identity matrix I
	# This does not imply that matrix has all necessary columns of I
	# Size of I depends on the number of rows in the matrix
	#
	# Determine the order columns to construct a proper G or H
	# to obey the G = [I | P] and H = [-P' | I]
	# ==> Enumerate each column
	# ==> If column has an entry of ONE
	# ==>    Add its column index to an array in ascending order
	# ==> Enumerate remaining columns
	# ==>    Add their columns indices incrementally
	
	# Obtain the sorted columns
	for($k=0;$k<$ip_rows; $k++) {
		# Enumerate each column
		for($j=0; $j<$ip_cols; $j++) {
			# If this column is part of I, which has an entry of
			# ONE in this column, and is the next column of I to
			# be added/appended in ascending order
			#if((@num_ones_in_col[$j]==1) && (@row_indices[$j]==$k)) {
			if((@num_ones_in_col[$j]==1) && (@row_of_i[$j]==$k)) {
				# Append its index to form the submatrix I of G/H
				#push(@submatrix_i,$j);
				push(@submatrix_i,$j);
print "Row index::",@row_indices[$j],"::\n";
print "k::",$k,"::\n";
print "j::",$j,"::\n";
			}
		}
	}
print "Column index that is part of matrix I\n";
# Print the contents of the submatrix
foreach $i (@submatrix_i) {
	#print $i,"   ";
	#print @submatrix_i[$i],":   ";
	print $i,":   ";
}
print "\n";
print "Print the contents of the row indices\n";
foreach $i (@row_indices) {
	#print $i,"   ";
	print $i,":   ";
}
print "\n";
	
print "ORDER OF INDICES IS:\n";
print "3:   5:   2:   0:   4:   9:   6:\n";
	
	
# BUG FOUND!!!
# The default Perl sorting function for arrays does not work with
# numbers with > 1 digit
	# Sort the columns in the submatrix for easier text processing
	#@sort_subm = sort(@submatrix_i);
	#@sort_subm = sort{$x < $y} @submatrix_i;
	#@sort_subm = sort{$x <= $y} @submatrix_i;
	#@sort_subm = sort{$x <=> $y} @submatrix_i;
	#@sort_subm = sort{@submatrix_i[$x] < @submatrix_i[$y]} @submatrix_i;
	# Make a copy of the submatrix
	@submatrix_i2=@submatrix_i;
	# Length of the submatrix
	$len_sm=@submatrix_i2;
	# Initial maximum value of the submatrix/clone
	$max=@submatrix_i2[$a];
	# Index of the aforementioned max value
	$max_index=$a;
	# Number of items deleted from the submatrix clone
	$del=0;
	# Has a ZERO been added? Set to 1 to indicate YES; else, set to 0
	$zero_added=0;
	for($a=0; $a<=($len_sm+1); $a++) {
	#for($a=0; $a<=@submatrix_i2; $a++) {
print "Value of a elem:",@submatrix_i2[$a],":::\n";
print "=========>>>>>>>>>>Value of CURRENT max:",$max,":::\n";
		for($b=0; $b<=($#submatrix_i2+1); $b++) {
		#for($b=0; $b<=@submatrix_i2; $b++) {
print "Value of a:",$a,":::\n";
print "Value of b:",$b,":::\n";
print "Value of b elem:",@submatrix_i2[$b],":::\n";
print "Value of max:",$max,":::\n";
			if(@submatrix_i2[$b] > $max) {
#				if(@submatrix_i2[$b]<@sort_subm[$a]) {
					$max = @submatrix_i2[$b];
					$max_index=$b;
print "Value of NEW max:",$max,":::\n";
print "Value of NEW max index:",$max_index,":::\n";
#				}
print "submatrix_i2[b]",@submatrix_i2[$b],":::\n";
print "sort_subm[0]",@sort_subm[0],":::\n\n";
			}elsif((@submatrix_i2[$b]==0) && (@submatrix_i2==1)) {
				$max = 0;
				$max_index=$b;
			}
		}
		if(($max == 0) && ($zero_added!=1)) {
			unshift(@sort_subm,"x");
			$zero_added=1;
		}elsif($max > 0) {
			unshift(@sort_subm,$max);
		}
print "		>> JUST ADDED sort_subm[a]",@sort_subm[0],":::\n\n";
		delete $submatrix_i2[$max_index];
		$del--;
print "		PUSHED VALUE OF (NEW) MAX::",$max,"==\n";
		$max = -1;
print "		CURRENT MAX::",$max,"==\n";
print "PRINT submatrix_i2	###\n";
foreach $el (@submatrix_i2) {
	#print $el,"[[-";
	if($el eq "x") {
		print "0[[-";
	}else{
		print $el,"[[-";
	}
}
print "\n";

for($d=0; $d<$del; $d++) {
	#shift(@sort_subm);
	reverse(@sort_subm);
	push(@sort_subm);
	reverse(@sort_subm);
}
print "==PRINT sort_subm	###\n";
foreach $el (@sort_subm) {
	if($el eq "x") {
		print "0 ";
#		push(@sb_subm,0);
	}else{
		print $el," ";
#		push(@sb_subm,$el);
	}
}
print "\n";
##########################################
# Method for correction fails
#print "==Corrected sort_subm	###\n";
#foreach $el (@sb_subm) {
#	print $el," ";
#}
#print "\n";


	}

	#@sort_subm = sort { $b cmp $a } @submatrix_i;
#	@sort_subm = sort { (split ':', $a, 2)[0] cmp
#		(split ' ', $b, 2)[0] } @submatrix_i;
















print "===============================================\n";
print "(submatrix_i2+1)",($#submatrix_i2+1),":::\n";
print "Sorted submatrix:\n";
foreach $i (@sort_subm) {
	print $i,":   ";
}
print "\n";
	# For the remaining columns of the original matrix,
	# append them to the submatrix

	for($a=0; $a<=$ip_cols; $a++) {
		#if(($a == $s_elem) && (@sort_subm>1)) {
		if(($a == "x") && (@sort_subm>1)) {
print ">>Value of a",$a,"###\n";
print ">>Value of sort_subm[0]",@sort_subm[0],"###\n";
			#@sort_subm=reverse(@sort_subm);
			#pop(@sort_subm);
			#@sort_subm=reverse(@sort_subm);
			
			shift(@sort_subm);
			
		}elsif(($a > @sort_subm[0]) || ($a < @sort_subm[0])) {
			# Is this a G matrix?
			if($gh_flag eq "-g") {
				# Add this element to the end of the submatrix
				push(@submatrix_i,$a);
			}else{
				# Else, this must be a H matrix
				
				# Add this enumerated non-I column to the submatrix
				#@sort_subm=reverse(@sort_subm);
				#push(@submatrix_i,$a);
				#@sort_subm=reverse(@sort_subm);
				unshift(@submatrix_i,$a);
			}
print "<<Value of a",$a,"###\n";
print "<<Value of sort_subm[0]",@sort_subm[0],"###\n";
		}
	}
print ">>>		Print the contents of the submatrix\n";
# Print the contents of the submatrix
foreach $i (@submatrix_i) {
	print $i,":   ";
}
print "\n";	
	


	# Enumerate each row, and print its columns acording to
	# the sorted indices in the array submatrix_i
	foreach $ipline (@ip_matrix) {
		@ipln = split('\s',$ipline);

		foreach $i (@submatrix_i) {
			print ip2 @ipln[$i]," ";
		}

		print ip2 "\n";
		
		$d++;
	}

























}








# ====================================================================
# ====================================================================




# ====================================================================
# The following stuff below is from the original script - resume work here

# Use the first input argument to process the matrix accordingly
if(($gh_flag eq "-g") || ($gh_flag eq "-h") ) {
        print "Process the G or H matrix\n";
        transform_gh($gh_flag);
}else{
        print "Program has erred. Invalid flag is encountered.\n";
        die "Program shall terminate!!!\n";
}

# Close the file I/O streams
close(ip1);
close(ip2);
close(clp);
