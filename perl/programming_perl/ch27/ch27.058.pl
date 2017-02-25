indir("funcname", @arglist);
sub indir {
    my $subname = shift;
    no strict "refs";  # so we can use subname indirectly
    if (defined &$subname) {
        &$subname(@_);    # or $subname->(@_);
    }
    else {
        warn "Ignoring call to invalid function $subname";
    }
}
