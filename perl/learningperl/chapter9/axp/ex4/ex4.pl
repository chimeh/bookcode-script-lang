use 5.012;
use warnings;

# Note that this solution prints the copyright line even if there's no
# shebang in the file.

$^I = ".bak";

my $curfn = '';

while (<>) {
    if ( !m/^#!/ && ( $curfn ne $ARGV ) ) {
	print "## Copyright (C) 2014 by Alex Panayotopoulos\n";
	$curfn = $ARGV;
    }

    print;
}
