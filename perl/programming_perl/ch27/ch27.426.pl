return unless defined wantarray;    # don't bother doing more
my @a = complex_calculation();
return wantarray ? @a : \@a;
