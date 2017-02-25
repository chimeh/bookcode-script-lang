#!/usr/bin/perl
use 5.014;

if ( @ARGV != 2) {
				usage();
				exit 1;
}

my $source_file = $ARGV[0];
my $target_file = $ARGV[1];

if (-d $source_file or -d $target_file ) {
				usage();
				exit 1;
}

link $source_file, $target_file;

sub usage {
	say "$0 <sourcefile> <targetfile>";
	say "\t\t neither sourcefile not targetfile can be directory";
}
