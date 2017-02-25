use 5.012;
use warnings;

say ( ( $_ = `date` ) =~ /^S/ ? "go play" : "get to work" );
