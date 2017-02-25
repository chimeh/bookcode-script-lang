sub timer_then {
  my $epoch = time();
  return sub {
      ...
  };
}

sub timer_now {
  return sub {
      state $epoch = time();
      ...
  };
}
