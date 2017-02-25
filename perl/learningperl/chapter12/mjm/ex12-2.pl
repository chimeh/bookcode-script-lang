#! perl

# Chapter 12, Exercise 2

use strict;

my $oldest_file_name = "";
my $oldest_file_age = 0;
my $current_file_age = 0;

if ( @ARGV ) {
	foreach ( @ARGV ) {
		$current_file_age = ( -M $_ );
		if ( $current_file_age > $oldest_file_age ) {
			$oldest_file_name = $_;
			$oldest_file_age = $current_file_age;
		}
	}
	print "oldest file is: $oldest_file_name ($oldest_file_age days old)\n";
}
else {
	print "no files supplied\n";
}
