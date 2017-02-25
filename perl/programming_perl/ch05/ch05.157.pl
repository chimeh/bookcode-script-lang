for my $item (@data) {
    foreach $re (@regexes) {
        if ($item =~ /$re/) { ... }
    }
}
