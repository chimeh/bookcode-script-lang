#!/usr/bin/perl
# clockdrift - compare other systems' clocks with this one
#              without arguments, broadcast to anyone listening.
#              wait one-half second for an answer.

use v5.14;
use warnings;
use strict;
use Socket;

unshift(@ARGV, inet_ntoa(INADDR_BROADCAST))
    unless @ARGV;

socket(my $msgsock, PF_INET, SOCK_DGRAM, getprotobyname("udp"))
    || die "socket: $!";

# Some borked machines need this.  Shouldn't hurt anyone else.
setsockopt($msgsock, SOL_SOCKET, SO_BROADCAST, 1)
    || die "setsockopt: $!";

my $portno = getservbyname("time", "udp")
    || die "no udp time port";

for my $target (@ARGV) {
    print "Sending to $target:$portno\n";
    my $destpaddr = sockaddr_in($portno, inet_aton($target));
    send($msgsock, "x", 0, $destpaddr)
        || die "send: $!";
}

# daytime service returns 32-bit time in seconds since 1900
my $FROM_1900_TO_EPOCH = 2_208_988_800;
my $time_fmt = "N";   # and it does so in this binary format
my $time_len = length(pack($time_fmt, 1));  # any number's fine

my $inmask = q();  # string to store the fileno bits for select
vec($inmask, fileno($msgsock), 1) = 1;

# wait only half a second for input to show up
while (select(my $outmask = $inmask, undef, undef, 0.5)) {
    defined(my $srcpaddr = recv($msgsock, my $bintime, $time_len, 0))
        || die "recv: $!";
    my($port, $ipaddr) = sockaddr_in($srcpaddr);
    my $sendhost = sprintf "%s [%s]",
                    gethostbyaddr($ipaddr, AF_INET) || "UNKNOWN",
                    inet_ntoa($ipaddr);
    my $delta = unpack($time_fmt, $bintime) -
                      $FROM_1900_TO_EPOCH - time();
    print "Clock on $sendhost is $delta seconds ahead of this one.\n";
}
