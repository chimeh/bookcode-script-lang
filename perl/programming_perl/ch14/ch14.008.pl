package ScalarFile;
use Carp;                # Propagate error messages nicely.
use strict;              # Enforce some discipline on ourselves.
use warnings;            # Turn on lexically scoped warnings.
use warnings::register;  # Allow user to say "use warnings 'ScalarFile'".
my $count = 0;           # Internal count of tied ScalarFiles.
