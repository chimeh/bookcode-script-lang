unless (kill 0 => $kid_pid) {
    warn "something wicked happened to $kid_pid";
}
