exec { "/usr/bin/vi" } "view", @files      # trigger read-only mode
    || die "Couldn't execute /usr/bin/vi: $!";
