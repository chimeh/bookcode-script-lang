#! perl

# Chapter 17, Exercise 3

my @files = glob '*';

foreach( @files ) {
	my @stat = stat($_);
	my ($atime, $mtime) = @stat[8,9];
	
	my @alocaltime = localtime( $atime );
	my @mlocaltime = localtime( $mtime );
	
	# fix localtime output for year to be human-readable
	$alocaltime[5] += 1900;
	$mlocaltime[5] += 1900;

	# fix localtime output for month to be human-readable	
	$alocaltime[4] += 1;
	$mlocaltime[4] += 1;
	
	my $alocaltime_formatted = sprintf( "%s-%s-%s", @alocaltime[5, 4, 3]);
	my $mlocaltime_formatted = sprintf( "%s-%s-%s", @mlocaltime[5, 4, 3]);
	
	printf "%10s\t%20s\t%20s\n", $_, $alocaltime_formatted, $mlocaltime_formatted;
}
