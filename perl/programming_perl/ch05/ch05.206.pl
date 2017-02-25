/\b (        \p{alpha}+ ) \s+    \1    \b /x   # numbered backref
/\b (        \p{alpha}+ ) \s+  \g{1}   \b /x   # alternate syntax
/\b (        \p{alpha}+ ) \s+ \g{-1}   \b /x   # relative backref
/\b (?<word> \p{alpha}+ ) \s+ \k<word> \b /x   # named    backref
