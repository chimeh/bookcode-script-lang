#!/usr/bin/perl

use strict;
use warnings;
use 5.014;
foreach (@ARGV){
    when (-r $_) {say "Readable"; continue;}
    when (-w $_) {say "Writeable"; continue;}
    when (-x $_) {say "Executable";}
}