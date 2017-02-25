while (<>) {
    say $1 if /^ \s* ( $funcall ) \s* ; \s* $/x;
}
