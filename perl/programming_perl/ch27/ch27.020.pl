my $i = 0;
while (my ($package, $filename, $line, $subroutine,
           $hasargs, $wantarray, $evaltext, $is_require,
           $hints, $bitmask, $hinthash) = caller($i++) )
{
    ...
}
