BEGIN {
    my @scale = ("A" .. "G");
    my $note  = -1;
    sub next_pitch { return $scale[ ($note += 1) %= @scale ] };
}
