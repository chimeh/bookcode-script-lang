package Critter;
sub spawn {
    my     $self = {};       # Reference to an empty anonymous hash
    bless  $self, "Critter"; # Make that hash a Critter object
    return $self;            # Return the freshly generated Critter
}
