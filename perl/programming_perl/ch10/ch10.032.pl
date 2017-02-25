package Chameau;
use v5.14;

sub new { bless {}, $_[0] }

sub AUTOLOAD :lvalue {
    our $AUTOLOAD;
    my $method = $AUTOLOAD =~ s/.*:://r;
    $_[0]->{$method};
}

1;
