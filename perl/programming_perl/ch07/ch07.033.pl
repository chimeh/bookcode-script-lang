sub mymkdir(_;$) {
  my $dirname   = shift();
  my $mask = @_ ? shift() : 0777;
  my $mode = $mask &~ umask();
  ...
}

mymkdir($path, 01750);
mymkdir($path);
mymkdir();    # passes in $_
