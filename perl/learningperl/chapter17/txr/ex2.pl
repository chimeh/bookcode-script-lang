#!/usr/bin/perl
use 5.014;
use List::Util qw /reduce/;

my @files = glob '*';
my $longest_file_length = reduce{ length($a) > length($b)? length($a): length($b)} @files; 

foreach my $file (@files) {
	my ($atime,$mtime) =	(stat $file)[8,9];
	printf "%${longest_file_length}s %s %s\n",  $file, $atime,  $mtime;
}
