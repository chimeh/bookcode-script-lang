use 5.14.0;
my $permissions ;
foreach (@ARGV) {
	when ( -r ) {
		$permissions =  "readable,";
		continue;
	}
	when ( -w ) {
		$permissions .= "writable,";
		continue;
	}
	when ( -x ) {
		$permissions .= "executable";
		continue;
	}
	default {

		$permissions =  $permissions // 'unknown';
		$permissions =~ s/,$//;
		say "$_ is  $permissions" ;
		$permissions = undef;
	}
}
