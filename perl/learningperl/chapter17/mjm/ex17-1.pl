#! perl

# Chapter 17, Exercise 1

my $in_file = $ARGV[0];

open my $inh, "<$in_file";
chomp (my @strings = <$inh>);
close $inh;

print "enter a pattern to match against, or a blank line to finish\n";
chomp( my $user_in = <STDIN> );

while( $user_in ne "" ) {
	my @matching_strings = undef;
	eval {
		@matching_strings = grep( /$user_in/, @strings );
	};
	if($@) {
		print "invalid pattern\n";
	}
	else {
		my $no_of_matching_strings = scalar( @matching_strings );
		if( $no_of_matching_strings > 0 ) {
			print "$no_of_matching_strings strings matched:\n";
			foreach( @matching_strings ) {
				print "$_\n";
			}
		}
		else {
			print "no strings matched\n";
		}
	}
	chomp( $user_in = <STDIN> );
}
	
