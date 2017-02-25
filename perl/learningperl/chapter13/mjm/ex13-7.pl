#! perl

# Chapter 13, Excercise 7

use strict;

my $arg_count = scalar( @ARGV );

if( $arg_count == 2 ) {
	link $ARGV[0], $ARGV[1]; # creates an identical copy of the file on Windows
}
elsif( $arg_count == 3 && $ARGV[0] eq "-s" ) {
	symlink $ARGV[1], $ARGV[2]; # symlink not implemented in ActiveState Perl
}
else {
	print "invalid arguments\n";
}