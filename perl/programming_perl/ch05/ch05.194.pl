"glyph" =~ m{
    .+                              # some anythings
    (?(?{                           # if
            $foo{bar} gt "symbol"   # this is true
        })
            .                       # match another anything
        |                           # else
            signet                  # match signet
    )
    .                               # and one more anything
}x;
