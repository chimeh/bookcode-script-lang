use 5.012;
use warnings;

print "Column width? ";
chomp( my $width = <STDIN> );

die "Not a positive integer!\n" if ( $width !~ /^\d+$/ );
die "That's too wide!\n" if ( $width > 999 );

say "Now give me some data!";
chomp( my @data = <STDIN> );

say "1234567890" x ( ( $width / 10 ) + 1 ); # ruler
printf "%${width}s\n" x @data, @data;
