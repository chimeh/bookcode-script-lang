#!/usr/bin/perl

use 5.014;

say "this deletes files passed as arguments, proceed at your own risk!, ctrl-c to quit now";
my $a = <STDIN>;
foreach my $file (@ARGV) {
	say "deleting $file";
  unlink $file or die "unable to delete file $file \n $!";
}
