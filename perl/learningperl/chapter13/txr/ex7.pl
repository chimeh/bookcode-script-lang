#!/usr/bin/perl
use 5.014;
use Getopt::Std;

my %opts = {};
getopts('s',\%opts);

usage() and exit 1  if ( @ARGV != 2) ;

my ( $source_file, $target_file )  = @ARGV;

usage() and exit 1 if (-d $source_file or -d $target_file );

if ($opts{s}) {
	symlink $source_file, $target_file;
} else {
	link $source_file, $target_file;
}

sub usage {
	say "$0 <sourcefile> <targetfile>: ";
	say "\t neither sourcefile not targetfile can be a directory";
}
