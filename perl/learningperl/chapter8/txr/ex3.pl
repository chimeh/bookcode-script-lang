#! /usr/bin/perl
use warnings;
use 5.12.0;

while (<>) {
				chomp;
				if ( /\b(\w*a)\b/ ) {
								say "Matched: |$`<$&>$' |";
								say "\$1 contains '$1'";
				} else {
								say "No match: |$_|";
				}
								
}
