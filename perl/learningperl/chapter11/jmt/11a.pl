#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

use Data::Dumper;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };

print Dumper(\%modules);