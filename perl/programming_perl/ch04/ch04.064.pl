for ($very_nasty_long_name[$i++][$j++]->method()) {
    /this pattern/      and do { push @flags, "-e"; last };
    /that one/          and do { push @flags, "-h"; last };
    /something else/    and do {                    last };
    die "unknown value: '$_'";
}
