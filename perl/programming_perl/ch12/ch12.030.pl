sub spawn {
    my $invocant = shift;
    my $class    = ref($invocant) || $invocant;  # Object or class name
    my $self     = { };
    bless($self, $class);
    return $self;
}
