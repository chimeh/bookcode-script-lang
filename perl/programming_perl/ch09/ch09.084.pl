%TV = (
    flintstones => {
        series   => "flintstones",
        nights   => [ "monday", "thursday", "friday" ],
        members  => [
            { name => "fred",    role => "husband", age  => 36, },
            { name => "wilma",   role => "wife",    age  => 31, },
            { name => "pebbles", role => "kid",     age  =>  4, },
        ],
    },

    jetsons     => {
        series   => "jetsons",
        nights   => [ "wednesday", "saturday" ],
        members  => [
            { name => "george",  role => "husband", age  => 41, },
            { name => "jane",    role => "wife",    age  => 39, },
            { name => "elroy",   role => "kid",     age  =>  9, },
        ],
    },

    simpsons    => {
        series   => "simpsons",
        nights   => [ "monday" ],
        members  => [
            { name => "homer", role => "husband", age => 34, },
            { name => "marge", role => "wife",    age => 37, },
            { name => "bart",  role => "kid",     age => 11, },
        ],
    },
);
