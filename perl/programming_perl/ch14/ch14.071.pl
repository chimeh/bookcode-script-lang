sub PRINT {
     my $self = shift;
     print $self map {uc} @_;
 }
