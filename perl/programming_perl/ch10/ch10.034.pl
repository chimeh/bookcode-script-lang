package Trampeltier;

sub new { bless {}, $_[0] }
sub AUTOLOAD :lvalue { no strict 'refs'; *{$AUTOLOAD} }

1;
