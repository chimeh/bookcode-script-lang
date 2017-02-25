outer();

sub outer {
  for (my $i=0; $i < 100; $i++) { inner() }
}

sub inner {
  my $total = 0;
  for (my $i=0; $i < 1000; $i++) { $total += $i }
}

inner();
