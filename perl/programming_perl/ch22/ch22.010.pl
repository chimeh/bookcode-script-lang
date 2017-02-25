open(MAIL, "|/usr/lib/sendmail -t") || die "cannot fork sendmail: $!";
