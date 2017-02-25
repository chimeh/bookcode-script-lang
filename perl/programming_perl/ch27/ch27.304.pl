for (;;) {
    for ($curpos = tell FILE; <FILE>; $curpos = tell FILE) {
        grok($_);          # Process current line
    }
    sleep $for_a_while;
    seek FILE, $curpos, 0; # Reset end-of-file error
}
