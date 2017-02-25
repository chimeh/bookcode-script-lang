@temp = sort {
    @a_fields = @$a[1..$#$a];
    @b_fields = @$b[1..$#$b];

    $a_fields[3] <=> $b_fields[3]  # numeric sort on 4th field, then
        ||
    $a_fields[0] cmp $b_fields[0]  # string sort on 1st field, then
        ||
    $b_fields[2] <=> $a_fields[2]  # reverse numeric sort on 3rd field
        ||
    ...                            # etc.

} @temp;
