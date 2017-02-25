sub new {
    my $invocant = shift;
    my $class = ref($invocant) || $invocant;
    my $self = { @_ };          # Remaining args become attributes
    bless($self, $class);       # Bestow objecthood
    return $self;
}
