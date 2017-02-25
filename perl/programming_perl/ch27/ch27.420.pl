@bits = (0,0,1,0, 1,0,1,0, 1,1,0,0, 0,0,1,0);

$bitstring = "";
$offset = 0;

for my $bit (@bits) {
    vec($bitstring, $offset++, 1) = $bit;
}

say $bitstring";        # "TC", ie. '0x54', '0x43'
