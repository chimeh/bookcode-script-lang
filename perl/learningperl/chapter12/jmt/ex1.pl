#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

foreach my $file (@ARGV) {
  report($file);
}

sub report {
  my $file = shift;
  if (! -e $file){
    say "File $file doesn't exist.";
    exit;
  }
  my $readable_result = -r $file ? "" : " not";
  my $writeable_result = -w $file ? "" : " not";
  my $executable_result = -x $file ? "" : " not";
  say "File $file is$readable_result readable!";
  say "File $file is$writeable_result writeable!";
  say "File $file is$executable_result executable!";
}
