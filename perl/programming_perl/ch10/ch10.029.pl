sub AUTOLOAD {
    my $program = our $AUTOLOAD;
    $program =~ s/.*:://;  # trim package name
    system($program, @_);
}
