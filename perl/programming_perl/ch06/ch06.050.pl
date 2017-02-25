@srecs = sort {
    $b->{AGE}   <=>  $a->{AGE}
                ||
    $a->{NAME}  cmp  $b->{NAME}
} @recs;
