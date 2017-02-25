package ShiftString;

 use overload
     ">>"   => \&right_shift,
     q("")  => sub { ${ $_[0] } };

 sub new {
     my $class = shift;
     my $value = shift;
     return bless \$value => $class;
 }

 sub right_shift {
     my ($x, $y) = @_;
     my $value = $$x;
     substr($value, -$y) = "";
     return bless \$value => ref($x);
 }

 $camel = ShiftString->new("Camel");
 $ram = $camel >> 2;
 print $ram;            # Cam
