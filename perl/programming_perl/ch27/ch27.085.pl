# make divide-by-zero nonfatal
eval { $answer = $a / $b };     warn $@ if $@;

# same thing, but less efficient if run multiple times
eval '$answer = $a / $b';       warn $@ if $@;

# a compile-time syntax error (not trapped)
eval { $answer = };             # WRONG

# a runtime syntax error
eval '$answer =';               # sets $@
