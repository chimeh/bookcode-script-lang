my @array = qw(red blue green);
my $nested_array = [[[[[[[ @array ]]]]]]];
say "red in array" if "red" ~~ $nested_array;
