use 5.012;
use warnings;

# This time we'll not bother moving to the home directory, but will query it from here.
system "ls -l ~ > ls.out 2> ls.err";
