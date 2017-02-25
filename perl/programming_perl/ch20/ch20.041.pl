use Safe;
my $sandbox = Safe->new();
$sandbox->reval( q($master = 'Gary Gygax') );
