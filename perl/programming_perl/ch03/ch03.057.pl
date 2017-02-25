my $pid = fork() // die "Can't fork: $!";
if ($pid) {
    # parent code here
    ...
    wait $pid;
} else {
    # child code here
    ...
    exit;
}
