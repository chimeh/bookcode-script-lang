for my $item (@data) {
    for my $pat (@patterns) {
        if ($item =~ /$pat/) { ... }
    }
}
