sub prospects {
    $b->{SALARY}    <=>  $a->{SALARY}
        ||
    $b->{HEIGHT}    <=>  $a->{HEIGHT}
        ||
    $a->{AGE}       <=>  $b->{AGE}
        ||
    $a->{LASTNAME}  cmp  $b->{LASTNAME}
        ||
    $a->{FIRSTNAME} cmp  $b->{FIRSTNAME}
}

@sorted = sort prospects @recs;
