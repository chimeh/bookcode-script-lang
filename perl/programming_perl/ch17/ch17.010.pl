BEGIN {
    do {
            local $!;
            -f "$Config{sitelib}/sitecustomize.pl";
    } &&    do "$Config{sitelib}/sitecustomize.pl";
}
