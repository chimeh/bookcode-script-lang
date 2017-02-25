#! perl

# Chapter 13, Excercise 1

use strict;

print "Enter a directory path:\n";

chomp( my $dir = <STDIN> );

if( $dir =~ m/^\s*$/ ) {
	chdir;
	print_files();
}
elsif ( chdir $dir ) {
	print_files();
}
else {
	print "Can't change directory to $dir. Error: $!\n";
}

sub print_files {
	my @files = glob "*";
	foreach ( @files ) {
		print ( "$_\n" );
	}
}