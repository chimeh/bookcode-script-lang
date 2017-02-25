# put commas in the right places in an integer
1 while s/(\d)(\d\d\d)(?!\d)/$1,$2/;

# expand tabs to 8-column spacing
1 while s/\t+/" " x (length($&)*8 - length($`)%8)/e;

# remove (nested (even deeply nested (like this))) remarks
1 while s/\([^()]*\)//g;

# remove duplicate words (and triplicate (and quadruplicate...))
1 while s/\b(\w+) \1\b/$1/gi;
