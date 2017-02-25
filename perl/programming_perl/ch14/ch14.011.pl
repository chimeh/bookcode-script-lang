sub TIESCALAR {           # in ScalarFile.pm
    my $class    = shift;
    my $filename = shift;
    my $fh;
    if ( -r -w $filename ) {
        close $fh;
        $count++;
        return bless \$filename, $class;
    }
    carp "Can't tie $filename: $!" if warnings::enabled();
    return;
}
