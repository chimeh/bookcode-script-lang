#!/usr/bin/perl
use 5.010;
use warnings;
use strict;


for( @ARGV ) {
  when( ! -e ) { say "$_ doesn't exist" }
  when( -w ) { say "$_ is writable"; continue }
  when( -r ) { say "$_ is readable"; continue }
  when( -x ) { say "$_ is executable" }
}
