$sandbox->deny( qw(:base_math) );
my $time = $sandbox->reval( 'log(10)' );  # fails
