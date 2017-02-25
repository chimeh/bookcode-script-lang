LINE: while (my $line = <EMAIL>) {
    next LINE if $line =~ "\n";   # skip blank lines
    last LINE if $line =~ /^>/;   # stop on first quoted line
    # your ad here
}
