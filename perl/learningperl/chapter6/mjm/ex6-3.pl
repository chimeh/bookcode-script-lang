#! perl

# Chapter 6, Exercise 3

use strict;
use 5.010;

# First pass: Find the length of the longest key to get the width of the key column.
my $key_col_width = 0;
foreach ( keys %ENV ) {
    if ( length( $_ ) > $key_col_width ) {
        $key_col_width = length( $_ );
    }
}

# Second pass: Print keys and values in columns.
foreach ( sort keys %ENV ) {
    printf "%${key_col_width}s\t%s\n", $_, $ENV{$_};
}