use File::Basename;

my $name = basename( $ARGV[0] );
my $dir  = dirname( $ARGV[0] );

my( $base, $dir, $suffix ) = fileparse( $ARGV[0], qr/\.[^.]+\z/ );
