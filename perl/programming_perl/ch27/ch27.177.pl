for my $key (sort keys %ENV) {
    say $key, "=", $ENV{$key};
}
