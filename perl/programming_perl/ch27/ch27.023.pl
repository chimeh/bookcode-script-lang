chmod(0755, @executables) == @executables
        || die "couldn't chmod some of @executables: $!";
