my @array = (1, 2, 3, undef, 4, 5);
say "some elements undefined" if undef ~~ @array;
