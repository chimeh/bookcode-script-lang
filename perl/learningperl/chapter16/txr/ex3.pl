#! /usr/bin/perl
use 5.014;

my $date = `date`;
print $date;
#we could have use 'date +%a' to avoid the regex hassle
my ($day) = $date =~ /(\w+)\s.*/;
given ($day) {
	when ( /(?:Sun)|(?:Sat)/) {
		say 'go play';
	}
	default  {
		say 'get to work';
	}
}
