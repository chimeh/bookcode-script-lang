#! perl

# Chapter 11, Exercise 1

use strict;

use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };

foreach ( sort keys %modules ) {
	print "$_\n";
}
