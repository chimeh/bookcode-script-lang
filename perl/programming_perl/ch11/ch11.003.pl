package Person;
use Moose;

has "first_name" => (is => "rw", isa => "Str");
has "last_name"  => (is => "rw", isa => "Str");

sub full_name {
    my $self = shift;
    $self->first_name . " " . $self->last_name
}

no Moose; # keywords are removed from the Person package
