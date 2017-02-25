@sorted_lines = sort {
    @a_fields = split /:/, $a;     # colon-separated fields
    @b_fields = split /:/, $b;

    $a_fields[3] <=> $b_fields[3]  # numeric sort on 4th field, then
        ||
    $a_fields[0] cmp $b_fields[0]  # string sort on 1st field, then
        ||
    $b_fields[2] <=> $a_fields[2]  # reverse numeric sort on 3rd field
        ||
    ...                            # etc.

} @lines;
