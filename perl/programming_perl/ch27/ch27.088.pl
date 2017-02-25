$editor = "/usr/bin/vi";
exec $editor "view", @files      # trigger read-only mode
    || die "Couldn't execute $editor: $!";
