use strict;
package Tie::DevNull;

    sub TIEHANDLE {
        my $class = shift;
        my $fh = local *FH;
        bless \$fh, $class;
    }
    for (qw(READ READLINE GETC PRINT PRINTF WRITE)) {
        no strict "refs";
        *$_  = sub { return };
    }

package Tie::DevRandom;

    sub READLINE { rand() . "\n" }
    sub TIEHANDLE {
        my $class = shift;
        my $fh = local *FH;
        bless \$fh, $class;
    }

    sub FETCH { rand() }
    sub TIESCALAR {
        my $class = shift;
        bless \my $self, $class;
    }

package Tie::Tee;

    sub TIEHANDLE {
        my $class = shift;
        my @handles;
        for my $path (@_) {
            open(my $fh, ">$path") || die "can't write $path";
            push @handles, $fh;
        }
        bless \@handles, $class;
    }

    sub PRINT {
        my $self = shift;
        my $ok = 0;
        for my $fh (@$self) {
            $ok += print $fh @_;
        }
        return $ok == @$self;
    }
