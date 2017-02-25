my $value = do {
  no strict "refs";

  ${ "${class}::name}" }; # symbolic reference
};
