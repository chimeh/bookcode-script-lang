#!/usr/bin/perl -l00n
# olpod - outline pod
next unless /^=head/;
s/^=head(\d)\s+/ " " x ($1 * 4 - 4)/e;
print $_, "\n";
