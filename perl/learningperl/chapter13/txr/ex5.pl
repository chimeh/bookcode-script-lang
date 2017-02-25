#! /usr/bin/perl
use 5.014;
use File::Basename;
use File::Spec;

if ( @ARGV != 2) {
				usage();
				exit 1;
}

my $source_file = $ARGV[0];
my $target_file = $ARGV[1];

if ( -d  $target_file) {
				my $base_name = basename $source_file;
				rename $source_file, File::Spec->catfile($target_file, $base_name);
} else {
				rename $source_file, $target_file;
}




sub usage {
	say "$0 <sourcefile> <targetfile>";
}
