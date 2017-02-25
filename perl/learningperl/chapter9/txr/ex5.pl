#! /usr/bin/perl
use 5.12.0;

my @files;
foreach my $file (@ARGV) {
		open FILE , $file;
    my @lines = <FILE>;
		push (@files,$file) if  !grep { /^## Copyright \(C\) 2015 by txr$/m } @lines ; 
}
@ARGV =  @files;
$^I = ".backup";
while (<>) {
 	s/(^#!(.*)$)/$1\n## Copyright (C) 2015 by txr/i;
	print;
}
