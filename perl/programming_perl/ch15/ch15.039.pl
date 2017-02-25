badfunc("arg");                       # drat, escaped!
$string = forksub(\&badfunc, "arg");  # caught it as string
@lines  = forksub(\&badfunc, "arg");  # as separate lines

sub forksub {
    my $kidpid = open my $self, "-|";
    defined $kidpid         || die "cannot fork: $!";
    shift->(@_), exit       unless $kidpid;
    local $/                unless wantarray;
    return <$self>;         # closes on scope exit
}
