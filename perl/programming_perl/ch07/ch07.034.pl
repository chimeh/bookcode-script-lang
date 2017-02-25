sub mypush (+@) {
  my $aref = shift;
  die "Not an array or arrayref" unless ref($aref) eq "ARRAY";
  push @$aref, @_;
}
