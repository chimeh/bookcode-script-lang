configuration(PASSWORD => "xyzzy", VERBOSE => 9, SCORE => 0);

sub configuration {
    my %options = @_;
    print "Maximum verbosity.\n" if $options{VERBOSE} == 9;
}
