for ($string) {
    s/^\s+//;       # discard leading whitespace
    s/\s+$//;       # discard trailing whitespace
    s/\s+/ /g;      # collapse internal whitespace
}
