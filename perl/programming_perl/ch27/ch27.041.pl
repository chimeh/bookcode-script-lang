sub chown_by_name {
    my($user, @files) = @_;
    chown((getpwnam($user))[2,3], @files) == @files
            || die "can't chown @files: $!";
}

chown_by_name("fred", glob("*.c"));
