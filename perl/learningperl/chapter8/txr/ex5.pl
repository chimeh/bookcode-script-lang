#! /usr/bin/perl
use warnings;
use 5.12.0;

my $name = "word";
while (<>) {
				chomp;
				if ( /\b(?<$name>\w*a)\b(?<char5>.{0,5})/ ) {
								say "Matched: |$`<$&>$' |";
								say "'$name' contains '$+{$name}'";
								say "'char5' contains '$+{char5}'";
				} else {
								say "No match: |$_|";
				}
								
}
