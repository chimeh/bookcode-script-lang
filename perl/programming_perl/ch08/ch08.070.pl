$ring = {
  VALUE => undef,
  NEXT  => undef,
  PREV  => undef,
};
$ring->{NEXT} = $ring;
$ring->{PREV} = $ring;
