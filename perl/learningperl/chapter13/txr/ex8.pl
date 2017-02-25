#! /usr/bin/perl
use 5.014;

say ( "$_ -> ", readlink $_ ) foreach grep { readlink $_ } sort glob ".* *";
