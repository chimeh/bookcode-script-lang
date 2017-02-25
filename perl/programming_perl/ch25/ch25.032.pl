sub handler {
    my $sig = shift;   # 1st argument is signal name
    syswrite STDERR, "Caught a SIG$sig--shutting down\n";
                       # Avoid standard I/O in async handlers 
                       # to suppress core dumpage. (Even that
                       # string concat is risky.)
    close LOG;         # This calls standard I/O, so 
                       # may dump core anyway!
    exit 1;            # But since we're exiting, no 
                       # harm in trying
}

$SIG{INT}  = \&handler;
$SIG{QUIT} = \&handler;
...
$SIG{INT}  = "DEFAULT";    # restore default action
$SIG{QUIT} = "IGNORE";     # ignore SIGQUIT
