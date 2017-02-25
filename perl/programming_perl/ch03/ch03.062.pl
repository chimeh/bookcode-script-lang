for (101 .. 200) { print }  # prints 101102...199200

my @foo = getlist();
@foo = @foo[0 .. $#foo];    # an expensive no-op
@foo = @foo[ -5 .. -1 ];    # slice last 5 items
