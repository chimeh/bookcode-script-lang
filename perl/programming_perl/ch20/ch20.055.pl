if (not eval { "" =~ /$match/; 1 }) {
    # (Now do whatever you want for a bad pattern.)
}
else {
    # We know pattern is at least safe to compile.
    if ($data =~ /$match/) { ... }
}
