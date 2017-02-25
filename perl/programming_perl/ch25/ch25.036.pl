use Carp;
$SIG{__DIE__} = sub { confess "$0: UNCAUGHT EXCEPTION: @_" unless $^S };
