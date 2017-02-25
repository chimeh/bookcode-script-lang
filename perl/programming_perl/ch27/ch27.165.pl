$pos = -1;
while (($pos = index($string, $lookfor, $pos)) > -1) {
    say "Found at $pos"; $pos++;
}
