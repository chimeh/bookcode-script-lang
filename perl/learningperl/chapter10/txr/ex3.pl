#!/usr/bin/perl
use 5.12.0;
use List::Util qw(reduce);

$ENV{ABC} = undef;
my $max_length = max_length(keys(%ENV));

foreach my $key ( sort (keys (%ENV))) {
				printf "%-${max_length}s = %s\n",  $key, $ENV{$key}// '(undefined value)' ;
}

sub max_length {
				return length(reduce { length ($a) > length ($b) ? $a : $b } @_);
}
