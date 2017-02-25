package MagicDec;

 use overload
     q(--) => \&decrement,
     q("") => sub { ${ $_[0] } };

 sub new {
     my $class = shift;
     my $value = shift;
     bless \$value => $class;
 }

 sub decrement {
     my @string = reverse split(//, ${ $_[0] } );
     my $i;
     for ($i = 0; $i < @string; $i++ ) {
         last unless $string[$i] =~ /a/i;
         $string[$i] = chr( ord($string[$i]) + 25 );
     }
     $string[$i] = chr( ord($string[$i]) - 1 );
     my $result = join("" => reverse @string);
     $_[0] = bless \$result => ref($_[0]);
 }

 package main;

 for $normal (qw/perl NZ Pa/) {
     $magic = MagicDec->new($normal);
     $magic--;
     print "$normal goes to $magic\n";
 }
