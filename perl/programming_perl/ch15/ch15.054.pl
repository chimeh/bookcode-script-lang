#!/usr/bin/env perl
use v5.14;
use warnings;
use autodie;
use IO::Socket::IP;

my $remote_host = "localhost";
my $remote_port = "daytime";

my $socket = IO::Socket::IP->new(
                PeerAddr => $remote_host,
                PeerPort => $remote_port,
                Type     => SOCK_STREAM,
            );

my $familyname = ( $socket->sockdomain == AF_INET6 ) ? "IPv6" :
                 ( $socket->sockdomain == AF_INET  ) ? "IPv4" :
                                                     "unknown";

say "Connected to $remote_host:$remote_port via ", $familyname;

# send something over the socket: networks like CRLFs
print $socket "Why don't you call me anymore?\r\n";

# read the remote answer,
my $answer = <$socket> =~ s/\R\z//r;

say "Got answer: $answer";

# and terminate the connection when we're done.
close($socket);
