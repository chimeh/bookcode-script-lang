my $i;
my $bit;
for ($i = 0, $bit = 0; $i < 32; $i++, $bit <<= 1) {
    say "Bit $i is set" if $mask & $bit;
}
# the values in $i and $bit persist past the loop
