@envrefs = \@ENV{"HOME", "TERM"};         # Backslashing a slice
@envrefs = \( $ENV{HOME},  $ENV{TERM} );  # Backslashing a list
@envrefs = ( \$ENV{HOME}, \$ENV{TERM} );  # A list of two references
