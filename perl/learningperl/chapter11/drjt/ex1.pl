#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

use Module::CoreList ();

my %modules = %{ $Module::CoreList::version{5.014} };

foreach my $module (keys %modules) {
  print "$module - $modules{$module}\n" if defined $module;
}
