while (my $line = <STDIN>) {
    $line = lc $line;
}
continue {
    print $line;   # still visible
}
# $line now out of scope here
