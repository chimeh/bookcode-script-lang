#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

open (STDOUT, '>', 'ls.out') or die "Could not redirect stdout: $!";
open (STDERR, '>', 'ls.err') or die "Could not redirect stderr: $!";
chdir "..";
system 'ls -l';
