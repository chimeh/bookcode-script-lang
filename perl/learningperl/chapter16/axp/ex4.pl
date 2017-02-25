use 5.012;
use warnings;

$SIG{$_} = \&trapperKeeper for keys %SIG;
my %sigCount = ();

1 while 1; # Oh, Perl.

sub trapperKeeper {
    my $sig = shift;
    say "I've now seen "  . ++$sigCount{$sig} . " instances of signal $sig";
    exit if ( $sig eq 'INT' );
}
