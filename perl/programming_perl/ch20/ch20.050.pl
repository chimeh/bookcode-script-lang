$new = $old;                # No quoting needed.
print "$new items\n";       # $new can't hurt you.

$phrase = "$new items\n";   # Nor here, neither.
print $phrase;              # Still perfectly ok.
