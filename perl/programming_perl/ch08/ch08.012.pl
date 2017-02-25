splutter(\*STDOUT);

sub splutter {
    my $fh = shift;
    say $fh "her um well a hmmm";
}

$rec = get_rec(\*STDIN);
sub get_rec {
    my $fh = shift;
    return scalar <$fh>;
}
