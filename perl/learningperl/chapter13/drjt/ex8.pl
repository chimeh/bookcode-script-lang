#!/usr/bin/perl
use 5.010;
use warnings;
use strict;


foreach my $file ( <*> ) {
printf( "%s -> %s\n", $file, readlink $file // 'target does not exist' ) if -l $file;
}
