use 5.012; # Implies strict
use warnings;

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );
greet();

sub greet {
  state @gret;
  my $name = shift @_ || "random stranger";

  if ( @gret ) {
    say "Hi $name! I've seen: @gret";
  }
  else {
    say "Hi $name! You are the first one here!";
  }

  push @gret, $name;
  return @gret; # Perl best-practice: always return a value.
}
