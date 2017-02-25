This is a regular paragraph

#!/usr/bin/perl
use v5.14;
for (@ARGV) {
    state $count = 0;
    say $count++, " ", $_;
}

This is another regular paragraph
