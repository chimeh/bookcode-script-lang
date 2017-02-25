use utf8;
use v5.10;

package complex;
use strict;
use warnings;
use Carp;

sub complex_sqrt {
    my $number = shift;
    if (complex::in_effect()) {
        my $root = CORE::sqrt(abs($number));
        $root .= "i" if $number < 0;
        return $root;
    }
    else {
        croak("Can't take sqrt of $number") if $number < 0;
        CORE::sqrt($number)
    }
}

sub import {
    $^H{complex} = 1;
    my($package) = (caller(1))[0];
    no strict "refs";
    *{ "${package}::sqrt" } = \&complex::complex_sqrt;
}

sub unimport {
    $^H{complex} = 0;
}

sub in_effect {
    my $hints = (caller(1))[10];
    return $hints->{complex};
}

1;
