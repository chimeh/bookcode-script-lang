sub spawn {
    my $class =  shift;       # Store the package name
    my $self  =  { };
    bless($self, $class);     # Bless the reference into that package
    return $self;
}
