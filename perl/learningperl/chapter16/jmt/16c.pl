#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

my $now = `date '+%u'`;
$now < 6 ? print "get to work\n" : print "go play\n";
