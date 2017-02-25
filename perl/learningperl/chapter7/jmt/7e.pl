#!/usr/bin/perl

#Make a program that prints each line that has a two of the
#same nonwhitespace characters next to each other. It should
#match lines that contain words such as Mississippi,
#Bamm-Bamm, or llama.

use strict;
use warnings;
use 5.014;

while(<>){
  if (/(\S)\1/){
    print $_;
  }
}
