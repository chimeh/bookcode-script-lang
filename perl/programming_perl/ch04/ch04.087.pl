use v5.14;
sub next_count {
    state $counter = 0;  # first time through, only
    return ++$counter;
}
