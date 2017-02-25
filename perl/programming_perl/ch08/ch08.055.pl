our $value  = "global";
{
    my $value = "private";
    print "Inside, mine is ${value}, ";
    say "but ours is ${"value"}.";
}
say "Outside, ${value} is again ${"value"}.";
