while (<>) {
    chomp;
    if (s/\\$//) {
        $_ .= <>;
        redo unless eof;    # don't read past each file's eof
    }
    # now process $_
}
