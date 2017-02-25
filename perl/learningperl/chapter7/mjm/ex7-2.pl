#! perl

# Chapter 7, Exercise 2

use strict;
use warnings;

while( <STDIN> ) {
    print if /fred/i;
}