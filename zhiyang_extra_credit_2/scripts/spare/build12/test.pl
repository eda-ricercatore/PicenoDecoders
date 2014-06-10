#!/usr/usc/bin/perl

print "Pre-multiline comments\n";

=for
This is a multiline comment
Yes! I can write a multiline comment
This is awesome, I can multiline comment
just like in C**, Java, or Ruby
=cut

print "Post-multiline comments\n";


for($i=0; $i<10; $i++) {
	@arr[$i] = 0;
}

for($i=0; $i<10; $i++) {
	print "==>",@arr[$i],"-NUMBER\n";
}

for($j=0; $j<10; $j++) {
	print ">>>",@arr[$j],"==\n";
}

die "Terminate process !!!\n";

print "This statement will never be reached";



