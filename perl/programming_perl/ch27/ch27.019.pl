sub careful {
    my ($package, $filename) = caller;
    unless ($package  eq __PACKAGE__ && $filename eq __FILE__) {
        die "You weren't supposed to call me, $package!";
    }
    say "called me safely";
}

sub safecall {
    careful();
}
