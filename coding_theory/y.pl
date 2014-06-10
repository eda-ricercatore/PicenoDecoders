#!/usr/usc/bin/perl

$flag=$ARGV[0];
$input_filename=$ARGV[1];

if($flag eq "-g") {
	print "Process the G matrix\n";
}elsif($flag eq "-h") {
	print "Process the H matrix\n";
}else{
	die "Program has erred. It shall terminate!!!\n";
}
