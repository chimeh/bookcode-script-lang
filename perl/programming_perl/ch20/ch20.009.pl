if ($string =~ /^([-\@\w.]+)$/) {
    $string = $1;                     # $string now untainted.
}
else {
    die "Bad data in $string";        # Log this somewhere.
}
