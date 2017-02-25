sub unimplemented { ... }
eval { unimplemented() };
if ($@ =~ /^Unimplemented/) {
    say "Caught an Unimplemented exception!";
}
