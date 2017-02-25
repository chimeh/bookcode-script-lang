#! /usr/bin/perl
open STDOUT, '>', 'ls.out';
open STDERR, '>', 'ls.err';
chdir '/';
system 'ls -l' ;
