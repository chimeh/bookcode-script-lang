#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

open STDOUT, '>', 'ls.out' or die "cannot read file ls.out: $!";
open STDERR, '>', 'ls.err' or die "cannot write to file ls.err: $!";

chdir '/';
system 'ls -l';

close STDOUT or die "error closing file: $!";
close STDERR or die "error closing file: $!";
