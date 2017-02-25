#! /usr/bin/perl
use 5.014;

say 'enter directory ';
chomp (my $dir = <STDIN>);

if ( !defined($dir) || $dir eq '' || $dir =~ /^\s+$/ ) {
	opendir DH, $ENV{HOME} or  die "unable to change to home directoryi  \n $!";
} else {
	opendir DH, $dir or die " unable to change to directory $dir \n $!";
}

list_files();

sub list_files {
	my $dir_handler = shift;
	foreach my $file (sort readdir DH) {
					say "$file";
	}
}

