use IO::Socket::INET;

$server = IO::Socket::INET->new(LocalPort => $server_port,
                                Type      => SOCK_STREAM,
                                Reuse     => 1,
                                Listen    => 10 )   # or SOMAXCONN
    || die "Couldn't be a tcp server on port $server_port: $!\n";

while ($client = $server->accept()) {
    # $client is the new connection
}

close($server);
