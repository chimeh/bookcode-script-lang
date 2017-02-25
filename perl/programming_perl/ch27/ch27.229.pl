my $pid = open(FROM_CHILD, "-|") // die "can't fork: $!";

if ($pid) {
    @parent_lines = <FROM_CHILD>;  # parent code
}
else {
    print STDOUT @child_lines;     # child code
    exit;
}
