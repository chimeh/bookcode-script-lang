# A loop that joins lines continued with a backslash
while (<STDIN>) {
    if (s/\\\n$// && defined($nextline = <STDIN>)) {
        $_ .= $nextline;
        redo;
    }
    print;  # or whatever...
}
