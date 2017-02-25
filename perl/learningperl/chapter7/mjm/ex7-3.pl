#! perl

# Chapter 7, Exercise 3

use strict;
use warnings;

while( <STDIN> ) {
    print if /\./i;
}