while (@files) {
    my $file = shift(@files);
    unlink($file) || warn "Can't delete $file: $!";
}
