#!/usr/bin/perl
use Module::CoreList;
use 5.012;

# defaults to 5.008 if no args provided
my $version = $ARGV[0] // '5.008';

my %modules = %{ $Module::CoreList::version{$version} } if exists($Module::CoreList::version{$version});
say join("\n",sort(keys(%modules)));

# get total of modules
my $count_mod = keys(%modules);
say '-' x 10 ;
say "$count_mod modules" ;
