die "Can't readlink $sym: $!"
    unless defined($value = readlink $sym);
