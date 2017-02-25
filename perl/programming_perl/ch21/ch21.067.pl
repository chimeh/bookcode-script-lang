use v5.10;

sub bark {
    my Dog $spot = shift;
    my $quality  = shift // "yapping";
    my $quantity = shift // "nonstop";
    ...
}
