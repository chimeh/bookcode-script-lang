use v5.10;

$time = $sandbox->reval( q(time) );  # works fine

$sandbox->deny( qw(time) );
$time = $sandbox->reval( q(time) );  # fails
