use 5.012;
use warnings;

$^I = ".bak";

my $curfn = '';

while (<>) {
    if ( m/^## Copyright/ ) {
	$curfn = $ARGV;
    }
    elsif ( !m/^#!/ && ( $curfn ne $ARGV ) ) {
	print "## Copyright (C) 2014 by Alex Panayotopoulos\n";
	$curfn = $ARGV;
    }

    print;
}
