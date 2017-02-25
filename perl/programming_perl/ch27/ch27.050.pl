$pwd = (getpwuid ($<))[1];    # Assumes we're on Unix

system "stty -echo";   # or look into Term::ReadKey on CPAN
print "Password: ";
chomp($word = <STDIN>);
print "\n";
system "stty echo";

if (crypt($word, $pwd) ne $pwd) {
    die "Sorry...\n";
} else {
    say "ok";
}
