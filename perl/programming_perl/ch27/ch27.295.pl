$pos = length $string;
while (($pos = rindex $string, $lookfor, $pos) >= 0) {
    say "Found at $pos";
    $pos--;
}
