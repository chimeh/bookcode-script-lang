use 5.012;
use warnings;

while (<>) { # take one input line at a time
    chomp;
    if (/(?<word>\w*a)\b/) {
	say "Matched: |$`<$&>$'|"; # the special match vars
	
	while ( my ($k, $v) = each %+ ) {
	    say "  <$k> contains '$v'";
	}
    } else {
	say "No match: |$_|";
    }
}
