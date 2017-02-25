#!/usr/bin/perl
# rename - change filenames
$op = shift;
for (@ARGV) {
    $was = $_;
    eval $op;
    die if $@;
    # next line calls the built-in function, not 
    # the script by the same name
    rename($was,$_) unless $was eq $_;
}
