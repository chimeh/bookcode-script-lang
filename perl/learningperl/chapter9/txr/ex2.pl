#! /usr/bin/perl
use 5.12.0;

die 'usage  ex2.pl filename' if (@ARGV < 1 || @ARGV > 1 );
my $out_file =  $ARGV[0] . ".out";
my $in_file =  $ARGV[0] ;

$^I = '';
while (<>) {
	s/fred/larry/gi;
	print;
}
`mv $in_file $out_file`;
