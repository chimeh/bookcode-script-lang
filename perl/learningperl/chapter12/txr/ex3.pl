#!/usr/bin/perl
use 5.014;

if ( scalar(@ARGV) < 1 ) {
	say  'please provided at least one file name';
	exit 0;
}
say "$_ is read-write and mine"  foreach( grep { ( -w -r -o $_ ) } @ARGV);

