(?<mirrored>    (?<open> <{2,}+  ) \s++
                   \s+
                     (?: (?&podtag) | \p{Any} ) *?
                   \s+
                \s++ (??{ ">" x length $MATCH{open} })
)
