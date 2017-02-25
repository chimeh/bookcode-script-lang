sub debug {
    my $invocant = shift;
    my $class   = ref($invocant) || $invocant;
    my $varname = $class . "::Debugging";
    no strict "refs";       # to access package data symbolically
    $$varname = shift if @_;
    return $$varname;
}
