while (my $line = <FILE>) {
    if ($line =~ /http:/) {
        print $line;
    }
}
