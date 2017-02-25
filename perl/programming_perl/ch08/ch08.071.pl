use Scalar::Util qw(weaken);

$ring = {
  VALUE => undef,
  NEXT  => undef,
  PREV  => undef,
};
$ring->{NEXT} = $ring;
$ring->{PREV} = $ring;
weaken($ring->{NEXT});
weaken($ring->{PREV});
