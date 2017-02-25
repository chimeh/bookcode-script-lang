$num_elements = length($bitstring)*2;  # 2 elements per byte

for my $offset (0 .. $num_elements-1) {
    say vec($bitstring, $offset, 4);
}
