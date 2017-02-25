use Errno qw(EAGAIN);
FORK: {
    if ($pid = fork) {
        # parent here
        # child process pid is available in $pid
    }
    elsif (defined $pid) { # $pid is zero here if defined
        # child here
        # parent process pid is available with getppid
    }
    elsif ($! == EAGAIN) {
        # EAGAIN is the supposedly recoverable fork error
        sleep 5;
        redo FORK;
    }
    else {
        # weird fork error
        die "Can't fork: $!";
    }
}
