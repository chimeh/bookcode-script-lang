$pet = Beast->new(TYPE => "cougar", NAME => "Clyde");

# then in Beast.pm:
sub new {
    my $class  = shift;
    my %attrs = @_;
    my $self   = { %attrs };
    return bless($self, $class);
}
