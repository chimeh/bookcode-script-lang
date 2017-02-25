use Scalar::Util qw(tainted);

print "Tainted!" if tainted( $ARGV[0] );
