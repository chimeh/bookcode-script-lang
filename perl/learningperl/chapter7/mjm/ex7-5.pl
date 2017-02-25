#! perl

# Chapter 7, Exercise 5

use strict;
use warnings;

while( <STDIN> ) {
    print if /(\S)\1/;
}