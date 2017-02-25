{
    my $fh;                   # (uninitialized)
    open $fh, ">", "logfile"  # $fh is autovivified
        or die "Can't create logfile: $!";
    ...                       # do stuff with $fh
}                             # $fh closed here
