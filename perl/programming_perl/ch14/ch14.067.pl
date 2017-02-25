package ReversePrint 0.01 {
    use strict;
    sub TIEHANDLE {
        my $class = shift;
        bless [], $class;
    }
    sub PRINT {
        my $self = shift;
        push @$self, join("" => @_);
    }
    sub PRINTF {
        my $self = shift;
        my $fmt = shift;
        push @$self, sprintf($fmt, @_);
    }
    sub READLINE {
        my $self = shift;
        pop @$self;
    }
}

my $m = "--MORE--\n";
tie *REV, "ReversePrint";

# Do some prints and printfs.
print REV "The fox is now dead.$m";

printf REV <<"END", int rand 10000000;
The quick brown fox jumps
over the lazy dog %d times!
END

print REV <<"END";
The quick brown fox jumps
over the lazy dog.
END

# Now read back from the same handle.
print while <REV>;
