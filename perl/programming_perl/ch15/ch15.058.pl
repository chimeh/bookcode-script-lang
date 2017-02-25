#!/usr/bin/env perl

use v5.14;
use warnings;
use autodie;
use Socket;

my $server_port = 12345;  # pick a number

# make the socket
socket(my $server, PF_INET, SOCK_STREAM, getprotobyname("tcp"));

# so we can restart our server quickly
setsockopt($server, SOL_SOCKET, SO_REUSEADDR, 1);

# build up my socket address
my $own_addr = sockaddr_in($server_port, INADDR_ANY);
bind($server, $own_addr);

# establish a queue for incoming connections
listen($server, SOMAXCONN);

# accept and process connections
while (accept(my $client, $server)) {
    # do something with new client connection in $client
} continue {
    close $client;
}

close($server);
