my $piece  = substr($cb, 0, 5);    # "crèm" or "crème"
my($piece) = $cb =~ /(\X{5})/;     # "crème"
