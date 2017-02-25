use 5.012;
use warnings;

foreach ( @ARGV ) {
    print "$_:\t";
    say "doesn't exist" and next if !-e $_;
    say join( "/",
	      -r _ ? 'r' : (),
	      -w _ ? 'w' : (),
	      -x _ ? 'x' : () ) || 'no perms';
}
