#! perl

# Chapter 17, Exercise 2

my @files = glob '*';

foreach( @files ) {
	my @stat = stat($_);
	my ($atime, $mtime) = @stat[8,9];
	printf "%10s\t%10s\t%10s\n", $_, $atime, $mtime;
}
