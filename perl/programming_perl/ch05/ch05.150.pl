#!/usr/bin/perl
$pattern = shift;
while (<>) {
    print if /$pattern/;
}
