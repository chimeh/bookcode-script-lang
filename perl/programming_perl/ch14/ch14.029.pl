package underscore;
use warnings;
use strict;
use Carp ();
our $VERSION = sprintf "%d.%02d", q$Revision: 0.1 $ =~ /(\d+)/g;

sub TIESCALAR{
    my ($pkg, $code, $msg) = @_;
    bless [$code, $msg], $pkg;
}

sub unimport {
    my $pkg    = shift;
    my $action = shift;
    no strict "refs";
    my $code = ref $action
                ? $action
                : ($action
                    ? \&{ "Carp::" . $action }
                    : \&Carp::croak
                  );
    my $msg = shift || '$_ is forbidden';
    untie $_ if tied $_;
    tie $_, __PACKAGE__, $code, $msg;
}

sub import{  untie $_ }

sub FETCH{ $_[0]->[0]($_[0]->[1]) }
sub STORE{ $_[0]->[0]($_[0]->[1]) }

1; # End of underscore
