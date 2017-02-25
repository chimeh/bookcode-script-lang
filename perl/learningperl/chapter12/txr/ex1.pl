#!/usr/bin/perl
use 5.014;

print map { test_file($_) } @ARGV;


sub test_file {
	my $file = shift;
	my $permissions= "$file is";
	if ( -e $file ) {
					if ( -r _ ) {
						$permissions .= ' readable ';	
					}
					if (-w _ ) {
						$permissions .= ' writable ';
					}
					if (-x _ ) {
						$permissions .= ' executable';
					}
	} else {
					$permissions .= "does not exist";
	}
	$permissions .= "\n";
	return $permissions;
}

