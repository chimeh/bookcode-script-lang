# Find duplicate words in paragraphs, possibly spanning line boundaries.
#   Use /x for space and comments, /i to match both 'is'
#   in "Is is this ok?", and use /g to find all dups.
$/ = "";        # "paragrep" mode
while (<>) {
    while ( m{
                \b            # start at a word boundary
                (\w\S+)       # find a wordish chunk
                (
                    \s+       # separated by some whitespace
                    \1        # and that chunk again
                ) +           # repeat ad lib
                \b            # until another word boundary
             }xig
          )
    {
        say "dup word '$1' at paragraph $.";
    }
}
