#! perl

# Chapter 7, Exercise 6

use strict;
use warnings;

while( <STDIN> ) {
    print if /(fred.*wilma)|(wilma.*fred)/;
}