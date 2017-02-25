use 5.012;
use warnings;
no strict 'refs'; # Needed for $$_;

while (<>) { # take one input line at a time
    chomp;
    if (/(\w*a)\b/) {
	say "Matched: |$`<$&>$'|"; # the special match vars
	say "  \$$_ is '$$_'" foreach ( 1..$#- );
    } else {
	say "No match: |$_|";
    }
}
