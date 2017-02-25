while (<PASSWD>) {
    chomp;   # avoid \n on last field
    @array = split /:/;
    ...
}
