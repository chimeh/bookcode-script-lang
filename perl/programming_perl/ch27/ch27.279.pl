if (ref($r) eq "HASH") {
    say "r is a reference to a hash.";
}
elsif (ref($r) eq "Hump") {    # Naughty—see below
    say "r is a reference to a Hump object.";
}
elsif (not ref $r) {
    say "r is not a reference at all.";
}
