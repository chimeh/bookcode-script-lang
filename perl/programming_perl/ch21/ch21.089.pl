#!/usr/bin/perl
use Filter::exec "a2p";         # the awk-to-perl translator
1,30 { print $1 }
