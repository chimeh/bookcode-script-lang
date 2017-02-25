# This is just so totally cool!
use overload q("") => sub { $_[0]->pathname };

# This is the stub to put in each function you want to trace.
sub trace {
    my $self = shift;
    local $Carp::CarpLevel = 1;
    Carp::cluck("\ntrace magical method") if $self->debug;
}

# Overload handler to print out our path.
sub pathname {
    my $self = shift;
    confess "i am not a class method" unless ref $self;
    $$self->{PATHNAME} = shift if @_;
    return $$self->{PATHNAME};
}
# Dual moded.
sub debug {
    my $self = shift;
    my $var = ref $self ? \$$self->{DEBUG} : \our $Debug;
    $$var = shift if @_;
    return ref $self ? $$self->{DEBUG} || $Debug : $Debug;
}
