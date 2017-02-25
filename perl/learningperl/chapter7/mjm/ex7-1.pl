#! perl

# Chapter 7, Exercise 1

use strict;
use warnings;

while( <STDIN> ) {
    print if /fred/;
}