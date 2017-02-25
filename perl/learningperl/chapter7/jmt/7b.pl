#!/usr/bin/perl

#Modify the previous program to allow Fred to match as well.
#Does it match now if your input string is Fred, frederick,
#or Alfred? (Add lines with these names to the text file.)

use strict;
use warnings;
use 5.014;

while(<>){
  if (/[fF]red/){
    print $_;
  }
}
