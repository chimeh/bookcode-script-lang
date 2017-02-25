use 5.012; # Implies strict
use warnings;

greet( "Fred" );
greet( "Barney" );
greet();

sub greet {
  state $last_gret; # This should totally be the past tense of 'greet'.
  my $name = shift @_ || "random stranger";

  if ( $last_gret ) {
    say "Hi $name! $last_gret is also here!";
  }
  else {
    say "Hi $name! You are the first one here!";
  }

  $last_gret = $name;
  return; # Perl best-practice: always return a value.
}
