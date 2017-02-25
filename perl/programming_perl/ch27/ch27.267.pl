while (read(FROM, $buf, 16384)) {
    print TO $buf;
}
