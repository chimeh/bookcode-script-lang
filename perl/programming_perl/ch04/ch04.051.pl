unless (open FILE, '<', $file) {
     warn "Can't open $file: $!\n";
     next FILE;
}
