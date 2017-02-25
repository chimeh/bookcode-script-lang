use Carp qw(carp croak confess cluck);
use warnings;   # compile-time warnings

# at runtime, before you do anything else
$SIG{__WARN__} = sub { confess "FATALIZED WARNING: @_" };
