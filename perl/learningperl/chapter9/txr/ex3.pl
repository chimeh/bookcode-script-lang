#! /usr/bin/perl
use 5.12.0;

die 'usage  ex3.pl filename' if (@ARGV < 1 || @ARGV > 1 );
my $out_file =  $ARGV[0] . ".out";
my $in_file =  $ARGV[0] ;
$^I = '';
while (<>) {
	s/fred/FRED/ig;
	s/wilma/Fred/ig;
	s/FRED/Wilma/g;
	print;
}
`mv $in_file $out_file`;
