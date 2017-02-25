#!/usr/bin/perl
use 5.014;
use List::Util qw /reduce/;

my @files = glob '*';
my $longest_file_length = reduce{ length($a) > length($b)? length($a): length($b)} @files; 

my @array = map { 
	my ($atime,$mtime) = (stat $_)[8,9];
	sprintf "%${longest_file_length}s %s %s\n", $_, format_date($atime),format_date($mtime);

} @files;

print @array;

sub format_date {
	my ($date) = @_;
	my ($year, $month, $day) = (localtime($date))[5,4,3];
	$year = 1900 + $year;
	++$month;
	join("-", $year,$month,$day);
}
