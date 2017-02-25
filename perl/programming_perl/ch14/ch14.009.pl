sub TIESCALAR {           # in ScalarFile.pm
    my $class    = shift;
    my $filename = shift;
    $count++;             # A file-scoped lexical, private to class
    return bless \$filename, $class;
}
