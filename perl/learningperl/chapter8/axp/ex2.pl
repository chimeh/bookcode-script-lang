use 5.012;
use warnings;

while (<>) { # take one input line at a time
    chomp;
    if (/\w*a\b/) {
	say "Matched: |$`<$&>$'|"; # the special match vars
    } else {
	say "No match: |$_|";
    }
}
