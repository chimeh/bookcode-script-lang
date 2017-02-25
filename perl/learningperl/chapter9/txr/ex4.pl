#! /usr/bin/perl
use 5.12.0;

$^I = ".backup";
while (<>) {
	s/(^#!(.*)$)/$1\n## Copyright (C) 2015 by txr/i;
	print;
}
