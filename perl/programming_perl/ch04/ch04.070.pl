{ ... }
sub foo { ... }
...;
eval { ... };
... unless defined &dispatcher;
sub somemeth {
    my $self = shift;
    ...;
}
$x = do {
    my $n;
    ...;
    say "Hurrah!";
    $n;
};
