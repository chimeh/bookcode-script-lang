sub get_method_ref {
    my ($self, $methodname) = @_;
    my $methref = sub {
        # the @_ below is not the same as the one above!
        return $self->$methodname(@_);
    };
    return $methref;
}

my $dog = new Doggie::
            Name => "Lucky",
            Legs => 3,
            Tail => "clipped";

our $wagger = get_method_ref($dog, "wag");
$wagger->("tail");        # Calls $dog->wag("tail").
