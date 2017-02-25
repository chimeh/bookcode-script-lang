sub FETCH {
     my $self  = shift;
     confess "I am not a class method" unless ref $self;
     return unless open my $fh, $$self;
     read($fh, my $value, -s $fh);  # NB: don't use -s on pipes!
     return $value;
 }
