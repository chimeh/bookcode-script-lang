@sorted_lines = map { $_->[0] }
                sort {
                   $a->[4] <=> $b->[4] # beware: indices really
                                       # appear to start at 1
                           ||
                   $a->[1] cmp $b->[1]
                           ||
                   $a->[3] <=> $b->[3]
                           ||
                   ...
                }
                map { [$_, split /:/] } @lines;
