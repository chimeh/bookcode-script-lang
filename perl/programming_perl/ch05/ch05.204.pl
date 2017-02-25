#!/usr/bin/perl
use feature "say";
$x = "Perl is free.";
$y = 'ManagerWare costs $99.95.';

foreach ($x, $y) {
    /^(\w+) (?:is|(costs)) (?(2)(\$\d+)|\w+)/;  # Either (\$\d+) or \w+
    if ($3) {
        say "$1 costs money.";         # ManagerWare costs money.
    } else {
        say "$1 doesn't cost money.";  # Perl doesn't cost money.
    }
}
