sub seen_count {
  state %count;
  my $item = shift();
  return ++$count{$item};
}
