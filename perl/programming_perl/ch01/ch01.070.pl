for my $user (@users) {
    if (-f "$home{$user}/.nexrc") {
        say "$user is cool... they use a perl-aware vi!";
    }
}
