#!/usr/usc/bin/perl

# 
for($i=0; $i<9; $i++) {
	last if ($i>5);
	print "This is:::",$i,"###\n";
	
}




use constant {
	s1		=> 1,
	s2		=> 2,
	s3		=> 3,
	s4		=> 4,
};

$j=38;
my @cx_combi = (cx_vals)[27 .. $j];

print "cx1:::",@cx_combi[0],"###\n";
print "cx2:::",@cx_combi[1],"###\n";
print "cx3:::",@cx_combi[2],"###\n";
print "cx4:::",@cx_combi[3],"###\n";
print "cx5:::",@cx_combi[4],"###\n";
print "cx6:::",@cx_combi[5],"###\n";

use constant ccx => [27 .. $j];

print "==>>>",ccx->[$k],"+++\n";
print "==>>>",$k,"+++\n";





    # references can be declared constant
    use constant CHASH          => { foo => 42 };
    use constant CARRAY         => [ 1,2,3,4 ];
    use constant CPSEUDOHASH    => [ { foo => 1}, 42 ];
    use constant CCODE          => sub { "bite $_[0]\n" };

    print CHASH->{foo};
	print "\nprinted CHASH\n";
    print CARRAY->[$i];
    print "\nprinted CARRAY\n";
    print CPSEUDOHASH->{foo};
	print "\nprinted PSEUDO\n";
    print CCODE->("me");
#	print CHASH->[10];                          # compile-time error
	use constant NUMBERS => [ 31 .. 45 ];
    print "\nprinted NUMBERS\n";
	print NUMBERS->[7],"#$#\n";
	

	$y=31;
	$z=45;
	use constant NUMBERSA => [ $y .. $z ];
    print "\nprinted NUMBERSA\n";
	print NUMBERSA->[7],"#$#\n";
	use constant NUMBERSB => [ 10 .. $z ];
    print "\nprinted NUMBERSB\n";
	print NUMBERSB->[9],"#$#\n";
	
	# This works for arrays!
	use constant CX_ARRAY => [ 1,0,1,1,1,0,0,1,0,1,1,0,0,0,1,0,0,0,0,1,1,1 ];
	for($m=0;$m<7;$m++) {
		print CX_ARRAY->[$m],"***\n";
		$sum = $sum + CX_ARRAY->[$m];
	}
	print "END --",$sum,"END\n";
	
	@arr_cx={ 11,62,53,43,54,26,47,84,29,110,141,22,139 };
	print "1arr_cx:::",@arr_cx->[5],"#1##\n";
	@arr_cxx={ 11,62,53,43,54,26,47,84,29,110,141,22,139 };
	print "2arr_cx:::",@arr_cxx->[6],"#2##\n";
	
	

use constant {
	SEC   => 0,
	MIN   => 1,
	HOUR  => 2,
	MDAY  => 3,
	MON   => 4,
	YEAR  => 5,
	WDAY  => 6,
	YDAY  => 7,
	ISDST => 8,
};


print "Today is ", (WEEKDAYS)[ (localtime)[WDAY] ], ".\n";
print "DAY:::",(WEEKDAYS)->[1],"...\n";
print "DATE:::",WEEKDAYS->[1],"...\n";
print "AWES:::",WEEKDAYS -> [ HOUR ],"...\n";



# DEFINE AN ARRAY
@coins = ("Quarter","Dime","Nickel");

# PRINT THE WHOLE ARRAY
print "@coins";

# PRINT EACH SCALAR ELEMENT
print "\n";
print $coins[0]; #Prints the first element
print "\n";
print $coins[-1]; #Prints the last element
print "\n";
print $coins[-2]; #Prints 2nd to last element

# DEFINE AN ARRAY
$jk=19;
@coins1 = (5 .. $jk);

# PRINT THE WHOLE ARRAY
print "@coins1";

# PRINT EACH SCALAR ELEMENT
print "\n";
print $coins1[0]; #Prints the first element
print "\n";
print $coins1[-1]; #Prints the last element
print "\n";
print $coins1[-2]; #Prints 2nd to last element
print "\n";







print "PRINT THE LAST ARRAY!!!\n";
# DEFINE AN ARRAY
$gh=21;
$hj=35;
@coins12 = ($gh .. $hj);
# PRINT THE WHOLE ARRAY
print "@coins12";
# PRINT EACH SCALAR ELEMENT
print "\n";
print $coins12[0]; #Prints the first element
print "\n";
print $coins12[-1]; #Prints the last element
print "\n";
print $coins12[-2]; #Prints 2nd to last element
print "\n";










print "PRINT THE ZERO ARRAY!!!\n";
# DEFINE AN ARRAY
$ghq=0;
$hjq=0;
@coins12q = ($ghq .. $hjq);
# PRINT THE WHOLE ARRAY
print "@coins12q";
# PRINT EACH SCALAR ELEMENT
print "\n";
print $coins12q[0]; #Prints the first element
print "\n";
print $coins12q[-1]; #Prints the last element
print "\n";
print $coins12q[-2]; #Prints 2nd to last element
print "\n";








print "PRINT THE for ARRAY!!!\n";
# DEFINE AN ARRAY
$ghz=0;
$hjz=7;
@coins12z = (0 .. $hjz);
for($r=0;$r<$hjz;$r++) {
	#print $coins12z[$r],"\n";
	@coins12z[$r]=0;
	print $coins12z[$r],"\n";
	
}










print "END-END-END-END!!!\n";



$output = ">y.txt";
open(op,$output) || die ("File IO error");
print op "1 2 3 4 5 6 7 8 9";
close(op);
$input = "y.txt";
open(ip,$input) || die ("File isn't found");
@input_data=<ip>;
close(ip);
print "input_data:::",@input_data,"*&^\n";


system("ls;pwd");
print "PRINT THE for ARRAY!!!\n";
# DEFINE AN ARRAY
$za=51;
$zs=72;
@qw = ($za .. $zs);
for($r=0;$r<7;$r++) {
	@qw[$r]={$r .. ($r+9)};
	print $qw[$r],"\n";
	print $qw[$r]=>$y,"\n";
	print $qw[$r]=>$z,"\n";
	print $qw[$r]->{$c}->{$d},"\n";
	print $qw[$r]=>$v,"\n";
}





print "2^5::::",2**5,"END\n";


