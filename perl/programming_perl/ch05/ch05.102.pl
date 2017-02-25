#!/usr/bin/perl
use feature "say";
$alphabet = "abcdefghijklmnopqrstuvwxyz";
$alphabet =~ /(hi).*(stu)/;

say "The entire match began at $-[0] and ended at $+[0]";
say "The first  match began at $-[1] and ended at $+[1]";
say "The second match began at $-[2] and ended at $+[2]";
