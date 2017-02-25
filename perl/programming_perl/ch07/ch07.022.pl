sub next_pitch {
    state $scale = ["A" .. "G"];
    state $note  = -1;
    return $scale->[ ($note += 1) %= @$scale ];
}
