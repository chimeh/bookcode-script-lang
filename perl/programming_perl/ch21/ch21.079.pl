#!/usr/bin/perl -p
1 while s{
    ^               # anchor to beginning
    (               # start first subgroup
        .*?         # match minimal number of characters
    )               # end first subgroup
    (               # start second subgroup
        \t+         # match one or more tabs
    )               # end second subgroup
}
{
    my $spacelen = length($2) * 4;  # account for full tabs
    $spacelen -= length($1) % 4;    # account for the uneven tab
    $1 . " " x $spacelen;           # make correct number of spaces
}ex;
