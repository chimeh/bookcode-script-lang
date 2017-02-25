%units = (miles => 6, stones => 11);
fillerup( \%units );          # Pass in a reference
print $units{quarts};         # Prints 4

sub fillerup {
    local *hashsym = shift;   # Assign \%units to the typeglob
    $hashsym{quarts} = 4;     # Affects %units; no dereferencing needed!
}
