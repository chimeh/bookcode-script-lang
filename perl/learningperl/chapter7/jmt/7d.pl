#!/usr/bin/perl

#Make a program that prints each line that has a word
#that is capitalized but not ALL capitalized. Does it
#match Fred but neither fred nor FRED?

use strict;
use warnings;
use 5.014;

while(<>){
  if (/([a-z]+[A-Z]+)|([A-Z]+[a-z]+)/){
    print $_;
  }
}
