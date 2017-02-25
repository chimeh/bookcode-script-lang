use Socket;

my ($remote, $port) = ("www.perl.com", 80);
my $destaddr = sockaddr_in($port, inet_aton($remote));
connect(SOCK, $destaddr)
    || die "Can't connect to $remote at port $port: $!";
