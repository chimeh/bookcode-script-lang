#! /usr/bin/perl
use warnings;
use 5.12.0;

while (<>) {
				chomp;
				if ( /match/ ) {
								say "Matched: |$`<$&>$' |";
				} else {
								say "No match: |$_|";
				}
								
}
