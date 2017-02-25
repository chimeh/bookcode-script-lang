my $a = $ok ? $b : $c;  # get a scalar
my @a = $ok ? @b : @c;  # get an array
my $a = $ok ? @b : @c;  # get a count of an array's elements
