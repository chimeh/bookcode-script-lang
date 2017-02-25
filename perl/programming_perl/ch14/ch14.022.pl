package Tie::Counter;
sub FETCH     { ++ ${ $_[0] } }
sub STORE     { ${ $_[0] } = $_[1] }
sub TIESCALAR {
    my ($class, $value) = @_;
    $value = 0 unless defined $value;
    bless \$value => $class;
}
1;  # if in module
