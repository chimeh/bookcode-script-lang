/(?i)foo/            # Equivalent to /foo/i
/foo((?-i)bar)/i     # "bar" must be lower case
/foo((?x-i)bar)/     # Enables /x and disables /i for "bar"
