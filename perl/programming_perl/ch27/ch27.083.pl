print "\nEnter some Perl code: ";

while (<STDIN>) {
    eval;
    print $@;
    print "\nEnter some more Perl code: ";
}
