sub fc_eq($$) {
    my($a, $b) = @_;
    return $a =~ /\A\Q$b\E\z/i;
}
