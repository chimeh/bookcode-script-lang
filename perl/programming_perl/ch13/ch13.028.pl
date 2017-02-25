package DigitDoubler;    # A module to be placed in DigitDoubler.pm
use overload;

sub import { overload::constant ( integer => \&handler,
                                  float   => \&handler ) }

sub handler {
    my ($orig, $interp, $context) = @_;
    return $interp * 2;          # double all constants
}

1;
