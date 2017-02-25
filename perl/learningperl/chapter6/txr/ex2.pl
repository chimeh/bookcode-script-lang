#!/usr/bin/perl
use 5.12.0;

chomp (my @names = <STDIN>);
my %name_freq = ();
foreach my $name (@names) {
	$name_freq{$name} = exists ($name_freq{$name})? $name_freq{$name} +=1 : 1;
}
foreach my $key (sort keys(%name_freq)) {
				printf "%25s : %s \n", $key, $name_freq{$key};
}
