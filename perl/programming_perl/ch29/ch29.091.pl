use strict "subs";

$x = whatever;      # WRONG: bareword error!
$x = whatever();    # This always works, though.

sub whatever;       # Predeclare function.
$x = whatever;      # Now it's ok.

# These uses are permitted, because the => quotes:
%hash = (red => 1, blue => 2, green => 3);

$rednum =  $hash{red};              # Ok, braces quote here

# But not this one:
@coolnums = @hash{blue, green};     # WRONG: bareword error
@coolnums = @hash{"blue", "green"}; # Ok, words now quoted
@coolnums = @hash{qw/blue green/};  # Likewise
