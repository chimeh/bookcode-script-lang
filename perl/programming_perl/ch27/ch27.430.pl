# wipe out *all* compile-time warnings
BEGIN { $SIG{__WARN__} = sub { warn $_[0] if $DOWARN } }
my $foo = 10;
my $foo = 20;          # no warning about duplicate my $foo,
                       # but hey, you asked for it!

# no compile-time or runtime warnings before here
$DOWARN = 1;           # *not* a built-in variable

# runtime warnings enabled after here
warn "\$foo is alive and $foo!";     # does show up
