sub thefunc {
    my %args = (
        INCREMENT   => "10s",
        FINISH      => 0,
        START       => 0,
        @_,         # actual args override defaults
    );
    if ($args{INCREMENT} =~ /m$/ ) { ... }
    ...
}
