use 5.012;
use warnings;

use List::Util qw ( reduce );

say( ( reduce { -M $b > -M $a ? $b : $a } @ARGV ) // "Usage: $0 <list of files>" );
