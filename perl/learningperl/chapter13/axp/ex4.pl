use 5.012;
use warnings;

die "No files listed\n" unless @ARGV;
unlink || warn "Couldn't remove $_: $!\n" foreach @ARGV;
