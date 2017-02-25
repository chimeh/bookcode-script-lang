/\b (        \p{alpha}+ ) \s+ (?-1)    \b /x   # "call" numbered group
/\b (?<word> \p{alpha}+ ) \s+ (?&word) \b /x   # "call" named group
