#! /usr/bin/perl
use 5.014;

my %sig_counter = {};
foreach my $sig (keys(%SIG)) {
	$SIG{$sig} = \&signal_counter;
}

while(1) {
}

sub signal_counter {
	my $sign = shift;
	say "received signal $sign";
	$sig_counter{$sign}++;
	say "received $sign $sig_counter{$sign} times"; 
	if ( $sign ~~ 'INT') {
			die 'die as INT received';
	}
}
