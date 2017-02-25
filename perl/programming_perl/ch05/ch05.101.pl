$_ = "Speak, <EM>friend</EM>, and enter.";
m[ (<.*?>) (.*?) (</.*?>) ]x; # A tag, then chars, then an end tag
say "prematch: $`";           # Speak,
say "match: $&";              # <EM>friend</EM>
say "postmatch: $'";          # , and enter.
say "lastmatch: $+";          # </EM>
