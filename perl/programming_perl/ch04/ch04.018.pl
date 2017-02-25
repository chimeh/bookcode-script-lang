use feature ":5.10";

given ($n) {

# match if !defined($n)
    when (undef) {
        say '$n is undefined';
    }

# match if $n eq "foo"
    when ("foo") {
        say '$n is the string "foo"';
    }

# match if $n ~~ [1,3,5,7,9]
    when ([1,3,5,7,9]) {
        say '$n is an odd digit';
        continue; # Fall through!!
    }

# match if $n < 100
    when ($_ < 100) {
        say '$n is numerically less than 100';
    }

# match if complicated_check($n)
    when (\&complicated_check) {
        say 'a complicated check for $n is true';
    }

# match if no other cases match
    default {
        die q(I don't know what to do with $n);
    }
}
