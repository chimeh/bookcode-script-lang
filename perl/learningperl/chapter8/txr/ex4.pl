#! /usr/bin/perl
use warnings;
use 5.12.0;

my $name = "word";
while (<>) {
				chomp;
				if ( /\b(?<$name>\w*a)\b/ ) {
								say "Matched: |$`<$&>$' |";
								say "'$name' contains '$+{$name}'";
				} else {
								say "No match: |$_|";
				}
								
}
