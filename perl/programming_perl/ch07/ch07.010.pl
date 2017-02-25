($v3, $v4) = upcase($v1, $v2);
sub upcase {
    my @parms = map { uc } @_;
    # Check whether we were called in list context.
    return wantarray ? @parms : $parms[0];
}
