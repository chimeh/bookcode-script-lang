tee("/tmp/foo", "/tmp/bar", "/tmp/glarch");

while (<>) {
    print "$ARGV at line $. => $_";
}
close(STDOUT)  || die "can't close STDOUT: $!";

sub tee {
    my @output = @_;
    my @handles = ();
    for my $path (@output) {
        my $fh;  # open will fill this in
        unless (open ($fh, ">", $path)) {
            warn "cannot write to $path: $!";
            next;
        }
        push @handles, $fh;
    }

    # reopen STDOUT in parent and return
    return if my $pid = open(STDOUT, "|-");
    die "cannot fork: $!" unless defined $pid;

    # process STDIN in child
    while (<STDIN>) {
        for my $fh (@handles) {
            print $fh $_ || die "tee output failed: $!";
        }
    }
    for my $fh (@handles) {
        close($fh) || die "tee closing failed: $!";
    }
    exit;  # don't let the child return to main!
}
