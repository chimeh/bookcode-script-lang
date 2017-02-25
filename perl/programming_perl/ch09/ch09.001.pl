# Assign a list of array references to an array.
@AoA = (
         [ "fred", "barney" ],
         [ "george", "jane", "elroy" ],
         [ "homer", "marge", "bart" ],
);

print $AoA[2][1];   # prints "marge"
