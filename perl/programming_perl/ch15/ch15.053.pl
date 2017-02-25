$socket = IO::Socket::INET->new("www.yahoo.com:80")
    or die "Couldn't connect to port 80 of yahoo: $!";
