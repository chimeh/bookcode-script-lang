while (<FILE>) {
    print if /http:/;
}
