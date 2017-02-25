#! perl

# Chapter 7, Exercise 4

use strict;
use warnings;

while( <STDIN> ) {
    print if /[A-Z][a-z]+/;
}