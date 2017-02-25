#! perl

# Chapter 13, Excercise 5

# Usage (examples):
# mv anyfile.txt anyotherfile.txt
# mv anyfile.txt C:\somewhereelse
# mv anyfile.txt C:\somewhereelse\
# mv anyfile.txt C:\somewhereelse\anyotherfile.txt

use strict;

my ( $from, $to ) = @ARGV;

if( -d $to ) {
	if( $to !~ m/\\$/ ) {
		$to .= "\\";
	}
	$to .= $from;
}

rename $from, $to;
