use Socket;
$port_number = 80;      # pretend we want to be a web server
$sockaddr = sockaddr_in($port_number, INADDR_ANY);
bind(SOCK, $sockaddr) || die "Can't bind $port_number: $!";
