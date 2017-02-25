use Socket;
$hersockaddr      = getpeername SOCK;
($port, $heraddr) = sockaddr_in($hersockaddr);
$herhostname      = gethostbyaddr($heraddr, AF_INET);
$herstraddr       = inet_ntoa($heraddr);
