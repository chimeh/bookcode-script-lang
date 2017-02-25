#!/usr/bin/perl

#Extra credit exercise: write a program that prints
#out any input line that mentions both wilma and fred.

use strict;
use warnings;
use 5.014;

while(<>){
  if (/wilma/ && /fred/){
    print $_;
  }
}
