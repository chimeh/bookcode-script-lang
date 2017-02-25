REQUEST:
 while (accept(my $client => $server)) {
     if ($kidpid = fork) {
         close $client;         # parent closes unused handle
         next REQUEST;
     }
     defined($kidpid)   || die "cannot fork: $!";

     close $server;             # child closes unused handle

     $client->autoflush(1);

     # per-connection child code does I/O with Client handle
     $input = <$client>;
     print $client "output\n";  # or STDOUT, same thing

     open(STDIN,  "<&", $client)    || die "can't dup client: $!";
     open(STDOUT, ">&", $client)    || die "can't dup client: $!";
     open(STDERR, ">&", $client)    || die "can't dup client: $!";

     # run the calculator, just as an example
     system("bc -l");     # or whatever you'd like, so long as
                          # it doesn't have shell escapes!
     print "done\n";      # still to client

     close $client;
     exit;  # don't let the child back to accept!
 }
