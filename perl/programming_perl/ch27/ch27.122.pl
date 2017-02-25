use Socket;
$ipaddr = inet_aton("127.0.0.1");       # localhost
$claimed_hostname = gethostbyaddr($ipaddr, AF_INET);
