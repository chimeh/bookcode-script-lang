#! perl

# Chapter 16, Exercise 2

use strict;

my $dir = "test";

chdir $dir;

open STDOUT, ">>ls.out";
open STDERR, ">>ls.err";

# Would be simpler to use system or exec,
# but I wanted to try capturing output from backquotes
my $stdout = `dir`;
print STDOUT $stdout;

close STDOUT;
close STDERR;
