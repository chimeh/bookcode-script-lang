sub numtoname {
    local ($_) = @_;
    unless (defined $numtoname{$_}) {
        my(@a) = gethostbyaddr(pack("C4", split(/\./)),2);
        $numtoname{$_} = @a > 0 ? $a[0] : $_;
    }
    return $numtoname{$_};
}
