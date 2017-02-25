use Socket qw(:all);
@addr_structs = getaddrinfo("127.0.0.1");   # IPv4 loopback
@addr_structs = getaddrinfo("207.171.7.72");

@addr_structs = getaddrinfo("::1");         # IPv6 loopback
@addr_structs = getaddrinfo("e80::223:12ff:fe58:714c");
