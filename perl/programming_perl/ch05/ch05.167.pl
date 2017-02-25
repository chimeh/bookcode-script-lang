$_ = "Paris in THE THE THE THE spring.";

# remove duplicate words (and triplicate (and quadruplicate...))
1 while s/\b(\w+) \1\b/$1/gi;
