use v5.14;
use warnings;
use autodie;
use Socket;

my $remote_host = "localhost";
my $remote_port = 13;  # daytime service port

socket(my $socket, PF_INET, SOCK_STREAM, getprotobyname("tcp"));
my $internet_addr = inet_aton($remote_host);
my $paddr = sockaddr_in($remote_port, $internet_addr);

connect($socket, $paddr);
$socket->autoflush(1);

print $socket "Why don't you call me anymore?\r\n";
my $answer = <$socket> =~ s/\R\z//r;

say "Answer was: ", $answer;
