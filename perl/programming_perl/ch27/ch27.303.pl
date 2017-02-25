for (;;) {
    while (<LOG>) {
        grok($_);          # Process current line
    }
    sleep 15;
    seek LOG, 0, 1;        # Reset end-of-file error
}
