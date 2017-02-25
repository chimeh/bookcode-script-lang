use 5.012;
use warnings;

# INPUT:
#   beforematchafter
# OUTPUT:
#   Matched: |before<match>after|

while (<>) { # take one input line at a time
    chomp;
    if (/match/) {
	say "Matched: |$`<$&>$'|"; # the special match vars
    } else {
	say "No match: |$_|";
    }
}
