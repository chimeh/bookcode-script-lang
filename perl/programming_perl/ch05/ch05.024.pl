m/\w+:(\s+\w+)\s*\d+/;       # A word, colon, space, word, space, digits.

m/\w+: (\s+ \w+) \s* \d+/x;  # A word, colon, space, word, space, digits.

m{
    \w+:                     # Match a word and a colon.
    (                        # (begin capture group)
         \s+                 # Match one or more spaces.
         \w+                 # Match another word.
    )                        # (end capture group)
    \s*                      # Match zero or more spaces.
    \d+                      # Match some digits
}x;
