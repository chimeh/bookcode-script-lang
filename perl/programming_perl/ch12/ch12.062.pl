use Data::Dumper;
use Carp;
sub UNIVERSAL::copy {
    my $self = shift;
    if (ref $self) {
        return eval Dumper($self);  # no CODE refs
    } else {
        confess "UNIVERSAL::copy can't copy class $self";
    }
}
