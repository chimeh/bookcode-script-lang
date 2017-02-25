for (my ($i, $bit) = (0, 1); $i < 32; $i++, $bit <<= 1) {
    say "Bit $i is set" if $mask & $bit;
}
# loop's versions of $i and $bit now out of scope
