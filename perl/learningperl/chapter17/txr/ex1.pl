#! usr/bin/perl
use 5.014;

chomp (my  @lines = <>);

my $exit = 0 ;

until ($exit) {
	say "enter a pattern";
	chomp (my $pattern = <STDIN>);
	given ($pattern) {

		when ('') {
			$exit=1;
		}

		my @matching_lines = eval { grep { $_ =~ $pattern} @lines } ;		

		if ($@) {
				say "an error occured when trying to match $pattern \n $@";
				$exit=1;
				last;
		}

		when (scalar(@matching_lines) ==  0) {
				say "no matches for pattern $pattern";
		}

		default {
				my $size = scalar(@matching_lines);
				say "found ", ($size > 1) ? $size . " lines ": "1 line ", "for pattern $pattern";
				say "press a key  to display matches";
				<STDIN>;
				say $_ foreach @matching_lines;
			}
		}
}
