use v5.14;
package Mule;
use mro 'c3';
use parent qw(Horse Donkey);
sub kick {
    my $self = shift;
    say "The mule kicks!";
    $self->next::method(@_);
}
