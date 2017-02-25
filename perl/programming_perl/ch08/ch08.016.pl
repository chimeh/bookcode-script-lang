splutter(*STDOUT); splutter(*STDOUT{IO});

sub splutter {
    my $fh = shift; print $fh "her um well a hmmm\n";
}
