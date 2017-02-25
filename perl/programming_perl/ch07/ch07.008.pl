upcase_in($v1, $v2);  # this changes $v1 and $v2
sub upcase_in {
    for (@_) { $_ = uc($_) }
}
