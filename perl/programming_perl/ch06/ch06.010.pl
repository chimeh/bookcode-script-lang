binmode(STDIN,  ":encoding(CP1252)")
    || die "can't binmode to cp1252: $!";
binmode(STDOUT, ":encoding(UTF-8)")
    || die "can't binmode to UTF-8: $!";
