#!/usr/bin/perl -p
1 while s/^(.*?)(\t+)/$1 . " " x (length($2) * 4 - length($1) % 4)/e;
