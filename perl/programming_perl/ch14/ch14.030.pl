#!/usr/bin/perl
package ClockArray;
use Tie::Array;
our @ISA = "Tie::StdArray";
sub FETCH {
    my($self,$place) = @_;
    $self->[ $place % 12 ];
}
sub STORE {
    my($self,$place,$value) = @_;
    $self->[ $place % 12 ] = $value;
}

package main;
tie my @array, "ClockArray";
@array = ( "a" ... "z" );
print "@array\n";
