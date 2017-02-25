#!/usr/bin/perl
use 5.014;
use DateTime;
use List::Util;

my $oldest_time = time;
my $oldest_file = '';

die 'no file provided ' if scalar(@ARGV) < 1;

foreach my $file ( @ARGV) {
	my $ctime = get_creation_date($file);
	if ( $ctime < $oldest_time ) {
					$oldest_time = $ctime;
					$oldest_file = $file;
	}
}

my $now = DateTime->today();
print $oldest_file, ' ', &get_number_days($oldest_time,$now) ,' days'  ,"\n";


sub get_number_days {
	my ($time, $now) = @_;
	my $dt = DateTime->from_epoch(epoch => $time);
	my $diff = $now->delta_days($dt);
	return $diff->in_units('days');
}

sub get_creation_date {
	my $file_name = shift;
	my $ctime = (stat($file_name))[10];
	return $ctime;
}
